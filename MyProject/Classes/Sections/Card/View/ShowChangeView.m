
#import <Foundation/Foundation.h>

NSString *StringFromFrameData(Byte *data);


//: contact_tag_fragment_cancel
Byte kStr_colorName[] = {61, 27, 73, 14, 187, 180, 90, 196, 20, 54, 94, 214, 48, 203, 172, 184, 183, 189, 170, 172, 189, 168, 189, 170, 176, 168, 175, 187, 170, 176, 182, 174, 183, 189, 168, 172, 170, 183, 172, 174, 181, 170};


//: #F6F7FA
Byte kStr_successShowData[] = {16, 7, 74, 9, 59, 174, 93, 119, 209, 109, 144, 128, 144, 129, 144, 139, 207};


//: user_profile_avtivity_input_beizhu
Byte kStr_makeKitName[] = {41, 34, 26, 9, 45, 121, 124, 186, 205, 143, 141, 127, 140, 121, 138, 140, 137, 128, 131, 134, 127, 121, 123, 144, 142, 131, 144, 131, 142, 147, 121, 131, 136, 138, 143, 142, 121, 124, 127, 131, 148, 130, 143, 113};


//: #B391FF
Byte kStr_linkText[] = {96, 7, 96, 8, 39, 131, 246, 252, 131, 162, 147, 153, 145, 166, 166, 65};


//: user_profile_avtivity_user_info_update_success
Byte kStr_fileTitle[] = {59, 46, 75, 9, 34, 250, 230, 68, 200, 192, 190, 176, 189, 170, 187, 189, 186, 177, 180, 183, 176, 170, 172, 193, 191, 180, 193, 180, 191, 196, 170, 192, 190, 176, 189, 170, 180, 185, 177, 186, 170, 192, 187, 175, 172, 191, 176, 170, 190, 192, 174, 174, 176, 190, 190, 60};


//: contact_tag_fragment_sure
Byte kStr_greenData[] = {2, 25, 89, 13, 118, 203, 104, 204, 19, 131, 162, 183, 133, 188, 200, 199, 205, 186, 188, 205, 184, 205, 186, 192, 184, 191, 203, 186, 192, 198, 190, 199, 205, 184, 204, 206, 203, 190, 36};


//: #5D5F66
Byte kStr_stopData[] = {64, 7, 70, 4, 105, 123, 138, 123, 140, 124, 124, 68};


//: user_profile_avtivity_user_info_update_failed
Byte kStr_messageData[] = {3, 45, 80, 7, 86, 31, 57, 197, 195, 181, 194, 175, 192, 194, 191, 182, 185, 188, 181, 175, 177, 198, 196, 185, 198, 185, 196, 201, 175, 197, 195, 181, 194, 175, 185, 190, 182, 191, 175, 197, 192, 180, 177, 196, 181, 175, 182, 177, 185, 188, 181, 180, 23};


//: message_remark_name
Byte kStr_memberOfName[] = {25, 19, 16, 10, 112, 56, 10, 123, 41, 213, 125, 117, 131, 131, 113, 119, 117, 111, 130, 117, 125, 113, 130, 123, 111, 126, 113, 125, 117, 79};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowChangeView.m
//  KEKEChat
//
//  Created by Yan Wang on 2024/4/23.
//  Copyright © 2024 KEKE. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFRemarksView.h"
#import "ShowChangeView.h"

//: @interface FFFRemarksView ()<UITextFieldDelegate>
@interface ShowChangeView ()<UITextFieldDelegate>

//: @property (nonatomic,assign) NSInteger inputLimit;
@property (nonatomic,assign) NSInteger inputLimit;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property(nonatomic, strong) UIView *lineView;
@property(nonatomic, strong) UIView *lineView;
//: @property (nonatomic,strong) UIView *searchView;
@property (nonatomic,strong) UIView *searchView;
//: @property (nonatomic,strong) UITextField *searchField;
@property (nonatomic,strong) UITextField *searchField;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation FFFRemarksView
@implementation ShowChangeView

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
        [self initMessage];
        //: self.inputLimit = 30;
        self.inputLimit = 30;

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initMessage{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-40, 210)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-40, 210)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];
//    [UIView animateWithDuration:2.0f delay:0 options:UIViewAnimationCurveEaseInOut animations:^{
//        _box.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, 166);
//        }  completion:^(BOOL finished) {
//            _box.frame = CGRectMake(0, SCREEN_HEIGHT-166, SCREEN_WIDTH, 166);
//        }];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 30);
    self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 30);


    //: [_box addSubview:self.searchView];
    [_box addSubview:self.searchView];
    //: self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+30, [[UIScreen mainScreen] bounds].size.width-80, 52);
    self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+30, [[UIScreen mainScreen] bounds].size.width-80, 52);

//    [_box addSubview:self.numLabel];
//    self.numLabel.frame = CGRectMake(20, self.searchView.bottom+10, SCREEN_WIDTH-80, 20);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 210-40-15, width, height);
    self.closeBtn.frame = CGRectMake(20, 210-40-15, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 210-40-15, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 210-40-15, width, height);

}

//: - (void)reloadWithNickname:(NIMUser *)user
- (void)tingOld:(NIMUser *)user
{
    //: self.user = user;
    self.user = user;
    //: self.titleLabel.text = [FFFLanguageManager getTextWithKey:@"message_remark_name"];
    self.titleLabel.text = [TeamManager sizeKey:StringFromFrameData(kStr_memberOfName)];
    //: self.searchField.text = user.alias;
    self.searchField.text = user.alias;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
}

