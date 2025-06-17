//
//  FFFRegisterViewController.m
//  NIM
//
//  Created by taricher on 2024/5/24.
//  Copyright © 2024 Netease. All rights reserved.
//

#import "FFFRegisterViewController.h"
#import "NTESMainTabController.h"
#import "UIView+Toast.h"
#import "SVProgressHUD.h"
#import "UIView+NTES.h"
#import "NSString+NTES.h"
#import "CCCLoginManager.h"
#import "NTESNotificationCenter.h"
#import "UIActionSheet+NTESBlock.h"
#import "FFFRegisterViewController.h"
#import "NTESRegistConfigManager.h"
#import "FFFGlobalMacro.h"
#import "AppDelegate.h"
#import "CCCAutoLoginManager.h"
#import "SNDevice.h"
#import "RegisterInfoViewController.h"
#import "ZMONPolicyPrivacyViewController.h"

@interface FFFRegisterViewController () <UITextFieldDelegate>

@property (strong, nonatomic) UIImageView *logoImageView;

@property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UIImageView *titleImg;
@property (strong, nonatomic) UITextField *passwordTextField;
@property (strong, nonatomic) UIImageView *titleImg2;

@property (strong, nonatomic)  UIButton *loginButton;
@property (strong, nonatomic)  UIButton *registerButton;
@property (nonatomic, strong) UIButton *agreementButton;
@property (nonatomic, strong) UIButton *secureButton;
@property (nonatomic, strong) YYLabel *protocolLabel;

@end

@implementation FFFRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    bg.image = [UIImage imageNamed:@"login_bg"];
    [self.view addSubview:bg];
    
    [self initUI];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)initUI
{
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame = CGRectMake(5, SCREEN_STATUS_HEIGHT+4, 40, 40);
    [backButton setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [backButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
    
    _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake((SCREEN_WIDTH-120)/2, SCREEN_STATUS_HEIGHT+50, 120, 120)];
    _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    _logoImageView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_logoImageView];
    _logoImageView.image = [UIImage imageNamed:@"login_logo"];
    
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, SCREEN_WIDTH, 30)];
    labtitle.text = LangKey(@"register_account");
    labtitle.textColor = [UIColor blackColor];
    labtitle.font = [UIFont boldSystemFontOfSize:16];
    labtitle.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:labtitle];
    
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, labtitle.bottom+20, SCREEN_WIDTH-40, 48)];
    usernameView.backgroundColor = RGB_COLOR_String(@"#F6F6F6");
    usernameView.layer.cornerRadius = 24;
    usernameView.layer.masksToBounds = YES;
    [self.view addSubview:usernameView];
    
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg.image = [UIImage imageNamed:@"login_icon_user"];
    [usernameView addSubview:self.titleImg];
    
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, SCREEN_WIDTH-90, 44)];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.textColor = TextColor_4;
    //    _usernameTextField.keyboardType = UIKeyboardTypeASCIICapable;
//    _usernameTextField.delegate = self;
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:LangKey(@"user_tip") attributes:@{NSForegroundColorAttributeName:TextColor_3}];
    _usernameTextField.attributedPlaceholder = attrString;
    [usernameView addSubview:_usernameTextField];
    
    UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, SCREEN_WIDTH-40, 48)];
    psdView.backgroundColor = RGB_COLOR_String(@"#F6F6F6");
    psdView.layer.masksToBounds = YES;
    psdView.layer.cornerRadius = 24;
    [self.view addSubview:psdView];
    
    self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg2.image = [UIImage imageNamed:@"login_icon_pwd"];
    [psdView addSubview:self.titleImg2];
    
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, SCREEN_WIDTH-140, 44)];
    _passwordTextField.font = [UIFont systemFontOfSize:16];
    _passwordTextField.textColor = TextColor_4;
