
#import <Foundation/Foundation.h>

NSString *StringFromSagData(Byte *data);        


//: #CCCCCC
Byte kStr_chapText[] = {15, 7, 57, 10, 249, 89, 94, 63, 88, 68, 234, 10, 10, 10, 10, 10, 10, 14};


//: #B391FF
Byte kStr_weightText[] = {27, 7, 63, 6, 74, 15, 228, 3, 244, 250, 242, 7, 7, 25};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChildSlider.m
//  FUAPIDemoBar
//
//  Created by L on 2018/6/27.
//  Copyright © 2018年 L. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FUSlider.h"
#import "ChildSlider.h"

//: @interface FUSlider ()
@interface ChildSlider ()

/// 当前值提示标签
//: @property (nonatomic, strong) UILabel *tipLabel;
@property (nonatomic, strong) UILabel *tipLabel;
/// 当前值提示标签背景
//: @property (nonatomic, strong) UIImageView *tipBackgroundImageView;
@property (nonatomic, strong) UIImageView *tipBackgroundImageView;
/// 零点在中间时自定义视图
//: @property (nonatomic, strong) UIView *trackView;
@property (nonatomic, strong) UIView *trackView;
/// 零点在中间时的中间短线
//: @property (nonatomic, strong) UIView *middleLine;
@property (nonatomic, strong) UIView *middleLine;

//: @end
@end

//: @implementation FUSlider
@implementation ChildSlider

//: - (void)awakeFromNib {
- (void)awakeFromNib {
    //: [super awakeFromNib];
    [super awakeFromNib];
    //: [self configureUI];
    [self name];
}

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self configureUI];
        [self name];
    }
    //: return self;
    return self;
}

//: - (void)configureUI {
- (void)name {
    //: [self setThumbImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self setThumbImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    //: [self setMaximumTrackTintColor:[UIColor colorWithHexString:@"#CCCCCC"]];
    [self setMaximumTrackTintColor:[UIColor isView:StringFromSagData(kStr_chapText)]];
    //: [self setMinimumTrackTintColor:[UIColor colorWithHexString:@"#B391FF"]];
    [self setMinimumTrackTintColor:[UIColor isView:StringFromSagData(kStr_weightText)]];
    //: self.thumbTintColor = [UIColor colorWithHexString:@"#B391FF"];
    self.thumbTintColor = [UIColor isView:StringFromSagData(kStr_weightText)];
    //: [self addSubview:self.tipBackgroundImageView];
    [self addSubview:self.tipBackgroundImageView];
    //: [self addSubview:self.tipLabel];
    [self addSubview:self.tipLabel];
    //: [self addSubview:self.trackView];
    [self addSubview:self.trackView];
    //: [self addSubview:self.middleLine];
    [self addSubview:self.middleLine];
}

