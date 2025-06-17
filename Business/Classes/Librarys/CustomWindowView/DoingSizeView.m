
#import <Foundation/Foundation.h>

NSString *StringFromMootData(Byte *data);        


//: register_avtivity3_nick
Byte kStr_outsideContent[] = {82, 23, 94, 14, 255, 73, 95, 87, 203, 216, 92, 129, 13, 132, 20, 7, 9, 11, 21, 22, 7, 20, 1, 3, 24, 22, 11, 24, 11, 22, 27, 213, 1, 16, 11, 5, 13, 50};


//: eeeeee
Byte kStr_countTitle[] = {42, 6, 54, 11, 17, 107, 151, 218, 169, 190, 31, 47, 47, 47, 47, 47, 47, 86};


//: 输入不能为空
Byte kStr_untilName[] = {81, 18, 57, 12, 97, 7, 77, 48, 90, 161, 30, 151, 175, 133, 90, 172, 76, 108, 171, 127, 84, 175, 74, 132, 171, 127, 129, 174, 112, 129, 186};


//: activity_register_next
Byte kStr_middleContent[] = {13, 22, 71, 8, 111, 12, 32, 115, 26, 28, 45, 34, 47, 34, 45, 50, 24, 43, 30, 32, 34, 44, 45, 30, 43, 24, 39, 30, 49, 45, 155};


//: #52ACFC
Byte kStr_valueTitle[] = {55, 7, 42, 4, 249, 11, 8, 23, 25, 28, 25, 45};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DoingSizeView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/7.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESInputNickNameWindowView.h"
#import "DoingSizeView.h"

//: @interface NTESInputNickNameWindowView ()
@interface DoingSizeView ()

//: @end
@end

//: @implementation NTESInputNickNameWindowView
@implementation DoingSizeView

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
        //: self.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        self.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);

        //: UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: disButton.frame = self.bounds;
        disButton.frame = self.bounds;
        //: [disButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [disButton addTarget:self action:@selector(houseMobile) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:disButton];
        [self addSubview:disButton];


        //: UIView *backGroundView = [[UIView alloc] init];
        UIView *backGroundView = [[UIView alloc] init];
        //: backGroundView.backgroundColor = [UIColor whiteColor];
        backGroundView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:backGroundView];
        [self addSubview:backGroundView];
        //: [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        [backGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.center.mas_equalTo(self);
            //: make.top.mas_equalTo(100);
            make.top.mas_equalTo(100);
            //: make.centerX.mas_equalTo(self);
            make.centerX.mas_equalTo(self);
            //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width -70);
            make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width -70);
            //: make.height.mas_equalTo(200);
            make.height.mas_equalTo(200);
        //: }];
        }];


        //: UILabel *titleLabel = [[UILabel alloc] init];
        UILabel *titleLabel = [[UILabel alloc] init];
        //: titleLabel.font = [UIFont systemFontOfSize:16];
        titleLabel.font = [UIFont systemFontOfSize:16];
        //: titleLabel.textColor = [UIColor blackColor];
        titleLabel.textColor = [UIColor blackColor];
        //: titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.textAlignment = NSTextAlignmentCenter;
        //: titleLabel.text = @"";
        titleLabel.text = @"";
        //: [backGroundView addSubview:titleLabel];
        [backGroundView addSubview:titleLabel];
        //: _titleLabel = titleLabel;
        _titleLabel = titleLabel;
        //: [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(30);
            make.top.mas_offset(30);
            //: make.left.mas_offset(20);
            make.left.mas_offset(20);
            //: make.right.mas_equalTo(-20);
            make.right.mas_equalTo(-20);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: _textField = [[UITextField alloc] init];
        _textField = [[UITextField alloc] init];
        //: _textField.placeholder = [FFFLanguageManager getTextWithKey:@"register_avtivity3_nick"];
        _textField.placeholder = [ItemManager sessionInformation:StringFromMootData(kStr_outsideContent)];
        //: [backGroundView addSubview:_textField];
        [backGroundView addSubview:_textField];
        //: [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
        [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(titleLabel.mas_bottom).mas_offset(20);
            make.top.mas_equalTo(titleLabel.mas_bottom).mas_offset(20);
            //: make.left.mas_offset(30);
            make.left.mas_offset(30);
            //: make.right.mas_equalTo(-30);
            make.right.mas_equalTo(-30);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UIView *lineView = [[UIView alloc] init];
        UIView *lineView = [[UIView alloc] init];
        //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
        lineView.backgroundColor = [UIColor withMax:StringFromMootData(kStr_countTitle)];
        //: [backGroundView addSubview:lineView];
        [backGroundView addSubview:lineView];
        //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_textField.mas_bottom).mas_offset(10);
            make.top.mas_equalTo(_textField.mas_bottom).mas_offset(10);
            //: make.left.mas_offset(30);
            make.left.mas_offset(30);
            //: make.right.mas_equalTo(-30);
            make.right.mas_equalTo(-30);
            //: make.height.mas_equalTo(1.2);
            make.height.mas_equalTo(1.2);
        //: }];
        }];


        //: UIButton *knowButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *knowButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: knowButton.titleLabel.font = [UIFont systemFontOfSize:16];
        knowButton.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [knowButton setTitle:[FFFLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
        [knowButton setTitle:[ItemManager sessionInformation:StringFromMootData(kStr_middleContent)] forState:UIControlStateNormal];
        //: [knowButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [knowButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [knowButton addTarget:self action:@selector(knowButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [knowButton addTarget:self action:@selector(tingTitle) forControlEvents:UIControlEventTouchUpInside];
        //: knowButton.backgroundColor = [UIColor colorWithHexString:@"#52ACFC"];
        knowButton.backgroundColor = [UIColor withMax:StringFromMootData(kStr_valueTitle)];
        //: [backGroundView addSubview:knowButton];
        [backGroundView addSubview:knowButton];
        //: _dowmButton = knowButton;
        _dowmButton = knowButton;
        //: knowButton.layer.masksToBounds = YES;
        knowButton.layer.masksToBounds = YES;
        //: knowButton.layer.cornerRadius = 4;
        knowButton.layer.cornerRadius = 4;
        //: [knowButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [knowButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_textField.mas_bottom).mas_offset(25);
            make.top.mas_equalTo(_textField.mas_bottom).mas_offset(25);
            //: make.left.mas_offset(20);
            make.left.mas_offset(20);
            //: make.right.mas_offset(-20);
            make.right.mas_offset(-20);
            //: make.height.mas_equalTo(45);
            make.height.mas_equalTo(45);
        //: }];
        }];



