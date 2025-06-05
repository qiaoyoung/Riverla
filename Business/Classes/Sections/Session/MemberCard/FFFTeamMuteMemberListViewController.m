//
//  FFFTeamMuteMemberListViewController.m
// NeeyoKit
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

#import "FFFTeamMuteMemberListViewController.h"
#import "FFFTeamMemberCardViewController.h"
#import "FFFCardHeaderCell.h"
#import "FFFTeamCardMemberItem.h"
#import "FFFKitDependency.h"
#import "FFFKitProgressHUD.h"
#import "NSString+NeeyoKit.h"
#import "NTESContactDataMember.h"
#import "SVProgressHUD.h"
#import "NTESBlackListTableViewCell.h"

@interface FFFTeamMuteMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,NTESUserListCellDelegate>

@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *memberList;

@property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *box;

@end

@implementation FFFTeamMuteMemberListViewController


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
- (void)backAction{
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = CommonBGView_Color;
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

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
    labtitle.text = LangKey(@"black_list_activity_black");
    [bgView addSubview:labtitle];
    
    [self.view addSubview:self.box];
    [self.view addSubview:self.defView];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT+30, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-30) style:UITableViewStyleGrouped];
    self.tableView.backgroundColor = [UIColor whiteColor];
        self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self.view addSubview:self.tableView];
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
    
    [self loadTeamManageList];
}


- (void)loadTeamManageList
{
    @weakify(self)
    [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:self.teamListManager.team.teamId
                                               completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @strongify(self)
        if (!error) {
            self.memberList = [NSMutableArray arrayWithArray:members];
            if (self.memberList.count>0) {
                self.defView.hidden = YES;
                self.tableView.hidden = NO;
                [self.tableView reloadData];
            }else{
                self.defView.hidden = NO;
                self.tableView.hidden = YES;
            }
        }
    }];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 72.f;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.memberList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *backView = [UIView new];
    backView.backgroundColor = [UIColor clearColor];
    return backView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return CGFLOAT_MIN;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *backView = [UIView new];
    backView.backgroundColor = [UIColor clearColor];
    return backView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identity = @"cell";
    NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    if (!cell) {
        cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell.delegate = self;
    }
    NIMTeamMember *member = self.memberList[indexPath.section];
    [cell refreshData:member];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NIMTeamMember *member = self.memberList[indexPath.section];
    
    FFFTeamMemberCardViewController *vc = [[FFFTeamMemberCardViewController alloc] init];
    vc.teamListManager = self.teamListManager;
    vc.memberId = member.userId;
    [self.navigationController pushViewController:vc animated:YES];
   
}

- (void)didTouchTeamCancleButton:(NIMTeamMember *)teamMemeber
{
    @weakify(self)
    [[NIMSDK sharedSDK].teamManager updateMuteState:NO
                                             userId:teamMemeber.userId
                                             inTeam:self.teamListManager.team.teamId
                                         completion:^(NSError *error) {
        
        if(!error) {
            [self.view makeToast:LangKey(@"group_chat_avatar_activity_remove_black_success")
                         duration:2
                         position:CSToastPositionCenter];
            @strongify(self)
            [self.memberList removeObject:teamMemeber];
            if (self.memberList.count>0) {
                self.defView.hidden = YES;
                self.tableView.hidden = NO;
                [self.tableView reloadData];
            }else{
                self.defView.hidden = NO;
                self.tableView.hidden = YES;
            }
        }else{
            [self.view makeToast:error.description
                         duration:2
                         position:CSToastPositionCenter];
        }
     }];
}


- (UIView *)box
{
    if(!_box){
        _box = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, 26)];
        _box.backgroundColor = RGB_COLOR_String(@"#FFF6CF");
        
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        defImg.image = [UIImage imageNamed:@"ic_tip_r"];
        [_box addSubview:defImg];
        
        UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, SCREEN_WIDTH-60, 26)];
        subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        subtitleLabel.textColor = RGB_COLOR_String(@"#FF483D");
//        subtitleLabel.textAlignment = NSTextAlignmentLeft;
        subtitleLabel.text = LangKey(@"black_list_activity_black_list_tip");
        [_box addSubview:subtitleLabel];
        
    }
    return _box;
}
- (UIView *)defView{
    if(!_defView){
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT+50, SCREEN_WIDTH, 200)];
        _defView.hidden = YES;
        
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-213)/2, 150, 213, 148)];
        defImg.image = [UIImage imageNamed:@"ic_none_blockList"];
        [_defView addSubview:defImg];
        
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, SCREEN_WIDTH, 20)];
        emptyTipLabel.textColor = TextColor_3;
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        [_defView addSubview:emptyTipLabel];
        emptyTipLabel.text = LangKey(@"group_info_activity_without");
    
        
    }
    return _defView;
}




@end
