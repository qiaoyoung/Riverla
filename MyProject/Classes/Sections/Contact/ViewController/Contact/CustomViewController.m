
#import <Foundation/Foundation.h>

NSString *StringFromGrievousBodilyHarmData(Byte *data);        


//: #FFF6CF
Byte kStr_languageValue[] = {60, 7, 5, 11, 136, 178, 93, 124, 81, 19, 107, 30, 65, 65, 65, 49, 62, 65, 192};


//: #F6F7FA
Byte kStr_textData[] = {50, 7, 97, 4, 194, 229, 213, 229, 214, 229, 224, 153};


//: group_chat_avatar_activity_add_black_success
Byte kStr_successText[] = {32, 44, 36, 4, 67, 78, 75, 81, 76, 59, 63, 68, 61, 80, 59, 61, 82, 61, 80, 61, 78, 59, 61, 63, 80, 69, 82, 69, 80, 85, 59, 61, 64, 64, 59, 62, 72, 61, 63, 71, 59, 79, 81, 63, 63, 65, 79, 79, 53};


//: group_info_activity_op_failed
Byte kStr_fieldName[] = {90, 29, 19, 4, 84, 95, 92, 98, 93, 76, 86, 91, 83, 92, 76, 78, 80, 97, 86, 99, 86, 97, 102, 76, 92, 93, 76, 83, 78, 86, 89, 82, 81, 250};


//: group_info_activity_without
Byte kStr_screenWindowData[] = {67, 27, 22, 14, 20, 238, 130, 205, 141, 201, 228, 239, 38, 181, 81, 92, 89, 95, 90, 73, 83, 88, 80, 89, 73, 75, 77, 94, 83, 96, 83, 94, 99, 73, 97, 83, 94, 82, 89, 95, 94, 5};


//: ic_tip_r
Byte kStr_contentValue[] = {16, 8, 67, 13, 207, 12, 60, 176, 90, 107, 54, 171, 88, 38, 32, 28, 49, 38, 45, 28, 47, 74};


//: back_arrow_bl
Byte kStr_lastData[] = {2, 13, 42, 5, 20, 56, 55, 57, 65, 53, 55, 72, 72, 69, 77, 53, 56, 66, 162};


//: ic_none_blockList
Byte kStr_barTitle[] = {43, 17, 31, 9, 96, 214, 169, 200, 13, 74, 68, 64, 79, 80, 79, 70, 64, 67, 77, 80, 68, 76, 45, 74, 84, 85, 79};


//: #999999
Byte kStr_pressDisplayName[] = {36, 7, 5, 4, 30, 52, 52, 52, 52, 52, 52, 225};


//: black_list_activity_black
Byte kStr_fileData[] = {35, 25, 35, 14, 109, 137, 153, 131, 45, 33, 102, 205, 24, 81, 63, 73, 62, 64, 72, 60, 73, 70, 80, 81, 60, 62, 64, 81, 70, 83, 70, 81, 86, 60, 63, 73, 62, 64, 72, 152};


//: friend_delete_fail
Byte kStr_normalName[] = {66, 18, 76, 7, 165, 231, 137, 26, 38, 29, 25, 34, 24, 19, 24, 25, 32, 25, 40, 25, 19, 26, 21, 29, 32, 13};


//: black_list_activity_black_list_tip
Byte kStr_showMaxText[] = {91, 34, 96, 9, 180, 48, 237, 142, 190, 2, 12, 1, 3, 11, 255, 12, 9, 19, 20, 255, 1, 3, 20, 9, 22, 9, 20, 25, 255, 2, 12, 1, 3, 11, 255, 12, 9, 19, 20, 255, 20, 9, 16, 76};


//: #FF483D
Byte kStr_onTitle[] = {84, 7, 18, 9, 134, 12, 40, 111, 244, 17, 52, 52, 34, 38, 33, 50, 178};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "EnableViewCell.h"
//#import "ListView.h"

