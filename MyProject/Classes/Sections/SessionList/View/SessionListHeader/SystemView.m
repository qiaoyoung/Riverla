
#import <Foundation/Foundation.h>

NSString *StringFromToData(Byte *data);        


//: sign_gold_title
Byte kStr_windowValue[] = {72, 15, 69, 4, 46, 36, 34, 41, 26, 34, 42, 39, 31, 26, 47, 36, 47, 39, 32, 138};


//: dialog_sign_now
Byte kStr_departmentData[] = {30, 15, 29, 9, 249, 180, 150, 45, 252, 71, 76, 68, 79, 82, 74, 66, 86, 76, 74, 81, 66, 81, 82, 90, 195};


//: home_system_sign_close
Byte kStr_itemTapTitle[] = {3, 22, 58, 6, 223, 226, 46, 53, 51, 43, 37, 57, 63, 57, 58, 43, 51, 37, 57, 47, 45, 52, 37, 41, 50, 53, 57, 43, 89};


//: sign_keep_title
Byte kStr_moreoverFillValue[] = {19, 15, 77, 6, 206, 95, 38, 28, 26, 33, 18, 30, 24, 24, 35, 18, 39, 28, 39, 31, 24, 189};


//: #EE4A5C
Byte kStr_withTaBedroomContent[] = {57, 7, 73, 13, 17, 97, 215, 50, 219, 38, 52, 200, 72, 218, 252, 252, 235, 248, 236, 250, 21};


//: home_syetem_sign_back
Byte kStr_powderModelValue[] = {93, 21, 96, 10, 80, 115, 55, 122, 192, 39, 8, 15, 13, 5, 255, 19, 25, 5, 20, 5, 13, 255, 19, 9, 7, 14, 255, 2, 1, 3, 11, 203};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SystemView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/13.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSystemSignNotificationSheet.h"
#import "SystemView.h"

//: @interface NTESSystemSignNotificationSheet ()
@interface SystemView ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @end
@end

