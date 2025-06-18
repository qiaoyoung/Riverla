//
//  NTESTeamMemberListViewController.m
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "CCCTeamMemberListViewController.h"
#import "FFFCardHeaderCell.h"
#import "FFFTeamCardMemberItem.h"
#import "FFFTeamMemberCardViewController.h"
#import "FFFKitDependency.h"
#import "FFFKitProgressHUD.h"
#import "FFFGlobalMacro.h"
#import "NSString+MyUserKit.h"
#import "FFFTeamListDataManager.h"
#import "NTESPersonalCardViewController.h"
#import "NTESContactDataCell.h"
#import "FFFGroupMemberTableViewCell.h"
#import "FFFContactSelectViewController.h"
#define CollectionCellReuseId @"cell"
#define CollectionItemWidth  55
#define CollectionItemHeight 80
#define CollectionEdgeInsetLeftRight 20

#define CollectionEdgeInsetTopFirstLine 25
#define CollectionEdgeInsetTop 15

typedef void(^NIMTeamMemberListFetchDataBlock)(BOOL isCompletion);

@interface CCCTeamMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,NIMMemberCardCellDelegate>

//@property (nonatomic, strong) UICollectionView *collectionView;
//@property (nonatomic, weak) id <FFFTeamMemberListDataSource> dataSource;
@property (nonatomic, assign) NSInteger pageIndex;
@property (nonatomic, assign) NSInteger totalPageCount;
@property (nonatomic, strong) UIButton *nextBtn;
@property (nonatomic, strong) UIButton *lastBtn;
@property (nonatomic, strong) NSDictionary *teamSettingConfig;

@property (nonatomic ,strong) UITableView *tableView;

@property (nonatomic ,copy) NSArray *muteArray;

@end

@implementation CCCTeamMemberListViewController

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (instancetype)initWithDataSource:(FFFTeamListDataManager *)dataSource {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        _teamListManager = dataSource;
        NSString *kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
    }
    return self;
}
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

- (void)rightNavButtonClick{
        NSMutableArray *users = [self.teamListManager memberIds];
        NSString *currentUserID = [self.teamListManager myAccount];
        [users addObject:currentUserID];
        
        NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        config.filterIds = users;
        config.needMutiSelected = YES;
        FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        vc.delegate = self;
        [vc show];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupUI];
    [self loadMuteListData];
    
    NSMutableDictionary *dict = @{}.mutableCopy;
    dict[@"id"] = self.teamListManager.team.teamId?:@"";
    [ZCHttpManager getWithUrl:Server_team_getTeamSetting params:dict isShow:NO success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue <= 0) {
            NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            _teamSettingConfig = data;
        }
    } failed:^(id responseObject, NSError *error) {
    }];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

//    [_collectionView reloadData];
    [self.tableView reloadData];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

- (void)setupUI {
    
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
    labtitle.text = LangKey(@"group_info_activity_team_member");
    [bgView addSubview:labtitle];
    
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+8, 32, 32);
    submitButton.backgroundColor = ThemeColor;
    submitButton.layer.cornerRadius = 16;
    [submitButton setImage:[UIImage imageNamed:@"ic_group_addmember"] forState:(UIControlStateNormal)];
    [submitButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:submitButton];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+15, SCREEN_WIDTH-30, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT) style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = [UIColor clearColor];
    _tableView.estimatedSectionHeaderHeight=15.1;
    _tableView.estimatedSectionFooterHeight=.1;
    self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    
//    [self.view addSubview:self.collectionView];
    
}

- (void)loadMuteListData {

    NSString *teamId = self.teamListManager.team.teamId;
    if (self.teamListManager.team.type == NIMTeamTypeSuper) {
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            self.muteArray = members;
            [self.tableView reloadData];
        }];
    } else {
        [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            self.muteArray = members;
            [self.tableView reloadData];
        }];
    }
}

