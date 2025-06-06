
#import <Foundation/Foundation.h>

NSString *StringFromWeakData(Byte *data);        


//: #FF483D
Byte kStr_descriptionData[] = {4, 7, 53, 5, 162, 238, 17, 17, 255, 3, 254, 15, 81};


//: black_list_activity_black_list_tip
Byte kStr_foreverLinkName[] = {27, 34, 33, 8, 124, 56, 42, 112, 65, 75, 64, 66, 74, 62, 75, 72, 82, 83, 62, 64, 66, 83, 72, 85, 72, 83, 88, 62, 65, 75, 64, 66, 74, 62, 75, 72, 82, 83, 62, 83, 72, 79, 34};


//: black_list_activity_black
Byte kStr_supplierText[] = {10, 25, 53, 14, 250, 4, 67, 103, 15, 132, 224, 134, 11, 34, 45, 55, 44, 46, 54, 42, 55, 52, 62, 63, 42, 44, 46, 63, 52, 65, 52, 63, 68, 42, 45, 55, 44, 46, 54, 201};


//: back_arrow_bl
Byte kStr_closeContent[] = {89, 13, 13, 8, 202, 150, 27, 59, 85, 84, 86, 94, 82, 84, 101, 101, 98, 106, 82, 85, 95, 28};


//: ic_tip_r
Byte kStr_bugText[] = {2, 8, 52, 6, 216, 130, 53, 47, 43, 64, 53, 60, 43, 62, 16};


//: group_info_activity_without
Byte kStr_albumTitle[] = {59, 27, 2, 11, 52, 177, 50, 137, 141, 70, 179, 101, 112, 109, 115, 110, 93, 103, 108, 100, 109, 93, 95, 97, 114, 103, 116, 103, 114, 119, 93, 117, 103, 114, 102, 109, 115, 114, 204};


//: group_chat_avatar_activity_remove_black_success
Byte kStr_revTitle[] = {65, 47, 33, 8, 236, 253, 231, 94, 70, 81, 78, 84, 79, 62, 66, 71, 64, 83, 62, 64, 85, 64, 83, 64, 81, 62, 64, 66, 83, 72, 85, 72, 83, 88, 62, 81, 68, 76, 78, 85, 68, 62, 65, 75, 64, 66, 74, 62, 82, 84, 66, 66, 68, 82, 82, 50};


//: ic_none_blockList
Byte kStr_reluctantText[] = {55, 17, 30, 12, 218, 32, 186, 147, 68, 75, 253, 241, 75, 69, 65, 80, 81, 80, 71, 65, 68, 78, 81, 69, 77, 46, 75, 85, 86, 58};


//: #999999
Byte kStr_basicallyData[] = {20, 7, 12, 4, 23, 45, 45, 45, 45, 45, 45, 130};


//: #F6F7FA
Byte kStr_bugFillContent[] = {57, 7, 65, 9, 163, 207, 65, 116, 180, 226, 5, 245, 5, 246, 5, 0, 22};


//: #FFF6CF
Byte kStr_regularData[] = {23, 7, 72, 7, 253, 20, 149, 219, 254, 254, 254, 238, 251, 254, 199};

// __DEBUG__
// __CLOSE_PRINT__
//
//  HomegirlViewController.m
// Notice
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamMuteMemberListViewController.h"
#import "HomegirlViewController.h"
//: #import "FFFTeamMemberCardViewController.h"
#import "LittleLeagueTeamViewController.h"
//: #import "FFFCardHeaderCell.h"
#import "RecentBarViewCell.h"
//: #import "FFFTeamCardMemberItem.h"
#import "PunchCardShow.h"
//: #import "ViewKitDependency.h"
#import "ViewKitDependency.h"
//: #import "FFFKitProgressHUD.h"
#import "DiscoverEffectView.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Notice.h"
//: #import "NTESContactDataMember.h"
#import "InfoClick.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESBlackListTableViewCell.h"
#import "ImpressionViewCell.h"

//: @interface FFFTeamMuteMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,NTESUserListCellDelegate>
@interface HomegirlViewController ()<UITableViewDataSource,UITableViewDelegate,AtColorWith>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,strong) NSMutableArray *memberList;
@property (nonatomic,strong) NSMutableArray *memberList;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation FFFTeamMuteMemberListViewController
@implementation HomegirlViewController