//: - (void)updateTheNickname{
- (void)compartmentSegment{

    //: [self endEditing:YES];
    [self endEditing:YES];
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-180, SCREEN_WIDTH, 180);
    //: if (!self.searchField.text.length) {
    if (!self.searchField.text.length) {
        //: [self makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_input_beizhu"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[TeamManager sizeKey:StringFromFrameData(kStr_makeKitName)] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }
//    if (self.searchField.text.length > self.inputLimit) {
//        [self makeToast:@"备注名过长".nim_localized duration:2.0 position:CSToastPositionCenter];
//        return;
//    }
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: self.user.alias = self.searchField.text;
    self.user.alias = self.searchField.text;
    //: [[NIMSDK sharedSDK].userManager updateUser:self.user completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager updateUser:self.user completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_success"]
            [wself makeToast:[TeamManager sizeKey:StringFromFrameData(kStr_fileTitle)]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
//            [wself.navigationController popViewControllerAnimated:NO];
            //: [self animationClose];
            [self randomShow];

        //: }else{
        }else{
            //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"]
            [wself makeToast:[TeamManager sizeKey:StringFromFrameData(kStr_messageData)]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];

}
//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-508, SCREEN_WIDTH, 508);
    //: return YES;
    return YES;
}
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//    // 如果是删除键
//    if ([string length] == 0 && range.length > 0)
//    {
//        return YES;
//    }
    //: NSString *genString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    NSString *genString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    //: if (self.inputLimit && genString.length > self.inputLimit) {
    if (self.inputLimit && genString.length > self.inputLimit) {
        //: return NO;
        return NO;
    }
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",genString.length+1,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",genString.length+1,(long)(unsigned long)self.inputLimit];
    //: return YES;
    return YES;
}
//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)textFieldDidEndEditing:(UITextField *)textField{
    //: self.searchField.text = textField.text;
    self.searchField.text = textField.text;
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.titleLabel.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.titleLabel.text.length,(long)(unsigned long)self.inputLimit];
}
//: - (BOOL)textFieldShouldClear:(UITextField *)textField{
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    //: self.searchField.text = @"";
    self.searchField.text = @"";
    //: self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    self.numLabel.text = [NSString stringWithFormat:@"%lu/%ld",self.searchField.text.length,(long)(unsigned long)self.inputLimit];
    //: return YES;
    return YES;
}
//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-180, SCREEN_WIDTH, 180);
    //: return [textField resignFirstResponder];
    return [textField resignFirstResponder];

}
//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //: [self endEditing:YES];
    [self endEditing:YES];
//    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-180, SCREEN_WIDTH, 180);
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
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)numLabel{
- (UILabel *)numLabel{
    //: if (!_numLabel) {
    if (!_numLabel) {
        //: _numLabel = [[UILabel alloc] init];
        _numLabel = [[UILabel alloc] init];
        //: _numLabel.font = [UIFont systemFontOfSize:12.f];
        _numLabel.font = [UIFont systemFontOfSize:12.f];
        //: _numLabel.textAlignment = NSTextAlignmentRight;
        _numLabel.textAlignment = NSTextAlignmentRight;
        //: _numLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        _numLabel.textColor = [UIColor isView:StringFromFrameData(kStr_stopData)];
    }
    //: return _numLabel;
    return _numLabel;
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
        [_closeBtn setTitleColor:[UIColor isView:StringFromFrameData(kStr_stopData)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[TeamManager sizeKey:StringFromFrameData(kStr_colorName)] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(compartmentSegment) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[TeamManager sizeKey:StringFromFrameData(kStr_greenData)] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
        _sureBtn.backgroundColor = [UIColor isView:StringFromFrameData(kStr_linkText)];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (UIView *)lineView {
- (UIView *)lineView {
    //: if (!_lineView) {
    if (!_lineView) {
        //: _lineView = [[UIView alloc] init];
        _lineView = [[UIView alloc] init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _lineView.backgroundColor = [UIColor isView:StringFromFrameData(kStr_successShowData)];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIView *)searchView{
- (UIView *)searchView{
    //: if(!_searchView){
    if(!_searchView){
        //: _searchView = [[UIView alloc]init];
        _searchView = [[UIView alloc]init];
        //: _searchView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _searchView.backgroundColor = [UIColor isView:StringFromFrameData(kStr_successShowData)];
        //: _searchView.layer.cornerRadius = 26;
        _searchView.layer.cornerRadius = 26;

        //: _searchField = [[UITextField alloc]initWithFrame:CGRectMake(15, 6, [[UIScreen mainScreen] bounds].size.width-80-30, 40)];
        _searchField = [[UITextField alloc]initWithFrame:CGRectMake(15, 6, [[UIScreen mainScreen] bounds].size.width-80-30, 40)];
        //: _searchField.placeholder = [FFFLanguageManager getTextWithKey:@"message_remark_name"];
        _searchField.placeholder = [TeamManager sizeKey:StringFromFrameData(kStr_memberOfName)];
        //: _searchField.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        _searchField.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        //: _searchField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _searchField.clearButtonMode = UITextFieldViewModeWhileEditing;
        //: _searchField.delegate = self;
        _searchField.delegate = self;
        //: [_searchView addSubview:_searchField];
        [_searchView addSubview:_searchField];

    }
    //: return _searchView;
    return _searchView;
}

//: - (void)animationClose
- (void)randomShow
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)data
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end

Byte * FrameDataToCache(Byte *data) {
    int fileLink = data[0];
    int messageShouldRed = data[1];
    Byte spaceFrame = data[2];
    int bubbleWith = data[3];
    if (!fileLink) return data + bubbleWith;
    for (int i = bubbleWith; i < bubbleWith + messageShouldRed; i++) {
        int value = data[i] - spaceFrame;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[bubbleWith + messageShouldRed] = 0;
    return data + bubbleWith;
}

NSString *StringFromFrameData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FrameDataToCache(data)];
}
