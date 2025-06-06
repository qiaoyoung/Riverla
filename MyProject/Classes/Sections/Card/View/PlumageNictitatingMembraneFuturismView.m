
#import <Foundation/Foundation.h>
typedef struct {
    Byte search;
    Byte *matter;
    unsigned int agendaItem;
    bool viewInfo;
	int secureness;
	int nameTap;
	int nameWindow;
} OfSuccessData;

NSString *StringFromOfSuccessData(OfSuccessData *data);


//: #333333
OfSuccessData kStr_toText = (OfSuccessData){51, (Byte []){16, 0, 0, 0, 0, 0, 0, 199}, 7, false, 31, 175, 195};


//: delete
OfSuccessData kStr_textValue = (OfSuccessData){247, (Byte []){147, 146, 155, 146, 131, 146, 92}, 6, false, 185, 196, 69};


//: YES
OfSuccessData kStr_spaceMemberTitle = (OfSuccessData){198, (Byte []){159, 131, 149, 30}, 3, false, 3, 188, 243};


//: #B391FF
OfSuccessData kStr_frameFileData = (OfSuccessData){107, (Byte []){72, 41, 88, 82, 90, 45, 45, 152}, 7, false, 210, 220, 158};


//: #5D5F66
OfSuccessData kStr_tapMessageWithText = (OfSuccessData){197, (Byte []){230, 240, 129, 240, 131, 243, 243, 195}, 7, false, 59, 69, 136};


//: user_profile_avtivity_remove_friend
OfSuccessData kStr_fieldOnData = (OfSuccessData){133, (Byte []){240, 246, 224, 247, 218, 245, 247, 234, 227, 236, 233, 224, 218, 228, 243, 241, 236, 243, 236, 241, 252, 218, 247, 224, 232, 234, 243, 224, 218, 227, 247, 236, 224, 235, 225, 114}, 35, false, 211, 98, 89};


//: contact_tag_fragment_cancel
OfSuccessData kStr_willValue = (OfSuccessData){195, (Byte []){160, 172, 173, 183, 162, 160, 183, 156, 183, 162, 164, 156, 165, 177, 162, 164, 174, 166, 173, 183, 156, 160, 162, 173, 160, 166, 175, 173}, 27, false, 94, 95, 14};


//: report_next_select_delete
OfSuccessData kStr_makeLastName = (OfSuccessData){210, (Byte []){160, 183, 162, 189, 160, 166, 141, 188, 183, 170, 166, 141, 161, 183, 190, 183, 177, 166, 141, 182, 183, 190, 183, 166, 183, 150}, 25, false, 75, 60, 252};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlumageNictitatingMembraneFuturismView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/17.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportDeleteView.h"
#import "PlumageNictitatingMembraneFuturismView.h"
//: #import "NTESBundleSetting.h"
#import "PinStyle.h"

//: @interface ZMONReportDeleteView ()
@interface PlumageNictitatingMembraneFuturismView ()

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

//: @implementation ZMONReportDeleteView
@implementation PlumageNictitatingMembraneFuturismView

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
        [self initEnableOption];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initEnableOption{
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
    labsubLabel.textColor = [UIColor isView:StringFromOfSuccessData(&kStr_toText)];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [FFFLanguageManager getTextWithKey:@"report_next_select_delete"];
    labsubLabel.text = [TeamManager sizeKey:StringFromOfSuccessData(&kStr_makeLastName)];
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

//: - (void)showAnimation
- (void)independentCancel
{
    //: [self animationClose];
    [self randomShow];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock(StringFromOfSuccessData(&kStr_spaceMemberTitle));
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
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        _titleLabel.text = [TeamManager sizeKey:StringFromOfSuccessData(&kStr_fieldOnData)];
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
        [_closeBtn setTitleColor:[UIColor isView:StringFromOfSuccessData(&kStr_tapMessageWithText)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[TeamManager sizeKey:StringFromOfSuccessData(&kStr_willValue)] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(showAnimation) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(independentCancel) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[TeamManager sizeKey:StringFromOfSuccessData(&kStr_textValue)] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
        _sureBtn.backgroundColor = [UIColor isView:StringFromOfSuccessData(&kStr_frameFileData)];
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
- (void)title
{
    //: self.hidden = NO;
    self.hidden = NO;

}

//: @end
@end

Byte *OfSuccessDataToByte(OfSuccessData *data) {
    if (data->viewInfo) return data->matter;
    for (int i = 0; i < data->agendaItem; i++) {
        data->matter[i] ^= data->search;
    }
    data->matter[data->agendaItem] = 0;
    data->viewInfo = true;
	if (data->agendaItem >= 3) {
		data->secureness = data->matter[0];
		data->nameTap = data->matter[1];
		data->nameWindow = data->matter[2];
	}
    return data->matter;
}

NSString *StringFromOfSuccessData(OfSuccessData *data) {
    return [NSString stringWithUTF8String:(char *)OfSuccessDataToByte(data)];
}
