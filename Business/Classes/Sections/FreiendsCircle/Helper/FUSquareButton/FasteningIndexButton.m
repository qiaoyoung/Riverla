// __DEBUG__
// __CLOSE_PRINT__
//
//  FasteningIndexButton.m
//  FULive
//
//  Created by 孙慕 on 2018/8/28.
//  Copyright © 2018年 L. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FUSquareButton.h"
#import "FasteningIndexButton.h"

//: @interface FUSquareButton()
@interface FasteningIndexButton()

//: @property(nonatomic,assign) float interval;
@property(nonatomic,assign) float interval;

//: @end
@end

//: @implementation FUSquareButton
@implementation FasteningIndexButton

//: - (instancetype)initWithFrame:(CGRect)frame interval:(float)interval{
- (instancetype)initWithPhaseOfTheMoon:(CGRect)frame titleHandleFloat:(float)interval{
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: _interval = interval;
        _interval = interval;
        //: self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        //: self.titleLabel.font = [UIFont systemFontOfSize:10];
        self.titleLabel.font = [UIFont systemFontOfSize:10];
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: _interval = 8;
        _interval = 8;
        //: self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        //: self.titleLabel.font = [UIFont systemFontOfSize:10];
        self.titleLabel.font = [UIFont systemFontOfSize:10];
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithCoder:(NSCoder *)aDecoder {
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    //: if (self = [super initWithCoder:aDecoder]) {
    if (self = [super initWithCoder:aDecoder]) {
        //: _interval = 8;
        _interval = 8;
        //: self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        //: self.titleLabel.font = [UIFont systemFontOfSize:10];
        self.titleLabel.font = [UIFont systemFontOfSize:10];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: CGRect frame = self.imageView.bounds;
    CGRect frame = self.imageView.bounds;
    //: CGRect frame1 = self.titleLabel.frame;
    CGRect frame1 = self.titleLabel.frame;

    //: self.imageView.frame = frame;
    self.imageView.frame = frame;
    //: CGPoint center = self.imageView.center;
    CGPoint center = self.imageView.center;
    //: center.x = self.frame.size.width * 0.5;
    center.x = self.frame.size.width * 0.5;
    //: self.imageView.center = center;
    self.imageView.center = center;
    //: frame1.origin.x = 0;
    frame1.origin.x = 0;
    //: frame1.origin.y = CGRectGetMaxY(self.imageView.frame) + _interval;
    frame1.origin.y = CGRectGetMaxY(self.imageView.frame) + _interval;
    //: frame1.size.height = 11;
    frame1.size.height = 11;
    //: frame1.size.width = self.bounds.size.width;;
    frame1.size.width = self.bounds.size.width;;
    //: self.titleLabel.frame = frame1;
    self.titleLabel.frame = frame1;
}

//: @end
@end