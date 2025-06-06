// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+FU.h
//  FULiveDemo
//
//  Created by 项林平 on 2021/6/21.
//  Copyright © 2021 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface UIImage (FU)
@interface UIImage (FU)

/// 压缩图片
/// @param ratio 宽高压缩倍率
//: - (UIImage *)fu_compress:(CGFloat)ratio;
- (UIImage *)recording:(CGFloat)ratio;

/// 图片转正
//: - (UIImage *)fu_resetImageOrientationToUp;
- (UIImage *)maxRecent;

/// 图片处理
//: - (UIImage *)fu_processedImage;
- (UIImage *)enable;

/// 获取纯色图片
//: + (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)textDown:(UIColor *)color;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END