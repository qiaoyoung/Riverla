//
//  GetBackPasswordViewController.m
//  Riverla
//
//  Created by mac on 2025/4/9.
//  Copyright © 2025 Riverla. All rights reserved.
//

#import "GetBackPasswordViewController.h"

@interface GetBackPasswordViewController ()

@property (nonatomic ,strong) UITextField *textfile_1;
@property (nonatomic ,strong) UITextField *textfile_2;
@property (nonatomic ,strong) UITextField *textfile_3;

@end

@implementation GetBackPasswordViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];

}
- (void)backAction{
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    bg.image = [UIImage imageNamed:@"login_bg"];
    [self.view addSubview:bg];

    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_TOP_HEIGHT)];
    [self.view addSubview:bgView];
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame = CGRectMake(5, SCREEN_STATUS_HEIGHT+4, 40, 40);
    [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:backButton];
    
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake((SCREEN_WIDTH-200)/2, SCREEN_STATUS_HEIGHT+4, 200, 40)];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.textColor = [UIColor blackColor];
    labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.text = LangKey(@"activity_safe_setting_modify");
    [bgView addSubview:labtitle];
    
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, SCREEN_TOP_HEIGHT+15, SCREEN_WIDTH-40, 48)];
    view1.backgroundColor = [UIColor whiteColor];
    view1.layer.cornerRadius = 24;
    [self.view addSubview:view1];

    UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    imgname.image = [UIImage imageNamed:@"saft_bind_account"];
    [view1 addSubview:imgname];
    
    self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(50, 15, SCREEN_WIDTH-40-30-30, 20)];
    self.textfile_1.font = [UIFont systemFontOfSize:16];
    self.textfile_1.textColor = TextColor_4;
    self.textfile_1.placeholder = LangKey(@"register_account_activity_account");
//    self.textfile_1.delegate = self;
    [view1 addSubview:self.textfile_1];
    
  
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20, view1.bottom+15, SCREEN_WIDTH-40, 48)];
    view2.backgroundColor = [UIColor whiteColor];
    view2.layer.cornerRadius = 24;
    [self.view addSubview:view2];
    
    UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    imgname2.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    [view2 addSubview:imgname2];
    
    self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, SCREEN_WIDTH-60-30-30, 20)];
    self.textfile_2.font = [UIFont systemFontOfSize:16];
    self.textfile_2.textColor = TextColor_4;
    self.textfile_2.placeholder = LangKey(@"activity_modify_new");
//    self.textfile_2.delegate = self;
    self.textfile_2.secureTextEntry = YES;
    [view2 addSubview:self.textfile_2];
    
    UIButton *secureButton1 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    secureButton1.frame = CGRectMake(SCREEN_WIDTH-70, 16, 16, 16);
    [secureButton1 addTarget:self action:@selector(pwdTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [secureButton1 setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
    [secureButton1 setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateSelected];
//    secureButton1.hidden = YES;
    [view2 addSubview:secureButton1];
    

    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20, view2.bottom+15, SCREEN_WIDTH-40, 48)];
    view3.backgroundColor = [UIColor whiteColor];
    view3.layer.cornerRadius = 24;
    [self.view addSubview:view3];
    
    UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    imgname3.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    [view3 addSubview:imgname3];
    
    self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, SCREEN_WIDTH-60-30-60, 20)];
    self.textfile_3.font = [UIFont systemFontOfSize:16];
    self.textfile_3.textColor = TextColor_4;
    self.textfile_3.placeholder = LangKey(@"activity_modify_new_again");
//    self.textfile_3.delegate = self;
    self.textfile_3.secureTextEntry = YES;
    [view3 addSubview:self.textfile_3];
    
    UIButton *secureButton2 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    secureButton2.frame = CGRectMake(SCREEN_WIDTH-70, 16, 16, 16);
    [secureButton2 addTarget:self action:@selector(pwdAginaTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [secureButton2 setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
    [secureButton2 setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateSelected];
//    secureButton2.hidden = YES;
    [view3 addSubview:secureButton2];

    UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    emptyButton.frame = CGRectMake(20, view3.bottom+30, SCREEN_WIDTH-40, 44);
    emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
    [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [emptyButton setTitle:LangKey(@"contact_list_activity_complete") forState:UIControlStateNormal];
    [emptyButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
    emptyButton.backgroundColor = ThemeColor;
    emptyButton.layer.cornerRadius = 22;
    [self.view addSubview:emptyButton];
    
  
}

- (void)pwdTextSwitch:(UIButton *)sender
{
    sender.selected = !sender.selected;
    if (sender.selected) { // 按下去了就是明文
        [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [UIView animateWithDuration:0.25 animations:^{
            self.textfile_2.secureTextEntry = NO;
        }];
        
    } else { // 暗文
        [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [UIView animateWithDuration:0.25 animations:^{
            self.textfile_2.secureTextEntry = YES;
        }];
    }
}
- (void)pwdAginaTextSwitch:(UIButton *)sender
{
    sender.selected = !sender.selected;
    if (sender.selected) { // 按下去了就是明文
        [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [UIView animateWithDuration:0.25 animations:^{
            self.textfile_3.secureTextEntry = NO;
        }];
        
    } else { // 暗文
        [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [UIView animateWithDuration:0.25 animations:^{
            self.textfile_3.secureTextEntry = YES;
        }];
    }
}

-(void)commitButtonClick
{
    NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];
    
    if (![self.textfile_2.text isEqualToString:self.textfile_3.text]){
        CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        style.backgroundColor = [UIColor whiteColor];
        style.imageSize = CGSizeMake(20, 20);
        style.messageColor = TextColor_2;
        [self.view makeToast:LangKey(@"modify_activity_psw_no_same") duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
        return;
    }
    
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    [dict setObject:account forKey:@"account"];
    [dict setObject:@"" forKey:@"type"];
    [dict setObject:_textfile_1.text forKey:@"oldpass"];
    [dict setObject:_textfile_2.text forKey:@"newpass"];
    [dict setObject:_textfile_3.text forKey:@"renewpass"];
    
    [ZCHttpManager getWithUrl:Server_user_modifyPass params:dict isShow:YES success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue == 0) {
            CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            style.backgroundColor = [UIColor whiteColor];
            style.imageSize = CGSizeMake(20, 20);
            style.messageColor = TextColor_2;
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_success"] style:style completion:nil];
            
            [self.navigationController popViewControllerAnimated:NO];
        }else{
            CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            style.backgroundColor = [UIColor whiteColor];
            style.imageSize = CGSizeMake(20, 20);
            style.messageColor = TextColor_2;
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
        }
        
    } failed:^(id responseObject, NSError *error) {
        CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        style.backgroundColor = [UIColor whiteColor];
        style.imageSize = CGSizeMake(20, 20);
        style.messageColor = TextColor_2;
        [self.view makeToast:LangKey(@"friend_verify_avtivity_net_error") duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
    }];
    
}

@end
