// __DEBUG__
// __CLOSE_PRINT__
//
//  MarginMax.h
//  sohunews
//
//  Created by tianyulong on 2022/7/11.
//  Copyright © 2022 Sohu.com. All rights reserved.
//
///  ------------------------------ CGContextRef 蒙层绘制方法 ------------------------------
///  ------------------------------ CGContextRef 蒙层绘制方法 ------------------------------
///  ------------------------------ CGContextRef 蒙层绘制方法 ------------------------------
///  ------------------------------ CGContextRef 蒙层绘制方法 ------------------------------
///  ------------------------------ CGContextRef 蒙层绘制方法 ------------------------------

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef NS_ENUM(NSInteger, SNGradientDirection) {
typedef NS_ENUM(NSInteger, SNGradientDirection) {
    //: SNLinearGradientDirectionLevel, 
    SNLinearGradientDirectionLevel, //AC - BD
    //: SNLinearGradientDirectionVertical, 
    SNLinearGradientDirectionVertical, //AB - CD
    //: SNLinearGradientDirectionVerticalOverTurn, 
    SNLinearGradientDirectionVerticalOverTurn, //CD - AB 
    //: SNLinearGradientDirectionUpwardDiagonalLine, 
    SNLinearGradientDirectionUpwardDiagonalLine, //A - D
    //: SNLinearGradientDirectionDownDiagonalLine, 
    SNLinearGradientDirectionDownDiagonalLine, //C - B
//: };
};
//      A         B
//       _________
//      |         |
//      |         |
//       ---------
//      C         D

//: @interface SNGradientHelper : NSObject
@interface MarginMax : NSObject

//  线性渐变 CGSizeMake(kDefaultWidth, kDefaultHeight)
//: + (UIImage *)getLinearGradientImage:(UIColor *)startColor and:(UIColor *)endColor directionType:(SNGradientDirection)directionType;
+ (UIImage *)rallyUpwards:(UIColor *)startColor blackType:(UIColor *)endColor bringIn:(SNGradientDirection)directionType;
//: + (UIImage *)getLinearGradientImage:(UIColor *)startColor and:(UIColor *)endColor directionType:(SNGradientDirection)directionType option:(CGSize)size;
+ (UIImage *)complete:(UIColor *)startColor name:(UIColor *)endColor view:(SNGradientDirection)directionType deal:(CGSize)size;

// 径向梯度
//: + (UIImage *)getRadialGradientImage:(UIColor *)centerColor and:(UIColor *)outColor; 
+ (UIImage *)characteristicRootOfASquareMatrix:(UIColor *)centerColor visualImageSession:(UIColor *)outColor; // raduis = kDefaultWidth / 2
//: + (UIImage *)getRadialGradientImage:(UIColor *)centerColor and:(UIColor *)outColor option:(CGSize)size;
+ (UIImage *)input:(UIColor *)centerColor engage:(UIColor *)outColor visualImage:(CGSize)size;

//: + (void)addGradientChromatoAnimation:(UIView *)view;
+ (void)shouldFilter:(UIView *)view;

// 线性渐变和彩色动画  不需要为lable调用'addSubview:
//: + (void)addLinearGradientForLableText:(UIView *)parentView lable:(UILabel *)lable start:(UIColor *)startColor and:(UIColor *)endColor;
+ (void)gesture:(UIView *)parentView item:(UILabel *)lable should:(UIColor *)startColor selected:(UIColor *)endColor;
//: + (void)addGradientChromatoAnimationForLableText:(UIView *)parentView lable:(UILabel *)lable;
+ (void)mountainPass:(UIView *)parentView show:(UILabel *)lable;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END