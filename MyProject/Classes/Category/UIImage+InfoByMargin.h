// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+InfoByMargin.h
//  NIM
//
//  Created by chris on 15/7/13.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (NTES)
@interface UIImage (InfoByMargin)

//: + (UIImage *)fetchImage:(NSString *)imageNameOrPath;
+ (UIImage *)style:(NSString *)imageNameOrPath;

//: - (UIImage *)imageForAvatarUpload;
- (UIImage *)fileWith;

//: @end
@end