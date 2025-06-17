
#import <Foundation/Foundation.h>
typedef struct {
    Byte mobileArea;
    Byte *viewMessage;
    unsigned int bottomEnableFormat;
    bool terrace;
	int elite;
	int keyShould;
} QuantityervalData;

NSString *StringFromQuantityervalData(QuantityervalData *data);


//: #CCCCCC
QuantityervalData kStr_timeLayerName = (QuantityervalData){128, (Byte []){163, 195, 195, 195, 195, 195, 195, 139}, 7, false, 126, 28};


//: #B391FF
QuantityervalData kStr_withHideData = (QuantityervalData){243, (Byte []){208, 177, 192, 202, 194, 181, 181, 167}, 7, false, 205, 175};

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeaderSlider.m
//  FUAPIDemoBar
//
//  Created by L on 2018/6/27.
//  Copyright © 2018年 L. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FUSlider.h"
#import "HeaderSlider.h"

//: @interface FUSlider ()
@interface HeaderSlider ()

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
@implementation HeaderSlider

//: - (void)awakeFromNib {
- (void)awakeFromNib {
    //: [super awakeFromNib];
    [super awakeFromNib];
    //: [self configureUI];
    [self path];
}

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self configureUI];
        [self path];
    }
    //: return self;
    return self;
}

//: - (void)configureUI {
- (void)path {
    //: [self setThumbImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self setThumbImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    //: [self setMaximumTrackTintColor:[UIColor colorWithHexString:@"#CCCCCC"]];
    [self setMaximumTrackTintColor:[UIColor withMax:StringFromQuantityervalData(&kStr_timeLayerName)]];
    //: [self setMinimumTrackTintColor:[UIColor colorWithHexString:@"#B391FF"]];
    [self setMinimumTrackTintColor:[UIColor withMax:StringFromQuantityervalData(&kStr_withHideData)]];
    //: self.thumbTintColor = [UIColor colorWithHexString:@"#B391FF"];
    self.thumbTintColor = [UIColor withMax:StringFromQuantityervalData(&kStr_withHideData)];
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
        [self setMinimumTrackTintColor:[UIColor withMax:StringFromQuantityervalData(&kStr_withHideData)]];
    //: } else {
    } else {
        //: self.middleLine.hidden = YES;
        self.middleLine.hidden = YES;
        //: self.trackView.hidden = YES;
        self.trackView.hidden = YES;
//        [self setMinimumTrackTintColor:[UIColor colorWithRed:94/255.0 green:199/255.0 blue:254/255.0 alpha:1]];
        //: [self setMinimumTrackTintColor:[UIColor colorWithHexString:@"#B391FF"]];
        [self setMinimumTrackTintColor:[UIColor withMax:StringFromQuantityervalData(&kStr_withHideData)]];
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
        _tipBackgroundImageView.backgroundColor = [UIColor withMax:StringFromQuantityervalData(&kStr_withHideData)];
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

Byte *QuantityervalDataToByte(QuantityervalData *data) {
    if (data->terrace) return data->viewMessage;
    for (int i = 0; i < data->bottomEnableFormat; i++) {
        data->viewMessage[i] ^= data->mobileArea;
    }
    data->viewMessage[data->bottomEnableFormat] = 0;
    data->terrace = true;
	if (data->bottomEnableFormat >= 2) {
		data->elite = data->viewMessage[0];
		data->keyShould = data->viewMessage[1];
	}
    return data->viewMessage;
}

NSString *StringFromQuantityervalData(QuantityervalData *data) {
    return [NSString stringWithUTF8String:(char *)QuantityervalDataToByte(data)];
}
