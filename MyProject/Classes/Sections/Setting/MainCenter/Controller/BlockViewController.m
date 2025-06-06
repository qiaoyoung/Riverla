
#import <Foundation/Foundation.h>

NSString *StringFromAlleyData(Byte *data);


//: safe_bind_phone_icon
Byte kStr_closeTitle[] = {70, 20, 3, 110, 111, 99, 105, 95, 101, 110, 111, 104, 112, 95, 100, 110, 105, 98, 95, 101, 102, 97, 115, 197};


//: #333333
Byte kStr_leasedValue[] = {47, 7, 7, 176, 226, 138, 213, 51, 51, 51, 51, 51, 51, 35, 185};


//: /user/modifyPass
Byte kStr_brandFileValue[] = {36, 16, 3, 115, 115, 97, 80, 121, 102, 105, 100, 111, 109, 47, 114, 101, 115, 117, 47, 35};


//: msg
Byte kStr_enableVideoData[] = {22, 3, 5, 46, 140, 103, 115, 109, 109};


//: type
Byte kStr_goingName[] = {25, 4, 5, 159, 65, 101, 112, 121, 116, 101};


//: newpass
Byte kStr_opponentText[] = {43, 7, 6, 205, 116, 170, 115, 115, 97, 112, 119, 101, 110, 165};


//: activity_safe_setting_modify
Byte kStr_titleMaterSheData[] = {24, 28, 4, 176, 121, 102, 105, 100, 111, 109, 95, 103, 110, 105, 116, 116, 101, 115, 95, 101, 102, 97, 115, 95, 121, 116, 105, 118, 105, 116, 99, 97, 220};


//: activity_modify_old
Byte kStr_shadowRefugeeTitle[] = {60, 19, 8, 168, 96, 244, 136, 68, 100, 108, 111, 95, 121, 102, 105, 100, 111, 109, 95, 121, 116, 105, 118, 105, 116, 99, 97, 84};


//: #B391FF
Byte kStr_hazardMyName[] = {47, 7, 9, 52, 62, 247, 8, 133, 219, 70, 70, 49, 57, 51, 66, 35, 31};


//: back_arrow_bl
Byte kStr_vatTaData[] = {77, 13, 10, 83, 190, 194, 243, 159, 178, 220, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 59};


//: sure_edit
Byte kStr_victorValue[] = {2, 9, 3, 116, 105, 100, 101, 95, 101, 114, 117, 115, 148};


//: renewpass
Byte kStr_dependenceValue[] = {39, 9, 9, 205, 121, 58, 203, 60, 241, 115, 115, 97, 112, 119, 101, 110, 101, 114, 27};


//: activity_modify_new
Byte kStr_warName[] = {5, 19, 8, 167, 85, 214, 73, 80, 119, 101, 110, 95, 121, 102, 105, 100, 111, 109, 95, 121, 116, 105, 118, 105, 116, 99, 97, 134};


//: account
Byte kStr_angleData[] = {97, 7, 12, 175, 168, 137, 227, 255, 131, 2, 107, 205, 116, 110, 117, 111, 99, 99, 97, 42};


//: login_bg
Byte kStr_chopInfoValue[] = {31, 8, 11, 170, 73, 202, 22, 98, 210, 52, 21, 103, 98, 95, 110, 105, 103, 111, 108, 191};


//: oldpass
Byte kStr_fillTitle[] = {89, 7, 7, 138, 133, 252, 61, 115, 115, 97, 112, 100, 108, 111, 240};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlockViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChangePasswordController.h"
#import "BlockViewController.h"
//: #import "NTESChangePasswordCell.h"
#import "ImmobilizeView.h"

//: @interface NTESChangePasswordController ()<UITextFieldDelegate>
@interface BlockViewController ()<UITextFieldDelegate>

//: @property (nonatomic ,strong) UITextField *textfile_1;
@property (nonatomic ,strong) UITextField *textfile_1;
//: @property (nonatomic ,strong) UITextField *textfile_2;
@property (nonatomic ,strong) UITextField *textfile_2;
//: @property (nonatomic ,strong) UITextField *textfile_3;
@property (nonatomic ,strong) UITextField *textfile_3;
//: @end
@end

//: @implementation NTESChangePasswordController
@implementation BlockViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}
//: - (void)backAction{
- (void)messageView{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:StringFromAlleyData(kStr_chopInfoValue)];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice table]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice table]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromAlleyData(kStr_vatTaData)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(messageView) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice table]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_safe_setting_modify"];
    labtitle.text = [TeamManager sizeKey:StringFromAlleyData(kStr_titleMaterSheData)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice table])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view1.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view1.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    view1.layer.borderWidth = 0.5;
//    view1.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    //: view1.layer.cornerRadius = 25;
    view1.layer.cornerRadius = 25;
