
#import <Foundation/Foundation.h>

NSString *StringFromAssemblageData(Byte *data);        


//: add_friend_add_fail
Byte kStr_viewContent[] = {81, 19, 35, 7, 88, 48, 107, 62, 65, 65, 60, 67, 79, 70, 66, 75, 65, 60, 62, 65, 65, 60, 67, 62, 70, 73, 54};


//: add_friend_activity_add_friend
Byte kStr_contentFileName[] = {58, 30, 56, 7, 117, 208, 74, 41, 44, 44, 39, 46, 58, 49, 45, 54, 44, 39, 41, 43, 60, 49, 62, 49, 60, 65, 39, 41, 44, 44, 39, 46, 58, 49, 45, 54, 44, 97};


//: #999999
Byte kStr_objectWithDirectionText[] = {30, 7, 9, 4, 26, 48, 48, 48, 48, 48, 48, 58};


//: /user/detail
Byte kStr_contentEnableTitle[] = {9, 12, 51, 12, 242, 60, 155, 104, 33, 112, 171, 5, 252, 66, 64, 50, 63, 252, 49, 50, 65, 46, 54, 57, 229};


//: user_id
Byte kStr_objectMessageName[] = {26, 7, 22, 8, 203, 96, 138, 85, 95, 93, 79, 92, 73, 83, 78, 236};


//: contact_tag_fragment_add_success
Byte kStr_pathTableImageName[] = {45, 32, 81, 4, 18, 30, 29, 35, 16, 18, 35, 14, 35, 16, 22, 14, 21, 33, 16, 22, 28, 20, 29, 35, 14, 16, 19, 19, 14, 34, 36, 18, 18, 20, 34, 34, 160};


//: friend_info_activity_account
Byte kStr_directionChangeData[] = {65, 28, 90, 14, 246, 27, 121, 111, 67, 96, 52, 242, 213, 17, 12, 24, 15, 11, 20, 10, 5, 15, 20, 12, 21, 5, 7, 9, 26, 15, 28, 15, 26, 31, 5, 7, 9, 9, 21, 27, 20, 26, 240};


//: contact_user_default_header
Byte kStr_viewCellTitle[] = {88, 27, 2, 10, 60, 249, 241, 227, 179, 128, 97, 109, 108, 114, 95, 97, 114, 93, 115, 113, 99, 112, 93, 98, 99, 100, 95, 115, 106, 114, 93, 102, 99, 95, 98, 99, 112, 67};


//: #B391FF
Byte kStr_formatSizeValue[] = {56, 7, 16, 5, 40, 19, 50, 35, 41, 33, 54, 54, 75};


//: data
Byte kStr_titleData[] = {16, 4, 23, 13, 228, 114, 250, 101, 23, 19, 155, 114, 63, 77, 74, 93, 74, 138};


//: request_successful
Byte kStr_statusShowData[] = {26, 18, 65, 12, 245, 223, 35, 183, 190, 75, 95, 170, 49, 36, 48, 52, 36, 50, 51, 30, 50, 52, 34, 34, 36, 50, 50, 37, 52, 43, 13};


//: common_bg
Byte kStr_shouldTableHideValue[] = {35, 9, 90, 11, 224, 190, 70, 242, 146, 233, 232, 9, 21, 19, 19, 21, 20, 5, 8, 13, 119};


//: code
Byte kStr_cellInfoTitle[] = {63, 4, 41, 4, 58, 70, 59, 60, 11};


//: back_arrow_bl
Byte kStr_handleValue[] = {48, 13, 95, 13, 170, 15, 14, 166, 22, 181, 95, 244, 106, 3, 2, 4, 12, 0, 2, 19, 19, 16, 24, 0, 3, 13, 73};


//: add_friend_request_fail
Byte kStr_disableRowName[] = {1, 23, 39, 9, 95, 39, 206, 95, 22, 58, 61, 61, 56, 63, 75, 66, 62, 71, 61, 56, 75, 62, 74, 78, 62, 76, 77, 56, 63, 58, 66, 69, 235};


//: account
Byte kStr_tingRemoteName[] = {19, 7, 40, 9, 32, 94, 7, 18, 105, 57, 59, 59, 71, 77, 70, 76, 173};

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONFriendCardViewController.h"
#import "KeyViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESColorButtonCell.h"
#import "StopView.h"
//: #import "UIView+NTES.h"
#import "UIView+Closes.h"
//: #import "NTESSessionViewController.h"
#import "RadiogramViewController.h"
//: #import "NTESBundleSetting.h"
#import "SayImage.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Hide.h"
//: #import "NTESUserUtil.h"
#import "Util.h"
//: #import "HMDataPicker.h"
#import "PickerView.h"
//: #import "NTESOpinionBackViewController.h"
#import "VeilViewController.h"

//: @interface ZMONFriendCardViewController ()<NIMUserManagerDelegate>
@interface KeyViewController ()<NIMUserManagerDelegate>


//: @property (nonatomic,copy ) NSString *userId;
@property (nonatomic,copy ) NSString *userId;
//: @property (nonatomic,strong) NIMUser *user;
@property (nonatomic,strong) NIMUser *user;

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;
//: @property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) UILabel *account;

//: @property (nonatomic, strong) UIView *personView;
@property (nonatomic, strong) UIView *personView;

//: @end
@end

//: @implementation ZMONFriendCardViewController
@implementation KeyViewController

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithRandom:(NSString *)userId{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
    }
    //: return self;
    return self;
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)backAction{
- (void)messageLeft{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)dealloc{
- (void)dealloc{

}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:StringFromAssemblageData(kStr_shouldTableHideValue)];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:StringFromAssemblageData(kStr_handleValue)] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(messageLeft) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
    self.closeBtn.frame = CGRectMake(15, 4+[UIDevice clear], 36, 36);

