// __DEBUG__
// __CLOSE_PRINT__
//
//  TableDevice.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FFFKitDevice : NSObject
@interface TableDevice : NSObject

//: + (FFFKitDevice *)currentDevice;
+ (TableDevice *)record;

/// 语言
//: + (NSString *)language;
+ (NSString *)itemLanguage;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)ting;

//: - (CGFloat)compressQuality;
- (CGFloat)shadow;

//: - (CGFloat)statusBarHeight;
- (CGFloat)with;

//: @end
@end