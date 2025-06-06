
#import <Foundation/Foundation.h>

NSString *StringFromPropositionData(Byte *data);


//: #333333
Byte kStr_assistantData[] = {1, 7, 3, 51, 51, 51, 51, 51, 51, 35, 195};


//: back_arrow_bl
Byte kStr_againContent[] = {34, 13, 6, 142, 12, 64, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 177};


//: nickname_same_account
Byte kStr_colorTheoryStandingName[] = {82, 21, 13, 103, 51, 163, 19, 173, 89, 125, 223, 165, 35, 116, 110, 117, 111, 99, 99, 97, 95, 101, 109, 97, 115, 95, 101, 109, 97, 110, 107, 99, 105, 110, 100};


//: activity_my_user_info_nick
Byte kStr_retailerSwingSpaceTitle[] = {12, 26, 13, 153, 85, 231, 140, 28, 106, 25, 233, 211, 101, 107, 99, 105, 110, 95, 111, 102, 110, 105, 95, 114, 101, 115, 117, 95, 121, 109, 95, 121, 116, 105, 118, 105, 116, 99, 97, 24};


//: #5D5F66
Byte kStr_tunaTheoryValue[] = {47, 7, 11, 143, 55, 167, 250, 1, 138, 188, 151, 54, 54, 70, 53, 68, 53, 35, 145};


//: register_good_nick
Byte kStr_sentenceHateInheritValue[] = {2, 18, 5, 106, 192, 107, 99, 105, 110, 95, 100, 111, 111, 103, 95, 114, 101, 116, 115, 105, 103, 101, 114, 9};


//: login_bg
Byte kStr_fenceName[] = {92, 8, 8, 130, 240, 15, 163, 14, 103, 98, 95, 110, 105, 103, 111, 108, 206};


//: register_avtivity3_nick
Byte kStr_floodValue[] = {29, 23, 13, 20, 74, 44, 196, 71, 191, 47, 120, 195, 164, 107, 99, 105, 110, 95, 51, 121, 116, 105, 118, 105, 116, 118, 97, 95, 114, 101, 116, 115, 105, 103, 101, 114, 147};


//: #B391FF
Byte kStr_direOptName[] = {5, 7, 4, 204, 70, 70, 49, 57, 51, 66, 35, 134};


//: activity_register_next
Byte kStr_expectationAfraidData[] = {29, 22, 8, 207, 56, 181, 101, 88, 116, 120, 101, 110, 95, 114, 101, 116, 115, 105, 103, 101, 114, 95, 121, 116, 105, 118, 105, 116, 99, 97, 200};


//: #009ADC
Byte kStr_fascinatingValue[] = {91, 7, 3, 67, 68, 65, 57, 48, 48, 35, 125};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFRegisterNickNameViewController.h"
#import "WithViewController.h"
//: #import "FFFRegisterAvatarViewController.h"
#import "PubViewController.h"

//: @interface FFFRegisterNickNameViewController ()<UITextFieldDelegate>
@interface WithViewController ()<UITextFieldDelegate>

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;

//: @property (nonatomic, strong) UIImageView *backGroundImgView;
@property (nonatomic, strong) UIImageView *backGroundImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;

//: @property (nonatomic, strong) UIView *usernameView;
@property (nonatomic, strong) UIView *usernameView;

//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UITextField *accountTextfield;
@property (nonatomic, strong) UITextField *accountTextfield;

//: @property (nonatomic, strong) UILabel *tipsLabel;
@property (nonatomic, strong) UILabel *tipsLabel;
//: @property (nonatomic, strong) UILabel *tipsLabel1;
@property (nonatomic, strong) UILabel *tipsLabel1;

//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;

//: @property (strong, nonatomic) NSString *loginbgCode;
@property (strong, nonatomic) NSString *loginbgCode;
//: @property (strong, nonatomic) UIColor *defColor;
@property (strong, nonatomic) UIColor *defColor;

//: @end
@end

//: @implementation FFFRegisterNickNameViewController
@implementation WithViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:StringFromPropositionData(kStr_fenceName)];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initPath];

}

//: - (void)backAction{
- (void)messageView{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)initUI
- (void)initPath
{
    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight]+2, 40, 40);
    self.closeBtn.frame = CGRectMake(15, [UIDevice table]+2, 40, 40);
    //    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:StringFromPropositionData(kStr_againContent)] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(messageView) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];


    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice table], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:24];
    titleLabel.font = [UIFont boldSystemFontOfSize:24];
    //: titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
    titleLabel.text = [TeamManager sizeKey:StringFromPropositionData(kStr_retailerSwingSpaceTitle)];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];


    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: self.accountLabel.font = [UIFont systemFontOfSize:14];
    self.accountLabel.font = [UIFont systemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor isView:StringFromPropositionData(kStr_tunaTheoryValue)];
    //: self.accountLabel.text = [FFFLanguageManager getTextWithKey:@"register_good_nick"];
    self.accountLabel.text = [TeamManager sizeKey:StringFromPropositionData(kStr_sentenceHateInheritValue)];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];

