
#import <Foundation/Foundation.h>
typedef struct {
    Byte after;
    Byte *colorLogBar;
    unsigned int arrangement;
    bool signing;
	int advancement;
} ReloadData;

NSString *StringFromReloadData(ReloadData *data);


//: #5D5F66
ReloadData kStr_recentValue = (ReloadData){132, (Byte []){167, 177, 192, 177, 194, 178, 178, 211}, 7, false, 166};


//: contact_tag_fragment_cancel
ReloadData kStr_userOptionData = (ReloadData){206, (Byte []){173, 161, 160, 186, 175, 173, 186, 145, 186, 175, 169, 145, 168, 188, 175, 169, 163, 171, 160, 186, 145, 173, 175, 160, 173, 171, 162, 23}, 27, false, 62};


//: 999999
ReloadData kStr_afterName = (ReloadData){247, (Byte []){206, 206, 206, 206, 206, 206, 190}, 6, false, 90};


//: #FF483D
ReloadData kStr_willValue = (ReloadData){115, (Byte []){80, 53, 53, 71, 75, 64, 55, 242}, 7, false, 202};


//: contact_tag_fragment_sure
ReloadData kStr_referValue = (ReloadData){14, (Byte []){109, 97, 96, 122, 111, 109, 122, 81, 122, 111, 105, 81, 104, 124, 111, 105, 99, 107, 96, 122, 81, 125, 123, 124, 107, 230}, 25, false, 190};


//: warm_prompt
ReloadData kStr_dateDisabledName = (ReloadData){48, (Byte []){71, 81, 66, 93, 111, 64, 66, 95, 93, 64, 68, 195}, 11, false, 233};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FullFitParadigmView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONAlartView.h"
#import "FullFitParadigmView.h"

//: @interface ZMONAlartView ()
@interface FullFitParadigmView ()

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation ZMONAlartView
@implementation FullFitParadigmView

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
        [self initOriginOn];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initOriginOn{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-156)/2, [[UIScreen mainScreen] bounds].size.width-40, 156)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-156)/2, [[UIScreen mainScreen] bounds].size.width-40, 156)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: tip.font = [UIFont boldSystemFontOfSize:18.f];
    tip.font = [UIFont boldSystemFontOfSize:18.f];
    //: tip.textColor = [UIColor blackColor];
    tip.textColor = [UIColor blackColor];
    //: tip.textAlignment = NSTextAlignmentCenter;
    tip.textAlignment = NSTextAlignmentCenter;
    //: tip.text = [FFFLanguageManager getTextWithKey:@"warm_prompt"];
    tip.text = [ItemManager sessionInformation:StringFromReloadData(&kStr_dateDisabledName)];
    //: [_box addSubview:tip];
    [_box addSubview:tip];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, tip.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 40);
    self.titleLabel.frame = CGRectMake(20, tip.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 40);


    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 156-height-10, width, height);
    self.closeBtn.frame = CGRectMake(20, 156-height-10, width, height);
    //: self.sureBtn.frame = CGRectMake(width+40, 156-height-10, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 156-height-10, width, height);


}

//: - (void)reloadWithTitlename:(NSString *)name
- (void)info:(NSString *)name
{
    //: self.titleLabel.text = name;
    self.titleLabel.text = name;
}

//: - (void)handleSubmit{
- (void)loadInfo{

    //: [self endEditing:YES];
    [self endEditing:YES];
    //: self.speiceBackBlock(@"");
    self.speiceBackBlock(@"");

}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:12.f];
        _titleLabel.font = [UIFont systemFontOfSize:12.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"999999"];
        _titleLabel.textColor = [UIColor withMax:StringFromReloadData(&kStr_afterName)];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    //: return _titleLabel;
    return _titleLabel;
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
        [_closeBtn setTitleColor:[UIColor withMax:StringFromReloadData(&kStr_recentValue)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[ItemManager sessionInformation:StringFromReloadData(&kStr_userOptionData)] forState:UIControlStateNormal];
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
        [_sureBtn setTitle:[ItemManager sessionInformation:StringFromReloadData(&kStr_referValue)] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor withMax:StringFromReloadData(&kStr_willValue)];
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
- (void)sound
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end

Byte *ReloadDataToByte(ReloadData *data) {
    if (data->signing) return data->colorLogBar;
    for (int i = 0; i < data->arrangement; i++) {
        data->colorLogBar[i] ^= data->after;
    }
    data->colorLogBar[data->arrangement] = 0;
    data->signing = true;
	if (data->arrangement >= 1) {
		data->advancement = data->colorLogBar[0];
	}
    return data->colorLogBar;
}

NSString *StringFromReloadData(ReloadData *data) {
    return [NSString stringWithUTF8String:(char *)ReloadDataToByte(data)];
}
