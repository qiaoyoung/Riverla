//
//  FFFLoadProgressView.m
//  NIM
//
//  Created by ios on 13-11-9.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

#import "FFFLoadProgressView.h"

@implementation FFFLoadProgressView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        _maskView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
        [self addSubview:_maskView];
        
//        _progressLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _progressLabel.backgroundColor = [UIColor clearColor];
//        _progressLabel.font = [UIFont systemFontOfSize:16];
//        _progressLabel.textColor = [UIColor whiteColor];
//        [self addSubview:_progressLabel];
//
//        _activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
//        [self addSubview:_activity];
        
        self.progressView = [[UCZProgressView alloc] initWithFrame:self.bounds];
        self.progressView.backgroundColor = [UIColor clearColor];
        self.progressView.translatesAutoresizingMaskIntoConstraints = NO;
        self.progressView.showsText = YES;
        self.progressView.tintColor = RGB_COLOR_String(@"#A148FF");
//        self.progressView.tintColor = RGB_COLOR_String(kCommonBGColor_All);
//        self.progressView.tintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionLevel]];
        
        [self addSubview:self.progressView];

        NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        
    }
    
    return self;
}


#define kPadding 8
- (void)maskBubbleImageView:(CGRect)maskRect markImageView:(UIImageView*)messageContentImageView
{
    CALayer *maskLayer  = [CALayer layer];
    maskLayer.frame = maskRect;
    maskLayer.contentsGravity = kCAGravityResize;
    
    
    messageContentImageView.layer.mask = maskLayer;
    messageContentImageView.layer.masksToBounds = YES;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
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
    
    
    CGRect frame = self.bounds;
    frame.origin.x = frame.origin.x - 4;
    frame.origin.y = frame.origin.y - 4;
    frame.size.width = frame.size.width + 12;
    frame.size.height = frame.size.height + 8;
    [self maskBubbleImageView:frame markImageView:_maskView];
}

- (void)setProgress:(CGFloat)progress {
    if (progress > self.maxProgress) {
//        _progressLabel.text = [NSString stringWithFormat:@"%d%%", (int)(self.maxProgress*100)];
//        [_activity stopAnimating];
    }else if (progress <= 0) {
//        _progressLabel.text = @"0%";
//        [_activity startAnimating];
    }else {
//        _progressLabel.text = [NSString stringWithFormat:@"%d%%", (int)(progress*100)];
//        [_activity startAnimating];
        self.progressView.progress = progress;
    }
    
    [self setNeedsLayout];
}

@end