//    UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(20, self.accountLabel.bottom+30, SCREEN_WIDTH-40, 40)];
//    tip.font = [UIFont systemFontOfSize:14];
//    tip.textColor = TextColor_2;
//    tip.text = LangKey(@"nickname_same_account");
//    tip.numberOfLines = 2;
//    [self.view addSubview:tip];

    //: _usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, self.accountLabel.bottom+50, [[UIScreen mainScreen] bounds].size.width-40, 50)];
    _usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, self.accountLabel.bottom+50, [[UIScreen mainScreen] bounds].size.width-40, 50)];
    //: _usernameView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    _usernameView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: _usernameView.layer.cornerRadius = 8;
    _usernameView.layer.cornerRadius = 8;
    //: _usernameView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    _usernameView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: _usernameView.layer.shadowOffset = CGSizeMake(0,3);
    _usernameView.layer.shadowOffset = CGSizeMake(0,3);
    //: _usernameView.layer.shadowOpacity = 1;
    _usernameView.layer.shadowOpacity = 1;
    //: _usernameView.layer.shadowRadius = 0;
    _usernameView.layer.shadowRadius = 0;
    //: [self.view addSubview:_usernameView];
    [self.view addSubview:_usernameView];


    //: self.accountTextfield = [[UITextField alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60-30, 20)];
    self.accountTextfield = [[UITextField alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60-30, 20)];
    //: self.accountTextfield.font = [UIFont systemFontOfSize:16];
    self.accountTextfield.font = [UIFont systemFontOfSize:16];
    //: self.accountTextfield.textColor = [UIColor colorWithHexString:@"#333333"];
    self.accountTextfield.textColor = [UIColor isView:StringFromPropositionData(kStr_assistantData)];
    //: self.accountTextfield.placeholder = [FFFLanguageManager getTextWithKey:@"register_avtivity3_nick"];
    self.accountTextfield.placeholder = [TeamManager sizeKey:StringFromPropositionData(kStr_floodValue)];
    //: self.accountTextfield.delegate = self;
    self.accountTextfield.delegate = self;
    //: [_usernameView addSubview:self.accountTextfield];
    [_usernameView addSubview:self.accountTextfield];


    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
    self.registButton.backgroundColor = [UIColor isView:StringFromPropositionData(kStr_direOptName)];
    //    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 10;
    self.registButton.layer.cornerRadius = 10;
    //: self.registButton.layer.shadowColor = [UIColor colorWithHexString:@"#009ADC"].CGColor;
    self.registButton.layer.shadowColor = [UIColor isView:StringFromPropositionData(kStr_fascinatingValue)].CGColor;
    //: self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.layer.shadowOpacity = 1;
    self.registButton.layer.shadowOpacity = 1;
    //: self.registButton.layer.shadowRadius = 0;
    self.registButton.layer.shadowRadius = 0;
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[FFFLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
    [self.registButton setTitle:[TeamManager sizeKey:StringFromPropositionData(kStr_expectationAfraidData)] forState:UIControlStateNormal];
    //: [self.view addSubview:self.registButton];
    [self.view addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(upwardView) forControlEvents:UIControlEventTouchUpInside];

}

//: - (void)nextButtonClick
- (void)upwardView
{
    //: if (_accountTextfield.text.length == 0) {
    if (_accountTextfield.text.length == 0) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_avtivity3_nick"]
        [self.view makeToast:[TeamManager sizeKey:StringFromPropositionData(kStr_floodValue)]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }
    //: if ([_accountTextfield.text isEqualToString:self.accountName]) {
    if ([_accountTextfield.text isEqualToString:self.accountName]) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"nickname_same_account"]
        [self.view makeToast:[TeamManager sizeKey:StringFromPropositionData(kStr_colorTheoryStandingName)]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }


    //: FFFRegisterAvatarViewController *vc = [[FFFRegisterAvatarViewController alloc]init];
    PubViewController *vc = [[PubViewController alloc]init];
    //: vc.nickName = self.accountTextfield.text;
    vc.nickName = self.accountTextfield.text;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //: [super touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
    //: [_accountTextfield resignFirstResponder];
    [_accountTextfield resignFirstResponder];
}

//: @end
@end

Byte * PropositionDataToCache(Byte *data) {
    int rectoGreatly = data[0];
    int delimitation = data[1];
    int second = data[2];
    if (!rectoGreatly) return data + second;
    for (int i = 0; i < delimitation / 2; i++) {
        int begin = second + i;
        int end = second + delimitation - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[second + delimitation] = 0;
    return data + second;
}

NSString *StringFromPropositionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PropositionDataToCache(data)];
}  
