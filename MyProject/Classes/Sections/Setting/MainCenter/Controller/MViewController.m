
#import <Foundation/Foundation.h>

NSString *StringFromEmpowerData(Byte *data);        


//: hant
Byte kStr_brandName[] = {9, 4, 43, 10, 141, 39, 92, 246, 200, 70, 61, 54, 67, 73, 190};


//: safe_changepsd
Byte kStr_inquiryName[] = {29, 14, 11, 10, 215, 248, 219, 6, 173, 48, 104, 86, 91, 90, 84, 88, 93, 86, 99, 92, 90, 101, 104, 89, 78};


//: safe_blacklist
Byte kStr_taleScreenTitle[] = {63, 14, 62, 5, 32, 53, 35, 40, 39, 33, 36, 46, 35, 37, 45, 46, 43, 53, 54, 12};


//: NTESNotificationLogout
Byte kStr_fileMaxContent[] = {38, 22, 72, 9, 37, 163, 131, 171, 110, 6, 12, 253, 11, 6, 39, 44, 33, 30, 33, 27, 25, 44, 33, 39, 38, 4, 39, 31, 39, 45, 44, 189};


//: safe_accountdelete
Byte kStr_checkShowContent[] = {36, 18, 34, 14, 176, 44, 230, 131, 142, 177, 214, 124, 31, 157, 81, 63, 68, 67, 61, 63, 65, 65, 77, 83, 76, 82, 66, 67, 74, 67, 82, 67, 225};


//: AccountDeletion_en.html
Byte kStr_surgeValue[] = {62, 23, 86, 12, 54, 23, 73, 73, 128, 146, 130, 228, 235, 13, 13, 25, 31, 24, 30, 238, 15, 22, 15, 30, 19, 25, 24, 9, 15, 24, 216, 18, 30, 23, 22, 14};


//: AccountDeletion_ko.html
Byte kStr_discusName[] = {94, 23, 60, 8, 43, 232, 248, 89, 5, 39, 39, 51, 57, 50, 56, 8, 41, 48, 41, 56, 45, 51, 50, 35, 47, 51, 242, 44, 56, 49, 48, 29};


//: AccountDeletion_hant.html
Byte kStr_vacationData[] = {19, 25, 69, 4, 252, 30, 30, 42, 48, 41, 47, 255, 32, 39, 32, 47, 36, 42, 41, 26, 35, 28, 41, 47, 233, 35, 47, 40, 39, 135};


//: deactivate_account
Byte kStr_approximateText[] = {86, 18, 93, 9, 34, 173, 5, 169, 1, 7, 8, 4, 6, 23, 12, 25, 4, 23, 8, 2, 4, 6, 6, 18, 24, 17, 23, 153};


//: PrivacyPolicy.html
Byte kStr_labelSpeakData[] = {76, 18, 16, 4, 64, 98, 89, 102, 81, 83, 105, 64, 95, 92, 89, 83, 105, 30, 88, 100, 93, 92, 4};


//: AccountDeletion_ja.html
Byte kStr_dependenceTitle[] = {51, 23, 64, 4, 1, 35, 35, 47, 53, 46, 52, 4, 37, 44, 37, 52, 41, 47, 46, 31, 42, 33, 238, 40, 52, 45, 44, 10};


//: modify_activity_title
Byte kStr_poValue[] = {8, 21, 71, 11, 63, 89, 219, 9, 235, 28, 61, 38, 40, 29, 34, 31, 50, 24, 26, 28, 45, 34, 47, 34, 45, 50, 24, 45, 34, 45, 37, 30, 3};


//: safe_setting_activity_title
Byte kStr_skullText[] = {88, 27, 67, 14, 162, 188, 99, 201, 226, 168, 90, 82, 25, 120, 48, 30, 35, 34, 28, 48, 34, 49, 49, 38, 43, 36, 28, 30, 32, 49, 38, 51, 38, 49, 54, 28, 49, 38, 49, 41, 34, 211};