//    _passwordTextField.secureTextEntry = YES;
//    self.passwordTextField.delegate = self;
    NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:LangKey(@"pass_tip") attributes:@{NSForegroundColorAttributeName:TextColor_3}];
    _passwordTextField.attributedPlaceholder = attrString1;
    [psdView addSubview:_passwordTextField];
    
    self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    self.secureButton.frame = CGRectMake(SCREEN_WIDTH-70, 17, 16, 16);
    [self.secureButton addTarget:self action:@selector(pwdTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.secureButton setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
    [self.secureButton setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateSelected];
//    self.secureButton.hidden = YES;
    [psdView addSubview:self.secureButton];
    
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginButton.frame = CGRectMake(20, psdView.bottom+20, SCREEN_WIDTH-40, 48);
    _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitle:LangKey(@"activity_register_next") forState:UIControlStateNormal];
    [_loginButton addTarget:self action:@selector(doLogin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_loginButton];
    _loginButton.backgroundColor = ThemeColor;
    _loginButton.layer.cornerRadius = 24;
//    _loginButton.layer.shadowColor = DeepBtnColor.CGColor;
//    _loginButton.layer.shadowOffset = CGSizeMake(0,3);
//    _loginButton.layer.shadowOpacity = 1;
//    _loginButton.layer.shadowRadius = 0;
    
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton.frame = CGRectMake(30, self.loginButton.bottom+15, SCREEN_WIDTH-60, 40);
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [_registerButton setTitleColor:ThemeColor forState:UIControlStateNormal];
    [_registerButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:LangKey(@"activity_login_login") attributes:attributes];
    [_registerButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    [self.view addSubview:_registerButton];
    
    
    _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _agreementButton.frame = CGRectMake(15, self.registerButton.bottom+15, 20, 20);
    _agreementButton.selected = YES;
    [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_normal"] forState:UIControlStateNormal];
    [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
    [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_agreementButton];
    
    [self.view addSubview:self.protocolLabel];
    self.protocolLabel.frame = CGRectMake(_agreementButton.right+5, self.registerButton.bottom+15, SCREEN_WIDTH-70, 50);
   
//    UILabel *subtitle = [[UILabel alloc]initWithFrame:CGRectMake(30, SCREEN_HEIGHT-SCREEN_BOTTOM_HEIGHT-80-20, SCREEN_WIDTH-60, 20)];
//    subtitle.textColor = RGB_COLOR_String(@"#8282A7");
//    subtitle.font = [UIFont systemFontOfSize:14];
//    subtitle.textAlignment = NSTextAlignmentCenter;
//    subtitle.text = LangKey(@"activity_register_account_has_account");
//    [self.view addSubview:subtitle];
    
//    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    _registerButton.frame = CGRectMake(SCREEN_WIDTH-136, SCREEN_STATUS_HEIGHT+20, 146, 32);
//    _registerButton.backgroundColor = ThemeColor;
//    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
//    [_registerButton setTitleColor:RGB_COLOR_String(@"#ffffff") forState:UIControlStateNormal];
//    [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",LangKey(@"activity_register_account_has_account"),LangKey(@"activity_login_login")] forState:UIControlStateNormal];
//    [_registerButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:_registerButton];
//    _registerButton.layer.masksToBounds = YES;
//    _registerButton.layer.cornerRadius = 16;
}


- (void)pwdTextSwitch:(UIButton *)sender
{
    // 切换按钮的状态
    sender.selected = !sender.selected;
    
    if (sender.selected) { // 按下去了就是明文
        
        [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [UIView animateWithDuration:0.25 animations:^{
            self.passwordTextField.secureTextEntry = YES;
        }];
        
    } else { // 暗文
        
        [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [UIView animateWithDuration:0.25 animations:^{
            self.passwordTextField.secureTextEntry = NO;
        }];
    }
}

- (void)goBack{
    [self.navigationController popViewControllerAnimated:NO];
}

- (YYLabel *)protocolLabel {
    if (!_protocolLabel) {
        NSString *originText = LangKey(@"activity_register_agree");
        NSMutableAttributedString  *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        text1.yy_font = [UIFont boldSystemFontOfSize:14];
        text1.yy_alignment = NSTextAlignmentLeft;
        text1.yy_lineSpacing = 3;
        [text1 yy_setTextHighlightRange:NSMakeRange(0, originText.length)//设置点击的位置
                                  color:ThemeColor
                        backgroundColor:[UIColor systemGroupedBackgroundColor]
                              tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
         {
            ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
            vc.webTitle = LangKey(@"activity_comment_setting_ys");
            vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
            [self.navigationController pushViewController:vc animated:YES];
        }];
        
        YYLabel *titleLb = [[YYLabel alloc] init];
        titleLb.userInteractionEnabled  = YES;
        titleLb.attributedText = text1;
        titleLb.font = [UIFont systemFontOfSize:14];
        titleLb.numberOfLines = 0;
        titleLb.textVerticalAlignment   = YYTextVerticalAlignmentTop;
        titleLb.backgroundColor = [UIColor clearColor];
        _protocolLabel = titleLb;
    }
    return _protocolLabel;
}

-(void)agreementButtonClick:(UIButton *)senderBtn
{
    senderBtn.selected = !senderBtn.selected;
}

#pragma mark - UITextFieldDelegate
//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//
//    if ([string isEqualToString:@"\n"]) {
//        [self doLogin];
//        return NO;
//    }
//    return YES;
//}
//
//- (void)textFieldDidEndEditing:(UITextField *)textField {
//    self.secureButton.hidden = YES;
//}
//
//- (void)textFieldDidBeginEditing:(UITextField *)textField {
//    self.secureButton.hidden = NO;
//    [textField bringSubviewToFront:self.secureButton];
//}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [_usernameTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
}


- (BOOL)isVPNConnected
{
    NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
    NSArray *keys = [dict[@"__SCOPED__"]allKeys];
    for (NSString *key in keys) {
        if ([key rangeOfString:@"tap"].location != NSNotFound ||
            [key rangeOfString:@"tun"].location != NSNotFound ||
            [key rangeOfString:@"ppp"].location != NSNotFound){
            return YES;
        }
    }
    return NO;
}
- (BOOL)isAccountValidString:(NSString *)input {
    NSString *pattern = @"^[A-Za-z0-9_]{6,12}$";
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    return [predicate evaluateWithObject:input];
}
- (BOOL)isPSDValidString:(NSString *)input {
    NSString *pattern = @"^[A-Za-z0-9_]{6,18}$";
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    return [predicate evaluateWithObject:input];
}


- (void)doLogin{
    
    if (self.agreementButton.selected == NO) {
        [self.view makeToast:LangKey(@"Read_agree_agreement") duration:2.0 position:CSToastPositionCenter];
        return;
    }
    
    _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if (_usernameTextField.text && _usernameTextField.text.length <= 0){
        [self.view makeToast:LangKey(@"register_account_activity_account") duration:2.0 position:CSToastPositionCenter];
        return;
    }
    
    if (_passwordTextField.text && _passwordTextField.text.length <= 0){
        [self.view makeToast:LangKey(@"register_account_activity_psw") duration:2.0 position:CSToastPositionCenter];
        return;
    }
    
//    if (![self isAccountValidString:_usernameTextField.text]){
//        [self.view makeToast:LangKey(@"user_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }
//    
//    if (![self isPSDValidString:_passwordTextField.text]){
//        [self.view makeToast:LangKey(@"pass_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }
    
    if ([_usernameTextField.text isEqualToString:_passwordTextField.text]){
        [self.view makeToast:LangKey(@"pass_user") duration:2.0 position:CSToastPositionCenter];
        return;
    }
    
    NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];
    [manager.registDict  setObject:@"iOS" forKey:@"client"];
    [manager.registDict setObject:_usernameTextField.text forKey:@"account"];
    [manager.registDict setObject:_passwordTextField.text forKey:@"password"];
    [manager.registDict setObject:@"" forKey:@"mobilecode"];
    [manager.registDict setObject:@"" forKey:@"invitecode"];
    [manager.registDict setObject:[self isVPNConnected]?@"1":@"0" forKey:@"vpn"];
    
    [_usernameTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
    
    @weakify(self);
    [NTESRegistConfigManager firstSendRegistName:_usernameTextField.text pd:_passwordTextField.text RequestWithComplete:^(BOOL sucess, NSString *msg) {
        @strongify(self)
        if (sucess) {
            RegisterInfoViewController *vc = [[RegisterInfoViewController alloc]init];
            vc.accountName = _usernameTextField.text;
            [self.navigationController pushViewController:vc animated:YES];
        }
    }];
}


@end
