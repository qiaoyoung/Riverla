
#import <Foundation/Foundation.h>
typedef struct {
    Byte juror;
    Byte *shirtButton;
    unsigned int recessionBlind;
    bool vacuous;
	int ireButton;
} QuickData;

NSString *StringFromQuickData(QuickData *data);


//: colors
QuickData kStr_tingRepresentData = (QuickData){124, (Byte []){31, 19, 16, 19, 14, 15, 23}, 6, false, 99};


//: chromateAnimate
QuickData kStr_levelMartValue = (QuickData){123, (Byte []){24, 19, 9, 20, 22, 26, 15, 30, 58, 21, 18, 22, 26, 15, 30, 135}, 15, false, 40};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MarginMax.m
//  sohunews
//
//  Created by tianyulong on 2022/7/11.
//  Copyright © 2022 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SNGradientHelper.h"
#import "MarginMax.h"

//: @implementation SNGradientHelper
@implementation MarginMax


//: + (UIImage *)getLinearGradientImage:(UIColor *)startColor and:(UIColor *)endColor directionType:(SNGradientDirection)directionType {
+ (UIImage *)rallyUpwards:(UIColor *)startColor blackType:(UIColor *)endColor bringIn:(SNGradientDirection)directionType {
    //: return [self getLinearGradientImage:startColor and:endColor directionType:directionType option:CGSizeMake([[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    return [self complete:startColor name:endColor view:directionType deal:CGSizeMake([[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice clear]))];
}

//: + (UIImage *)getLinearGradientImage:(UIColor *)startColor and:(UIColor *)endColor directionType:(SNGradientDirection)directionType option:(CGSize)size {
+ (UIImage *)complete:(UIColor *)startColor name:(UIColor *)endColor view:(SNGradientDirection)directionType deal:(CGSize)size {

    //: CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    //: gradientLayer.colors = @[(__bridge id)startColor.CGColor,
    gradientLayer.colors = @[(__bridge id)startColor.CGColor,
                             //: (__bridge id)endColor.CGColor];
                             (__bridge id)endColor.CGColor];
    //: gradientLayer.locations = @[@(0.0f), @(1.0f)];
    gradientLayer.locations = @[@(0.0f), @(1.0f)];

    //: if (directionType == SNLinearGradientDirectionLevel) {
    if (directionType == SNLinearGradientDirectionLevel) {
        //: gradientLayer.startPoint = CGPointMake(0, 0);
        gradientLayer.startPoint = CGPointMake(0, 0);
        //: gradientLayer.endPoint = CGPointMake(1, 0);
        gradientLayer.endPoint = CGPointMake(1, 0);
    //: }else if (directionType == SNLinearGradientDirectionVertical){
    }else if (directionType == SNLinearGradientDirectionVertical){
        //: gradientLayer.startPoint = CGPointMake(0, 0);
        gradientLayer.startPoint = CGPointMake(0, 0);
        //: gradientLayer.endPoint = CGPointMake(0, 1);
        gradientLayer.endPoint = CGPointMake(0, 1);
    //: }else if (directionType == SNLinearGradientDirectionVerticalOverTurn){
    }else if (directionType == SNLinearGradientDirectionVerticalOverTurn){
        //: gradientLayer.startPoint = CGPointMake(0, 1);
        gradientLayer.startPoint = CGPointMake(0, 1);
        //: gradientLayer.endPoint = CGPointMake(0, 0);
        gradientLayer.endPoint = CGPointMake(0, 0);
    //: }else if (directionType == SNLinearGradientDirectionUpwardDiagonalLine){
    }else if (directionType == SNLinearGradientDirectionUpwardDiagonalLine){
        //: gradientLayer.startPoint = CGPointMake(0, 0);
        gradientLayer.startPoint = CGPointMake(0, 0);
        //: gradientLayer.endPoint = CGPointMake(1, 1);
        gradientLayer.endPoint = CGPointMake(1, 1);
    //: }else if (directionType == SNLinearGradientDirectionDownDiagonalLine){
    }else if (directionType == SNLinearGradientDirectionDownDiagonalLine){
        //: gradientLayer.startPoint = CGPointMake(0, 1);
        gradientLayer.startPoint = CGPointMake(0, 1);
        //: gradientLayer.endPoint = CGPointMake(1, 0);
        gradientLayer.endPoint = CGPointMake(1, 0);
    }

    //: gradientLayer.frame = CGRectMake(0, 0, size.width, size.height);
    gradientLayer.frame = CGRectMake(0, 0, size.width, size.height);
    //: UIGraphicsBeginImageContextWithOptions(gradientLayer.frame.size, NO, 0);
    UIGraphicsBeginImageContextWithOptions(gradientLayer.frame.size, NO, 0);
    //: [gradientLayer renderInContext:UIGraphicsGetCurrentContext()];
    [gradientLayer renderInContext:UIGraphicsGetCurrentContext()];
    //: UIImage *gradientImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *gradientImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();

    //: return gradientImage;
    return gradientImage;
}


