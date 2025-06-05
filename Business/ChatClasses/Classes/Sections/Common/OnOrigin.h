// __DEBUG__
// __CLOSE_PRINT__
//
//  OnOrigin.h
// Notice
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFKitTimerHolder.h"
#import "BarHolder.h"

//: @class NIMKitFirerInfo;
@class LinkRecent;

//: @interface FFFKitNotificationFirer : NSObject<FFFKitTimerHolderDelegate>
@interface OnOrigin : NSObject<MoveEvaluate>

//: @property (nonatomic,strong) NSMutableDictionary *cachedInfo;
@property (nonatomic,strong) NSMutableDictionary *cachedInfo;

//: @property (nonatomic,strong) FFFKitTimerHolder *timer;
@property (nonatomic,strong) BarHolder *timer;

//: @property (nonatomic,assign) NSTimeInterval timeInterval;
@property (nonatomic,assign) NSTimeInterval timeInterval;

//: - (void)addFireInfo:(NIMKitFirerInfo *)info;
- (void)user:(LinkRecent *)info;

//: @end
@end


//: @interface NIMKitFirerInfo : NSObject
@interface LinkRecent : NSObject

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,copy) NSString *notificationName;
@property (nonatomic,copy) NSString *notificationName;

//: - (NSObject *)fireObject;
- (NSObject *)infoBy;

//: - (NSString *)saveIdentity;
- (NSString *)orientationIdentity;

//: @end
@end