// __M_A_C_R_O__
//: #import "CCCBlackListViewController.h"
#import "CustomViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "FFFContactSelectViewController.h"
#import "TeamPictureViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "NTESPersonalCardViewController.h"
#import "IndependentViewController.h"
//: #import "NTESContactDataMember.h"
#import "InfoClick.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESBlackListTableViewCell.h"
#import "ImpressionViewCell.h"

//: @interface CCCBlackListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,NTESUserListCellDelegate>
@interface CustomViewController ()<UITableViewDataSource,UITableViewDelegate,MessageAction,AtColorWith>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;
//@property (nonatomic,strong) ListView *header;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;


//: @end
@end

//: @implementation CCCBlackListViewController
@implementation CustomViewController

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
    self.view.backgroundColor = [UIColor isView:StringFromGrievousBodilyHarmData(kStr_textData)];
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
    [backButton setImage:[UIImage imageNamed:StringFromGrievousBodilyHarmData(kStr_lastData)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(messageView) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice table]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black"];
    labtitle.text = [TeamManager sizeKey:StringFromGrievousBodilyHarmData(kStr_fileData)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"icon_friend_add"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(onOpera:) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];

    //: [self.view addSubview:self.box];
    [self.view addSubview:self.box];
    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-30) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice table])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice table])-30) style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.backgroundColor = [UIColor whiteColor];
        //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //: [self.view addSubview:self.tableView];
        [self.view addSubview:self.tableView];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: self.tableView.delegate = self;
        self.tableView.delegate = self;
        //: self.tableView.dataSource = self;
        self.tableView.dataSource = self;

    //: [self loadTheView];
    [self event];
}

//: - (void)loadTheView
- (void)event
{
    //: self.data = self.myBlackListUser;
    self.data = self.restoreUser;
    //: if (self.data.count>0) {
    if (self.data.count>0) {
        //: self.defView.hidden = YES;
        self.defView.hidden = YES;
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    //: }else{
    }else{
        //: self.defView.hidden = NO;
        self.defView.hidden = NO;
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
    }

}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 72.f;
    return 72.f;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.data.count;
    return self.data.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
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
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
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

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: static NSString *identity = @"cell";
    static NSString *identity = @"cell";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    ImpressionViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell = [[ImpressionViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        //: cell.delegate = self;
        cell.delegate = self;
    }
    //: NTESContactDataMember *member = self.data[indexPath.section];
    InfoClick *member = self.data[indexPath.section];
    //: [cell refreshWithMember:member];
    [cell screen:member];
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NTESContactDataMember *member = self.data[indexPath.section];
    InfoClick *member = self.data[indexPath.section];

    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:member.info.infoId];
    IndependentViewController *vc = [[IndependentViewController alloc] initWithDoingTo:member.info.infoId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)didTouchCancleButton:(NTESContactDataMember *)dataMemeber {
- (void)values:(InfoClick *)dataMemeber {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: NSInteger index = [wself.data indexOfObject:dataMemeber];
            NSInteger index = [wself.data indexOfObject:dataMemeber];
            //: if (wself.data.count > index) {
            if (wself.data.count > index) {
                //: [wself.data removeObject:dataMemeber];
                [wself.data removeObject:dataMemeber];
//                [wself.tableView reloadData];
                //: if (wself.data.count>0) {
                if (wself.data.count>0) {
                    //: wself.defView.hidden = YES;
                    wself.defView.hidden = YES;
                    //: wself.tableView.hidden = NO;
                    wself.tableView.hidden = NO;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else{
                }else{
                    //: wself.defView.hidden = NO;
                    wself.defView.hidden = NO;
                    //: wself.tableView.hidden = YES;
                    wself.tableView.hidden = YES;
                }
            }
        //: }else{
        }else{
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
            [wself.view makeToast:[TeamManager sizeKey:StringFromGrievousBodilyHarmData(kStr_normalName)] duration:2.0f position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//: - (void)onOpera:(id)sender{
- (void)can:(id)sender{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //: for (NTESContactDataMember *member in self.data) {
    for (InfoClick *member in self.data) {
        //: [users addObject:member.info.infoId];
        [users addObject:member.info.infoId];
    }
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    CloseBack *config = [[CloseBack alloc] init];
    //: config.filterIds = users;
    config.filterIds = users;
    //: config.showSelectHeaderview = NO;
    config.showSelectHeaderview = NO;
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    TeamPictureViewController *vc = [[TeamPictureViewController alloc] initWithIconTitle:config];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [vc show];
    [vc application];
}


//: #pragma mark - NTESContactSelectDelegate
#pragma mark - NTESContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)ting:(NSArray *)selectedContacts{
    //: if (selectedContacts.count) {
    if (selectedContacts.count) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[TeamManager sizeKey:StringFromGrievousBodilyHarmData(kStr_successText)] duration:2.0 position:CSToastPositionCenter];
                //: wself.data = wself.myBlackListUser;
                wself.data = wself.restoreUser;
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[TeamManager sizeKey:StringFromGrievousBodilyHarmData(kStr_fieldName)] duration:2.0 position:CSToastPositionCenter];
            }
        //: }];
        }];
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)refreshSubviews
- (void)pile
{
}