//: #pragma mark - Radial Gradient
#pragma mark - Radial Gradient

//: + (UIImage *)getRadialGradientImage:(UIColor *)centerColor and:(UIColor *)outColor {
+ (UIImage *)characteristicRootOfASquareMatrix:(UIColor *)centerColor visualImageSession:(UIColor *)outColor {
    //: return [self getRadialGradientImage:centerColor and:outColor option:CGSizeMake([[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    return [self input:centerColor engage:outColor visualImage:CGSizeMake([[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice clear]))];
}

//: + (UIImage *)getRadialGradientImage:(UIColor *)centerColor and:(UIColor *)outColor option:(CGSize)size {
+ (UIImage *)input:(UIColor *)centerColor engage:(UIColor *)outColor visualImage:(CGSize)size {
    //: UIGraphicsBeginImageContext(size);
    UIGraphicsBeginImageContext(size);
    //: CGContextRef gc = UIGraphicsGetCurrentContext();
    CGContextRef gc = UIGraphicsGetCurrentContext();

    //: CGMutablePathRef path = CGPathCreateMutable();
    CGMutablePathRef path = CGPathCreateMutable();
    //: CGFloat raduis = ((size.width / 2) > (size.height / 2) ? (size.width / 2) : (size.height / 2));
    CGFloat raduis = ((size.width / 2) > (size.height / 2) ? (size.width / 2) : (size.height / 2));
    //: CGPathAddArc(path, NULL, size.width / 2, size.height / 2, raduis, 0, 2 * 3.14159265358979323846264338327950288, NO);
    CGPathAddArc(path, NULL, size.width / 2, size.height / 2, raduis, 0, 2 * 3.14159265358979323846264338327950288, NO);

    //: [self drawRadialGradient:gc path:path startColor:centerColor.CGColor endColor:outColor.CGColor];
    [self menu:gc selectPathRef:path past:centerColor.CGColor text:outColor.CGColor];
    //: CGPathRelease(path);
    CGPathRelease(path);

    //: UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return img;
    return img;
}

