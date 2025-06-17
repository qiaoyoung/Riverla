
#import <Foundation/Foundation.h>

NSString *StringFromHideCellData(Byte *data);


//: 正在呼叫您
Byte kStr_titleColorData[] = {48, 15, 12, 255, 65, 91, 68, 85, 35, 177, 193, 104, 168, 130, 230, 171, 143, 229, 188, 145, 229, 168, 156, 229, 163, 173, 230, 3};


//: teamType
Byte kStr_captureValue[] = {14, 8, 9, 240, 174, 196, 55, 132, 88, 101, 112, 121, 84, 109, 97, 101, 116, 44};


//: teamName
Byte kStr_viewMyName[] = {87, 8, 3, 101, 109, 97, 78, 109, 97, 101, 116, 158};


//: content
Byte kStr_showText[] = {10, 7, 9, 156, 37, 253, 236, 186, 23, 116, 110, 101, 116, 110, 111, 99, 74};


//: members
Byte kStr_remoteSessionData[] = {94, 7, 6, 25, 54, 33, 115, 114, 101, 98, 109, 101, 109, 91};


//: room
Byte kStr_providerValue[] = {88, 4, 10, 127, 79, 60, 45, 77, 136, 64, 109, 111, 111, 114, 116};


//: Group
Byte kStr_indexChangeValue[] = {92, 5, 4, 185, 112, 117, 111, 114, 71, 59};


//: teamId
Byte kStr_itemTingTitle[] = {78, 6, 7, 144, 182, 11, 76, 100, 73, 109, 97, 101, 116, 107};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCustomSysNotiSender.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomSysNotificationSender.h"
#import "KeySender.h"
//: #import "FFFKitInfoFetchOption.h"
#import "EmptyKey.h"
//: #import "NTESBundleSetting.h"
#import "SayImage.h"

//: @interface NTESCustomSysNotificationSender ()
@interface KeySender ()
//: @property (nonatomic,strong) NSDate *lastTime;
@property (nonatomic,strong) NSDate *lastTime;
//: @end
@end

//: @implementation NTESCustomSysNotificationSender
@implementation KeySender

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session{
- (void)aggregation:(NSString *)content tap:(NIMSession *)session{
    //: if (!content) {
    if (!content) {
        //: return;
        return;
    }
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @"id" : @((2)),
                           @"id" : @((2)),
                           //: @"content" : content,
                           StringFromHideCellData(kStr_showText) : content,
                           //: };
                           };
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *json = [[NSString alloc] initWithData:data
    NSString *json = [[NSString alloc] initWithData:data
                                              //: encoding:NSUTF8StringEncoding];
                                              encoding:NSUTF8StringEncoding];

    //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:json];
    NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:json];
    //: notification.apnsContent = content;
    notification.apnsContent = content;
    //: notification.sendToOnlineUsersOnly = NO;
    notification.sendToOnlineUsersOnly = NO;
    //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
    notification.env = [[SayImage linkIn] installment];
    //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: notification.setting = setting;
    notification.setting = setting;
    //: [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
    [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
                                                                 //: toSession:session
                                                                 toSession:session
                                                                //: completion:nil];
                                                                completion:nil];
}


//: - (void)sendTypingState:(NIMSession *)session
- (void)menuView:(NIMSession *)session
{
    //: NSString *currentAccount = [[[NIMSDK sharedSDK] loginManager] currentAccount];
    NSString *currentAccount = [[[NIMSDK sharedSDK] loginManager] currentAccount];
    //: if (session.sessionType != NIMSessionTypeP2P ||
    if (session.sessionType != NIMSessionTypeP2P ||
        //: [session.sessionId isEqualToString:currentAccount])
        [session.sessionId isEqualToString:currentAccount])
    {
        //: return;
        return;
    }

    //: NSDate *now = [NSDate date];
    NSDate *now = [NSDate date];
    //: if (_lastTime == nil ||
    if (_lastTime == nil ||
        //: [now timeIntervalSinceDate:_lastTime] > 3)
        [now timeIntervalSinceDate:_lastTime] > 3)
    {
        //: _lastTime = now;
        _lastTime = now;

        //: NSDictionary *dict = @{@"id" : @((1))};
        NSDictionary *dict = @{@"id" : @((1))};
        //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
        NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];
        //: NSString *content = [[NSString alloc] initWithData:data
        NSString *content = [[NSString alloc] initWithData:data
                                                  //: encoding:NSUTF8StringEncoding];
                                                  encoding:NSUTF8StringEncoding];

        //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
        NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
        //: notification.sendToOnlineUsersOnly = YES;
        notification.sendToOnlineUsersOnly = YES;
        //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
        notification.env = [[SayImage linkIn] installment];
        //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
        NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
        //: setting.apnsEnabled = NO;
        setting.apnsEnabled = NO;
        //: notification.setting = setting;
        notification.setting = setting;
        //: [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
        [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
                                                                     //: toSession:session
                                                                     toSession:session
                                                                    //: completion:nil];
                                                                    completion:nil];
    }

}


