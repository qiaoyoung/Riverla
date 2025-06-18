//
//  NTESChangePasswordController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

#import "NTESChangePasswordController.h"
#import "NTESChangePasswordCell.h"

@interface NTESChangePasswordController ()<UITextFieldDelegate>

@property (nonatomic ,strong) UITextField *textfile_1;
@property (nonatomic ,strong) UITextField *textfile_2;
@property (nonatomic ,strong) UITextField *textfile_3;
@end

@implementation NTESChangePasswordController

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
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.textColor = [UIColor blackColor];
    labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.text = LangKey(@"activity_safe_setting_modify");
    [bgView addSubview:labtitle];
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+15, SCREEN_WIDTH-30, 50)];
    view1.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    view1.layer.borderWidth = 0.5;
//    view1.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    view1.layer.cornerRadius = 25;
//    view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    view1.layer.shadowOffset = CGSizeMake(0,3);
//    view1.layer.shadowOpacity = 1;
//    view1.layer.shadowRadius = 0;
    [self.view addSubview:view1];

    
    UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    imgname.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    [view1 addSubview:imgname];
    
    self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, SCREEN_WIDTH-60-30-30, 20)];
    self.textfile_1.font = [UIFont systemFontOfSize:16];
    self.textfile_1.textColor = TextColor_4;
    self.textfile_1.placeholder = LangKey(@"activity_modify_old");
    self.textfile_1.delegate = self;
    self.textfile_1.secureTextEntry = YES;
    [view1 addSubview:self.textfile_1];
    
    
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+15, SCREEN_WIDTH-30, 50)];
    view2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view2.layer.cornerRadius = 25;
    [self.view addSubview:view2];
    
    UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    imgname2.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    [view2 addSubview:imgname2];
    
    self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, SCREEN_WIDTH-60-30-30, 20)];
    self.textfile_2.font = [UIFont systemFontOfSize:16];
    self.textfile_2.textColor = TextColor_4;
    self.textfile_2.placeholder = LangKey(@"activity_modify_new");
    self.textfile_2.delegate = self;
    self.textfile_2.secureTextEntry = YES;
    [view2 addSubview:self.textfile_2];
    
//    UILabel *labphone3 = [[UILabel alloc] initWithFrame:CGRectMake(30, view2.bottom+15, SCREEN_WIDTH-60, 20)];
//    labphone3.font = [UIFont boldSystemFontOfSize:14.f];
//    labphone3.textColor = TextColor_4;
//    labphone3.textAlignment = NSTextAlignmentLeft;
//    labphone3.text = LangKey(@"psw_again");
//    [self.view addSubview:labphone3];
    
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(15, view2.bottom+15, SCREEN_WIDTH-30, 50)];
    view3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view3.layer.cornerRadius = 25;
    [self.view addSubview:view3];
    
    UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    imgname3.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    [view3 addSubview:imgname3];
    
    self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, SCREEN_WIDTH-60-30-30, 20)];
    self.textfile_3.font = [UIFont systemFontOfSize:16];
    self.textfile_3.textColor = TextColor_4;
    self.textfile_3.placeholder = LangKey(@"activity_modify_new");
    self.textfile_3.delegate = self;
    self.textfile_3.secureTextEntry = YES;
    [view3 addSubview:self.textfile_3];

    UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    emptyButton.frame = CGRectMake(15, view3.bottom+30, SCREEN_WIDTH-30, 48);
    emptyButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [emptyButton setTitle:LangKey(@"sure_edit") forState:UIControlStateNormal];
    [emptyButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
    emptyButton.backgroundColor = ThemeColor;
    emptyButton.layer.cornerRadius = 24;
    [self.view addSubview:emptyButton];
    
}

-(void)commitButtonClick{
    NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];
    
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    [dict setObject:account forKey:@"account"];
    [dict setObject:@"" forKey:@"type"];
    [dict setObject:_textfile_1.text forKey:@"oldpass"];
    [dict setObject:_textfile_2.text forKey:@"newpass"];
    [dict setObject:_textfile_3.text forKey:@"renewpass"];
    
    [ZCHttpManager getWithUrl:Server_user_modifyPass params:dict isShow:YES success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *msg = [resultDict newStringValueForKey:@"msg"];
//        [SVProgressHUD showMessage:msg];
       
        [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            [self.navigationController popViewControllerAnimated:NO];
        }];
        
    } failed:^(id responseObject, NSError *error) {
        
    }];
    
}

@end
