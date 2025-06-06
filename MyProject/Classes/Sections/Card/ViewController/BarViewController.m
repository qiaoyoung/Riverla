
#import <Foundation/Foundation.h>

NSString *StringFromLanguageData(Byte *data);


//: request_successful
Byte kStr_keyData[] = {46, 18, 7, 202, 134, 60, 20, 108, 117, 102, 115, 115, 101, 99, 99, 117, 115, 95, 116, 115, 101, 117, 113, 101, 114, 194};


//: account
Byte kStr_pinVideoImageValue[] = {6, 7, 3, 116, 110, 117, 111, 99, 99, 97, 190};


//: add_friend_activity_add_friend
Byte kStr_tapData[] = {10, 30, 11, 171, 67, 217, 253, 26, 247, 237, 86, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 61};


//: add_friend_add_fail
Byte kStr_greenContent[] = {39, 19, 6, 64, 37, 120, 108, 105, 97, 102, 95, 100, 100, 97, 95, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 190};


//: data
Byte kStr_screenInfoData[] = {32, 4, 8, 49, 207, 148, 34, 80, 97, 116, 97, 100, 77};


//: contact_tag_fragment_add_success
Byte kStr_itemData[] = {31, 32, 8, 21, 164, 142, 253, 85, 115, 115, 101, 99, 99, 117, 115, 95, 100, 100, 97, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 230};


//: user_id
Byte kStr_colorPinName[] = {49, 7, 6, 126, 81, 86, 100, 105, 95, 114, 101, 115, 117, 2};


//: back_arrow_bl
Byte kStr_shadowText[] = {43, 13, 12, 93, 142, 20, 194, 121, 206, 216, 133, 255, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 161};


//: #999999
Byte kStr_contentTitleValue[] = {94, 7, 8, 18, 213, 18, 59, 241, 57, 57, 57, 57, 57, 57, 35, 221};


//: /user/detail
Byte kStr_withData[] = {83, 12, 7, 146, 63, 76, 162, 108, 105, 97, 116, 101, 100, 47, 114, 101, 115, 117, 47, 109};


//: friend_info_activity_account
Byte kStr_spaceContent[] = {23, 28, 8, 71, 255, 29, 56, 148, 116, 110, 117, 111, 99, 99, 97, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 100, 110, 101, 105, 114, 102, 111};


//: add_friend_request_fail
Byte kStr_fieldTitle[] = {49, 23, 8, 15, 67, 115, 197, 162, 108, 105, 97, 102, 95, 116, 115, 101, 117, 113, 101, 114, 95, 100, 110, 101, 105, 114, 102, 95, 100, 100, 97, 244};


//: contact_user_default_header
Byte kStr_videoValue[] = {92, 27, 13, 77, 63, 159, 167, 148, 214, 160, 162, 97, 253, 114, 101, 100, 97, 101, 104, 95, 116, 108, 117, 97, 102, 101, 100, 95, 114, 101, 115, 117, 95, 116, 99, 97, 116, 110, 111, 99, 217};


//: code
Byte kStr_blueItemPinTitle[] = {43, 4, 5, 231, 22, 101, 100, 111, 99, 146};


//: common_bg
Byte kStr_enableBlueContent[] = {51, 9, 12, 86, 120, 128, 56, 183, 192, 76, 40, 9, 103, 98, 95, 110, 111, 109, 109, 111, 99, 223};


//: #B391FF
Byte kStr_colorTitle[] = {51, 7, 13, 191, 4, 210, 25, 137, 101, 240, 111, 5, 64, 70, 70, 49, 57, 51, 66, 35, 225};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BarViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONFriendCardViewController.h"
#import "BarViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESColorButtonCell.h"
#import "EasyLayViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "NTESSessionViewController.h"
#import "SelectChildViewController.h"
//: #import "NTESBundleSetting.h"
#import "PinStyle.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+RefreshFaceBlock.h"
//: #import "NTESUserUtil.h"
#import "HouseUtil.h"
//: #import "HMDataPicker.h"
#import "PickerView.h"
//: #import "NTESOpinionBackViewController.h"
#import "IndexViewController.h"

