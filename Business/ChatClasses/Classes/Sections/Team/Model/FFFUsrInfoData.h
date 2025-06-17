// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFUsrInfoData.h
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactDefines.h"
#import "FFFContactDefines.h"

//: @class FFFKitInfo;
@class MarginThanInfo;

//: @interface RiverlaUsrInfo : NSObject <NIMGroupMemberProtocol>
@interface ItemInfo : NSObject <TingProtocol>

//: @property (nonatomic,strong) FFFKitInfo *info;
@property (nonatomic,strong) MarginThanInfo *info;

//: - (BOOL)isFriend;
- (BOOL)should;

//: @end
@end