//: back_arrow_bl
Byte kStr_spokesmanValue[] = {76, 13, 56, 14, 236, 38, 230, 71, 158, 232, 153, 186, 62, 117, 42, 41, 43, 51, 39, 41, 58, 58, 55, 63, 39, 42, 52, 134};


//: black_list_activity_black
Byte kStr_sheName[] = {82, 25, 21, 7, 229, 51, 239, 77, 87, 76, 78, 86, 74, 87, 84, 94, 95, 74, 76, 78, 95, 84, 97, 84, 95, 100, 74, 77, 87, 76, 78, 86, 123};


//: #F6F7FA
Byte kStr_spokesmanText[] = {86, 7, 10, 10, 142, 89, 58, 9, 121, 61, 25, 60, 44, 60, 45, 60, 55, 91};


//: activity_comment_setting_cancel_account
Byte kStr_vatBlueValue[] = {63, 39, 83, 12, 154, 144, 164, 108, 184, 246, 117, 101, 14, 16, 33, 22, 35, 22, 33, 38, 12, 16, 28, 26, 26, 18, 27, 33, 12, 32, 18, 33, 33, 22, 27, 20, 12, 16, 14, 27, 16, 18, 25, 12, 14, 16, 16, 28, 34, 27, 33, 202};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSafetySetingController.h"
#import "MViewController.h"
//: #import "NTESSafetySetingCell.h"
#import "RestoreViewCell.h"
//: #import "NTESChangePasswordController.h"
#import "BlockViewController.h"
//: #import "NTESSafetyTableViewCell.h"
#import "ItemInputViewCell.h"
//: #import "LEEAlert.h"
#import "ByAlert.h"
//: #import "LEEAlertHelper.h"
#import "LEEAlertHelper.h"
//: #import "CCCBlackListViewController.h"
#import "CustomViewController.h"
//: #import "ZMONDeleteAccountView.h"
#import "OrientationView.h"
//: #import "ZMONDeactivateAccountView.h"
#import "BluishView.h"
//: #import "ZMONPrivacyPolicyView.h"
#import "TopView.h"
//: #import "ZMONDeactivateAccountNextView.h"
#import "RecentView.h"
//: #import "ZMONDeactivateAccountSuccessView.h"
#import "ChildView.h"
//: #import "ZMONAccountPolicyViewController.h"
#import "InputRecentViewController.h"
//: #import "DeleteAccountTipView.h"
#import "ByRecentView.h"
//: #import "SSZipArchiveManager.h"
#import "ByManager.h"

//: @interface NTESSafetySetingController ()<UITableViewDataSource,UITableViewDelegate,NTESDeactivateAccountDelegate,NTESDeleteAccountDelegate,NTESDeleteAccountTIPDelegate>
@interface MViewController ()<UITableViewDataSource,UITableViewDelegate,FindCornerDelegate,BlockDelegate,CornerSaveTipdelegate>

//: @property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) UITableView *tableView;
//: @property (nonatomic ,strong) ZMONDeleteAccountView *deleteAccountView;
@property (nonatomic ,strong) OrientationView *deleteAccountView;
//: @property (nonatomic ,strong) ZMONDeactivateAccountView *deactivateView;
@property (nonatomic ,strong) BluishView *deactivateView;
//: @property (nonatomic, strong) ZMONPrivacyPolicyView *policyView;
@property (nonatomic, strong) TopView *policyView;
//: @property (nonatomic, strong) ZMONDeactivateAccountNextView *deactivateNextView;
@property (nonatomic, strong) RecentView *deactivateNextView;
//: @property (nonatomic, strong) ZMONDeactivateAccountSuccessView *deactivateSuccessView;
@property (nonatomic, strong) ChildView *deactivateSuccessView;
//: @property (nonatomic, strong) DeleteAccountTipView *deactivateTipView;
@property (nonatomic, strong) ByRecentView *deactivateTipView;



//: @end
@end

//: @implementation NTESSafetySetingController
@implementation MViewController

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
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor isView:StringFromEmpowerData(kStr_spokesmanText)];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice table]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice table]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromEmpowerData(kStr_spokesmanValue)] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"safe_setting_activity_title"];
    labtitle.text = [TeamManager sizeKey:StringFromEmpowerData(kStr_skullText)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: [self initTableView];
    [self initRandom];
}