//: - (NSMutableArray *)myBlackListUser{
- (NSMutableArray *)restoreUser{
    //: NSMutableArray *list = [[NSMutableArray alloc] init];
    NSMutableArray *list = [[NSMutableArray alloc] init];
    //: for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
    for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
        //: NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
        InfoClick *member = [[InfoClick alloc] init];
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:user.userId option:nil];
        OriginBy *info = [[Notice fullKit] value:user.userId manager:nil];
        //: member.info = info;
        member.info = info;
        //: [list addObject:member];
        [list addObject:member];
    }
    //: return list;
    return list;
}


//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice table]), [[UIScreen mainScreen] bounds].size.width, 26)];
        //: _box.backgroundColor = [UIColor colorWithHexString:@"#FFF6CF"];
        _box.backgroundColor = [UIColor isView:StringFromGrievousBodilyHarmData(kStr_languageValue)];

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        //: defImg.image = [UIImage imageNamed:@"ic_tip_r"];
        defImg.image = [UIImage imageNamed:StringFromGrievousBodilyHarmData(kStr_contentValue)];
        //: [_box addSubview:defImg];
        [_box addSubview:defImg];

        //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        //: subtitleLabel.textColor = [UIColor colorWithHexString:@"#FF483D"];
        subtitleLabel.textColor = [UIColor isView:StringFromGrievousBodilyHarmData(kStr_onTitle)];
//        subtitleLabel.textAlignment = NSTextAlignmentLeft;
        //: subtitleLabel.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black_list_tip"];
        subtitleLabel.text = [TeamManager sizeKey:StringFromGrievousBodilyHarmData(kStr_showMaxText)];
        //: [_box addSubview:subtitleLabel];
        [_box addSubview:subtitleLabel];

    }
    //: return _box;
    return _box;
}
//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice table])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_blockList"];
        defImg.image = [UIImage imageNamed:StringFromGrievousBodilyHarmData(kStr_barTitle)];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor isView:StringFromGrievousBodilyHarmData(kStr_pressDisplayName)];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [TeamManager sizeKey:StringFromGrievousBodilyHarmData(kStr_screenWindowData)];


    }
    //: return _defView;
    return _defView;
}

//: @end
@end

Byte * GrievousBodilyHarmDataToCache(Byte *data) {
    int date = data[0];
    int kit = data[1];
    Byte part = data[2];
    int stop = data[3];
    if (!date) return data + stop;
    for (int i = stop; i < stop + kit; i++) {
        int value = data[i] + part;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[stop + kit] = 0;
    return data + stop;
}

NSString *StringFromGrievousBodilyHarmData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)GrievousBodilyHarmDataToCache(data)];
}
