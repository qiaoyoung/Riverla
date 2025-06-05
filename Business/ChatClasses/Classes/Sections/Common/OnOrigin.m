
#import <Foundation/Foundation.h>

NSString *StringFromDramaticData(Byte *data);


//: info must be fired in main thread
Byte kStr_brokeDonTapName[] = {20, 33, 4, 130, 100, 97, 101, 114, 104, 116, 32, 110, 105, 97, 109, 32, 110, 105, 32, 100, 101, 114, 105, 102, 32, 101, 98, 32, 116, 115, 117, 109, 32, 111, 102, 110, 105, 163};

// __DEBUG__
// __CLOSE_PRINT__
//
//  OnOrigin.m
// Notice
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitNotificationFirer.h"
#import "OnOrigin.h"

//: NSString *const NIMKitUserInfoHasUpdatedNotification = @"NIMKitUserInfoHasUpdatedNotification";
NSString *const let_windowTeamLabelTitle = @"NIMKitUserInfoHasUpdatedNotification";
//: NSString *const NIMKitTeamInfoHasUpdatedNotification = @"NIMKitTeamInfoHasUpdatedNotification";
NSString *const let_textBottomName = @"NIMKitTeamInfoHasUpdatedNotification";

//: NSString *const NIMKitUserBlackListHasUpdatedNotification = @"NIMKitUserBlackListHasUpdatedNotification";
NSString *const let_domainContent = @"NIMKitUserBlackListHasUpdatedNotification";
//: NSString *const NIMKitUserMuteListHasUpdatedNotification = @"NIMKitUserMuteListHasUpdatedNotification";
NSString *const let_reverseAssetValue = @"NIMKitUserMuteListHasUpdatedNotification";

//: NSString *const NIMKitTeamMembersHasUpdatedNotification = @"NIMKitTeamMembersHasUpdatedNotification";
NSString *const let_rootContent = @"NIMKitTeamMembersHasUpdatedNotification";

//: NSString *const FFFKitInfoKey = @"InfoId";
NSString *const let_errorModelHeightContent = @"InfoId";

//: @implementation FFFKitNotificationFirer
@implementation OnOrigin

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _timer = [[FFFKitTimerHolder alloc] init];
        _timer = [[BarHolder alloc] init];
        //: _timeInterval = 1.0f;
        _timeInterval = 1.0f;
        //: _cachedInfo = [[NSMutableDictionary alloc] init];
        _cachedInfo = [[NSMutableDictionary alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)addFireInfo:(NIMKitFirerInfo *)info{
- (void)user:(LinkRecent *)info{
    //: NSAssert([NSThread currentThread].isMainThread, @"info must be fired in main thread");
    NSAssert([NSThread currentThread].isMainThread, StringFromDramaticData(kStr_brokeDonTapName));
    //: if (!self.cachedInfo.count) {
    if (!self.cachedInfo.count) {
        //: [self.timer startTimer:self.timeInterval delegate:self repeats:NO];
        [self.timer name:self.timeInterval up:self from:NO];
    }
    //: [self.cachedInfo setObject:info forKey:info.saveIdentity];
    [self.cachedInfo setObject:info forKey:info.orientationIdentity];
}

//: #pragma mark - FFFKitTimerHolderDelegate
#pragma mark - MoveEvaluate

//: - (void)onNIMKitTimerFired:(FFFKitTimerHolder *)holder{
- (void)changes:(BarHolder *)holder{
    //: NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    //: for (NIMKitFirerInfo *info in self.cachedInfo.allValues) {
    for (LinkRecent *info in self.cachedInfo.allValues) {
        //: NSMutableArray *fireInfos = dict[info.notificationName];
        NSMutableArray *fireInfos = dict[info.notificationName];
        //: if (!fireInfos) {
        if (!fireInfos) {
            //: fireInfos = [[NSMutableArray alloc] init];
            fireInfos = [[NSMutableArray alloc] init];
            //: dict[info.notificationName] = fireInfos;
            dict[info.notificationName] = fireInfos;
        }
        //: if (info.fireObject) {
        if (info.infoBy) {
            //: [fireInfos addObject:info.fireObject];
            [fireInfos addObject:info.infoBy];
        }
    }

    //: for (NSString *notificationName in dict) {
    for (NSString *notificationName in dict) {
        //: NSDictionary *userInfo = dict[notificationName]? @{ FFFKitInfoKey:dict[notificationName] } : nil;
        NSDictionary *userInfo = dict[notificationName]? @{ let_errorModelHeightContent:dict[notificationName] } : nil;
        //: [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
        [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
    }

    //: [self.cachedInfo removeAllObjects];
    [self.cachedInfo removeAllObjects];
}


//: @end
@end


//: @implementation NIMKitFirerInfo
@implementation LinkRecent

//: - (NSObject *)fireObject
- (NSObject *)infoBy
{
    //: if (self.session) {
    if (self.session) {
        //: return self.session.sessionId;
        return self.session.sessionId;
    }
    //: return [NSNull null];
    return [NSNull null];
}

//: - (NSString *)saveIdentity
- (NSString *)orientationIdentity
{
    //: if (self.session) {
    if (self.session) {
        //: return [NSString stringWithFormat:@"%@-%zd",self.session.sessionId,self.session.sessionType];;
        return [NSString stringWithFormat:@"%@-%zd",self.session.sessionId,self.session.sessionType];;
    }
    //: return self.notificationName;
    return self.notificationName;
}

//: @end
@end

Byte * DramaticDataToCache(Byte *data) {
    int ragWorried = data[0];
    int saltworks = data[1];
    int romancePasse = data[2];
    if (!ragWorried) return data + romancePasse;
    for (int i = 0; i < saltworks / 2; i++) {
        int begin = romancePasse + i;
        int end = romancePasse + saltworks - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[romancePasse + saltworks] = 0;
    return data + romancePasse;
}

NSString *StringFromDramaticData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DramaticDataToCache(data)];
}  
