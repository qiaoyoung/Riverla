// __DEBUG__
// __CLOSE_PRINT__
//
//  NameApp.h
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class FFFSessionConfig;
@class BlueConfig;
//: @interface NTESSessionConfig : NSObject<FFFSessionConfig>
@interface NameApp : NSObject<BlueConfig>
//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @end
@end