//        UIImageView *bgimage = [[UIImageView alloc] init];
//        bgimage.userInteractionEnabled = YES;
//        bgimage.image = [UIImage imageNamed:@"mine_opinipn_bgimage"];
//        [self addSubview:bgimage];
//        [bgimage mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.width.mas_equalTo(254);
//            make.height.mas_equalTo(278);
//            make.centerY.mas_equalTo(self);
//            make.centerX.mas_equalTo(self);
//        }];
//
//        UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [closeBtn setImage:[UIImage imageNamed:@"mine_opinipn_close"] forState:UIControlStateNormal];
//        [closeBtn addTarget:self action:@selector(closeBtnClick) forControlEvents:UIControlEventTouchUpInside];
//        [bgimage addSubview:closeBtn];
//        [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.right.mas_equalTo(bgimage);
//            make.top.mas_equalTo(bgimage);
//            make.width.mas_equalTo(50);
//            make.height.mas_equalTo(50);
//        }];






    }
    //: return self;
    return self;
}

//: -(void)closeBtnClick{
-(void)orderedSeries{
    //: [self dismissPicker];
    [self houseMobile];
}

//: -(void)knowButtonClick{
-(void)tingTitle{

    //: if (_textField.text.length <= 0) {
    if (_textField.text.length <= 0) {
        //: [SVProgressHUD showMessage:@"输入不能为空".nim_localized];
        [SVProgressHUD format:StringFromMootData(kStr_untilName).textKey];
        //: return;
        return;
    }

    //: if (_block) {
    if (_block) {
        //: _block(_textField.text);
        _block(_textField.text);
    }
    //: [self dismissPicker];
    [self houseMobile];
}

//: - (void)show{
- (void)imageShow{
    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];
}

//: - (void)dismissPicker{
- (void)houseMobile{

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{

    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];

}

//: -(void)clickKnowButton:(KnowBlock)block{
-(void)perimeter:(KnowBlock)block{
    //: _block = block;
    _block = block;
}


//: @end
@end

Byte * MootDataToCache(Byte *data) {
    int promotion = data[0];
    int fileRefer = data[1];
    Byte imageLute = data[2];
    int sateMart = data[3];
    if (!promotion) return data + sateMart;
    for (int i = sateMart; i < sateMart + fileRefer; i++) {
        int value = data[i] + imageLute;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[sateMart + fileRefer] = 0;
    return data + sateMart;
}

NSString *StringFromMootData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MootDataToCache(data)];
}
