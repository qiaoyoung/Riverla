// __DEBUG__
// __CLOSE_PRINT__
//
//  SearchedPhoto.h
// Afterwards
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
#import "RandomHolder.h"

//: @class NIMKitFirerInfo;
@class FrameBubblePop;

//: @interface FFFKitNotificationFirer : NSObject<FFFKitTimerHolderDelegate>
@interface SearchedPhoto : NSObject<OnAfter>

//: @property (nonatomic,strong) NSMutableDictionary *cachedInfo;
@property (nonatomic,strong) NSMutableDictionary *cachedInfo;

//: @property (nonatomic,strong) FFFKitTimerHolder *timer;
@property (nonatomic,strong) RandomHolder *timer;

//: @property (nonatomic,assign) NSTimeInterval timeInterval;
@property (nonatomic,assign) NSTimeInterval timeInterval;

//: - (void)addFireInfo:(NIMKitFirerInfo *)info;
- (void)videoInfo:(FrameBubblePop *)info;

//: @end
@end


//: @interface NIMKitFirerInfo : NSObject
@interface FrameBubblePop : NSObject

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,copy) NSString *notificationName;
@property (nonatomic,copy) NSString *notificationName;

//: - (NSObject *)fireObject;
- (NSObject *)to;

//: - (NSString *)saveIdentity;
- (NSString *)index;

//: @end
@end