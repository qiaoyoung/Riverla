
#import <Foundation/Foundation.h>
typedef struct {
    Byte trademark;
    Byte *intervalerpret;
    unsigned int haunt;
    bool tableSize;
} ScaleData;

NSString *StringFromScaleData(ScaleData *data);


//: #5D5F66
ScaleData kStr_contentBubbleData = (ScaleData){13, (Byte []){46, 56, 73, 56, 75, 59, 59, 34}, 7, false};


//: contact_tag_fragment_cancel
ScaleData kStr_disableWithTitle = (ScaleData){189, (Byte []){222, 210, 211, 201, 220, 222, 201, 226, 201, 220, 218, 226, 219, 207, 220, 218, 208, 216, 211, 201, 226, 222, 220, 211, 222, 216, 209, 56}, 27, false};


//: #333333
ScaleData kStr_backgroundCreateValue = (ScaleData){35, (Byte []){0, 16, 16, 16, 16, 16, 16, 161}, 7, false};


//: YES
ScaleData kStr_keyCanOnContent = (ScaleData){130, (Byte []){219, 199, 209, 149}, 3, false};


//: #B391FF
ScaleData kStr_imageRowTitle = (ScaleData){114, (Byte []){81, 48, 65, 75, 67, 52, 52, 211}, 7, false};


//: delete
ScaleData kStr_highlightStatusName = (ScaleData){126, (Byte []){26, 27, 18, 27, 10, 27, 24}, 6, false};


//: user_profile_avtivity_remove_friend
ScaleData kStr_handleName = (ScaleData){136, (Byte []){253, 251, 237, 250, 215, 248, 250, 231, 238, 225, 228, 237, 215, 233, 254, 252, 225, 254, 225, 252, 241, 215, 250, 237, 229, 231, 254, 237, 215, 238, 250, 225, 237, 230, 236, 3}, 35, false};


//: report_next_select_delete
ScaleData kStr_tableMobileValue = (ScaleData){117, (Byte []){7, 16, 5, 26, 7, 1, 42, 27, 16, 13, 1, 42, 6, 16, 25, 16, 22, 1, 42, 17, 16, 25, 16, 1, 16, 183}, 25, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeShapeView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/17.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportDeleteView.h"
#import "ChangeShapeView.h"
//: #import "NTESBundleSetting.h"
#import "SayImage.h"

//: @interface ZMONReportDeleteView ()
@interface ChangeShapeView ()

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
@implementation ChangeShapeView

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
        [self initColor];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initColor{
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
    labsubLabel.textColor = [UIColor withMax:StringFromScaleData(&kStr_backgroundCreateValue)];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [FFFLanguageManager getTextWithKey:@"report_next_select_delete"];
    labsubLabel.text = [ItemManager sessionInformation:StringFromScaleData(&kStr_tableMobileValue)];
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
- (void)bringHome
{
    //: [self animationClose];
    [self textLanguage];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock(StringFromScaleData(&kStr_keyCanOnContent));
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
        _titleLabel.text = [ItemManager sessionInformation:StringFromScaleData(&kStr_handleName)];
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
        [_closeBtn setTitleColor:[UIColor withMax:StringFromScaleData(&kStr_contentBubbleData)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[ItemManager sessionInformation:StringFromScaleData(&kStr_disableWithTitle)] forState:UIControlStateNormal];
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
        [_sureBtn addTarget:self action:@selector(bringHome) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[ItemManager sessionInformation:StringFromScaleData(&kStr_highlightStatusName)] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
        _sureBtn.backgroundColor = [UIColor withMax:StringFromScaleData(&kStr_imageRowTitle)];
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
- (void)streetSmart
{
    //: self.hidden = NO;
    self.hidden = NO;

}

//: @end
@end

Byte *ScaleDataToByte(ScaleData *data) {
    if (data->tableSize) return data->intervalerpret;
    for (int i = 0; i < data->haunt; i++) {
        data->intervalerpret[i] ^= data->trademark;
    }
    data->intervalerpret[data->haunt] = 0;
    data->tableSize = true;
    return data->intervalerpret;
}

NSString *StringFromScaleData(ScaleData *data) {
    return [NSString stringWithUTF8String:(char *)ScaleDataToByte(data)];
}