//: + (void)drawRadialGradient:(CGContextRef)context
+ (void)menu:(CGContextRef)context
                      //: path:(CGPathRef)path
                      selectPathRef:(CGPathRef)path
                //: startColor:(CGColorRef)startColor
                past:(CGColorRef)startColor
                  //: endColor:(CGColorRef)endColor {
                  text:(CGColorRef)endColor {

    //: CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    //: CGFloat locations[] = { 0.0, 1.0 };
    CGFloat locations[] = { 0.0, 1.0 };

    //: NSArray *colors = @[(__bridge id) startColor, (__bridge id) endColor];
    NSArray *colors = @[(__bridge id) startColor, (__bridge id) endColor];

    //: CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef) colors, locations);
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef) colors, locations);


    //: CGRect pathRect = CGPathGetBoundingBox(path);
    CGRect pathRect = CGPathGetBoundingBox(path);
    //: CGPoint center = CGPointMake(CGRectGetMidX(pathRect), CGRectGetMidY(pathRect));
    CGPoint center = CGPointMake(CGRectGetMidX(pathRect), CGRectGetMidY(pathRect));
    //: CGFloat radius = ((pathRect.size.width / 2.0) > (pathRect.size.height / 2.0) ? (pathRect.size.width / 2.0) : (pathRect.size.height / 2.0)) * sqrt(2);
    CGFloat radius = ((pathRect.size.width / 2.0) > (pathRect.size.height / 2.0) ? (pathRect.size.width / 2.0) : (pathRect.size.height / 2.0)) * sqrt(2);

    //: CGContextSaveGState(context);
    CGContextSaveGState(context);
    //: CGContextAddPath(context, path);
    CGContextAddPath(context, path);
    //: CGContextEOClip(context);
    CGContextEOClip(context);

    //: CGContextDrawRadialGradient(context, gradient, center, 0, center, radius, 0);
    CGContextDrawRadialGradient(context, gradient, center, 0, center, radius, 0);

    //: CGContextRestoreGState(context);
    CGContextRestoreGState(context);

    //: CGGradientRelease(gradient);
    CGGradientRelease(gradient);
    //: CGColorSpaceRelease(colorSpace);
    CGColorSpaceRelease(colorSpace);
}