//: -(void)layoutSubviews {
-(void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: if (!self.trackView.hidden) {
    if (!self.trackView.hidden) {
        //: [self bringSubviewToFront:self.trackView];
        [self bringSubviewToFront:self.trackView];
    }
    //: if (!self.middleLine.hidden) {
    if (!self.middleLine.hidden) {
        //: self.middleLine.frame = CGRectMake(CGRectGetWidth(self.bounds)/2.0 - 1, CGRectGetHeight(self.bounds)/2.0 - 4, 2, 8);
        self.middleLine.frame = CGRectMake(CGRectGetWidth(self.bounds)/2.0 - 1, CGRectGetHeight(self.bounds)/2.0 - 4, 2, 8);
    }
    //: [self setValue:self.value animated:NO];
    [self setValue:self.value animated:NO];
}

//: - (void)setBidirection:(BOOL)bidirection {
- (void)setBidirection:(BOOL)bidirection {
    //: _bidirection = bidirection;
    _bidirection = bidirection;
    //: if (bidirection) {
    if (bidirection) {
        //: self.middleLine.hidden = NO;
        self.middleLine.hidden = NO;
        //: self.trackView.hidden = NO;
        self.trackView.hidden = NO;
        //: [self setMinimumTrackTintColor:[UIColor colorWithHexString:@"#B391FF"]];
        [self setMinimumTrackTintColor:[UIColor isView:StringFromSagData(kStr_weightText)]];
    //: } else {
    } else {
        //: self.middleLine.hidden = YES;
        self.middleLine.hidden = YES;
        //: self.trackView.hidden = YES;
        self.trackView.hidden = YES;
//        [self setMinimumTrackTintColor:[UIColor colorWithRed:94/255.0 green:199/255.0 blue:254/255.0 alpha:1]];
        //: [self setMinimumTrackTintColor:[UIColor colorWithHexString:@"#B391FF"]];
        [self setMinimumTrackTintColor:[UIColor isView:StringFromSagData(kStr_weightText)]];
    }
}

//: - (void)setValue:(float)value animated:(BOOL)animated {
- (void)setValue:(float)value animated:(BOOL)animated {
    //: [super setValue:value animated:animated];
    [super setValue:value animated:animated];

    //: if (_bidirection) {
    if (_bidirection) {
        //: self.tipLabel.text = [NSString stringWithFormat:@"%d",(int)(value * 100 - 50)];
        self.tipLabel.text = [NSString stringWithFormat:@"%d",(int)(value * 100 - 50)];
        //: CGFloat currentValue = value - 0.5;
        CGFloat currentValue = value - 0.5;
        //: CGFloat width = currentValue * CGRectGetWidth(self.bounds);
        CGFloat width = currentValue * CGRectGetWidth(self.bounds);
        //: if (width < 0 ) {
        if (width < 0 ) {
            //: width = -width;
            width = -width;
        }
        //: CGFloat originX = currentValue > 0 ? CGRectGetWidth(self.bounds) / 2.0 : CGRectGetWidth(self.bounds) / 2.0 - width;
        CGFloat originX = currentValue > 0 ? CGRectGetWidth(self.bounds) / 2.0 : CGRectGetWidth(self.bounds) / 2.0 - width;
        //: self.trackView.frame = CGRectMake(originX, CGRectGetHeight(self.frame)/2.0 - 2, width, 4.0);
        self.trackView.frame = CGRectMake(originX, CGRectGetHeight(self.frame)/2.0 - 2, width, 4.0);
    //: } else {
    } else {
        //: self.tipLabel.text = [NSString stringWithFormat:@"%d",(int)(value * 100)];
        self.tipLabel.text = [NSString stringWithFormat:@"%d",(int)(value * 100)];
    }
    //: CGFloat x = value * (self.frame.size.width - 16) - self.tipLabel.frame.size.width * 0.5 + 8;
    CGFloat x = value * (self.frame.size.width - 16) - self.tipLabel.frame.size.width * 0.5 + 8;
    //: CGRect frame = self.tipLabel.frame;
    CGRect frame = self.tipLabel.frame;
    //: frame.origin.x = x;
    frame.origin.x = x;

    //: self.tipBackgroundImageView.frame = frame;
    self.tipBackgroundImageView.frame = frame;
    //: self.tipLabel.frame = frame;
    self.tipLabel.frame = frame;
    //: self.tipLabel.hidden = !self.isTouchInside;
    self.tipLabel.hidden = !self.isTouchInside;
    //: self.tipBackgroundImageView.hidden = !self.isTouchInside;
    self.tipBackgroundImageView.hidden = !self.isTouchInside;
}


//: #pragma mark - Getters
#pragma mark - Getters

//: - (UIImageView *)tipBackgroundImageView {
- (UIImageView *)tipBackgroundImageView {
    //: if (!_tipBackgroundImageView) {
    if (!_tipBackgroundImageView) {
        //: _tipBackgroundImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, -32, 32, 32)];
        _tipBackgroundImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, -32, 32, 32)];
        //: _tipBackgroundImageView.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
        _tipBackgroundImageView.backgroundColor = [UIColor isView:StringFromSagData(kStr_weightText)];
        //: _tipBackgroundImageView.layer.cornerRadius = 16;
        _tipBackgroundImageView.layer.cornerRadius = 16;
        //: _tipBackgroundImageView.hidden = YES;
        _tipBackgroundImageView.hidden = YES;
    }
    //: return _tipBackgroundImageView;
    return _tipBackgroundImageView;
}
//: - (UILabel *)tipLabel {
- (UILabel *)tipLabel {
    //: if (!_tipLabel) {
    if (!_tipLabel) {
        //: _tipLabel = [[UILabel alloc] initWithFrame:self.tipBackgroundImageView.frame];
        _tipLabel = [[UILabel alloc] initWithFrame:self.tipBackgroundImageView.frame];
        //: _tipLabel.textColor = [UIColor whiteColor];
        _tipLabel.textColor = [UIColor whiteColor];
        //: _tipLabel.font = [UIFont systemFontOfSize:10 weight:UIFontWeightMedium];
        _tipLabel.font = [UIFont systemFontOfSize:10 weight:UIFontWeightMedium];
        //: _tipLabel.textAlignment = NSTextAlignmentCenter;
        _tipLabel.textAlignment = NSTextAlignmentCenter;
        //: _tipLabel.hidden = YES;
        _tipLabel.hidden = YES;
    }
    //: return _tipLabel;
    return _tipLabel;
}

//: - (UIView *)trackView {
- (UIView *)trackView {
    //: if (!_trackView) {
    if (!_trackView) {
        //: _trackView = [[UIView alloc] init];
        _trackView = [[UIView alloc] init];
        //: _trackView.backgroundColor = [UIColor colorWithRed:94/255.0 green:199/255.0 blue:254/255.0 alpha:1];
        _trackView.backgroundColor = [UIColor colorWithRed:94/255.0 green:199/255.0 blue:254/255.0 alpha:1];
        //: _trackView.hidden = YES;
        _trackView.hidden = YES;
    }
    //: return _trackView;
    return _trackView;
}

//: - (UIView *)middleLine {
- (UIView *)middleLine {
    //: if (!_middleLine) {
    if (!_middleLine) {
        //: _middleLine = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.bounds)/2.0 - 1, CGRectGetHeight(self.bounds)/2.0 - 4, 2, 8)];
        _middleLine = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.bounds)/2.0 - 1, CGRectGetHeight(self.bounds)/2.0 - 4, 2, 8)];
        //: _middleLine.backgroundColor = [UIColor whiteColor];
        _middleLine.backgroundColor = [UIColor whiteColor];
        //: _middleLine.layer.masksToBounds = YES;
        _middleLine.layer.masksToBounds = YES;
        //: _middleLine.layer.cornerRadius = 1.0;
        _middleLine.layer.cornerRadius = 1.0;
        //: _middleLine.hidden = YES;
        _middleLine.hidden = YES;
    }
    //: return _middleLine;
    return _middleLine;
}

//: @end
@end

Byte * SagDataToCache(Byte *data) {
    int brand = data[0];
    int poReplyImage = data[1];
    Byte fill = data[2];
    int speakReplacement = data[3];
    if (!brand) return data + speakReplacement;
    for (int i = speakReplacement; i < speakReplacement + poReplyImage; i++) {
        int value = data[i] + fill;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[speakReplacement + poReplyImage] = 0;
    return data + speakReplacement;
}

NSString *StringFromSagData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SagDataToCache(data)];
}
