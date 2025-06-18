// __DEBUG__
// __CLOSE_PRINT__
//
//  PointConfig.h
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class FFFSessionConfig;
@class FrameConfig;
//: @interface NTESSessionConfig : NSObject<FFFSessionConfig>
@interface PointConfig : NSObject<FrameConfig>
//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @end
@end