//   ChromatoAnimation
//: + (void)addGradientChromatoAnimation:(UIView *)view {
+ (void)shouldFilter:(UIView *)view {
    //: if (view == nil) {
    if (view == nil) {
        //: return;
        return;
    }

    //: CGFloat btnHeight = view.bounds.size.height;;
    CGFloat btnHeight = view.bounds.size.height;;
    //: CGFloat btnWidth = view.bounds.size.width;
    CGFloat btnWidth = view.bounds.size.width;

    //: CAGradientLayer *chromatoLayer = [CAGradientLayer layer];
    CAGradientLayer *chromatoLayer = [CAGradientLayer layer];
    //: [chromatoLayer setColors:@[(__bridge id)[UIColor colorWithHue:0.63 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.75 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor]];
    [chromatoLayer setColors:@[(__bridge id)[UIColor colorWithHue:0.63 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.75 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor]];
    //: [chromatoLayer setStartPoint:CGPointMake(0, 0)];
    [chromatoLayer setStartPoint:CGPointMake(0, 0)];
    //: [chromatoLayer setEndPoint:CGPointMake(1, 0)];
    [chromatoLayer setEndPoint:CGPointMake(1, 0)];
    //: chromatoLayer.locations = @[@(0.0f) ,@(1.0f)];
    chromatoLayer.locations = @[@(0.0f) ,@(1.0f)];
    //: [chromatoLayer setFrame:CGRectMake(0, 0, btnWidth, btnHeight)];
    [chromatoLayer setFrame:CGRectMake(0, 0, btnWidth, btnHeight)];

    //: CAKeyframeAnimation *chromateAnimate = [self createGradientChromatoKeyAnimation];
    CAKeyframeAnimation *chromateAnimate = [self saveStatus];

    //: [chromatoLayer addAnimation:chromateAnimate forKey:@"chromateAnimate"];
    [chromatoLayer addAnimation:chromateAnimate forKey:StringFromQuickData(&kStr_levelMartValue)];

    //: if (chromatoLayer.superlayer == nil) {
    if (chromatoLayer.superlayer == nil) {
        //: [view.layer insertSublayer:chromatoLayer below:view.layer.sublayers[0]];
        [view.layer insertSublayer:chromatoLayer below:view.layer.sublayers[0]];
    }
}

//: + (void)addLinearGradientForLableText:(UIView *)parentView lable:(UILabel *)lable start:(UIColor *)startColor and:(UIColor *)endColor; {
+ (void)gesture:(UIView *)parentView item:(UILabel *)lable should:(UIColor *)startColor selected:(UIColor *)endColor; {
    //: if (parentView == nil || lable == nil) {
    if (parentView == nil || lable == nil) {
        //: return;
        return;
    }

    //: [parentView addSubview:lable];
    [parentView addSubview:lable];

    //: CAGradientLayer *chromatoLayer = [CAGradientLayer layer];
    CAGradientLayer *chromatoLayer = [CAGradientLayer layer];
    //: [chromatoLayer setColors:@[(__bridge id)startColor.CGColor, (__bridge id)endColor.CGColor]];
    [chromatoLayer setColors:@[(__bridge id)startColor.CGColor, (__bridge id)endColor.CGColor]];
    //: [chromatoLayer setStartPoint:CGPointMake(0, 0)];
    [chromatoLayer setStartPoint:CGPointMake(0, 0)];
    //: [chromatoLayer setEndPoint:CGPointMake(1, 0)];
    [chromatoLayer setEndPoint:CGPointMake(1, 0)];
    //: chromatoLayer.locations = @[@(0.0f) ,@(1.0f)];
    chromatoLayer.locations = @[@(0.0f) ,@(1.0f)];
    //: [chromatoLayer setFrame:parentView.frame];
    [chromatoLayer setFrame:parentView.frame];

    //: [parentView.layer addSublayer:chromatoLayer];
    [parentView.layer addSublayer:chromatoLayer];
    //: chromatoLayer.mask = lable.layer;
    chromatoLayer.mask = lable.layer;
    //: chromatoLayer.frame = chromatoLayer.bounds;
    chromatoLayer.frame = chromatoLayer.bounds;
}

//: + (void)addGradientChromatoAnimationForLableText:(UIView *)parentView lable:(UILabel *)lable {
+ (void)mountainPass:(UIView *)parentView show:(UILabel *)lable {
    //: if (parentView == nil || lable == nil) {
    if (parentView == nil || lable == nil) {
        //: return;
        return;
    }

    //: [parentView addSubview:lable];
    [parentView addSubview:lable];

    //: CAGradientLayer *chromatoLayer = [CAGradientLayer layer];
    CAGradientLayer *chromatoLayer = [CAGradientLayer layer];
    //: [chromatoLayer setColors:@[(__bridge id)[UIColor colorWithHue:0.63 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.75 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor]];
    [chromatoLayer setColors:@[(__bridge id)[UIColor colorWithHue:0.63 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.75 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor]];
    //: [chromatoLayer setStartPoint:CGPointMake(0, 0)];
    [chromatoLayer setStartPoint:CGPointMake(0, 0)];
    //: [chromatoLayer setEndPoint:CGPointMake(1, 0)];
    [chromatoLayer setEndPoint:CGPointMake(1, 0)];
    //: chromatoLayer.locations = @[@(0.0f) ,@(1.0f)];
    chromatoLayer.locations = @[@(0.0f) ,@(1.0f)];
    //: [chromatoLayer setFrame:parentView.frame];
    [chromatoLayer setFrame:parentView.frame];

    //: CAKeyframeAnimation *chromateAnimate = [self createGradientChromatoKeyAnimation];
    CAKeyframeAnimation *chromateAnimate = [self saveStatus];

    //: [chromatoLayer addAnimation:chromateAnimate forKey:@"chromateAnimate"];
    [chromatoLayer addAnimation:chromateAnimate forKey:StringFromQuickData(&kStr_levelMartValue)];

    //: [parentView.layer addSublayer:chromatoLayer];
    [parentView.layer addSublayer:chromatoLayer];
    //: chromatoLayer.mask = lable.layer;
    chromatoLayer.mask = lable.layer;
    //: chromatoLayer.frame = chromatoLayer.bounds;
    chromatoLayer.frame = chromatoLayer.bounds;
}


//: #pragma mark - private method
#pragma mark - private method

//: + (CAKeyframeAnimation *)createGradientChromatoKeyAnimation {
+ (CAKeyframeAnimation *)saveStatus {
    //: CAKeyframeAnimation *chromateAnimate = [CAKeyframeAnimation animationWithKeyPath:@"colors"];
    CAKeyframeAnimation *chromateAnimate = [CAKeyframeAnimation animationWithKeyPath:StringFromQuickData(&kStr_tingRepresentData)];

    //: chromateAnimate.values = @[@[(__bridge id)[UIColor colorWithHue:0.63 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.75 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
    chromateAnimate.values = @[@[(__bridge id)[UIColor colorWithHue:0.63 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.75 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               //: @[(__bridge id)[UIColor colorWithHue:0.73 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.85 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               @[(__bridge id)[UIColor colorWithHue:0.73 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.85 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               //: @[(__bridge id)[UIColor colorWithHue:0.83 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.95 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               @[(__bridge id)[UIColor colorWithHue:0.83 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.95 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               //: @[(__bridge id)[UIColor colorWithHue:0.88 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:1 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               @[(__bridge id)[UIColor colorWithHue:0.88 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:1 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               //: @[(__bridge id)[UIColor colorWithHue:0.98 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.1 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               @[(__bridge id)[UIColor colorWithHue:0.98 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.1 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               //: @[(__bridge id)[UIColor colorWithHue:1 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.12 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               @[(__bridge id)[UIColor colorWithHue:1 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.12 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               //: @[(__bridge id)[UIColor colorWithHue:0.1 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.22 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               @[(__bridge id)[UIColor colorWithHue:0.1 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.22 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               //: @[(__bridge id)[UIColor colorWithHue:0.2 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.32 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               @[(__bridge id)[UIColor colorWithHue:0.2 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.32 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               //: @[(__bridge id)[UIColor colorWithHue:0.3 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.42 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               @[(__bridge id)[UIColor colorWithHue:0.3 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.42 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               //: @[(__bridge id)[UIColor colorWithHue:0.4 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.52 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               @[(__bridge id)[UIColor colorWithHue:0.4 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.52 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               //: @[(__bridge id)[UIColor colorWithHue:0.5 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.62 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               @[(__bridge id)[UIColor colorWithHue:0.5 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.62 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               //: @[(__bridge id)[UIColor colorWithHue:0.6 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.72 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               @[(__bridge id)[UIColor colorWithHue:0.6 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.72 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor],
                               //: @[(__bridge id)[UIColor colorWithHue:0.63 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.75 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor]];
                               @[(__bridge id)[UIColor colorWithHue:0.63 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor, (__bridge id)[UIColor colorWithHue:0.75 saturation:0.69 brightness:0.88 alpha:1.0f].CGColor]];
    //: chromateAnimate.keyTimes = @[@0, @0.1, @0.2, @0.25, @0.35, @0.37, @0.47, @0.57, @0.67, @0.77, @0.87, @0.97, @1];
    chromateAnimate.keyTimes = @[@0, @0.1, @0.2, @0.25, @0.35, @0.37, @0.47, @0.57, @0.67, @0.77, @0.87, @0.97, @1];
    //: chromateAnimate.duration = 6;
    chromateAnimate.duration = 6;
    //: chromateAnimate.removedOnCompletion = NO;
    chromateAnimate.removedOnCompletion = NO;
    //: chromateAnimate.repeatCount = 0x1.fffffep+127f;
    chromateAnimate.repeatCount = 0x1.fffffep+127f;

    //: return chromateAnimate;
    return chromateAnimate;
}

//: @end
@end

Byte *QuickDataToByte(QuickData *data) {
    if (data->vacuous) return data->shirtButton;
    for (int i = 0; i < data->recessionBlind; i++) {
        data->shirtButton[i] ^= data->juror;
    }
    data->shirtButton[data->recessionBlind] = 0;
    data->vacuous = true;
	if (data->recessionBlind >= 1) {
		data->ireButton = data->shirtButton[0];
	}
    return data->shirtButton;
}

NSString *StringFromQuickData(QuickData *data) {
    return [NSString stringWithUTF8String:(char *)QuickDataToByte(data)];
}
