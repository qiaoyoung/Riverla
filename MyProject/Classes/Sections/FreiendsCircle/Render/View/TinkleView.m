// __DEBUG__
// __CLOSE_PRINT__
//
//  CircleProgressView.m
//  ProgressView
//
//  Created by zhao on 16/9/13.
//  Copyright © 2016年 zhaoName. All rights reserved.
//  正常的圆形进度条

// __M_A_C_R_O__
//: #import "FUCircleProgressView.h"
#import "TinkleView.h"

//: @implementation FUCircleProgressView
@implementation TinkleView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if(self) {
    if(self) {
        //: [self initData];
        [self initProviderData];
    }
    //: return self;
    return self;
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if(self) {
    if(self) {
        //: [self initData];
        [self initProviderData];
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithCoder:(NSCoder *)aDecoder {
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    //: self = [super initWithCoder:aDecoder];
    self = [super initWithCoder:aDecoder];
    //: if(self) {
    if(self) {
        //: [self initData];
        [self initProviderData];
    }
    //: return self;
    return self;
}

/** 初始化数据*/
//: - (void)initData
- (void)initProviderData
{
    //: self.progressWidth = 3.0;
    self.progressWidth = 3.0;
    //: self.progressColor = [UIColor redColor];
    self.progressColor = [UIColor redColor];
    //: self.progressBackgroundColor = [UIColor grayColor];
    self.progressBackgroundColor = [UIColor grayColor];
    //: self.percent = 0.0;
    self.percent = 0.0;
    //: self.clockwise =0;
    self.clockwise =0;

    //: self.labelbackgroundColor = [UIColor clearColor];
    self.labelbackgroundColor = [UIColor clearColor];
    //: self.textColor = [UIColor blackColor];
    self.textColor = [UIColor blackColor];
    //: self.textFont = [UIFont systemFontOfSize:15];
    self.textFont = [UIFont systemFontOfSize:15];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super addSubview:self.centerLabel];
    [super addSubview:self.centerLabel];
    //: self.centerLabel.backgroundColor = self.labelbackgroundColor;
    self.centerLabel.backgroundColor = self.labelbackgroundColor;
    //: self.centerLabel.textColor = self.textColor;
    self.centerLabel.textColor = self.textColor;
    //: self.centerLabel.font = self.textFont;
    self.centerLabel.font = self.textFont;
    //: [self addSubview:self.centerLabel];
    [self addSubview:self.centerLabel];
}

//: #pragma mark -- 画进度条
#pragma mark -- 画进度条

//: - (void)drawRect:(CGRect)rect
- (void)drawRect:(CGRect)rect
{
    //获取当前画布
    //: CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextRef context = UIGraphicsGetCurrentContext();

    //: CGContextSetShouldAntialias(context, YES);
    CGContextSetShouldAntialias(context, YES);
    //: CGContextAddArc(context, self.frame.size.width/2, self.frame.size.height/2, (self.frame.size.width-self.progressWidth)/2, 0, 3.14159265358979323846264338327950288*2, 0);
    CGContextAddArc(context, self.frame.size.width/2, self.frame.size.height/2, (self.frame.size.width-self.progressWidth)/2, 0, 3.14159265358979323846264338327950288*2, 0);
    //: [self.progressBackgroundColor setStroke];
    [self.progressBackgroundColor setStroke];//设置圆描边背景的颜色
    //画线的宽度
    //: CGContextSetLineWidth(context, self.progressWidth);
    CGContextSetLineWidth(context, self.progressWidth);
    //绘制路径
    //: CGContextStrokePath(context);
    CGContextStrokePath(context);

    //: if(self.percent)
    if(self.percent)
    {
        //: CGFloat angle = 2 * self.percent * 3.14159265358979323846264338327950288 - 1.57079632679489661923132169163975144;
        CGFloat angle = 2 * self.percent * 3.14159265358979323846264338327950288 - 1.57079632679489661923132169163975144;
        //: if(self.clockwise) {
        if(self.clockwise) {//反方向
            //: CGContextAddArc(context, self.frame.size.width/2, self.frame.size.height/2, (self.frame.size.width-self.progressWidth)/2, ((int)self.percent == 1 ? -1.57079632679489661923132169163975144 : angle), -1.57079632679489661923132169163975144, 0);
            CGContextAddArc(context, self.frame.size.width/2, self.frame.size.height/2, (self.frame.size.width-self.progressWidth)/2, ((int)self.percent == 1 ? -1.57079632679489661923132169163975144 : angle), -1.57079632679489661923132169163975144, 0);
        }
        //: else {
        else {//正方向
            //: CGContextAddArc(context, self.frame.size.width/2, self.frame.size.height/2, (self.frame.size.width-self.progressWidth)/2, -1.57079632679489661923132169163975144, angle, 0);
            CGContextAddArc(context, self.frame.size.width/2, self.frame.size.height/2, (self.frame.size.width-self.progressWidth)/2, -1.57079632679489661923132169163975144, angle, 0);
        }
        //: [self.progressColor setStroke];
        [self.progressColor setStroke];//设置圆描边的颜色
        //: CGContextSetLineWidth(context, self.progressWidth);
        CGContextSetLineWidth(context, self.progressWidth);
        //: CGContextStrokePath(context);
        CGContextStrokePath(context);
    }
}

//: - (void)setPercent:(float)percent
- (void)setPercent:(float)percent
{
    //: if(self.percent < 0) return;
    if(self.percent < 0) return;

    //: _percent = percent;
    _percent = percent;

    //: [self setNeedsDisplay];
    [self setNeedsDisplay];
}

//: - (UILabel *)centerLabel
- (UILabel *)centerLabel
{
    //: if(!_centerLabel)
    if(!_centerLabel)
    {
        //: _centerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height/2)];
        _centerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height/2)];
        //: _centerLabel.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
        _centerLabel.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
        //: _centerLabel.textAlignment = NSTextAlignmentCenter;
        _centerLabel.textAlignment = NSTextAlignmentCenter;
    }
    //: return _centerLabel;
    return _centerLabel;
}

//: @end
@end