//: - (void)initTableView{
- (void)initRandom{
    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice table])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice table])) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: _tableView.estimatedSectionHeaderHeight=15.1;
    _tableView.estimatedSectionHeaderHeight=15.1;
    //: _tableView.estimatedSectionFooterHeight=.1;
    _tableView.estimatedSectionFooterHeight=.1;
    //: self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;


}



//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return 3;
    return 3;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 56;
    return 56;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 16.f;
    return 16.f;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: NTESSafetyTableViewCell *cell = [NTESSafetyTableViewCell cellWithTableView:tableView];
    ItemInputViewCell *cell = [ItemInputViewCell strickle:tableView];

    //: if(indexPath.section == 0){
    if(indexPath.section == 0){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_blacklist"];
        cell.iconImageView.image = [UIImage imageNamed:StringFromEmpowerData(kStr_taleScreenTitle)];
        //: cell.titleLabel.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black"];
        cell.titleLabel.text = [TeamManager sizeKey:StringFromEmpowerData(kStr_sheName)];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_changepsd"];
        cell.iconImageView.image = [UIImage imageNamed:StringFromEmpowerData(kStr_inquiryName)];
        //: cell.titleLabel.text = [FFFLanguageManager getTextWithKey:@"modify_activity_title"];
        cell.titleLabel.text = [TeamManager sizeKey:StringFromEmpowerData(kStr_poValue)];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
//    else if (indexPath.section == 2){
//        cell.iconImageView.image = [UIImage imageNamed:@"safe_accountDeactivate"];
//        cell.titleLabel.text = LangKey(@"deactivate_account");
//        cell.labSubtitle.hidden = YES;
//    }
    //: else if (indexPath.section == 2){
    else if (indexPath.section == 2){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_accountdelete"];
        cell.iconImageView.image = [UIImage imageNamed:StringFromEmpowerData(kStr_checkShowContent)];
        //: cell.titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        cell.titleLabel.text = [TeamManager sizeKey:StringFromEmpowerData(kStr_vatBlueValue)];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
//    else if (indexPath.section == 4){
//        cell.iconImageView.image = [UIImage imageNamed:@"safe_email"];
//        cell.titleLabel.text = LangKey(@"user_profile_avtivity_email");
//        cell.labSubtitle.hidden = NO;
//        cell.labSubtitle.text = self.bindEmail;
//    }

    //: return cell;
    return cell;


}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: if(indexPath.section == 0){
    if(indexPath.section == 0){
        //: [self blacklist];
        [self bar];
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: [self changedpwd];
        [self success];
    }
//    else if (indexPath.section == 2){
//        [self deactivateAccount];
//    }
    //: else if (indexPath.section == 2){
    else if (indexPath.section == 2){
        //: [self cancelaccount];
        [self fileTextCancelaccount];
    }
//    else if (indexPath.section == 4){
//        [self bindEmailVC];
//    }
}

//: - (void)didTouchNextButton
- (void)shouldIndependent
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[FFFLanguageManager getTextWithKey:@"deactivate_account"]];
    [self.deactivateNextView pop:[TeamManager sizeKey:StringFromEmpowerData(kStr_approximateText)]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView ting];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
    self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
//        [self.deactivateNextView animationClose];
//        [self.view addSubview:self.deactivateSuccessView];
//        [self.deactivateSuccessView reloadWithNickname:LangKey(@"deactivated_success")];
//        [self.deactivateSuccessView animationShow];

    //: };
    };
}

//: - (void)didTouchDeleteSureButton
- (void)streetSmart
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"]];
    [self.deactivateNextView pop:[TeamManager sizeKey:StringFromEmpowerData(kStr_vatBlueValue)]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView ting];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
    self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self.deactivateNextView animationClose];
        [self.deactivateNextView randomShow];

            //: [ZCHttpManager deleteUser:^(NSDictionary * _Nonnull configDict) {
            [InfoManager object:^(NSDictionary * _Nonnull configDict) {
                //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                 {
                    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NTESNotificationLogout" object:nil];
                    [[NSNotificationCenter defaultCenter] postNotificationName:StringFromEmpowerData(kStr_fileMaxContent) object:nil];
                //: }];
                }];
            //: }];
            }];

    //: };
    };
}

