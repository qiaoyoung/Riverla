//
//  NTESSubscribeManager.m
//  NIM
//
//  Created by chris on 2017/4/5.
//  Copyright © 2017年 Netease. All rights reserved.
//

#import "NTESSubscribeManager.h"
#import "NTESSubscribeDefine.h"
#import "NTESDevice.h"
#import "FFFExtensionHelper.h"

#define NTESSubscribeExpiry 60 * 60 * 24 * 1 //订阅有效期为 1 天

NSString *const NTESSubscribeNetState = @"net_state";

NSString *const NTESSubscribeOnlineState = @"online_state";


@interface NTESSubscribeManager()<NIMEventSubscribeManagerDelegate,NIMConversationManagerDelegate,NIMLoginManagerDelegate,NIMUserManagerDelegate>

@property (nonatomic,strong) NSMutableDictionary *events;

@property (nonatomic,strong) NSMutableSet *subscribeIds;

@property (nonatomic,strong) NSMutableSet *tempSubscribeIds;

@end

@implementation NTESSubscribeManager

+ (instancetype)sharedManager
{
    static NTESSubscribeManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[NTESSubscribeManager alloc] init];
    });
    return instance;
    
    return nil;
}

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _events = [[NSMutableDictionary alloc] init];
        _subscribeIds = [[NSMutableSet alloc] init];
        _tempSubscribeIds = [[NSMutableSet alloc] init];
        [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
        [[NIMSDK sharedSDK].conversationManager addDelegate:self];
        [[NIMSDK sharedSDK].loginManager addDelegate:self];
        [[NIMSDK sharedSDK].userManager addDelegate:self];
    }
    return  self;
}

- (void)start
{
}


- (void)dealloc
{
    [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
}

- (NSDictionary<NIMSubscribeEvent *,NSString *> *)eventsForType:(NSInteger)type
{
    return [self.events objectForKey:@(type)];
}


- (void)subscribeTempUserOnlineState:(NSString *)userId
{
    BOOL isMe    = [[NIMSDK sharedSDK].loginManager.currentAccount isEqualToString:userId];
    if (isMe) {
        //自己不需要订阅
        return;
    }
    NIMSubscribeRequest *request = [self generateRequest];
    request.publishers = @[userId];
    [self.tempSubscribeIds addObject:userId];
    [[NIMSDK sharedSDK].subscribeManager subscribeEvent:request completion:^(NSError * _Nullable error, NSArray * _Nullable failedPublishers) {
    }];
}

- (void)unsubscribeTempUserOnlineState:(NSString *)userId
{
    if (![_subscribeIds containsObject:userId])
    {
        //如果这个人没有订阅
        NIMSubscribeRequest *request = [self generateRequest];
        request.publishers = @[userId];
        [[NIMSDK sharedSDK].subscribeManager unSubscribeEvent:request completion:^(NSError * _Nullable error, NSArray * _Nullable failedPublishers) {
        }];
        [self.tempSubscribeIds removeObject:userId];
    }
}

- (void)cleanCache
{
    [_subscribeIds removeAllObjects];
    [_tempSubscribeIds removeAllObjects];
    [_events removeAllObjects];
}

- (void)publishOnlineState
{
    NIMSubscribeEvent *event = [[NIMSubscribeEvent alloc] init];
    event.type  = NIMSubscribeSystemEventTypeOnline;
    event.value = NTESCustomStateValueOnlineExt;
    event.sendToOnlineUsersOnly = NO;  //必须要让后登录的用户也能拿到    
    NSDictionary *ext = @{
                            NTESSubscribeNetState : @([NTESDevice currentDevice].currentNetworkType),
                            NTESSubscribeOnlineState : @(NTESOnlineStateNormal), //移动端永远在线
                          };    
    [event setExt:[ext nimkit_jsonString]];
    [[NIMSDK sharedSDK].subscribeManager publishEvent:event completion:^(NSError * _Nullable error, NIMSubscribeEvent * _Nullable event) {
    }];
}

- (void)subscribeOnlineState
{
    [_subscribeIds addObjectsFromArray:self.recentSessionUserIds.allObjects];
    [_subscribeIds addObjectsFromArray:self.contactUserIds.allObjects];
    
    [self subscribeNextMembers:_subscribeIds.allObjects];
}

- (void)subscribeNextMembers:(NSArray *)ids
{
    if (!ids.count) {
        return;
    }
    NIMSubscribeRequest *request = [self generateRequest];
    NSInteger maxRequestCount = 100;
    NSArray *publishers;
    NSRange remove = ids.count > maxRequestCount? NSMakeRange(0, maxRequestCount): NSMakeRange(0, ids.count);
    publishers = [ids subarrayWithRange:remove];
    
    request.publishers = publishers;
    
    __weak typeof(self) weakSelf = self;
    [[NIMSDK sharedSDK].subscribeManager subscribeEvent:request completion:^(NSError * _Nullable error, NSArray * _Nullable failedPublishers) {
        NSMutableArray *members = [ids mutableCopy];
        [members removeObjectsInRange:remove];
        if (members.count) {
            [weakSelf subscribeNextMembers:members];
        }
    }];
}


#pragma mark - NIMLoginManagerDelegate
- (void)onLogin:(NIMLoginStep)step
{
    if (step == NIMLoginStepLinking)
    {
        [self cleanCache];
    }
    if (step == NIMLoginStepSyncOK)
    {
        [self publishOnlineState];
        [self subscribeOnlineState];
    }
}


#pragma mark - NIMUserManagerDelegate
- (void)onFriendChanged:(NIMUser *)user
{
    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:user.userId];
    if (isMyFriend && ![self.subscribeIds containsObject:user.userId])
    {
        //是好友却没订阅，订阅一下
        NIMSubscribeRequest *request = [self generateRequest];
        request.publishers = @[user.userId];
        [[NIMSDK sharedSDK].subscribeManager subscribeEvent:request completion:^(NSError * _Nullable error, NSArray * _Nullable failedPublishers) {
            if (!error) {
                [self.subscribeIds addObject:user.userId];
            }
        }];
    }
    if (!isMyFriend && ![self.recentSessionUserIds containsObject:user.userId]) {
        //不再是好友，从订阅集里删掉，等到下次服务器下发订阅事件，再反订阅即可
        [self.subscribeIds removeObject:user.userId];
    }
}


