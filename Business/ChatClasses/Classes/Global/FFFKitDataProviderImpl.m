//
//  FFFKitDataProviderImpl.m
// NeeyoKit
//
//  Created by chris on 2016/10/31.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NeeyoKit.h"
#import "FFFKitDataProviderImpl.h"
#import "FFFKitInfoFetchOption.h"
#import "UIImage+NeeyoKit.h"
#import "NSString+NeeyoKit.h"

#pragma mark - kit data request
@interface NIMKitDataRequest : NSObject

@property (nonatomic,strong) NSMutableSet *failedUserIds;

@property (nonatomic,assign) NSInteger maxMergeCount; //最大合并数

- (void)requestUserIds:(NSArray *)userIds;

@end


@implementation NIMKitDataRequest{
    NSMutableArray *_requstUserIdArray; //待请求池
    BOOL _isRequesting;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        _failedUserIds = [[NSMutableSet alloc] init];
        _requstUserIdArray = [[NSMutableArray alloc] init];
    }
    return self;
}


- (void)requestUserIds:(NSArray *)userIds
{
    for (NSString *userId in userIds)
    {
        if (![_requstUserIdArray containsObject:userId] && ![_failedUserIds containsObject:userId])
        {
            [_requstUserIdArray addObject:userId];
        }
    }
    [self request];
}


- (void)request
{
    static NSUInteger MaxBatchReuqestCount = 10;
    if (_isRequesting || [_requstUserIdArray count] == 0) {
        return;
    }
    _isRequesting = YES;
    NSArray *userIds = [_requstUserIdArray count] > MaxBatchReuqestCount ?
    [_requstUserIdArray subarrayWithRange:NSMakeRange(0, MaxBatchReuqestCount)] : [_requstUserIdArray copy];
    
    __weak typeof(self) weakSelf = self;
    [[NIMSDK sharedSDK].userManager fetchUserInfos:userIds
                                        completion:^(NSArray *users, NSError *error) {
                                            [weakSelf afterReuquest:userIds];
                                            if (!error && users.count)
                                            {
                                                [[NeeyoKit sharedKit] notfiyUserInfoChanged:userIds];
                                            }
                                            else if ([weakSelf shouldAddToFailedUsers:error])
                                            {
                                                [weakSelf.failedUserIds addObjectsFromArray:userIds];
                                            }
                                        }];
}

- (void)afterReuquest:(NSArray *)userIds
{
    _isRequesting = NO;
    [_requstUserIdArray removeObjectsInArray:userIds];
    [self request];
    
}

- (BOOL)shouldAddToFailedUsers:(NSError *)error
{
    //没有错误这种异常情况走到这个路径里也不对，不再请求
    return error.code != NIMRemoteErrorCodeTimeoutError || !error;
}

@end

#pragma mark - data provider impl

@interface FFFKitDataProviderImpl()<NIMUserManagerDelegate,
                                    NIMTeamManagerDelegate,
                                    NIMLoginManagerDelegate,
                                    NIMTeamManagerDelegate>

@property (nonatomic,strong) UIImage *defaultUserAvatar;

@property (nonatomic,strong) UIImage *defaultTeamAvatar;

@property (nonatomic,strong) NIMKitDataRequest *request;

@end


@implementation FFFKitDataProviderImpl

