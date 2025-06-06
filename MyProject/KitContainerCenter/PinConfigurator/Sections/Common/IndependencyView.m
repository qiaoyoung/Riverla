
#import <Foundation/Foundation.h>

NSString *StringFromStartingData(Byte *data);


//: V:|-0-[_progressView]-0-|
Byte kStr_patValue[] = {58, 25, 92, 14, 109, 223, 226, 13, 252, 204, 250, 40, 63, 255, 178, 150, 216, 137, 140, 137, 183, 187, 204, 206, 203, 195, 206, 193, 207, 207, 178, 197, 193, 211, 185, 137, 140, 137, 216, 147};


//: #A148FF
Byte kStr_embarrassedText[] = {94, 7, 1, 14, 135, 241, 214, 16, 35, 9, 76, 44, 43, 116, 36, 66, 50, 53, 57, 71, 71, 110};


//: H:|-0-[_progressView]-0-|
Byte kStr_dramaticTitle[] = {2, 25, 15, 9, 111, 77, 248, 233, 4, 87, 73, 139, 60, 63, 60, 106, 110, 127, 129, 126, 118, 129, 116, 130, 130, 101, 120, 116, 134, 108, 60, 63, 60, 139, 210};

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndependencyView.m
//  NIM
//
//  Created by ios on 13-11-9.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFLoadProgressView.h"
#import "IndependencyView.h"

//: @implementation FFFLoadProgressView
@implementation IndependencyView

//: - (id)initWithFrame:(CGRect)frame {
- (id)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];

    //: if (self) {
    if (self) {
        //: _maskView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _maskView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: _maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
        _maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
        //: [self addSubview:_maskView];
        [self addSubview:_maskView];

//        _progressLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _progressLabel.backgroundColor = [UIColor clearColor];
//        _progressLabel.font = [UIFont systemFontOfSize:16];
//        _progressLabel.textColor = [UIColor whiteColor];
//        [self addSubview:_progressLabel];
//
//        _activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
//        [self addSubview:_activity];

        //: self.progressView = [[UCZProgressView alloc] initWithFrame:self.bounds];
        self.progressView = [[UCZProgressView alloc] initWithFrame:self.bounds];
        //: self.progressView.backgroundColor = [UIColor clearColor];
        self.progressView.backgroundColor = [UIColor clearColor];
        //: self.progressView.translatesAutoresizingMaskIntoConstraints = NO;
        self.progressView.translatesAutoresizingMaskIntoConstraints = NO;
        //: self.progressView.showsText = YES;
        self.progressView.showsText = YES;
        //: self.progressView.tintColor = [UIColor colorWithHexString:@"#A148FF"];
        self.progressView.tintColor = [UIColor isView:StringFromStartingData(kStr_embarrassedText)];
//        self.progressView.tintColor = RGB_COLOR_String(kCommonBGColor_All);
//        self.progressView.tintColor = [UIColor colorWithPatternImage:[MessageTitleHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionLevel]];

        //: [self addSubview:self.progressView];
        [self addSubview:self.progressView];

        //: NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
        NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
        //: [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:StringFromStartingData(kStr_patValue) options:0 metrics:nil views:views]];
        //: [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:StringFromStartingData(kStr_dramaticTitle) options:0 metrics:nil views:views]];

    }

    //: return self;
    return self;
}



//: - (void)maskBubbleImageView:(CGRect)maskRect markImageView:(UIImageView*)messageContentImageView
- (void)underside:(CGRect)maskRect reply:(UIImageView*)messageContentImageView
{
    //: CALayer *maskLayer = [CALayer layer];
    CALayer *maskLayer = [CALayer layer];
    //: maskLayer.frame = maskRect;
    maskLayer.frame = maskRect;
    //: maskLayer.contentsGravity = kCAGravityResize;
    maskLayer.contentsGravity = kCAGravityResize;


    //: messageContentImageView.layer.mask = maskLayer;
    messageContentImageView.layer.mask = maskLayer;
    //: messageContentImageView.layer.masksToBounds = YES;
    messageContentImageView.layer.masksToBounds = YES;
}
//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: _maskView.frame = self.bounds;
    _maskView.frame = self.bounds;

//    CGFloat activityHeight = CGRectGetHeight(_activity.bounds);
//    CGSize  size = [_progressLabel.text sizeWithAttributes:@{NSFontAttributeName:_progressLabel.font}];
//
//    CGFloat progressHeight = size.height;
//
//    CGFloat totalHeight = activityHeight;
//    if (progressHeight) {
//        totalHeight += kPadding + size.height;
//    }
//
//    CGFloat y = (CGRectGetHeight(self.bounds) - totalHeight)/2.0;
//    _activity.center = CGPointMake(CGRectGetMidX(self.bounds), y+CGRectGetMidY(_activity.bounds));
//
//    _progressLabel.bounds = CGRectMake(0, 0, size.width, size.height);
//    _progressLabel.center = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMaxY(_activity.frame) + kPadding + size.height/2.0);


    //: CGRect frame = self.bounds;
    CGRect frame = self.bounds;
    //: frame.origin.x = frame.origin.x - 4;
    frame.origin.x = frame.origin.x - 4;
    //: frame.origin.y = frame.origin.y - 4;
    frame.origin.y = frame.origin.y - 4;
    //: frame.size.width = frame.size.width + 12;
    frame.size.width = frame.size.width + 12;
    //: frame.size.height = frame.size.height + 8;
    frame.size.height = frame.size.height + 8;
    //: [self maskBubbleImageView:frame markImageView:_maskView];
    [self underside:frame reply:_maskView];
}

//: - (void)setProgress:(CGFloat)progress {
- (void)setMove:(CGFloat)progress {
    //: if (progress > self.maxProgress) {
    if (progress > self.maxProgress) {
//        _progressLabel.text = [NSString stringWithFormat:@"%d%%", (int)(self.maxProgress*100)];
//        [_activity stopAnimating];
    //: }else if (progress <= 0) {
    }else if (progress <= 0) {
//        _progressLabel.text = @"0%";
//        [_activity startAnimating];
    //: }else {
    }else {
//        _progressLabel.text = [NSString stringWithFormat:@"%d%%", (int)(progress*100)];
//        [_activity startAnimating];
        //: self.progressView.progress = progress;
        self.progressView.progress = progress;
    }

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: @end
@end

Byte * StartingDataToCache(Byte *data) {
    int surpass = data[0];
    int brown = data[1];
    Byte highlyQuantityernational = data[2];
    int onDaughter = data[3];
    if (!surpass) return data + onDaughter;
    for (int i = onDaughter; i < onDaughter + brown; i++) {
        int value = data[i] - highlyQuantityernational;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[onDaughter + brown] = 0;
    return data + onDaughter;
}

NSString *StringFromStartingData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)StartingDataToCache(data)];
}