//: @interface ZMONFriendCardViewController ()<NIMUserManagerDelegate>
@interface BarViewController ()<NIMUserManagerDelegate>


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
@implementation BarViewController

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithView:(NSString *)userId{
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
- (void)messageView{
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
    bg.image = [UIImage imageNamed:StringFromLanguageData(kStr_enableBlueContent)];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:StringFromLanguageData(kStr_shadowText)] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(messageView) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
    self.closeBtn.frame = CGRectMake(15, 4+[UIDevice table], 36, 36);

//    self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];

    //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice vg_statusBarHeight])+30, 120, 120)];
    self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice table])+30, 120, 120)];
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
    self.account.textColor = [UIColor isView:StringFromLanguageData(kStr_contentTitleValue)];
    //: self.account.textAlignment = NSTextAlignmentCenter;
    self.account.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.account];
    [self.view addSubview:self.account];


    //: UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    //: [addBtn addTarget:self action:@selector(sendAddFriendRequest) forControlEvents:UIControlEventTouchUpInside];
    [addBtn addTarget:self action:@selector(constantBy) forControlEvents:UIControlEventTouchUpInside];
    //: addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [addBtn setTitle:[FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"] forState:UIControlStateNormal];
    [addBtn setTitle:[TeamManager sizeKey:StringFromLanguageData(kStr_tapData)] forState:UIControlStateNormal];
    //: addBtn.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
    addBtn.backgroundColor = [UIColor isView:StringFromLanguageData(kStr_colorTitle)];
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
                [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:StringFromLanguageData(kStr_videoValue)]];
                //: self.accountNickname.text = self.user.userInfo.nickName;
                self.accountNickname.text = self.user.userInfo.nickName;
            }
        //: }];
        }];


    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.userId;
    dict[StringFromLanguageData(kStr_colorPinName)] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [InfoManager enable:[NSString stringWithFormat:StringFromLanguageData(kStr_withData)] sub:dict record:NO tapGetFailed:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict speedy:StringFromLanguageData(kStr_blueItemPinTitle)];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict straddle:StringFromLanguageData(kStr_screenInfoData)];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data speedy:StringFromLanguageData(kStr_pinVideoImageValue)];
            //: self.account.text = [NSString stringWithFormat:@"%@%@",[FFFLanguageManager getTextWithKey:@"friend_info_activity_account"], account];
            self.account.text = [NSString stringWithFormat:@"%@%@",[TeamManager sizeKey:StringFromLanguageData(kStr_spaceContent)], account];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } failedSmartOccurrentSelectShowGet:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: #pragma mark - MDelegate
#pragma mark - MDelegate
//: -(void)sendAddFriendRequest{
-(void)constantBy{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [BlondeDefaults phone].tempVerificationInfo;
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
    NSString *contact_tag_fragment_add_success = [TeamManager sizeKey:StringFromLanguageData(kStr_itemData)];//@"添加成功".ntes_localized
    //: NSString *request_successful = [FFFLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [TeamManager sizeKey:StringFromLanguageData(kStr_keyData)];//@"请求成功".ntes_localized
    //: NSString *add_friend_add_fail = [FFFLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [TeamManager sizeKey:StringFromLanguageData(kStr_greenContent)];//@"添加失败".ntes_localized
    //: NSString *add_friend_request_fail = [FFFLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [TeamManager sizeKey:StringFromLanguageData(kStr_fieldTitle)];//@"请求失败".ntes_localized
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

Byte * LanguageDataToCache(Byte *data) {
    int kitOf = data[0];
    int bubbleName = data[1];
    int questionMake = data[2];
    if (!kitOf) return data + questionMake;
    for (int i = 0; i < bubbleName / 2; i++) {
        int begin = questionMake + i;
        int end = questionMake + bubbleName - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[questionMake + bubbleName] = 0;
    return data + questionMake;
}

NSString *StringFromLanguageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)LanguageDataToCache(data)];
}  