- (instancetype)init{
    self = [super init];
    if (self) {
        _request = [[NIMKitDataRequest alloc] init];
        _request.maxMergeCount = 20;
        [[NIMSDK sharedSDK].userManager addDelegate:self];
        [[NIMSDK sharedSDK].teamManager addDelegate:self];
        [[NIMSDK sharedSDK].loginManager addDelegate:self];
        [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
    }
    return self;
}

- (void)dealloc
{
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
}


#pragma mark - public api
- (FFFKitInfo *)infoByUser:(NSString *)userId
                    option:(FFFKitInfoFetchOption *)option
{
    NIMSession *session = option.message.session?:option.session;
    FFFKitInfo *info = [self infoByUser:userId session:session option:option];
    return info;
}

- (FFFKitInfo *)infoByTeam:(NSString *)teamId
                    option:(FFFKitInfoFetchOption *)option
{
    NIMTeam *team    = [[NIMSDK sharedSDK].teamManager teamById:teamId];
    FFFKitInfo *info = [[FFFKitInfo alloc] init];
    info.showName    = team.teamName;
    info.infoId      = teamId;
    info.avatarImage = self.defaultTeamAvatar;
    info.avatarUrlString = team.thumbAvatarUrl;
    return info;
}

- (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId
                         option:(FFFKitInfoFetchOption *)option
{
    NIMTeam *team    = [[NIMSDK sharedSDK].superTeamManager teamById:teamId];
    FFFKitInfo *info = [[FFFKitInfo alloc] init];
    info.showName    = team.teamName;
    info.infoId      = teamId;
    info.avatarImage = self.defaultTeamAvatar;
    info.avatarUrlString = team.thumbAvatarUrl;
    return info;
}

- (NSString *)replyedContentWithMessage:(NIMMessage *)replyedMessage
{
    NIMMessageType messageType = replyedMessage.messageType;
    NSString *content = @"未知消息".nim_localized;
    FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    option.message = replyedMessage;
    FFFKitInfo *info = [[NeeyoKit sharedKit] infoByUser:replyedMessage.from option:option];
    NSString *from = info.showName;
    switch (messageType) {
        case NIMMessageTypeText:
            content = replyedMessage.text;
            break;
        case NIMMessageTypeImage:
            content = @"[图片]".nim_localized;
            break;
        case NIMMessageTypeVideo:
            content = @"[视频]".nim_localized;
            break;
        case NIMMessageTypeFile:
            content = @"[文件]".nim_localized;
            break;
        case NIMMessageTypeLocation:
            content = @"[位置]".nim_localized;
            break;
        case NIMMessageTypeNotification:
            content = @"[通知]".nim_localized;
            break;
        case NIMMessageTypeTip:
            content = @"[提示]".nim_localized;
            break;
        case NIMMessageTypeAudio:
            content = @"[语音]".nim_localized;
            break;
        case NIMMessageTypeCustom:
            content = @"[自定义消息]".nim_localized;
            break;
        default:
            break;
    }
                       
//    if (content.length > 0)
//    {
//        content = [NSString stringWithFormat:@"“%@”".nim_localized, content];
//    }
    return content;
}

#pragma mark - 用户信息拼装
//会话中用户信息
- (FFFKitInfo *)infoByUser:(NSString *)userId
                   session:(NIMSession *)session
                    option:(FFFKitInfoFetchOption *)option
{
    NIMSessionType sessionType = session.sessionType;
    FFFKitInfo *info;
    
    switch (sessionType) {
        case NIMSessionTypeP2P:
        {
            info = [self userInfoInP2P:userId option:option];
        }
            break;
        case NIMSessionTypeTeam:
        {
            info = [self userInfo:userId inTeam:session.sessionId option:option];
        }
            break;
        case NIMSessionTypeChatroom:
        {
            info = [self userInfo:userId inChatroom:session.sessionId option:option];
        }
            break;
        case NIMSessionTypeSuperTeam:
        {
            info = [self userInfo:userId inSuperTeam:session.sessionId option:option];
            break;
        }
        default:
            NSAssert(0, @"invalid type");
            break;
    }
    
    if (!info)
    {
        if (!userId.length)
        {
            NSLog(@"warning: fetch user failed because userid is empty");
        }
        else
        {
            [self.request requestUserIds:@[userId]];
        }
        
        info = [[FFFKitInfo alloc] init];
        info.infoId = userId;
        info.showName = userId; //默认值
        info.avatarImage = self.defaultUserAvatar;
    }
    return info;
}



#pragma mark - P2P 用户信息
- (FFFKitInfo *)userInfoInP2P:(NSString *)userId
                       option:(FFFKitInfoFetchOption *)option
{
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUserInfo *userInfo = user.userInfo;
    FFFKitInfo *info;
    if (userInfo)
    {
        info = [[FFFKitInfo alloc] init];
        info.infoId = userId;
        NSString *name = [self nicknameWithUser:user
                                           nick:nil
                                         option:option];
        info.showName = name?:@"";
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarImage = self.defaultUserAvatar;
    }
    return info;
}


#pragma mark - 群组用户信息
- (FFFKitInfo *)userInfo:(NSString *)userId
                  inTeam:(NSString *)teamId
                  option:(FFFKitInfoFetchOption *)option
{
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUserInfo *userInfo = user.userInfo;
    NIMTeamMember *member =  [[NIMSDK sharedSDK].teamManager teamMember:userId
                                                                 inTeam:teamId];
    
    FFFKitInfo *info;
    
    if (userInfo || member)
    {
        info = [[FFFKitInfo alloc] init];
        info.infoId = userId;
        
        NSString *name = [self nicknameWithUser:user
                                           nick:member.nickname
                                         option:option];
        info.showName = name?:@"";
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarImage = self.defaultUserAvatar;
    }
    return  info;
}

#pragma mark - 超大群用户信息
- (FFFKitInfo *)userInfo:(NSString *)userId
             inSuperTeam:(NSString *)teamId
                  option:(FFFKitInfoFetchOption *)option
{
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUserInfo *userInfo = user.userInfo;
    NIMTeamMember *member =  [[NIMSDK sharedSDK].superTeamManager teamMember:userId
                                                                      inTeam:teamId];
    
    FFFKitInfo *info;
    
    if (userInfo || member)
    {
        info = [[FFFKitInfo alloc] init];
        info.infoId = userId;
        
        NSString *name = [self nicknameWithUser:user
                                           nick:member.nickname
                                         option:option];
        info.showName = name?:@"";
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarImage = self.defaultUserAvatar;
    }
    return  info;
}


#pragma mark - 聊天室用户信息
- (FFFKitInfo *)userInfo:(NSString *)userId
              inChatroom:(NSString *)roomId
                  option:(FFFKitInfoFetchOption *)option
{
    FFFKitInfo *info = [[FFFKitInfo alloc] init];
    info.infoId = userId;
    NIMMessageChatroomExtension *ext = [option.message.messageExt isKindOfClass:[NIMMessageChatroomExtension class]] ?
    (NIMMessageChatroomExtension *)option.message.messageExt : nil;
    if (ext)
    {
        info.showName = ext.roomNickname;
        info.avatarUrlString = ext.roomAvatar;
    }
    else if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    {
        NIMSDKAuthMode mode = [[NIMSDK sharedSDK].chatroomManager chatroomAuthMode:roomId];
        
        switch (mode) {
            case NIMSDKAuthModeChatroom:
            {
//                NSAssert([NeeyoKit sharedKit].independentModeExtraInfo, @"in mode NIMSDKAuthModeChatroom , must has independentModeExtraInfo");
                info.showName        = [NeeyoKit sharedKit].independentModeExtraInfo.myChatroomNickname;
                info.avatarUrlString = [NeeyoKit sharedKit].independentModeExtraInfo.myChatroomAvatar;
            }
                break;
            case NIMSDKAuthModeIM:
            {
                NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                info.showName        = user.userInfo.nickName;
                info.avatarUrlString = user.userInfo.thumbAvatarUrl;
            }
                break;
            default:
            {
                NSAssert(0, @"invalid mode");
            }
                break;
        }
    }
    
    info.avatarImage = self.defaultUserAvatar;
    return info;
}

//昵称优先级
- (NSString *)nicknameWithUser:(NIMUser *)user
                          nick:(NSString *)nick
                        option:(FFFKitInfoFetchOption *)option
{
    NSString *name = nil;
    do{
        if (!option.forbidaAlias && [user.alias length])
        {
            name = user.alias;
            break;
        }
        if (nick && [nick length])
        {
            name = nick;
            break;
        }
        
        if ([user.userInfo.nickName length])
        {
            name = user.userInfo.nickName;
            break;
        }
    }while (0);
    return name;
}

#pragma mark - avatar
- (UIImage *)defaultTeamAvatar
{
    if (!_defaultTeamAvatar)
    {
        _defaultTeamAvatar = [UIImage imageNamed:@"head_default"];
    }
    return _defaultTeamAvatar;
}

- (UIImage *)defaultUserAvatar
{
    if (!_defaultUserAvatar)
    {
        _defaultUserAvatar = [UIImage imageNamed:@"head_default"];
    }
    return _defaultUserAvatar;
}




//将个人信息和群组信息变化通知给 NeeyoKit 。
//如果您的应用不托管个人信息给云信，则需要您自行在上层监听个人信息变动，并将变动通知给 NIMKit。

#pragma mark - NIMUserManagerDelegate

- (void)onFriendChanged:(NIMUser *)user
{
    [self notifyUser:user];
}

- (void)onUserInfoChanged:(NIMUser *)user
{
    [self notifyUser:user];
}

- (void)notifyUser:(NIMUser *)user
{
    if (!user)
    {
        NSLog(@"warning: notify user failed because user is empty");
    }
    else
    {
        [[NeeyoKit sharedKit] notfiyUserInfoChanged:@[user.userId]];
    }
    
}

#pragma mark - NIMTeamManagerDelegate
- (void)onTeamAdded:(NIMTeam *)team
{
    [self notifyTeamInfo:team];
}

- (void)onTeamUpdated:(NIMTeam *)team
{
    [self notifyTeamInfo:team];
}

- (void)onTeamRemoved:(NIMTeam *)team
{
    [self notifyTeamInfo:team];
}

- (void)onTeamMemberChanged:(NIMTeam *)team
{
    [self notifyTeamMember:team];
}

- (void)notifyTeamInfo:(NIMTeam *)team
{
    if (!team.teamId.length)
    {
        NSLog(@"warning: notify teamid failed because teamid is empty");
    }
    else
    {
        switch (team.type) {
            case NIMTeamTypeNormal:
            case NIMTeamTypeAdvanced:
                [[NeeyoKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeNomal];
                break;
            case NIMTeamTypeSuper:
                [[NeeyoKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeSuper];
                break;
            default:
                break;
        }
    }
}

- (void)notifyTeamMember:(NIMTeam *)team
{
    if (!team.teamId.length)
    {
        NSLog(@"warning: notify team member failed because teamid is empty");
    }
    else
    {
        switch (team.type) {
            case NIMTeamTypeNormal:
            case NIMTeamTypeAdvanced:
                [[NeeyoKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeNomal];
                break;
            case NIMTeamTypeSuper:
                [[NeeyoKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeSuper];
                break;
            default:
                break;
        }
    }
}

#pragma mark - NIMLoginManagerDelegate
- (void)onLogin:(NIMLoginStep)step
{
    if (step == NIMLoginStepSyncOK) {
        [[NeeyoKit sharedKit] notifyTeamInfoChanged:nil type:NIMKitTeamTypeNomal];
        [[NeeyoKit sharedKit] notifyTeamMemebersChanged:nil type:NIMKitTeamTypeNomal];
    }
}



@end