//更新群成员禁言
- (void)cellShouldBeMute:(NSString *)uid mute:(BOOL)mute
{
//    [_dataSource updateUserMuteState:uid mute:mute completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [self.tableView reloadData];
//    }];
    
    BOOL ismute = YES;
    for (NIMTeamMember *member in self.muteArray) {
        if([member.userId isEqualToString:uid]){
            ismute = NO;
        }else{
            ismute = YES;
        }
    }
   
    NSString *teamId = self.teamListManager.team.teamId;
    if (self.teamListManager.team.type == NIMTeamTypeSuper) {
        NSMutableArray *users = [NSMutableArray array];
        if (uid) {
            [users addObject:uid];
        }
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:ismute
                                                      userIds:users
                                                       inTeam:teamId
                                                  completion:^(NSError *error) {
            [self loadMuteListData];
          
        }];
    } else {
        [[NIMSDK sharedSDK].teamManager updateMuteState:ismute
                                                 userId:uid
                                                 inTeam:teamId
                                             completion:^(NSError *error) {
            NSString *msg = nil;
            if (!error) {
                msg = LangKey(@"modify_activity_modify_success");
            }else{
                msg = LangKey(@"group_info_activity_op_failed");
            }
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            
//            [self.tableView reloadData];
            [self loadMuteListData];
         }];
    }
}
- (void)cellShouldBeRemoved:(NSString *)uid
{
    [FFFKitProgressHUD show];
    [self.teamListManager kickUsers:@[uid] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [FFFKitProgressHUD dismiss];
        [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        [self.tableView reloadData];
    }];
}

#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _teamListManager.memberIds.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return 72;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [[UIView alloc] init];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return CGFLOAT_MIN;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [[UIView alloc] init];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    FFFGroupMemberTableViewCell *cell = [FFFGroupMemberTableViewCell cellWithTableView:tableView];
    cell.delegate = self;

    NSString *uId = _teamListManager.memberIds[indexPath.section];
    FFFKitInfo *usrInfo = [[MyUserKit sharedKit] infoByUser:uId option:nil];

    [cell reloadWithUserId:uId];
    [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:usrInfo.avatarUrlString] placeholderImage:usrInfo.avatarImage];
    cell.titleLabel.text = usrInfo.showName;
    cell.subtitleLabel.text = LangKey(@"group_member_info_activity_team_creator");

    BOOL isown = [uId isEqualToString:_teamListManager.team.owner];
    if(isown){
        cell.subtitleLabel.hidden = NO;
    }else{
        cell.subtitleLabel.hidden = YES;
        cell.muteBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }
    
    if([_teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
        cell.muteBtn.hidden = NO;
        cell.removeBtn.hidden = NO;
        cell.muteBtn.selected = NO;
        for (NIMTeamMember *member in self.muteArray) {
            if([member.userId isEqualToString:uId] && member.isMuted){
                cell.muteBtn.selected = YES;
            }
        }
    }else{
        cell.muteBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }
    
    if(isown){
        cell.muteBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }
   
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSString *canMemberInfo = [_teamSettingConfig newStringValueForKey:@"canAddFriend"];
    if (canMemberInfo.integerValue > 0) {
        NSString *uId = _teamListManager.memberIds[indexPath.section];
//    FFFTeamMemberCardViewController *vc = [[FFFTeamMemberCardViewController alloc] init];
//    vc.teamListManager = self.teamListManager;
//    vc.memberId = uId;
//        [self.navigationController pushViewController:vc animated:YES];
        
        NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uId];
        [self.navigationController pushViewController:vc animated:YES];
    }

}



#pragma mark - ContactSelectDelegate
- (void)didFinishedSelect:(NSArray *)selectedContacts{
    [self didInviteUsers:selectedContacts completion:nil];
}

- (void)didInviteUsers:(NSArray<NSString *> *)userIds
            completion:(dispatch_block_t)completion {
    
    if (userIds.count == 0) {
        return;
    }
    
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    info[@"attach"] = @"扩展消息";
    switch (self.teamListManager.team.type) {
        case NIMTeamTypeNormal:
            info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            break;
        case NIMTeamTypeAdvanced:
            info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            break;
        case NIMTeamTypeSuper:
            info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            break;
        default:
            break;
    }
    __weak typeof(self) wself = self;
//    [FFFKitProgressHUD show];
    [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [FFFKitProgressHUD dismiss];

        if (completion) {
            completion();
        }
    }];
}

#pragma mark - Actions
- (void)teamMemberUpdate:(NSNotification *)note {
 
    [self.tableView reloadData];
}

@end