//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];

    //: self.memberList = [NSMutableArray array];
    self.memberList = [NSMutableArray array];
    //: [self loadTeamManageList];
    [self showTableList];
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
    self.view.backgroundColor = [UIColor isView:StringFromWeakData(kStr_bugFillContent)];
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
    [backButton setImage:[UIImage imageNamed:StringFromWeakData(kStr_closeContent)] forState:(UIControlStateNormal)];
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
    labtitle.text = [TeamManager sizeKey:StringFromWeakData(kStr_supplierText)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

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

    //: [self loadTeamManageList];
    [self showTableList];
}


//: - (void)loadTeamManageList
- (void)showTableList
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:self.teamListManager.team.teamId
    [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:self.teamListManager.team.teamId
                                               //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                               completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (!error) {
        if (!error) {
            //: self.memberList = [NSMutableArray arrayWithArray:members];
            self.memberList = [NSMutableArray arrayWithArray:members];
            //: if (self.memberList.count>0) {
            if (self.memberList.count>0) {
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
    //: }];
    }];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 72.f;
    return 72.f;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.memberList.count;
    return self.memberList.count;
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
    //: NIMTeamMember *member = self.memberList[indexPath.section];
    NIMTeamMember *member = self.memberList[indexPath.section];
    //: [cell refreshData:member];
    [cell metadata:member];
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NIMTeamMember *member = self.memberList[indexPath.section];
    NIMTeamMember *member = self.memberList[indexPath.section];

    //: FFFTeamMemberCardViewController *vc = [[FFFTeamMemberCardViewController alloc] init];
    LittleLeagueTeamViewController *vc = [[LittleLeagueTeamViewController alloc] init];
    //: vc.teamListManager = self.teamListManager;
    vc.teamListManager = self.teamListManager;
    //: vc.memberId = member.userId;
    vc.memberId = member.userId;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)didTouchTeamCancleButton:(NIMTeamMember *)teamMemeber
- (void)beyondImage:(NIMTeamMember *)teamMemeber
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager updateMuteState:NO
    [[NIMSDK sharedSDK].teamManager updateMuteState:NO
                                             //: userId:teamMemeber.userId
                                             userId:teamMemeber.userId
                                             //: inTeam:self.teamListManager.team.teamId
                                             inTeam:self.teamListManager.team.teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {

        //: if(!error) {
        if(!error) {
            //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_remove_black_success"]
            [self.view makeToast:[TeamManager sizeKey:StringFromWeakData(kStr_revTitle)]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self.memberList removeObject:teamMemeber];
            [self.memberList removeObject:teamMemeber];
            //: if (self.memberList.count>0) {
            if (self.memberList.count>0) {
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
        //: }else{
        }else{
            //: [self.view makeToast:error.description
            [self.view makeToast:error.description
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
     //: }];
     }];
}


//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice table]), [[UIScreen mainScreen] bounds].size.width, 26)];
        //: _box.backgroundColor = [UIColor colorWithHexString:@"#FFF6CF"];
        _box.backgroundColor = [UIColor isView:StringFromWeakData(kStr_regularData)];

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        //: defImg.image = [UIImage imageNamed:@"ic_tip_r"];
        defImg.image = [UIImage imageNamed:StringFromWeakData(kStr_bugText)];
        //: [_box addSubview:defImg];
        [_box addSubview:defImg];

        //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        //: subtitleLabel.textColor = [UIColor colorWithHexString:@"#FF483D"];
        subtitleLabel.textColor = [UIColor isView:StringFromWeakData(kStr_descriptionData)];
//        subtitleLabel.textAlignment = NSTextAlignmentLeft;
        //: subtitleLabel.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black_list_tip"];
        subtitleLabel.text = [TeamManager sizeKey:StringFromWeakData(kStr_foreverLinkName)];
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
        defImg.image = [UIImage imageNamed:StringFromWeakData(kStr_reluctantText)];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor isView:StringFromWeakData(kStr_basicallyData)];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [TeamManager sizeKey:StringFromWeakData(kStr_albumTitle)];


    }
    //: return _defView;
    return _defView;
}




//: @end
@end

Byte * WeakDataToCache(Byte *data) {
    int conviction = data[0];
    int underly = data[1];
    Byte lucidity = data[2];
    int impose = data[3];
    if (!conviction) return data + impose;
    for (int i = impose; i < impose + underly; i++) {
        int value = data[i] + lucidity;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[impose + underly] = 0;
    return data + impose;
}

NSString *StringFromWeakData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WeakDataToCache(data)];
}
