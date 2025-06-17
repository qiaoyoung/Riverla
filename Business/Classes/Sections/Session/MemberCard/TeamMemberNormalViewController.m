//
//  TeamMemberNormalViewController.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

#import "TeamMemberNormalViewController.h"
#import "FFFContactSelectViewController.h"
#import "FFFCardHeaderCell.h"
#import "TeamMemberNormalCollectionViewCell.h"
#import "NTESPersonalCardViewController.h"
#import "FFFTeamMemberCardViewController.h"

@interface TeamMemberNormalViewController ()<UICollectionViewDelegate, UICollectionViewDataSource,NIMContactSelectDelegate>

@property (nonatomic, strong) UICollectionView *collectionView;

@property (nonatomic, strong) NSMutableArray *memberList;
@property (nonatomic, strong) NIMTeamMember *owerInfo;
@property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UILabel *titleLabel;

@property (nonatomic, strong) NSDictionary *teamSettingConfig;

@end

@implementation TeamMemberNormalViewController

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
    
    self.memberList = [NSMutableArray array];
    [self loadTeamManageList];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupUI];

   
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
    
    
    NSString *kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
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
    
    UIView *owerView = [[UIView alloc]initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+9, SCREEN_WIDTH-30, 72)];
    owerView.backgroundColor = RGB_COLOR_String(@"#F6F6F6");
    owerView.layer.masksToBounds = YES;
    owerView.layer.cornerRadius = 16;
    [self.view addSubview:owerView];
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.cornerRadius = 24;
    [owerView addSubview:_roleImageView];
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    _titleLabel.textColor = TextColor_0;
    [owerView addSubview:_titleLabel];
    
    UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-45-100, 12, 100, 48)];
    subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    subtitleLabel.textColor = RGB_COLOR_String(@"5D5F66");
    subtitleLabel.textAlignment = NSTextAlignmentRight;
    subtitleLabel.text = LangKey(@"group_member_info_activity_team_creator");
    [owerView addSubview:subtitleLabel];
    
    // 设置 UICollectionView 的布局
    CGFloat width = (SCREEN_WIDTH-30)/3;
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(width, 70); // 每个 item 的大小
    layout.minimumInteritemSpacing = 0; // item 之间的水平间距
    layout.minimumLineSpacing = 5; // item 之间的垂直间距
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0); // section 内的边距
    
    // 初始化 UICollectionView 并设置布局
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+90, SCREEN_WIDTH-30, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-90) collectionViewLayout:layout];
    self.collectionView.delegate = self; // 设置代理
    self.collectionView.dataSource = self; // 设置数据源
    self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    [self.collectionView registerClass:[TeamMemberNormalCollectionViewCell class] forCellWithReuseIdentifier:@"TeamMemberNormalCollectionViewCell"];
    self.collectionView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.collectionView];
    
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


- (void)teamMemberUpdate:(NSNotification *)note
{
    [self loadTeamManageList];
    [self.collectionView reloadData];
}

- (void)loadTeamManageList
{
    @weakify(self)
    [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
                                          completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @strongify(self)
        if (!error) {
            for (NIMTeamMember *member in members) {
                if (member.type == NIMTeamMemberTypeNormal) {
                    [self.memberList addObject:member];

                }else if (member.type == NIMTeamMemberTypeOwner){
                    self.owerInfo = member;
                    
                    FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
                    self.titleLabel.text = info.showName;
                    [self.roleImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
                }
            }
            [self.collectionView reloadData];
        }else{
            NSLog(@"error:%@",error);
        }
    }];
}
#pragma mark - UICollectionViewDataSource
// 返回 section 的数量
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

// 返回每个 section 中的 item 数量
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.memberList.count;
}

// 配置每个 item 的 cell
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TeamMemberNormalCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TeamMemberNormalCollectionViewCell" forIndexPath:indexPath];
    //    cell.delegate = self;
//    cell.backgroundColor  = RGB_COLOR_String(@"#ffffff");

    NIMTeamMember *member = self.memberList[indexPath.row];
    [cell refreshWithModel:member];
    
    
    return cell;
}

#pragma mark - UICollectionViewDelegate

// 选择 item 时触发的事件
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Item at index %ld selected", indexPath.row);
    
    NSString *canMemberInfo = [_teamSettingConfig newStringValueForKey:@"canAddFriend"];
    if (canMemberInfo.integerValue > 0) {
        
        NIMTeamMember *member = self.memberList[indexPath.row];
//        FFFTeamMemberCardViewController *vc = [[FFFTeamMemberCardViewController alloc] init];
//        vc.teamListManager = self.teamListManager;
//        vc.memberId = member.userId;
//        [self.navigationController pushViewController:vc animated:YES];
        
        NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:member.userId];
        [self.navigationController pushViewController:vc animated:YES];
    }
}



@end
