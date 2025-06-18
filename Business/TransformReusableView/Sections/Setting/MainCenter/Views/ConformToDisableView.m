
#import <Foundation/Foundation.h>
typedef struct {
    Byte infoBubble;
    Byte *rollUp;
    unsigned int shrinkLimited;
    bool cakeTing;
	int underlyingContent;
	int highStatus;
	int stairMurder;
} UnderlyingData;

NSString *StringFromUnderlyingData(UnderlyingData *data);


//: #2C3042
UnderlyingData kStr_liquidValue = (UnderlyingData){126, (Byte []){93, 76, 61, 77, 78, 74, 76, 132}, 7, false, 211, 237, 200};


//: contact_tag_fragment_sure
UnderlyingData kStr_leadVictorName = (UnderlyingData){176, (Byte []){211, 223, 222, 196, 209, 211, 196, 239, 196, 209, 215, 239, 214, 194, 209, 215, 221, 213, 222, 196, 239, 195, 197, 194, 213, 229}, 25, false, 169, 64, 166};


//: activity_comment_setting_cancel_account
UnderlyingData kStr_tamData = (UnderlyingData){201, (Byte []){168, 170, 189, 160, 191, 160, 189, 176, 150, 170, 166, 164, 164, 172, 167, 189, 150, 186, 172, 189, 189, 160, 167, 174, 150, 170, 168, 167, 170, 172, 165, 150, 168, 170, 170, 166, 188, 167, 189, 123}, 39, false, 210, 90, 172};


//: #333333
UnderlyingData kStr_midnightName = (UnderlyingData){116, (Byte []){87, 71, 71, 71, 71, 71, 71, 33}, 7, false, 234, 19, 151};


//: account_delete_tip2
UnderlyingData kStr_pastorText = (UnderlyingData){223, (Byte []){190, 188, 188, 176, 170, 177, 171, 128, 187, 186, 179, 186, 171, 186, 128, 171, 182, 175, 237, 202}, 19, false, 113, 140, 137};


//: contact_tag_fragment_cancel
UnderlyingData kStr_taiMessageData = (UnderlyingData){57, (Byte []){90, 86, 87, 77, 88, 90, 77, 102, 77, 88, 94, 102, 95, 75, 88, 94, 84, 92, 87, 77, 102, 90, 88, 87, 90, 92, 85, 86}, 27, false, 31, 154, 163};


//: account_delete_tip1
UnderlyingData kStr_limitedTitle = (UnderlyingData){202, (Byte []){171, 169, 169, 165, 191, 164, 190, 149, 174, 175, 166, 175, 190, 175, 149, 190, 163, 186, 251, 64}, 19, false, 111, 188, 33};


//: #5D5F66
UnderlyingData kStr_valeData = (UnderlyingData){123, (Byte []){88, 78, 63, 78, 61, 77, 77, 10}, 7, false, 202, 128, 172};


//: #FF483D
UnderlyingData kStr_brutalData = (UnderlyingData){176, (Byte []){147, 246, 246, 132, 136, 131, 244, 162}, 7, false, 80, 167, 13};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConformToDisableView.m
//  Riverla
//
//  Created by mac on 2025/5/16.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DeleteAccountTipView.h"
#import "ConformToDisableView.h"

//: @interface DeleteAccountTipView ()
@interface ConformToDisableView ()

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIView *contentBox;
@property (nonatomic,strong) UIView *contentBox;

//: @end
@end

//: @implementation DeleteAccountTipView
@implementation ConformToDisableView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initValueItem];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initValueItem{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-30, 250)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-30, 250)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 20);


    //: [_box addSubview:self.contentBox];
    [_box addSubview:self.contentBox];
    //: self.contentBox.frame = CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 160);
    self.contentBox.frame = CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 160);


    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
}



//: - (void)handleSubmit
- (void)loadInfo
{
    //: [self animationClose];
    [self textLanguage];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteSureButton)]) {
    if ([self.delegate respondsToSelector:@selector(pinNim)]) {
        //: [self.delegate didTouchDeleteSureButton];
        [self.delegate pinNim];
    }

}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor withMax:StringFromUnderlyingData(&kStr_liquidValue)];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        _titleLabel.text = [ItemManager sessionInformation:StringFromUnderlyingData(&kStr_tamData)];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIView *)contentBox
- (UIView *)contentBox
{
    //: if(!_contentBox){
    if(!_contentBox){
        //: _contentBox = [[UIView alloc]init];
        _contentBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        //: labtitle1.font = [UIFont systemFontOfSize:14.f];
        labtitle1.font = [UIFont systemFontOfSize:14.f];
        //: labtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle1.textColor = [UIColor withMax:StringFromUnderlyingData(&kStr_midnightName)];
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"account_delete_tip1"];
        labtitle1.text = [ItemManager sessionInformation:StringFromUnderlyingData(&kStr_limitedTitle)];
        //: labtitle1.numberOfLines = 0;
        labtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: [labtitle1 sizeToFit];
        [labtitle1 sizeToFit];

        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom+10, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom+10, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:14.f];
        labsubtitle1.font = [UIFont systemFontOfSize:14.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor withMax:StringFromUnderlyingData(&kStr_midnightName)];
        //: labsubtitle1.text = [FFFLanguageManager getTextWithKey:@"account_delete_tip2"];
        labsubtitle1.text = [ItemManager sessionInformation:StringFromUnderlyingData(&kStr_pastorText)];
        //: labsubtitle1.numberOfLines = 0;
        labsubtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle1];
        [_contentBox addSubview:labsubtitle1];
        //: [labsubtitle1 sizeToFit];
        [labsubtitle1 sizeToFit];

    }
    //: return _contentBox;
    return _contentBox;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(textLanguage) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor withMax:StringFromUnderlyingData(&kStr_valeData)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[ItemManager sessionInformation:StringFromUnderlyingData(&kStr_taiMessageData)] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(loadInfo) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[ItemManager sessionInformation:StringFromUnderlyingData(&kStr_leadVictorName)] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor withMax:StringFromUnderlyingData(&kStr_brutalData)];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}


//: - (void)animationClose
- (void)textLanguage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)date
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end

Byte *UnderlyingDataToByte(UnderlyingData *data) {
    if (data->cakeTing) return data->rollUp;
    for (int i = 0; i < data->shrinkLimited; i++) {
        data->rollUp[i] ^= data->infoBubble;
    }
    data->rollUp[data->shrinkLimited] = 0;
    data->cakeTing = true;
	if (data->shrinkLimited >= 3) {
		data->underlyingContent = data->rollUp[0];
		data->highStatus = data->rollUp[1];
		data->stairMurder = data->rollUp[2];
	}
    return data->rollUp;
}

NSString *StringFromUnderlyingData(UnderlyingData *data) {
    return [NSString stringWithUTF8String:(char *)UnderlyingDataToByte(data)];
}
