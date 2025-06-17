
#import <Foundation/Foundation.h>

NSString *StringFromAtData(Byte *data);        


//: activity_modify_old
Byte kStr_ragingName[] = {5, 19, 77, 5, 189, 20, 22, 39, 28, 41, 28, 39, 44, 18, 32, 34, 23, 28, 25, 44, 18, 34, 31, 23, 207};


//: activity_modify_new
Byte kStr_convertEnableTitle[] = {99, 19, 27, 5, 234, 70, 72, 89, 78, 91, 78, 89, 94, 68, 82, 84, 73, 78, 75, 94, 68, 83, 74, 92, 211};


//: eeeeee
Byte kStr_conservativeValue[] = {35, 6, 28, 13, 13, 3, 55, 182, 245, 235, 179, 45, 35, 73, 73, 73, 73, 73, 73, 214};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RandomViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChangePasswordCell.h"
#import "RandomViewCell.h"

//: @interface NTESChangePasswordCell ()<UITextFieldDelegate>
@interface RandomViewCell ()<UITextFieldDelegate>

//: @end
@end

//: @implementation NTESChangePasswordCell
@implementation RandomViewCell

//: - (void)initSubviews{
- (void)initHistoricalRecord{

    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: UIView *backGround = [[UIView alloc] init];
    UIView *backGround = [[UIView alloc] init];
    //: backGround.backgroundColor = [UIColor whiteColor];
    backGround.backgroundColor = [UIColor whiteColor];
    //: [self addSubview:backGround];
    [self addSubview:backGround];
    //: backGround.layer.masksToBounds = YES;
    backGround.layer.masksToBounds = YES;
    //: backGround.layer.cornerRadius = 5;
    backGround.layer.cornerRadius = 5;
    //: [backGround mas_makeConstraints:^(MASConstraintMaker *make) {
    [backGround mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.height.mas_equalTo(150);
        make.height.mas_equalTo(150);
    //: }];
    }];


    //: UIView *lineView = [[UIView alloc] init];
    UIView *lineView = [[UIView alloc] init];
    //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
    lineView.backgroundColor = [UIColor withMax:StringFromAtData(kStr_conservativeValue)];
    //: [self addSubview:lineView];
    [self addSubview:lineView];
    //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.top.mas_offset(50);
        make.top.mas_offset(50);
        //: make.height.mas_equalTo(1);
        make.height.mas_equalTo(1);
    //: }];
    }];

    //: UIView *lineView_ = [[UIView alloc] init];
    UIView *lineView_ = [[UIView alloc] init];
    //: lineView_.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
    lineView_.backgroundColor = [UIColor withMax:StringFromAtData(kStr_conservativeValue)];
    //: [self addSubview:lineView_];
    [self addSubview:lineView_];
    //: [lineView_ mas_makeConstraints:^(MASConstraintMaker *make) {
    [lineView_ mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.top.mas_offset(100);
        make.top.mas_offset(100);
        //: make.height.mas_equalTo(1);
        make.height.mas_equalTo(1);
    //: }];
    }];


    //: _textfile_1 = [[UITextField alloc] init];
    _textfile_1 = [[UITextField alloc] init];
    //: _textfile_1.secureTextEntry = YES;
    _textfile_1.secureTextEntry = YES;
    //: _textfile_1.font = [UIFont systemFontOfSize:16];
    _textfile_1.font = [UIFont systemFontOfSize:16];
    //: _textfile_1.delegate = self;
    _textfile_1.delegate = self;
    //: _textfile_1.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_old"];
    _textfile_1.placeholder = [ItemManager sessionInformation:StringFromAtData(kStr_ragingName)];//@"请输入旧密码";
    //: [backGround addSubview:_textfile_1];
    [backGround addSubview:_textfile_1];
    //: [_textfile_1 mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textfile_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(20);
        make.left.mas_offset(20);
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.top.mas_offset(5);
        make.top.mas_offset(5);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _textfile_2 = [[UITextField alloc] init];
    _textfile_2 = [[UITextField alloc] init];
    //: _textfile_2.secureTextEntry = YES;
    _textfile_2.secureTextEntry = YES;
    //: _textfile_2.font = [UIFont systemFontOfSize:16];
    _textfile_2.font = [UIFont systemFontOfSize:16];
    //: _textfile_2.delegate = self;
    _textfile_2.delegate = self;
    //: _textfile_2.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    _textfile_2.placeholder = [ItemManager sessionInformation:StringFromAtData(kStr_convertEnableTitle)];//@"请输入新密码";
    //: [backGround addSubview:_textfile_2];
    [backGround addSubview:_textfile_2];
    //: [_textfile_2 mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textfile_2 mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(20);
        make.left.mas_offset(20);
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.top.mas_offset(55);
        make.top.mas_offset(55);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _textfile_3 = [[UITextField alloc] init];
    _textfile_3 = [[UITextField alloc] init];
    //: _textfile_3.secureTextEntry = YES;
    _textfile_3.secureTextEntry = YES;
    //: _textfile_3.font = [UIFont systemFontOfSize:16];
    _textfile_3.font = [UIFont systemFontOfSize:16];
    //: _textfile_3.delegate = self;
    _textfile_3.delegate = self;
    //: _textfile_3.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    _textfile_3.placeholder = [ItemManager sessionInformation:StringFromAtData(kStr_convertEnableTitle)];//@"请确认新密码";
    //: [backGround addSubview:_textfile_3];
    [backGround addSubview:_textfile_3];
    //: [_textfile_3 mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textfile_3 mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(20);
        make.left.mas_offset(20);
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.top.mas_offset(105);
        make.top.mas_offset(105);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

}

//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //: [textField resignFirstResponder];
    [textField resignFirstResponder];
    //: return YES;
    return YES;
}

//: @end
@end

Byte * AtDataToCache(Byte *data) {
    int herselfView = data[0];
    int electNervous = data[1];
    Byte cryBoo = data[2];
    int drive = data[3];
    if (!herselfView) return data + drive;
    for (int i = drive; i < drive + electNervous; i++) {
        int value = data[i] + cryBoo;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[drive + electNervous] = 0;
    return data + drive;
}

NSString *StringFromAtData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AtDataToCache(data)];
}
