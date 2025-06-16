//
//  NTESContactAddFriendViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "NTESContactAddFriendViewController.h"
#import "NTESContactAddFriendCell.h"
#import "UIView+Toast.h"
#import "SVProgressHUD.h"
#import "NTESPersonalCardViewController.h"
#import "NTESUserQRCodeViewController.h"
#import "SNDevice.h"
#import "CCCLoginManager.h"
#import "UIAlertView+NTESBlock.h"
#import "UIView+NTES.h"
#import "LCQRCodeUtil.h"
#import <Photos/Photos.h>
#import "CCCContactScanViewController.h"
#import "ZMONMyQRcodeView.h"
#import "ZMONFriendCardViewController.h"
#import "RecommendfriendTableViewCell.h"
@interface NTESContactAddFriendViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource,RecommendfriendCellDelegate>

@property (nonatomic ,strong) UITextField *textField;
@property (nonatomic ,strong) UILabel *accountLabel;
@property (nonatomic ,strong) UIImageView *qrImgview;
@property (nonatomic ,strong) UILabel *tipsLabel;

@property (nonatomic ,strong) ZMONMyQRcodeView *MyQRcodeView;

@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,copy) NSArray *friendList;

@end

@implementation NTESContactAddFriendViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
   
    
    UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_TOP_HEIGHT)];
    [self.view addSubview:navview];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(15, SCREEN_STATUS_HEIGHT, 40, 40);
    [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [navview addSubview:backBtn];
    
    UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, SCREEN_STATUS_HEIGHT, SCREEN_WIDTH, 44)];
    labNavtitle.textColor = [UIColor blackColor];
    labNavtitle.font = [UIFont boldSystemFontOfSize:16];
    labNavtitle.text = LangKey(@"add_friend_activity_add_friend");
    labNavtitle.textAlignment = NSTextAlignmentCenter;
    [navview addSubview:labNavtitle];
    
    UIButton *myQrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    myQrBtn.frame = CGRectMake(SCREEN_WIDTH-40-15, SCREEN_STATUS_HEIGHT, 40, 40);
    [myQrBtn addTarget:self action:@selector(QRCodeButtnClick) forControlEvents:UIControlEventTouchUpInside];
    [myQrBtn setImage:[UIImage imageNamed:@"my_qr"] forState:UIControlStateNormal];
    [navview addSubview:myQrBtn];
    
    
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, 80)];
    topview.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:topview];
    

    UIView *searchView = [[UIView alloc]initWithFrame:CGRectMake(15, 12, SCREEN_WIDTH-30, 56)];
    searchView.backgroundColor = RGB_COLOR_String(@"#FAF8FD");
    searchView.layer.cornerRadius = 28;
    [topview addSubview:searchView];
    
    UIButton *btnScan = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnScan addTarget:self action:@selector(scan) forControlEvents:UIControlEventTouchUpInside];
    btnScan.frame = CGRectMake(15, 8, 40, 40);
    [btnScan setImage:[UIImage imageNamed:@"ic_scan"] forState:UIControlStateNormal];
    [searchView addSubview:btnScan];
    
    
    [searchView addSubview:self.textField];
    self.textField.frame = CGRectMake(30+40, 0, SCREEN_WIDTH-60-90, 56);
    
    
    UIButton *btnSearch = [UIButton buttonWithType:UIButtonTypeCustom];
    btnSearch.frame = CGRectMake(SCREEN_WIDTH-30-60-8, 8, 60, 40);
    [btnSearch setImage:[UIImage imageNamed:@"icon_search_w"] forState:UIControlStateNormal];
    [btnSearch addTarget:self action:@selector(doneSearch) forControlEvents:UIControlEventTouchUpInside];
    btnSearch.backgroundColor = ThemeColor;
    btnSearch.layer.cornerRadius = 20;
    [searchView addSubview:btnSearch];
    
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, 79, SCREEN_WIDTH, 1)];
    lineview.backgroundColor = RGB_COLOR_String(@"#EEEEEE");
    [topview addSubview:lineview];
    
    UILabel *labRecommended = [[UILabel alloc] initWithFrame:CGRectMake(15, topview.bottom+10, 200, 20)];
    labRecommended.font = [UIFont systemFontOfSize:14.f];
    labRecommended.textColor = kTextColor_2c3042;
    labRecommended.text = LangKey(@"hot_guys");
    [self.view addSubview:labRecommended];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+110, SCREEN_WIDTH-30, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-110) style:UITableViewStyleGrouped];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorStyle  = UITableViewCellSeparatorStyleNone;
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[RecommendfriendTableViewCell class] forCellReuseIdentifier:@"RecommendfriendTableViewCell"];
    
    [self getNetServer];
}

- (void)gotoBack:(id)sender {
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)QRCodeButtnClick
{
//    [self.view addSubview:self.MyQRcodeView];
//    [self.MyQRcodeView animationShow];
    
    NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc]init];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)getNetServer{

//    NSMutableDictionary *dict = @{}.mutableCopy;
//    dict[@"user_id"] = self.userId;
    [ZCHttpManager getWithUrl:Server_user_recommend params:nil isShow:NO success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSLog(@"%@",resultDict);
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue <= 0) {

            self.friendList = [resultDict valueObjectForKey:@"data"];
            [self.tableView reloadData];
        }

    } failed:^(id responseObject, NSError *error) {

    }];
}

