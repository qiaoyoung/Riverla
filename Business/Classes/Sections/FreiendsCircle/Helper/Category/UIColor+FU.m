// __DEBUG__
// __CLOSE_PRINT__
//
//  UIColor+FU.m
//  FULive
//
//  Created by L on 2018/7/31.
//  Copyright © 2018年 L. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIColor+FU.h"
#import "UIColor+FU.h"

//: @implementation UIColor (FU)
@implementation UIColor (FU)

//: #pragma mark  十六进制颜色
#pragma mark  十六进制颜色
//: + (UIColor *)colorWithHexColorString:(NSString *)hexColorString{
+ (UIColor *)prefaceLabel:(NSString *)hexColorString{
    //: return [self colorWithHexColorString:hexColorString alpha:1.0f];
    return [self skinColourAlpha:hexColorString childOnTeam:1.0f];
}

//: #pragma mark  十六进制颜色
#pragma mark  十六进制颜色
//: + (UIColor *)colorWithHexColorString:(NSString *)hexColorString alpha:(CGFloat)alpha{
+ (UIColor *)skinColourAlpha:(NSString *)hexColorString childOnTeam:(CGFloat)alpha{

    //删除前缀字符
    //: if ([hexColorString hasPrefix:@"0X"] || [hexColorString hasPrefix:@"0x"]) {
    if ([hexColorString hasPrefix:@"0X"] || [hexColorString hasPrefix:@"0x"]) {
        //: hexColorString = [hexColorString substringFromIndex:2];
        hexColorString = [hexColorString substringFromIndex:2];
    }
    //: if ([hexColorString hasPrefix:@"#"]) {
    if ([hexColorString hasPrefix:@"#"]) {
        //: hexColorString = [hexColorString substringFromIndex:1];
        hexColorString = [hexColorString substringFromIndex:1];
    }

    //判断字符串是否符合长度规范
    //: if (hexColorString.length != 6) {
    if (hexColorString.length != 6) {
        //: return [UIColor clearColor];
        return [UIColor clearColor];
    }

    //截取色值字符
    //: NSRange range = NSMakeRange(0, 2);
    NSRange range = NSMakeRange(0, 2);
    //: NSString *redString = [hexColorString substringWithRange:range];
    NSString *redString = [hexColorString substringWithRange:range];
    //: range.location = 2;
    range.location = 2;
    //: NSString *greenString = [hexColorString substringWithRange:range];
    NSString *greenString = [hexColorString substringWithRange:range];
    //: range.location = 4;
    range.location = 4;
    //: NSString *blueString = [hexColorString substringWithRange:range];
    NSString *blueString = [hexColorString substringWithRange:range];

    //转换成色值
    //: unsigned int red;
    unsigned int red;
    //: unsigned int green;
    unsigned int green;
    //: unsigned int blue;
    unsigned int blue;
    //: [[NSScanner scannerWithString:redString] scanHexInt:&red];
    [[NSScanner scannerWithString:redString] scanHexInt:&red];
    //: [[NSScanner scannerWithString:greenString] scanHexInt:&green];
    [[NSScanner scannerWithString:greenString] scanHexInt:&green];
    //: [[NSScanner scannerWithString:blueString] scanHexInt:&blue];
    [[NSScanner scannerWithString:blueString] scanHexInt:&blue];
    //: UIColor *resultColor = [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpha];
    UIColor *resultColor = [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpha];
    //: return resultColor;
    return resultColor;
}

//: + (UIColor *)colorWithHex:(NSUInteger)hex {
+ (UIColor *)value:(NSUInteger)hex {
    //: return [self colorWithHex:hex alpha:1.0];
    return [self colorful:hex sizeContent:1.0];
}

//: + (UIColor *)colorWithHex:(NSUInteger)hex alpha:(CGFloat)alpha {
+ (UIColor *)colorful:(NSUInteger)hex sizeContent:(CGFloat)alpha {
    //: int r = (hex >> 16) & 0xFF;
    int r = (hex >> 16) & 0xFF;
    //: int g = (hex >> 8) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    //: int b = hex & 0xFF;
    int b = hex & 0xFF;
    //: return [UIColor colorWithRed:r/255.f green:g/255.f blue:b/255.f alpha:alpha];
    return [UIColor colorWithRed:r/255.f green:g/255.f blue:b/255.f alpha:alpha];
}

//: @end
@end