//: - (void)didTouchProtocolButton
- (void)beakToday
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    InputRecentViewController *vc = [[InputRecentViewController alloc]init];
    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"PrivacyPolicy.html"]];
    NSString *htmlFilePath = [[[ByManager date] message] stringByAppendingPathComponent:[NSString stringWithFormat:StringFromEmpowerData(kStr_labelSpeakData)]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)didTouchDeleteNextButton
- (void)backgroundLabel
{
    //: [self.view addSubview:self.deactivateTipView];
    [self.view addSubview:self.deactivateTipView];
    //: [self.deactivateTipView animationShow];
    [self.deactivateTipView nimShow];
}
//: - (void)didTouchDeleteProtocolButton
- (void)greenButton
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    InputRecentViewController *vc = [[InputRecentViewController alloc]init];
        //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
        NSString *langType = emptyString([BlondeDefaults phone].language);

    //: NSString *fileName = @"AccountDeletion_en.html";
    NSString *fileName = StringFromEmpowerData(kStr_surgeValue);
        //: if ([langType containsString:@"ja"]){
        if ([langType containsString:@"ja"]){
            //: fileName = @"AccountDeletion_ja.html";
            fileName = StringFromEmpowerData(kStr_dependenceTitle);
        //: }else if ([langType containsString:@"ko"]){
        }else if ([langType containsString:@"ko"]){
            //: fileName = @"AccountDeletion_ko.html";
            fileName = StringFromEmpowerData(kStr_discusName);
        //: }else if ([langType containsString:@"hant"]){
        }else if ([langType containsString:StringFromEmpowerData(kStr_brandName)]){
            //: fileName = @"AccountDeletion_hant.html";
            fileName = StringFromEmpowerData(kStr_vacationData);
        //: }else{
        }else{
            //: fileName = @"AccountDeletion_en.html";
            fileName = StringFromEmpowerData(kStr_surgeValue);
        }
    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    NSString *htmlFilePath = [[[ByManager date] message] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)blacklist {
- (void)bar {
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    CustomViewController *vc = [[CustomViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)changedpwd {
- (void)success {
    //: NTESChangePasswordController *vc = [[NTESChangePasswordController alloc] init];
    BlockViewController *vc = [[BlockViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//- (void)bindPhoneVC {
//    KEKEBindPhoneViewController *vc = [[KEKEBindPhoneViewController alloc] init];
//    vc.bindPhone = self.bindPhone;
//    [self.navigationController pushViewController:vc animated:YES];
//}
//
//- (void)bindEmailVC {
//    KEKEBindEmailViewController *vc = [[KEKEBindEmailViewController alloc] init];
//    vc.bindEmail = self.bindEmail;
//    [self.navigationController pushViewController:vc animated:YES];
//}

//: - (void)deactivateAccount {
- (void)orientation {

    //: [self.view addSubview:self.deactivateView];
    [self.view addSubview:self.deactivateView];
    //: [self.deactivateView animationShow];
    [self.deactivateView bringHome];

}


//: - (void)cancelaccount {
- (void)fileTextCancelaccount {

    //: [self.view addSubview:self.deleteAccountView];
    [self.view addSubview:self.deleteAccountView];
    //: [self.deleteAccountView animationShow];
    [self.deleteAccountView doing];

}


//-(void)changePassWord{
//    BlockViewController *vc = [[BlockViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//
//}
//
//-(void)resetQuestion{
//    NTESChangeQuestionViewController *vc = [[NTESChangeQuestionViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//}
//
//-(void)findPayPassWord{
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:LangKey(@"warm_prompt") message:LangKey(@"contact_customer_service") preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *alertA = [UIAlertAction actionWithTitle:LangKey(@"got_it") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//    }];
//    [alert addAction:alertA];
//    [self.navigationController presentViewController:alert animated:YES completion:nil];
//}
//
//-(void)changePayPassword{
//
//    NTESVerifyPayPasswordController *vc = [[NTESVerifyPayPasswordController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//    [vc inputPassword:^(NSString *passwordString) {
//        NTESChangePayPasswordController *vc = [[NTESChangePayPasswordController alloc] initWithType:NTESPayPassword_Change];
//        vc.oldpassword = passwordString;
//        [self.navigationController pushViewController:vc animated:YES];
//    }];
//}

//: - (ZMONDeleteAccountView *)deleteAccountView
- (OrientationView *)deleteAccountView
{
    //: if(!_deleteAccountView){
    if(!_deleteAccountView){
        //: _deleteAccountView = [[ZMONDeleteAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deleteAccountView = [[OrientationView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deleteAccountView.hidden = YES;
        _deleteAccountView.hidden = YES;
        //: _deleteAccountView.delegate = self;
        _deleteAccountView.delegate = self;
    }
    //: return _deleteAccountView;
    return _deleteAccountView;
}

//: - (ZMONDeactivateAccountView *)deactivateView
- (BluishView *)deactivateView
{
    //: if(!_deactivateView){
    if(!_deactivateView){
        //: _deactivateView = [[ZMONDeactivateAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateView = [[BluishView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateView.hidden = YES;
        _deactivateView.hidden = YES;
        //: _deactivateView.delegate = self;
        _deactivateView.delegate = self;
    }
    //: return _deactivateView;
    return _deactivateView;
}
//: - (ZMONDeactivateAccountNextView *)deactivateNextView
- (RecentView *)deactivateNextView
{
    //: if(!_deactivateNextView){
    if(!_deactivateNextView){
        //: _deactivateNextView = [[ZMONDeactivateAccountNextView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateNextView = [[RecentView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateNextView.hidden = YES;
        _deactivateNextView.hidden = YES;
//        _deactivateNextView.delegate = self;
    }
    //: return _deactivateNextView;
    return _deactivateNextView;
}

//: - (ZMONDeactivateAccountSuccessView *)deactivateSuccessView
- (ChildView *)deactivateSuccessView
{
    //: if(!_deactivateSuccessView){
    if(!_deactivateSuccessView){
        //: _deactivateSuccessView = [[ZMONDeactivateAccountSuccessView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateSuccessView = [[ChildView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateSuccessView.hidden = YES;
        _deactivateSuccessView.hidden = YES;
//        _deactivateSuccessView.delegate = self;
    }
    //: return _deactivateSuccessView;
    return _deactivateSuccessView;
}
//: - (ZMONPrivacyPolicyView *)policyView
- (TopView *)policyView
{
    //: if(!_policyView){
    if(!_policyView){
        //: _policyView = [[ZMONPrivacyPolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _policyView = [[TopView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _policyView;
    return _policyView;
}

//: - (DeleteAccountTipView *)deactivateTipView
- (ByRecentView *)deactivateTipView
{
    //: if(!_deactivateTipView){
    if(!_deactivateTipView){
        //: _deactivateTipView = [[DeleteAccountTipView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateTipView = [[ByRecentView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateTipView.hidden = YES;
        _deactivateTipView.hidden = YES;
        //: _deactivateTipView.delegate = self;
        _deactivateTipView.delegate = self;
    }
    //: return _deactivateTipView;
    return _deactivateTipView;
}

//: @end
@end

Byte * EmpowerDataToCache(Byte *data) {
    int sentenceKitImage = data[0];
    int linkInquiry = data[1];
    Byte bishop = data[2];
    int penumbra = data[3];
    if (!sentenceKitImage) return data + penumbra;
    for (int i = penumbra; i < penumbra + linkInquiry; i++) {
        int value = data[i] + bishop;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[penumbra + linkInquiry] = 0;
    return data + penumbra;
}

NSString *StringFromEmpowerData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)EmpowerDataToCache(data)];
}
