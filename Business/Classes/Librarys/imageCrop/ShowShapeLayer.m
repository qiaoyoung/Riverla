// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowShapeLayer.m
//  DynamicClipImage
//
//  Created by yasic on 2017/11/29.
//  Copyright © 2017年 yasic. All rights reserved.
//

// __M_A_C_R_O__
//: #import "YasicClipAreaLayer.h"
#import "ShowShapeLayer.h"
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: static CGFloat const lineWidth = 3;
static CGFloat const kLet_sizeValue = 3;

//: @implementation YasicClipAreaLayer
@implementation ShowShapeLayer

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _cropAreaLeft = 50;
        _cropAreaLeft = 50;
        //: _cropAreaTop = 50;
        _cropAreaTop = 50;
        //: _cropAreaRight = [UIScreen mainScreen].bounds.size.width - self.cropAreaLeft;
        _cropAreaRight = [UIScreen mainScreen].bounds.size.width - self.cropAreaLeft;
        //: _cropAreaBottom = 400;
        _cropAreaBottom = 400;
    }
    //: return self;
    return self;
}

//: - (void)drawInContext:(CGContextRef)ctx
- (void)drawInContext:(CGContextRef)ctx
{
    //: UIGraphicsPushContext(ctx);
    UIGraphicsPushContext(ctx);

    //: CGContextSetStrokeColorWithColor(ctx, [UIColor whiteColor].CGColor);
    CGContextSetStrokeColorWithColor(ctx, [UIColor whiteColor].CGColor);
    //: CGContextSetLineWidth(ctx, lineWidth);
    CGContextSetLineWidth(ctx, kLet_sizeValue);
    //: CGContextMoveToPoint(ctx, self.cropAreaLeft, self.cropAreaTop);
    CGContextMoveToPoint(ctx, self.cropAreaLeft, self.cropAreaTop);
    //: CGContextAddLineToPoint(ctx, self.cropAreaLeft, self.cropAreaBottom);
    CGContextAddLineToPoint(ctx, self.cropAreaLeft, self.cropAreaBottom);
    //: CGContextSetShadow(ctx, CGSizeMake(2, 0), 2.0);
    CGContextSetShadow(ctx, CGSizeMake(2, 0), 2.0);
    //: CGContextStrokePath(ctx);
    CGContextStrokePath(ctx);

    //: CGContextSetStrokeColorWithColor(ctx, [UIColor whiteColor].CGColor);
    CGContextSetStrokeColorWithColor(ctx, [UIColor whiteColor].CGColor);
    //: CGContextSetLineWidth(ctx, lineWidth);
    CGContextSetLineWidth(ctx, kLet_sizeValue);
    //: CGContextMoveToPoint(ctx, self.cropAreaLeft, self.cropAreaTop);
    CGContextMoveToPoint(ctx, self.cropAreaLeft, self.cropAreaTop);
    //: CGContextAddLineToPoint(ctx, self.cropAreaRight, self.cropAreaTop);
    CGContextAddLineToPoint(ctx, self.cropAreaRight, self.cropAreaTop);
    //: CGContextSetShadow(ctx, CGSizeMake(0, 2), 2.0);
    CGContextSetShadow(ctx, CGSizeMake(0, 2), 2.0);
    //: CGContextStrokePath(ctx);
    CGContextStrokePath(ctx);

    //: CGContextSetStrokeColorWithColor(ctx, [UIColor whiteColor].CGColor);
    CGContextSetStrokeColorWithColor(ctx, [UIColor whiteColor].CGColor);
    //: CGContextSetLineWidth(ctx, lineWidth);
    CGContextSetLineWidth(ctx, kLet_sizeValue);
    //: CGContextMoveToPoint(ctx, self.cropAreaRight, self.cropAreaTop);
    CGContextMoveToPoint(ctx, self.cropAreaRight, self.cropAreaTop);
    //: CGContextAddLineToPoint(ctx, self.cropAreaRight, self.cropAreaBottom);
    CGContextAddLineToPoint(ctx, self.cropAreaRight, self.cropAreaBottom);
    //: CGContextSetShadow(ctx, CGSizeMake(-2, 0), 2.0);
    CGContextSetShadow(ctx, CGSizeMake(-2, 0), 2.0);
    //: CGContextStrokePath(ctx);
    CGContextStrokePath(ctx);

    //: CGContextSetStrokeColorWithColor(ctx, [UIColor whiteColor].CGColor);
    CGContextSetStrokeColorWithColor(ctx, [UIColor whiteColor].CGColor);
    //: CGContextSetLineWidth(ctx, lineWidth);
    CGContextSetLineWidth(ctx, kLet_sizeValue);
    //: CGContextMoveToPoint(ctx, self.cropAreaLeft, self.cropAreaBottom);
    CGContextMoveToPoint(ctx, self.cropAreaLeft, self.cropAreaBottom);
    //: CGContextAddLineToPoint(ctx, self.cropAreaRight, self.cropAreaBottom);
    CGContextAddLineToPoint(ctx, self.cropAreaRight, self.cropAreaBottom);
    //: CGContextSetShadow(ctx, CGSizeMake(0, -2), 2.0);
    CGContextSetShadow(ctx, CGSizeMake(0, -2), 2.0);
    //: CGContextStrokePath(ctx);
    CGContextStrokePath(ctx);

    //: UIGraphicsPopContext();
    UIGraphicsPopContext();
}

