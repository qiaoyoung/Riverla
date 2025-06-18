// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface SGGenerateQRCode : NSObject
@interface OnQrcode : NSObject
/// 生成二维码
//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size;
+ (UIImage *)name:(NSString *)data nameForSize:(CGFloat)size;

/// 生成二维码（自定义颜色）
///
/// @param data     二维码数据
/// @param size     二维码大小
/// @param color    二维码颜色
/// @param backgroundColor    二维码背景颜色
//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size color:(UIColor *)color backgroundColor:(UIColor *)backgroundColor;
+ (UIImage *)view:(NSString *)data collection:(CGFloat)size face:(UIColor *)color comment:(UIColor *)backgroundColor;

/// 生成带 logo 的二维码（推荐使用）
///
/// @param data     二维码数据
/// @param size     二维码大小
/// @param logoImage    logo
/// @param ratio        logo 相对二维码的比例（取值范围 0.0 ～ 0.5f）
//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size logoImage:(UIImage *)logoImage ratio:(CGFloat)ratio;
+ (UIImage *)item:(NSString *)data select:(CGFloat)size changeRatio:(UIImage *)logoImage mode:(CGFloat)ratio;

/// 生成带 logo 的二维码（拓展）
///
/// @param data     二维码数据
/// @param size     二维码大小
/// @param logoImage    logo
/// @param ratio        logo 相对二维码的比例（取值范围 0.0 ～ 0.5f）
/// @param logoImageCornerRadius    logo 外边框圆角（取值范围 0.0 ～ 10.0f）
/// @param logoImageBorderWidth     logo 外边框宽度（取值范围 0.0 ～ 10.0f）
/// @param logoImageBorderColor     logo 外边框颜色
//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size logoImage:(UIImage *)logoImage ratio:(CGFloat)ratio logoImageCornerRadius:(CGFloat)logoImageCornerRadius logoImageBorderWidth:(CGFloat)logoImageBorderWidth logoImageBorderColor:(UIColor *)logoImageBorderColor;
+ (UIImage *)logo:(NSString *)data image:(CGFloat)size value:(UIImage *)logoImage flip:(CGFloat)ratio max:(CGFloat)logoImageCornerRadius to:(CGFloat)logoImageBorderWidth size:(UIColor *)logoImageBorderColor;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END