#pragma mark - NIMEventSubscribeManagerDelegate

- (void)onRecvSubscribeEvents:(NSArray *)events
{
    NSMutableArray *unSubscribeUsers = [[NSMutableArray alloc] init];
    for (NIMSubscribeEvent *event in events) {
        if ([self.subscribeIds containsObject:event.from] || [self.tempSubscribeIds containsObject:event.from])
        {
            NSInteger type = event.type;
            NSMutableDictionary *eventsDict = [self.events objectForKey:@(type)];
            if (!eventsDict) {
                eventsDict = [[NSMutableDictionary alloc] init];
                [self.events setObject:eventsDict forKey:@(type)];
            }
            NIMSubscribeEvent *oldEvent = [eventsDict objectForKey:event.from];
            if (oldEvent.timestamp > event.timestamp)
            {
                //服务器不保证事件的顺序，如果发现是同类型的过期事件，根据自身业务情况决定是否过滤。
            }
            else
            {
                [eventsDict setObject:event forKey:event.from];
            }
            
        }
        else
        {
            //删掉了或者是以前订阅的没有干掉，这里反订阅一下
            [unSubscribeUsers addObject:event.from];
        }
    }
    
    //反订阅
    if (unSubscribeUsers.count)
    {
        NIMSubscribeRequest *request = [self generateRequest];
        request.publishers = [NSArray arrayWithArray:unSubscribeUsers];
        [[NIMSDK sharedSDK].subscribeManager unSubscribeEvent:request completion:^(NSError * _Nullable error, NSArray * _Nullable failedPublishers) {
        }];
    }    
}

#pragma mark - NIMConversationManagerDelegate
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           totalUnreadCount:(NSInteger)totalUnreadCount
{
    if (recentSession.session.sessionType == NIMSessionTypeP2P) {
        [self.subscribeIds addObject:recentSession.session.sessionId];
        
        NIMSubscribeRequest *request = [self generateRequest];
        request.publishers = @[recentSession.session.sessionId];
        [[NIMSDK sharedSDK].subscribeManager subscribeEvent:request completion:^(NSError * _Nullable error, NSArray * _Nullable failedPublishers) {
        }];
    }
}

- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession
              totalUnreadCount:(NSInteger)totalUnreadCount
{
    if (recentSession.session.sessionType == NIMSessionTypeP2P && ![self.contactUserIds containsObject:recentSession.session.sessionId]) {
        [self.subscribeIds removeObject:recentSession.session.sessionId];
    }
}



#pragma mark - Private
- (NIMSubscribeRequest *)generateRequest
{
    NIMSubscribeRequest *request = [[NIMSubscribeRequest alloc] init];
    request.type = NIMSubscribeSystemEventTypeOnline;
    request.expiry = NTESSubscribeExpiry;
    request.syncEnabled = YES;
    return request;
}

- (NSSet *)recentSessionUserIds
{
    NSMutableSet *ids = [[NSMutableSet alloc] init];
    NSString *me = [NIMSDK sharedSDK].loginManager.currentAccount;
    for (NIMRecentSession *recent in [NIMSDK sharedSDK].conversationManager.allRecentSessions) {
        if (recent.session.sessionType == NIMSessionTypeP2P && ![recent.session.sessionId isEqualToString:me])
        {
            [ids addObject:recent.session.sessionId];
        }
    }
    return [NSSet setWithSet:ids];
}

- (NSSet *)contactUserIds
{
    NSMutableSet *ids = [[NSMutableSet alloc] init];
    for (NIMUser *user in [NIMSDK sharedSDK].userManager.myFriends) {
        [ids addObject:user.userId];
    }
    return [NSSet setWithSet:ids];
}

@end