//: - (void)setCropAreaLeft:(NSInteger)cropAreaLeft
- (void)setCropAreaLeft:(NSInteger)cropAreaLeft
{
    //: _cropAreaLeft = cropAreaLeft;
    _cropAreaLeft = cropAreaLeft;
    //: [self setNeedsDisplay];
    [self setNeedsDisplay];
}

//: - (void)setCropAreaTop:(NSInteger)cropAreaTop
- (void)setCropAreaTop:(NSInteger)cropAreaTop
{
    //: _cropAreaTop = cropAreaTop;
    _cropAreaTop = cropAreaTop;
    //: [self setNeedsDisplay];
    [self setNeedsDisplay];
}

//: - (void)setCropAreaRight:(NSInteger)cropAreaRight
- (void)setCropAreaRight:(NSInteger)cropAreaRight
{
    //: _cropAreaRight = cropAreaRight;
    _cropAreaRight = cropAreaRight;
    //: [self setNeedsDisplay];
    [self setNeedsDisplay];
}

//: - (void)setCropAreaBottom:(NSInteger)cropAreaBottom
- (void)setCropAreaBottom:(NSInteger)cropAreaBottom
{
    //: _cropAreaBottom = cropAreaBottom;
    _cropAreaBottom = cropAreaBottom;
    //: [self setNeedsDisplay];
    [self setNeedsDisplay];
}

//: - (void)setCropAreaLeft:(NSInteger)cropAreaLeft CropAreaTop:(NSInteger)cropAreaTop CropAreaRight:(NSInteger)cropAreaRight CropAreaBottom:(NSInteger)cropAreaBottom
- (void)grayBottom:(NSInteger)cropAreaLeft doingArea:(NSInteger)cropAreaTop file:(NSInteger)cropAreaRight input:(NSInteger)cropAreaBottom
{
    //: _cropAreaLeft = cropAreaLeft;
    _cropAreaLeft = cropAreaLeft;
    //: _cropAreaRight = cropAreaRight;
    _cropAreaRight = cropAreaRight;
    //: _cropAreaTop = cropAreaTop;
    _cropAreaTop = cropAreaTop;
    //: _cropAreaBottom = cropAreaBottom;
    _cropAreaBottom = cropAreaBottom;

    //: [self setNeedsDisplay];
    [self setNeedsDisplay];
}

//: @end
@end