//: @implementation NTESSystemSignNotificationSheet
@implementation SystemView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithRecent:(CGRect)frame picture:(NSDictionary *)dictionary{

    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];

        //: CGFloat width = [[UIScreen mainScreen] bounds].size.width-100;
        CGFloat width = [[UIScreen mainScreen] bounds].size.width-100;

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 320/2, width, width/710*1013)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 320/2, width, width/710*1013)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];
        //: _backView.layer.cornerRadius = 8.2;
        _backView.layer.cornerRadius = 8.2;
        //: _backView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        _backView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        //: _backView.layer.shadowOffset = CGSizeMake(-1, -1);
        _backView.layer.shadowOffset = CGSizeMake(-1, -1);
        //: _backView.layer.shadowOpacity = 0.5;
        _backView.layer.shadowOpacity = 0.5;

        //: UIImageView *topImageView = [[UIImageView alloc] init];
        UIImageView *topImageView = [[UIImageView alloc] init];
        //: topImageView.userInteractionEnabled = YES;
        topImageView.userInteractionEnabled = YES;
        //: topImageView.image = [UIImage imageNamed:@"home_syetem_sign_back"];
        topImageView.image = [UIImage imageNamed:StringFromToData(kStr_powderModelValue)];
        //: [_backView addSubview:topImageView];
        [_backView addSubview:topImageView];
        //: [topImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [topImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.width.mas_equalTo(_backView.mas_width);
            make.width.mas_equalTo(_backView.mas_width);
            //: make.height.mas_equalTo(_backView.mas_height);
            make.height.mas_equalTo(_backView.mas_height);
        //: }];
        }];


        //: UILabel *title_1 = [[UILabel alloc] init];
        UILabel *title_1 = [[UILabel alloc] init];
        //: title_1.textColor = [UIColor whiteColor];
        title_1.textColor = [UIColor whiteColor];
        //: title_1.font = [UIFont boldSystemFontOfSize:25];
        title_1.font = [UIFont boldSystemFontOfSize:25];
        //: title_1.textAlignment = NSTextAlignmentCenter;
        title_1.textAlignment = NSTextAlignmentCenter;
        //: title_1.text = [FFFLanguageManager getTextWithKey:@"sign_gold_title"];
        title_1.text = [TeamManager sizeKey:StringFromToData(kStr_windowValue)];
        //: [topImageView addSubview:title_1];
        [topImageView addSubview:title_1];
        //: [title_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [title_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(5);
            make.left.mas_offset(5);
            //: make.right.mas_offset(-5);
            make.right.mas_offset(-5);
            //: make.top.mas_offset(20);
            make.top.mas_offset(20);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UILabel *title_2 = [[UILabel alloc] init];
        UILabel *title_2 = [[UILabel alloc] init];
        //: title_2.textColor = [UIColor whiteColor];
        title_2.textColor = [UIColor whiteColor];
        //: title_2.textAlignment = NSTextAlignmentCenter;
        title_2.textAlignment = NSTextAlignmentCenter;
        //: title_2.font = [UIFont boldSystemFontOfSize:15];
        title_2.font = [UIFont boldSystemFontOfSize:15];
        //: title_2.text = [FFFLanguageManager getTextWithKey:@"sign_keep_title"];
        title_2.text = [TeamManager sizeKey:StringFromToData(kStr_moreoverFillValue)];
        //: [topImageView addSubview:title_2];
        [topImageView addSubview:title_2];
        //: [title_2 mas_makeConstraints:^(MASConstraintMaker *make) {
        [title_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(5);
            make.left.mas_offset(5);
            //: make.right.mas_offset(-5);
            make.right.mas_offset(-5);
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];




        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.titleLabel.font = [UIFont systemFontOfSize:15];
        closeButton.titleLabel.font = [UIFont systemFontOfSize:15];
        //: closeButton.backgroundColor = [UIColor colorWithHexString:@"#EE4A5C"];
        closeButton.backgroundColor = [UIColor isView:StringFromToData(kStr_withTaBedroomContent)];
        //: [closeButton setTitle:[FFFLanguageManager getTextWithKey:@"dialog_sign_now"] forState:UIControlStateNormal];
        [closeButton setTitle:[TeamManager sizeKey:StringFromToData(kStr_departmentData)] forState:UIControlStateNormal];
        //: [closeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [closeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(signButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(snapAdd) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:closeButton];
        [_backView addSubview:closeButton];
        //: closeButton.layer.masksToBounds = YES;
        closeButton.layer.masksToBounds = YES;
        //: closeButton.layer.cornerRadius = 18;
        closeButton.layer.cornerRadius = 18;
        //: closeButton.layer.borderColor = [UIColor colorWithHexString:@"#EE4A5C"].CGColor;
        closeButton.layer.borderColor = [UIColor isView:StringFromToData(kStr_withTaBedroomContent)].CGColor;
        //: closeButton.layer.borderWidth = 1.4;
        closeButton.layer.borderWidth = 1.4;
        //: [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.bottom.mas_equalTo(_backView.mas_bottom).offset(-20);
            make.bottom.mas_equalTo(_backView.mas_bottom).offset(-20);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
            //: make.height.mas_equalTo(36);
            make.height.mas_equalTo(36);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
        //: }];
        }];


        //: UIButton *close = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *close = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [close setImage:[UIImage imageNamed:@"home_system_sign_close"] forState:UIControlStateNormal];
        [close setImage:[UIImage imageNamed:StringFromToData(kStr_itemTapTitle)] forState:UIControlStateNormal];
        //: [close addTarget:self action:@selector(closeButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [close addTarget:self action:@selector(buttonWith) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:close];
        [self addSubview:close];
        //: [close mas_makeConstraints:^(MASConstraintMaker *make) {
        [close mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_backView.mas_bottom).offset(20);
            make.top.mas_equalTo(_backView.mas_bottom).offset(20);
            //: make.width.mas_equalTo(34);
            make.width.mas_equalTo(34);
            //: make.height.mas_equalTo(34);
            make.height.mas_equalTo(34);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
        //: }];
        }];



        //: UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTapFrom)];
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(fromAdd)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [self addGestureRecognizer:singleRecognizer];
        [self addGestureRecognizer:singleRecognizer];

    }
    //: return self;
    return self;
}

//: -(void)signButtonClick{
-(void)snapAdd{
    //: [self dismissPicker];
    [self ofItem];
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(signButtonClickDelegate)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(streetwiseDelegate)]) {
        //: [self.delegate signButtonClickDelegate];
        [self.delegate streetwiseDelegate];
    }
}


//: -(void)closeButtonClick{
-(void)buttonWith{
    //: [self dismissPicker];
    [self ofItem];
}

//: -(void)handleSingleTapFrom{
-(void)fromAdd{
    //: [self dismissPicker];
    [self ofItem];
}

//: - (void)show{
- (void)optionMessage{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 320/2];
        [self->_backView setRange:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice table]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 320/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)ofItem{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setRange:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];


}

//: @end
@end

Byte * ToDataToCache(Byte *data) {
    int materTitle = data[0];
    int direMember = data[1];
    Byte messageRetail = data[2];
    int travelKitMember = data[3];
    if (!materTitle) return data + travelKitMember;
    for (int i = travelKitMember; i < travelKitMember + direMember; i++) {
        int value = data[i] + messageRetail;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[travelKitMember + direMember] = 0;
    return data + travelKitMember;
}

NSString *StringFromToData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ToDataToCache(data)];
}
