// __DEBUG__
// __CLOSE_PRINT__
//
//  WithTopDevice.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FFFKitDevice : NSObject
@interface WithTopDevice : NSObject

//: + (FFFKitDevice *)currentDevice;
+ (WithTopDevice *)catapult;

/// 语言
//: + (NSString *)language;
+ (NSString *)background;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)quick;

//: - (CGFloat)compressQuality;
- (CGFloat)bottom;

//: - (CGFloat)statusBarHeight;
- (CGFloat)title;

//: @end
@end