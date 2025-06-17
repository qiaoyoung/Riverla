
#import <Foundation/Foundation.h>
typedef struct {
    Byte cru;
    Byte *mootProper;
    unsigned int drag;
    bool admixture;
	int subjectMatter;
	int tally;
	int chromatic;
} RealizeData;

NSString *StringFromRealizeData(RealizeData *data);


//: info must be fired in main thread
RealizeData kStr_representTitle = (RealizeData){42, (Byte []){67, 68, 76, 69, 10, 71, 95, 89, 94, 10, 72, 79, 10, 76, 67, 88, 79, 78, 10, 67, 68, 10, 71, 75, 67, 68, 10, 94, 66, 88, 79, 75, 78, 159}, 33, false, 69, 238, 22};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SearchedPhoto.m
// Afterwards
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitNotificationFirer.h"
#import "SearchedPhoto.h"

//: NSString *const NIMKitUserInfoHasUpdatedNotification = @"NIMKitUserInfoHasUpdatedNotification";
NSString *const kLet_borderText = @"NIMKitUserInfoHasUpdatedNotification";
//: NSString *const NIMKitTeamInfoHasUpdatedNotification = @"NIMKitTeamInfoHasUpdatedNotification";
NSString *const kLet_windowUserValue = @"NIMKitTeamInfoHasUpdatedNotification";

//: NSString *const NIMKitUserBlackListHasUpdatedNotification = @"NIMKitUserBlackListHasUpdatedNotification";
NSString *const kLet_timingOpenTitle = @"NIMKitUserBlackListHasUpdatedNotification";
//: NSString *const NIMKitUserMuteListHasUpdatedNotification = @"NIMKitUserMuteListHasUpdatedNotification";
NSString *const kLet_insideValue = @"NIMKitUserMuteListHasUpdatedNotification";

//: NSString *const NIMKitTeamMembersHasUpdatedNotification = @"NIMKitTeamMembersHasUpdatedNotification";
NSString *const kLet_topData = @"NIMKitTeamMembersHasUpdatedNotification";

//: NSString *const FFFKitInfoKey = @"InfoId";
NSString *const kLet_originData = @"InfoId";

//: @implementation FFFKitNotificationFirer
@implementation SearchedPhoto

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _timer = [[FFFKitTimerHolder alloc] init];
        _timer = [[RandomHolder alloc] init];
        //: _timeInterval = 1.0f;
        _timeInterval = 1.0f;
        //: _cachedInfo = [[NSMutableDictionary alloc] init];
        _cachedInfo = [[NSMutableDictionary alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)addFireInfo:(NIMKitFirerInfo *)info{
- (void)videoInfo:(FrameBubblePop *)info{
    //: NSAssert([NSThread currentThread].isMainThread, @"info must be fired in main thread");
    NSAssert([NSThread currentThread].isMainThread, StringFromRealizeData(&kStr_representTitle));
    //: if (!self.cachedInfo.count) {
    if (!self.cachedInfo.count) {
        //: [self.timer startTimer:self.timeInterval delegate:self repeats:NO];
        [self.timer begin:self.timeInterval computerFileContentImage:self repeats:NO];
    }
    //: [self.cachedInfo setObject:info forKey:info.saveIdentity];
    [self.cachedInfo setObject:info forKey:info.index];
}

//: #pragma mark - FFFKitTimerHolderDelegate
#pragma mark - OnAfter

//: - (void)onNIMKitTimerFired:(FFFKitTimerHolder *)holder{
- (void)recording:(RandomHolder *)holder{
    //: NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    //: for (NIMKitFirerInfo *info in self.cachedInfo.allValues) {
    for (FrameBubblePop *info in self.cachedInfo.allValues) {
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
        if (info.to) {
            //: [fireInfos addObject:info.fireObject];
            [fireInfos addObject:info.to];
        }
    }

    //: for (NSString *notificationName in dict) {
    for (NSString *notificationName in dict) {
        //: NSDictionary *userInfo = dict[notificationName]? @{ FFFKitInfoKey:dict[notificationName] } : nil;
        NSDictionary *userInfo = dict[notificationName]? @{ kLet_originData:dict[notificationName] } : nil;
        //: [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
        [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
    }

    //: [self.cachedInfo removeAllObjects];
    [self.cachedInfo removeAllObjects];
}


//: @end
@end


//: @implementation NIMKitFirerInfo
@implementation FrameBubblePop

//: - (NSObject *)fireObject
- (NSObject *)to
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
- (NSString *)index
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

Byte *RealizeDataToByte(RealizeData *data) {
    if (data->admixture) return data->mootProper;
    for (int i = 0; i < data->drag; i++) {
        data->mootProper[i] ^= data->cru;
    }
    data->mootProper[data->drag] = 0;
    data->admixture = true;
	if (data->drag >= 3) {
		data->subjectMatter = data->mootProper[0];
		data->tally = data->mootProper[1];
		data->chromatic = data->mootProper[2];
	}
    return data->mootProper;
}

NSString *StringFromRealizeData(RealizeData *data) {
    return [NSString stringWithUTF8String:(char *)RealizeDataToByte(data)];
}