//    self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];

    //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice vg_statusBarHeight])+30, 120, 120)];
    self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice clear])+30, 120, 120)];
    //: self.accountheadImg.layer.cornerRadius = 60;
    self.accountheadImg.layer.cornerRadius = 60;
    //: self.accountheadImg.layer.masksToBounds = YES;
    self.accountheadImg.layer.masksToBounds = YES;
    //: [self.view addSubview:self.accountheadImg];
    [self.view addSubview:self.accountheadImg];

    //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 20)];
    self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 20)];
    //: self.accountNickname.font = [UIFont boldSystemFontOfSize:18];
    self.accountNickname.font = [UIFont boldSystemFontOfSize:18];
    //: self.accountNickname.textColor = [UIColor blackColor];
    self.accountNickname.textColor = [UIColor blackColor];
    //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
    self.accountNickname.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountNickname];
    [self.view addSubview:self.accountNickname];

    //: self.account = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
    self.account = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
    //: self.account.font = [UIFont systemFontOfSize:12];
    self.account.font = [UIFont systemFontOfSize:12];
    //: self.account.textColor = [UIColor colorWithHexString:@"#999999"];
    self.account.textColor = [UIColor withMax:StringFromAssemblageData(kStr_objectWithDirectionText)];
    //: self.account.textAlignment = NSTextAlignmentCenter;
    self.account.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.account];
    [self.view addSubview:self.account];


    //: UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    //: [addBtn addTarget:self action:@selector(sendAddFriendRequest) forControlEvents:UIControlEventTouchUpInside];
    [addBtn addTarget:self action:@selector(arrayHolder) forControlEvents:UIControlEventTouchUpInside];
    //: addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [addBtn setTitle:[FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"] forState:UIControlStateNormal];
    [addBtn setTitle:[ItemManager sessionInformation:StringFromAssemblageData(kStr_contentFileName)] forState:UIControlStateNormal];
    //: addBtn.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
    addBtn.backgroundColor = [UIColor withMax:StringFromAssemblageData(kStr_formatSizeValue)];
    //: addBtn.layer.cornerRadius = 22;
    addBtn.layer.cornerRadius = 22;
    //: [self.view addSubview:addBtn];
    [self.view addSubview:addBtn];


    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
    [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
            //: if (users.count) {
            if (users.count) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: self.user = users.firstObject;
                self.user = users.firstObject;

                //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"contact_user_default_header"]];
                [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:StringFromAssemblageData(kStr_viewCellTitle)]];
                //: self.accountNickname.text = self.user.userInfo.nickName;
                self.accountNickname.text = self.user.userInfo.nickName;
            }
        //: }];
        }];


    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.userId;
    dict[StringFromAssemblageData(kStr_objectMessageName)] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [PhotoManager towardExtra:[NSString stringWithFormat:StringFromAssemblageData(kStr_contentEnableTitle)] tool:dict examine:NO titleResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict with:StringFromAssemblageData(kStr_cellInfoTitle)];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict view:StringFromAssemblageData(kStr_titleData)];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data with:StringFromAssemblageData(kStr_tingRemoteName)];
            //: self.account.text = [NSString stringWithFormat:@"%@%@",[FFFLanguageManager getTextWithKey:@"friend_info_activity_account"], account];
            self.account.text = [NSString stringWithFormat:@"%@%@",[ItemManager sessionInformation:StringFromAssemblageData(kStr_directionChangeData)], account];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } exhibitClick:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: #pragma mark - MDelegate
#pragma mark - MDelegate
//: -(void)sendAddFriendRequest{
-(void)arrayHolder{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [PhotoDefaults ting].tempVerificationInfo;
    //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    //: request.userId = self.userId;
    request.userId = self.userId;
    //: request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationAdd;
    //: request.operation = NIMUserOperationRequest;
    request.operation = NIMUserOperationRequest;
    //: request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";

    //: NSString *contact_tag_fragment_add_success = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_add_success"];
    NSString *contact_tag_fragment_add_success = [ItemManager sessionInformation:StringFromAssemblageData(kStr_pathTableImageName)];//@"添加成功".ntes_localized
    //: NSString *request_successful = [FFFLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [ItemManager sessionInformation:StringFromAssemblageData(kStr_statusShowData)];//@"请求成功".ntes_localized
    //: NSString *add_friend_add_fail = [FFFLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [ItemManager sessionInformation:StringFromAssemblageData(kStr_viewContent)];//@"添加失败".ntes_localized
    //: NSString *add_friend_request_fail = [FFFLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [ItemManager sessionInformation:StringFromAssemblageData(kStr_disableRowName)];//@"请求失败".ntes_localized
    //: NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    //: NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;
    NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: [wself.view makeToast:successText
            [wself.view makeToast:successText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];

        //: }else{
        }else{
            //: [wself.view makeToast:failedText
            [wself.view makeToast:failedText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//: @end
@end

Byte * AssemblageDataToCache(Byte *data) {
    int nameRecord = data[0];
    int tableShow = data[1];
    Byte supplierBottom = data[2];
    int bottomFile = data[3];
    if (!nameRecord) return data + bottomFile;
    for (int i = bottomFile; i < bottomFile + tableShow; i++) {
        int value = data[i] + supplierBottom;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[bottomFile + tableShow] = 0;
    return data + bottomFile;
}

NSString *StringFromAssemblageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AssemblageDataToCache(data)];
}