//    view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    view1.layer.shadowOffset = CGSizeMake(0,3);
//    view1.layer.shadowOpacity = 1;
//    view1.layer.shadowRadius = 0;
    //: [self.view addSubview:view1];
    [self.view addSubview:view1];


    //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname.image = [UIImage imageNamed:StringFromAlleyData(kStr_closeTitle)];
    //: [view1 addSubview:imgname];
    [view1 addSubview:imgname];

    //: self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_1.font = [UIFont systemFontOfSize:16];
    self.textfile_1.font = [UIFont systemFontOfSize:16];
    //: self.textfile_1.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_1.textColor = [UIColor isView:StringFromAlleyData(kStr_leasedValue)];
    //: self.textfile_1.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_old"];
    self.textfile_1.placeholder = [TeamManager sizeKey:StringFromAlleyData(kStr_shadowRefugeeTitle)];
    //: self.textfile_1.delegate = self;
    self.textfile_1.delegate = self;
    //: self.textfile_1.secureTextEntry = YES;
    self.textfile_1.secureTextEntry = YES;
    //: [view1 addSubview:self.textfile_1];
    [view1 addSubview:self.textfile_1];


    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: view2.layer.cornerRadius = 25;
    view2.layer.cornerRadius = 25;
    //: [self.view addSubview:view2];
    [self.view addSubview:view2];

    //: UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname2.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname2.image = [UIImage imageNamed:StringFromAlleyData(kStr_closeTitle)];
    //: [view2 addSubview:imgname2];
    [view2 addSubview:imgname2];

    //: self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_2.font = [UIFont systemFontOfSize:16];
    self.textfile_2.font = [UIFont systemFontOfSize:16];
    //: self.textfile_2.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_2.textColor = [UIColor isView:StringFromAlleyData(kStr_leasedValue)];
    //: self.textfile_2.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_2.placeholder = [TeamManager sizeKey:StringFromAlleyData(kStr_warName)];
    //: self.textfile_2.delegate = self;
    self.textfile_2.delegate = self;
    //: self.textfile_2.secureTextEntry = YES;
    self.textfile_2.secureTextEntry = YES;
    //: [view2 addSubview:self.textfile_2];
    [view2 addSubview:self.textfile_2];

//    UILabel *labphone3 = [[UILabel alloc] initWithFrame:CGRectMake(30, view2.bottom+15, SCREEN_WIDTH-60, 20)];
//    labphone3.font = [UIFont boldSystemFontOfSize:14.f];
//    labphone3.textColor = TextColor_4;
//    labphone3.textAlignment = NSTextAlignmentLeft;
//    labphone3.text = LangKey(@"psw_again");
//    [self.view addSubview:labphone3];

    //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(15, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(15, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: view3.layer.cornerRadius = 25;
    view3.layer.cornerRadius = 25;
    //: [self.view addSubview:view3];
    [self.view addSubview:view3];

    //: UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname3.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname3.image = [UIImage imageNamed:StringFromAlleyData(kStr_closeTitle)];
    //: [view3 addSubview:imgname3];
    [view3 addSubview:imgname3];

    //: self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_3.font = [UIFont systemFontOfSize:16];
    self.textfile_3.font = [UIFont systemFontOfSize:16];
    //: self.textfile_3.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_3.textColor = [UIColor isView:StringFromAlleyData(kStr_leasedValue)];
    //: self.textfile_3.placeholder = [FFFLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_3.placeholder = [TeamManager sizeKey:StringFromAlleyData(kStr_warName)];
    //: self.textfile_3.delegate = self;
    self.textfile_3.delegate = self;
    //: self.textfile_3.secureTextEntry = YES;
    self.textfile_3.secureTextEntry = YES;
    //: [view3 addSubview:self.textfile_3];
    [view3 addSubview:self.textfile_3];

    //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: emptyButton.frame = CGRectMake(15, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 48);
    emptyButton.frame = CGRectMake(15, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:16];
    emptyButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [emptyButton setTitle:[FFFLanguageManager getTextWithKey:@"sure_edit"] forState:UIControlStateNormal];
    [emptyButton setTitle:[TeamManager sizeKey:StringFromAlleyData(kStr_victorValue)] forState:UIControlStateNormal];
    //: [emptyButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [emptyButton addTarget:self action:@selector(messageAuto) forControlEvents:UIControlEventTouchUpInside];
    //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
    emptyButton.backgroundColor = [UIColor isView:StringFromAlleyData(kStr_hazardMyName)];
    //: emptyButton.layer.cornerRadius = 24;
    emptyButton.layer.cornerRadius = 24;
    //: [self.view addSubview:emptyButton];
    [self.view addSubview:emptyButton];

}

//: -(void)commitButtonClick{
-(void)messageAuto{
    //: NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];


    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: [dict setObject:account forKey:@"account"];
    [dict setObject:account forKey:StringFromAlleyData(kStr_angleData)];
    //: [dict setObject:@"" forKey:@"type"];
    [dict setObject:@"" forKey:StringFromAlleyData(kStr_goingName)];
    //: [dict setObject:_textfile_1.text forKey:@"oldpass"];
    [dict setObject:_textfile_1.text forKey:StringFromAlleyData(kStr_fillTitle)];
    //: [dict setObject:_textfile_2.text forKey:@"newpass"];
    [dict setObject:_textfile_2.text forKey:StringFromAlleyData(kStr_opponentText)];
    //: [dict setObject:_textfile_3.text forKey:@"renewpass"];
    [dict setObject:_textfile_3.text forKey:StringFromAlleyData(kStr_dependenceValue)];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/modifyPass"] params:dict isShow:YES success:^(id responseObject) {
    [InfoManager enable:[NSString stringWithFormat:StringFromAlleyData(kStr_brandFileValue)] sub:dict record:YES tapGetFailed:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict speedy:StringFromAlleyData(kStr_enableVideoData)];
//        [SVProgressHUD showMessage:msg];

        //: [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
        [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }];
        }];

    //: } failed:^(id responseObject, NSError *error) {
    } failedSmartOccurrentSelectShowGet:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: @end
@end

Byte * AlleyDataToCache(Byte *data) {
    int willHam = data[0];
    int fileMessage = data[1];
    int unpleasantWoman = data[2];
    if (!willHam) return data + unpleasantWoman;
    for (int i = 0; i < fileMessage / 2; i++) {
        int begin = unpleasantWoman + i;
        int end = unpleasantWoman + fileMessage - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[unpleasantWoman + fileMessage] = 0;
    return data + unpleasantWoman;
}

NSString *StringFromAlleyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AlleyDataToCache(data)];
}  
