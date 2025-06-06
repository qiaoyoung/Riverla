
#import <Foundation/Foundation.h>
typedef struct {
    Byte streetSmart;
    Byte *natalDay;
    unsigned int fieldOff;
    bool replyLanguage;
	int withReplacement;
} MakeData;

NSString *StringFromMakeData(MakeData *data);


//: contact_tag_fragment_sure
MakeData kStr_ofText = (MakeData){203, (Byte []){168, 164, 165, 191, 170, 168, 191, 148, 191, 170, 172, 148, 173, 185, 170, 172, 166, 174, 165, 191, 148, 184, 190, 185, 174, 240}, 25, false, 255};


//: #B391FF
MakeData kStr_windowTitle = (MakeData){251, (Byte []){216, 185, 200, 194, 202, 189, 189, 100}, 7, false, 136};


//: #333333
MakeData kStr_showMakeModelValue = (MakeData){235, (Byte []){200, 216, 216, 216, 216, 216, 216, 72}, 7, false, 35};


//: contact_tag_fragment_cancel
MakeData kStr_replyName = (MakeData){165, (Byte []){198, 202, 203, 209, 196, 198, 209, 250, 209, 196, 194, 250, 195, 215, 196, 194, 200, 192, 203, 209, 250, 198, 196, 203, 198, 192, 201, 65}, 27, false, 38};


//: activity_group_chat_avatar_add_black
MakeData kStr_modelText = (MakeData){131, (Byte []){226, 224, 247, 234, 245, 234, 247, 250, 220, 228, 241, 236, 246, 243, 220, 224, 235, 226, 247, 220, 226, 245, 226, 247, 226, 241, 220, 226, 231, 231, 220, 225, 239, 226, 224, 232, 214}, 36, false, 59};


//: report_next_select_black
MakeData kStr_greenTitle = (MakeData){125, (Byte []){15, 24, 13, 18, 15, 9, 34, 19, 24, 5, 9, 34, 14, 24, 17, 24, 30, 9, 34, 31, 17, 28, 30, 22, 118}, 24, false, 95};


//: YES
MakeData kStr_stopMaxValue = (MakeData){6, (Byte []){95, 67, 85, 64}, 3, false, 93};


//: #5D5F66
MakeData kStr_viewName = (MakeData){245, (Byte []){214, 192, 177, 192, 179, 195, 195, 38}, 7, false, 141};

// __DEBUG__
// __CLOSE_PRINT__
//
//  EvaluateView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportBlackView.h"
#import "EvaluateView.h"

//: @interface ZMONReportBlackView ()
@interface EvaluateView ()

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

//: @implementation ZMONReportBlackView
@implementation EvaluateView

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
        [self initBubble];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initBubble{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);
    self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#333333"];
    labsubLabel.textColor = [UIColor isView:StringFromMakeData(&kStr_showMakeModelValue)];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [FFFLanguageManager getTextWithKey:@"report_next_select_black"];
    labsubLabel.text = [TeamManager sizeKey:StringFromMakeData(&kStr_greenTitle)];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    //: self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);


}

//: - (void)handleBlack{
- (void)statuteTitle{

//    __weak typeof(self) wself = self;
//
//        [[NIMSDK sharedSDK].userManager addToBlackList:wself.userID completion:^(NSError *error) {
//
//            if (!error) {
//                [wself makeToast:LangKey(@"group_chat_avatar_activity_add_black_success") duration:2.0f position:CSToastPositionCenter];
//            }else{
//                [wself makeToast:LangKey(@"black_list_activity_add_black_failed") duration:2.0f position:CSToastPositionCenter];
//
//            }
//        }];
//    [self animationClose];
    //: [self animationClose];
    [self randomShow];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock(StringFromMakeData(&kStr_stopMaxValue));
}


//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        _titleLabel.text = [TeamManager sizeKey:StringFromMakeData(&kStr_modelText)];
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
        [_closeBtn addTarget:self action:@selector(randomShow) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor isView:StringFromMakeData(&kStr_viewName)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[TeamManager sizeKey:StringFromMakeData(&kStr_replyName)] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(handleBlack) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(statuteTitle) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[TeamManager sizeKey:StringFromMakeData(&kStr_ofText)] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
        _sureBtn.backgroundColor = [UIColor isView:StringFromMakeData(&kStr_windowTitle)];
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
- (void)from
{
    //: self.hidden = NO;
    self.hidden = NO;

}



//: @end
@end

Byte *MakeDataToByte(MakeData *data) {
    if (data->replyLanguage) return data->natalDay;
    for (int i = 0; i < data->fieldOff; i++) {
        data->natalDay[i] ^= data->streetSmart;
    }
    data->natalDay[data->fieldOff] = 0;
    data->replyLanguage = true;
	if (data->fieldOff >= 1) {
		data->withReplacement = data->natalDay[0];
	}
    return data->natalDay;
}

NSString *StringFromMakeData(MakeData *data) {
    return [NSString stringWithUTF8String:(char *)MakeDataToByte(data)];
}