//: - (void)sendCallNotification:(NIMTeam *)team
- (void)message:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    cubicle:(NSString *)roomName
                     //: members:(NSArray *)members
                     falseTextMembers:(NSArray *)members
{
    //: if (!team || !team.teamId || !members) {
    if (!team || !team.teamId || !members) {
        //: return;
        return;
    }

    //: NSString *teamId = team.teamId;
    NSString *teamId = team.teamId;
    //: NIMKitTeamType teamType = NIMKitTeamTypeNomal;
    NIMKitTeamType teamType = NIMKitTeamTypeNomal;
    //: if (team.type == NIMTeamTypeSuper) {
    if (team.type == NIMTeamTypeSuper) {
        //: teamType = NIMKitTeamTypeSuper;
        teamType = NIMKitTeamTypeSuper;
    }
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @"id" : @((3)),
                           @"id" : @((3)),
                           //: @"members" : members,
                           StringFromHideCellData(kStr_remoteSessionData) : members,
                           //: @"teamId" : teamId,
                           StringFromHideCellData(kStr_itemTingTitle) : teamId,
                           //: @"teamName" : team.teamName? team.teamName : @"Group",
                           StringFromHideCellData(kStr_viewMyName) : team.teamName? team.teamName : StringFromHideCellData(kStr_indexChangeValue),
                           //: @"room" : roomName,
                           StringFromHideCellData(kStr_providerValue) : roomName,
                           //: @"teamType" : @(teamType)
                           StringFromHideCellData(kStr_captureValue) : @(teamType)
                          //: };
                          };
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = [[NSString alloc] initWithData:data
    NSString *content = [[NSString alloc] initWithData:data
                                           //: encoding:NSUTF8StringEncoding];
                                           encoding:NSUTF8StringEncoding];
    //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
    NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
    //: notification.sendToOnlineUsersOnly = NO;
    notification.sendToOnlineUsersOnly = NO;
    //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
    notification.env = [[SayImage linkIn] installment];
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    EmptyKey *option = [[EmptyKey alloc] init];
    //: option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    //: FFFKitInfo *me = [[MyUserKit sharedKit] infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option];
    MarginThanInfo *me = [[Afterwards blue] put:[NIMSDK sharedSDK].loginManager.currentAccount button:option];

    //: notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,@"正在呼叫您".ntes_localized];
    notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,StringFromHideCellData(kStr_titleColorData).aboveMagnitude];
    //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: notification.setting = setting;
    notification.setting = setting;


    //: for (NSString *userId in members) {
    for (NSString *userId in members) {
        //: if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        {
            //: continue;
            continue;
        }
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: [[NIMSDK sharedSDK].systemNotificationManager sendCustomNotification:notification toSession:session completion:nil];
        [[NIMSDK sharedSDK].systemNotificationManager sendCustomNotification:notification toSession:session completion:nil];
    }

}




//: @end
@end

Byte * HideCellDataToCache(Byte *data) {
    int bubbleBlue = data[0];
    int withView = data[1];
    int time = data[2];
    if (!bubbleBlue) return data + time;
    for (int i = 0; i < withView / 2; i++) {
        int begin = time + i;
        int end = time + withView - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[time + withView] = 0;
    return data + time;
}

NSString *StringFromHideCellData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HideCellDataToCache(data)];
}  
