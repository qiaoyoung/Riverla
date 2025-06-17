// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+TextPress.h
//  LYPlayerDemo
//
//  Created by liyang on 16/11/6.
//  Copyright © 2016年 com.liyang.player. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (ComPress)
@interface UIImage (TextPress)

/** 缩放到指定大小 */
//: - (UIImage*)imageCompressWithSimple:(UIImage*)image scaledToSize:(CGSize)size;
- (UIImage*)thoughtImageTingSize:(UIImage*)image nim:(CGSize)size;

/** 根据颜色和圆的半径来创建一个 Image */
//: + (UIImage *)createImageWithColor:(UIColor *)color radius:(CGFloat)radius;
+ (UIImage *)nimRadius:(UIColor *)color range:(CGFloat)radius;

/** 根据一个view来创建一个 Image */
//: + (UIImage*)creatImageWithView:(UIView *)theView;
+ (UIImage*)cageyView:(UIView *)theView;
//: @end
@end