-(void)scan{
    CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)doneSearch{
    [self goSearch:_textField];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self goSearch:textField];
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    return YES;
}

-(void)goSearch:(UITextField *)textField{
    [self.view endEditing:YES];
    NSString *userId = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if (userId.length) {
        userId = [userId lowercaseString];
        [self addFriend:userId];
    }
}

#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.friendList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return 72;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 12.f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *backView = [UIView new];
    backView.backgroundColor = [UIColor clearColor];
    return backView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return .1f;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *backView = [UIView new];
    backView.backgroundColor = [UIColor clearColor];
    return backView;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RecommendfriendTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"RecommendfriendTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.delegate = self;
   
    NSDictionary *dic = self.friendList[indexPath.section];
//    NSString *uId = [dic newStringValueForKey:@"id"];
    
    [cell refreshWithModel:dic];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    NSDictionary *dic = self.friendList[indexPath.section];
    NSString *uId = [dic newStringValueForKey:@"id"];
    
//    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:uId];
//    if (isMyFriend) {
        NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uId];
        [self.navigationController pushViewController:vc animated:YES];
//    }else{
//        ZMONFriendCardViewController *vc = [[ZMONFriendCardViewController alloc] initWithUserId:uId];
//        [self.navigationController pushViewController:vc animated:YES];
//    }
    
}

- (void)didTouchAdddButton:(NSString *)memberId
{
    NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    request.userId = memberId;
    request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationRequest;
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    
    NSString *contact_tag_fragment_add_success = LangKey(@"contact_tag_fragment_add_success");//@"添加成功".
    NSString *request_successful = LangKey(@"request_successful");//@"请求成功".
    NSString *add_friend_add_fail = LangKey(@"add_friend_add_fail");//@"添加失败".
    NSString *add_friend_request_fail = LangKey(@"add_friend_request_fail");//@"请求失败".
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


- (UITextField *)textField{
    if(!_textField){
        _textField = [[UITextField alloc]init];
        _textField.placeholder = LangKey(@"add_friend_activity_input_account");
        _textField.textColor = TextColor_4;
        _textField.font = [UIFont systemFontOfSize:14];
        _textField.delegate = self;
        _textField.returnKeyType = UIReturnKeyDone;
    }
    return _textField;
}

#pragma mark - Private
- (void)addFriend:(NSString *)userId
{
    __weak typeof(self) wself = self;
    NSMutableDictionary *dict = @{}.mutableCopy;
    [dict setObject:userId forKey:@"account"];
    [ZCHttpManager getWithUrl:Server_user_search params:dict isShow:YES success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *msg = [resultDict newStringValueForKey:@"msg"];

        if (code.integerValue <= 0) {
            NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSString *uid = [data newStringValueForKey:@"uid"];
            [wself sendAddrequest:uid];

        }else {

            [SVProgressHUD showMessage:msg];

        }
    } failed:^(id responseObject, NSError *error) {

    }];

}

-(void)sendAddrequest:(NSString *)uid{
    __weak typeof(self) wself = self;
    [[NIMSDK sharedSDK].userManager fetchUserInfos:@[uid] completion:^(NSArray *users, NSError *error) {
        [SVProgressHUD dismiss];
        if (users.count) {
            [self checkIsAdmin:uid];
        }else{
            if (wself) {
                [wself.view makeToast:LangKey(@"group_info_activity_number_no") duration:2.0 position:CSToastPositionCenter];
            }
        }
    }];
}

-(void)checkIsAdmin:(NSString *)userId{

    __weak typeof(self) wself = self;
    NSMutableDictionary *dict = @{}.mutableCopy;
    dict[@"fuid"] = [[NIMSDK sharedSDK].loginManager currentAccount];
    dict[@"tuid"] = userId;

    [ZCHttpManager getWithUrl:Server_user_checkAddFriendEx params:dict isShow:NO success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue == 0) {
            //跳转详情
           
            BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:userId];
            if (isMyFriend) {
                NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
                [wself.navigationController pushViewController:vc animated:YES];
            }else{
                ZMONFriendCardViewController *vc = [[ZMONFriendCardViewController alloc] initWithUserId:userId];
                [wself.navigationController pushViewController:vc animated:YES];
            }
            
            
        }else{
            [wself.view makeToast:LangKey(@"please_contact_your_administrator") duration:2.0 position:CSToastPositionCenter];
        }
    } failed:^(id responseObject, NSError *error) {
        [wself.view makeToast:LangKey(@"please_contact_your_administrator") duration:2.0 position:CSToastPositionCenter];
    }];
}

- (ZMONMyQRcodeView *)MyQRcodeView
{
    if(!_MyQRcodeView){
        _MyQRcodeView = [[ZMONMyQRcodeView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    }
    return _MyQRcodeView;
}

@end
