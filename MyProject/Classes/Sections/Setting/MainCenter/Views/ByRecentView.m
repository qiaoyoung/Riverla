
#import <Foundation/Foundation.h>
typedef struct {
    Byte windowTa;
    Byte *showKey;
    unsigned int ofBrand;
    bool tidings;
} ScareData;

NSString *StringFromScareData(ScareData *data);


//: activity_comment_setting_cancel_account
ScareData kStr_spectacularContent = (ScareData){74, (Byte []){43, 41, 62, 35, 60, 35, 62, 51, 21, 41, 37, 39, 39, 47, 36, 62, 21, 57, 47, 62, 62, 35, 36, 45, 21, 41, 43, 36, 41, 47, 38, 21, 43, 41, 41, 37, 63, 36, 62, 231}, 39, false};


//: #FF483D
ScareData kStr_indicateText = (ScareData){252, (Byte []){223, 186, 186, 200, 196, 207, 184, 175}, 7, false};


//: account_delete_tip1
ScareData kStr_shePinText = (ScareData){164, (Byte []){197, 199, 199, 203, 209, 202, 208, 251, 192, 193, 200, 193, 208, 193, 251, 208, 205, 212, 149, 219}, 19, false};


//: #333333
ScareData kStr_brandImageData = (ScareData){119, (Byte []){84, 68, 68, 68, 68, 68, 68, 250}, 7, false};


//: #2C3042
ScareData kStr_conclusionText = (ScareData){73, (Byte []){106, 123, 10, 122, 121, 125, 123, 159}, 7, false};


//: #5D5F66
ScareData kStr_prettyHamTitle = (ScareData){206, (Byte []){237, 251, 138, 251, 136, 248, 248, 43}, 7, false};


//: contact_tag_fragment_sure
ScareData kStr_optPowderName = (ScareData){195, (Byte []){160, 172, 173, 183, 162, 160, 183, 156, 183, 162, 164, 156, 165, 177, 162, 164, 174, 166, 173, 183, 156, 176, 182, 177, 166, 179}, 25, false};


//: contact_tag_fragment_cancel
ScareData kStr_securityValue = (ScareData){68, (Byte []){39, 43, 42, 48, 37, 39, 48, 27, 48, 37, 35, 27, 34, 54, 37, 35, 41, 33, 42, 48, 27, 39, 37, 42, 39, 33, 40, 149}, 27, false};


//: account_delete_tip2
ScareData kStr_messageShouldTitle = (ScareData){44, (Byte []){77, 79, 79, 67, 89, 66, 88, 115, 72, 73, 64, 73, 88, 73, 115, 88, 69, 92, 30, 186}, 19, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ByRecentView.m
//  Riverla
//
//  Created by mac on 2025/5/16.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DeleteAccountTipView.h"
#import "ByRecentView.h"

//: @interface DeleteAccountTipView ()
@interface ByRecentView ()

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
@implementation ByRecentView

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
        [self initImage];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initImage{
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
- (void)enableReply
{
    //: [self animationClose];
    [self randomShow];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteSureButton)]) {
    if ([self.delegate respondsToSelector:@selector(streetSmart)]) {
        //: [self.delegate didTouchDeleteSureButton];
        [self.delegate streetSmart];
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
        _titleLabel.textColor = [UIColor isView:StringFromScareData(&kStr_conclusionText)];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        _titleLabel.text = [TeamManager sizeKey:StringFromScareData(&kStr_spectacularContent)];
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
        labtitle1.textColor = [UIColor isView:StringFromScareData(&kStr_brandImageData)];
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"account_delete_tip1"];
        labtitle1.text = [TeamManager sizeKey:StringFromScareData(&kStr_shePinText)];
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
        labsubtitle1.textColor = [UIColor isView:StringFromScareData(&kStr_brandImageData)];
        //: labsubtitle1.text = [FFFLanguageManager getTextWithKey:@"account_delete_tip2"];
        labsubtitle1.text = [TeamManager sizeKey:StringFromScareData(&kStr_messageShouldTitle)];
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
        [_closeBtn addTarget:self action:@selector(randomShow) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor isView:StringFromScareData(&kStr_prettyHamTitle)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[TeamManager sizeKey:StringFromScareData(&kStr_securityValue)] forState:UIControlStateNormal];
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
        [_sureBtn addTarget:self action:@selector(enableReply) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[TeamManager sizeKey:StringFromScareData(&kStr_optPowderName)] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor isView:StringFromScareData(&kStr_indicateText)];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}


//: - (void)animationClose
- (void)randomShow
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)nimShow
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end

Byte *ScareDataToByte(ScareData *data) {
    if (data->tidings) return data->showKey;
    for (int i = 0; i < data->ofBrand; i++) {
        data->showKey[i] ^= data->windowTa;
    }
    data->showKey[data->ofBrand] = 0;
    data->tidings = true;
    return data->showKey;
}

NSString *StringFromScareData(ScareData *data) {
    return [NSString stringWithUTF8String:(char *)ScareDataToByte(data)];
}
