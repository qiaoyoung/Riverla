//
//  ZMONFriendCardViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

#import "ZMONFriendCardViewController.h"
#import "UIView+Toast.h"
#import "SVProgressHUD.h"
#import "NTESColorButtonCell.h"
#import "UIView+NTES.h"
#import "NTESSessionViewController.h"
#import "NTESBundleSetting.h"
#import "UIAlertView+NTESBlock.h"
#import "NTESUserUtil.h"
#import "HMDataPicker.h"
#import "NTESOpinionBackViewController.h"

@interface ZMONFriendCardViewController ()<NIMUserManagerDelegate>


@property (nonatomic,copy  ) NSString  *userId;
@property (nonatomic,strong) NIMUser *user;

@property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *account;

@property (nonatomic, strong) UIView *personView;

@end

@implementation ZMONFriendCardViewController

- (instancetype)initWithUserId:(NSString *)userId{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        _userId = userId;
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];
}

- (void)backAction{
    [self.navigationController popViewControllerAnimated:NO];
}
- (void)dealloc{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    bg.image = [UIImage imageNamed:@"common_bg"];
    [self.view addSubview:bg];
    
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.closeBtn];
    self.closeBtn.frame = CGRectMake(15, 4+SCREEN_STATUS_HEIGHT, 36, 36);
    
//    self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];
    
    self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake((SCREEN_WIDTH-120)/2, SCREEN_TOP_HEIGHT+30, 120, 120)];
    self.accountheadImg.layer.cornerRadius = 60;
    self.accountheadImg.layer.masksToBounds = YES;
    [self.view addSubview:self.accountheadImg];
   
    self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+30, SCREEN_WIDTH-30, 20)];
    self.accountNickname.font = [UIFont boldSystemFontOfSize:18];
    self.accountNickname.textColor = [UIColor blackColor];
    self.accountNickname.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.accountNickname];

    self.account = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, SCREEN_WIDTH-30, 15)];
    self.account.font = [UIFont systemFontOfSize:12];
    self.account.textColor = RGB_COLOR_String(@"#999999");
    self.account.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.account];
    

    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    addBtn.frame = CGRectMake(15, self.account.bottom+30, SCREEN_WIDTH-30, 44);
    [addBtn addTarget:self action:@selector(sendAddFriendRequest) forControlEvents:UIControlEventTouchUpInside];
    addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [addBtn setTitle:LangKey(@"add_friend_activity_add_friend") forState:UIControlStateNormal];
    addBtn.backgroundColor = ThemeColor;
    addBtn.layer.cornerRadius = 22;
    [self.view addSubview:addBtn];
 
    
    @weakify(self)
    [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
            if (users.count) {
                @strongify(self);
                self.user = users.firstObject;
                
                [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"contact_user_default_header"]];
                self.accountNickname.text = self.user.userInfo.nickName;
            }
        }];

    
    NSMutableDictionary *dict = @{}.mutableCopy;
    dict[@"user_id"] = self.userId;
    [ZCHttpManager getWithUrl:Server_user_detail params:dict isShow:NO success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue <= 0) {
            NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSString *account = [data newStringValueForKey:@"account"];
            self.account.text = [NSString stringWithFormat:@"%@%@",LangKey(@"friend_info_activity_account"), account];
        }

    } failed:^(id responseObject, NSError *error) {

    }];
    
}

#pragma mark - MDelegate
-(void)sendAddFriendRequest{
    NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    request.userId = self.userId;
    request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationRequest;
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    
    NSString *contact_tag_fragment_add_success = LangKey(@"contact_tag_fragment_add_success");//@"添加成功".ntes_localized
    NSString *request_successful = LangKey(@"request_successful");//@"请求成功".ntes_localized
    NSString *add_friend_add_fail = LangKey(@"add_friend_add_fail");//@"添加失败".ntes_localized
    NSString *add_friend_request_fail = LangKey(@"add_friend_request_fail");//@"请求失败".ntes_localized
    NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    NSString *failedText =  request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;
    
    __weak typeof(self) wself = self;
    [SVProgressHUD show];
    [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
        [SVProgressHUD dismiss];
        if (!error) {
            [wself.view makeToast:successText
                         duration:2.0f
                         position:CSToastPositionCenter];
            
        }else{
            [wself.view makeToast:failedText
                         duration:2.0f
                         position:CSToastPositionCenter];
        }
    }];
}

@end
