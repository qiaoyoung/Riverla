//
//  ZOMNForwardViewController.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/8.
//  Copyright © 2025 Riverla. All rights reserved.
//

#import "ZOMNForwardViewController.h"
#import "NTESFriendListTableViewCell.h"
#import "NTESContactDataCell.h"



@interface ZOMNForwardViewController ()<UITableViewDataSource,UITableViewDelegate>


@property(nonatomic, strong) UITableView *tableView;
@property (nonatomic ,assign) NSInteger sliderIndex;

@property (nonatomic,strong) UIImageView *topborder1;
@property (nonatomic,strong) UIButton *btnfriend;

@property (nonatomic,strong) UIImageView *topborder2;
@property (nonatomic,strong) UIButton *btngroup;

@property (nonatomic ,strong) NSArray *groupArray;
@property (nonatomic ,strong) NSArray *friendArray;


@end

@implementation ZOMNForwardViewController

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

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
  
    UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_TOP_HEIGHT+64)];
    [self.view addSubview:navView];
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame = CGRectMake(5, SCREEN_STATUS_HEIGHT+4, 40, 40);
    [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [navView addSubview:backButton];
    
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake((SCREEN_WIDTH-200)/2, SCREEN_STATUS_HEIGHT+4, 200, 40)];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.textColor = [UIColor blackColor];
    labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.text = LangKey(@"activity_wallet_zhuan");
    [navView addSubview:labtitle];
    
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+8, SCREEN_WIDTH-30, 48)];
    topview.backgroundColor = RGB_COLOR_String(@"#F6F6F6");
    topview.layer.cornerRadius = 24;
    [self.view addSubview:topview];
    
    CGFloat width = (SCREEN_WIDTH-30-12)/2;
    
    _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnfriend.frame = CGRectMake(6, 6, width, 36);
    _btnfriend.backgroundColor = ThemeColor;
    _btnfriend.layer.cornerRadius = 18;
    _btnfriend.tag = 0;
    _btnfriend.titleLabel.font   = [UIFont systemFontOfSize:14];
    [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnfriend setTitle:LangKey(@"contact_fragment_friend") forState:UIControlStateNormal];
    [_btnfriend addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [topview addSubview:_btnfriend];

    _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    _btngroup.tag = 1;
    _btngroup.layer.cornerRadius = 18;
    _btngroup.titleLabel.font   = [UIFont systemFontOfSize:14];
    [_btngroup setTitleColor:TextColor_2 forState:UIControlStateNormal];
    [_btngroup setTitle:LangKey(@"contact_fragment_group") forState:UIControlStateNormal];
    [_btngroup addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [topview addSubview:_btngroup];

    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, SCREEN_WIDTH, 1)];
    lineview.backgroundColor = RGB_COLOR_String(@"#EEEEEE");
    [navView addSubview:lineview];

    [self.view addSubview:self.tableView];
    _sliderIndex = 0;
    [self prepareData];
}

-(void)sliderButtonClick:(UIButton *)sender
{
    sender.selected = YES;
    
    if(sender == self.btnfriend){
        _btnfriend.backgroundColor = ThemeColor;
        _btngroup.backgroundColor = [UIColor clearColor];
        [_btngroup setTitleColor:TextColor_2 forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
    }else if (sender == self.btngroup){
        _btngroup.backgroundColor = ThemeColor;
        _btnfriend.backgroundColor = [UIColor clearColor];
        [_btnfriend setTitleColor:TextColor_2 forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
    }
  
    _sliderIndex = sender.tag;
    [_tableView reloadData];
    
}

- (void)prepareData
{
    self.friendArray = [NIMSDK sharedSDK].userManager.myFriends;
    self.groupArray = [NIMSDK sharedSDK].teamManager.allMyTeams;
    
    [self.tableView reloadData];
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    if(_sliderIndex <= 0){
        NIMUser *friend = self.friendArray[indexPath.section];
        self.session = [NIMSession session:friend.userId type:NIMSessionTypeP2P];
    }else{
        NIMTeam *team = self.groupArray[indexPath.section];
        self.session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
    }
    
    NSError *err;
    if (self.isdisCorvey) {
        [[[NIMSDK sharedSDK] chatManager] sendMessage:self.message toSession:self.session error:&err];
    }else{
        if (self.isCard) {
            [[[NIMSDK sharedSDK] chatManager] sendForwardMessage:self.message toSession:self.session error:&err];
        }else{
            [[[NIMSDK sharedSDK] chatManager] forwardMessage:self.message toSession:self.session error:&err];
        }
    }
   
    
    if(!err){
        [self.view makeToast:@"已发送".nim_localized duration:1.0 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            [self.navigationController popViewControllerAnimated:NO];
        }];
    }else{
        [self.view makeToast:LangKey(@"group_info_activity_op_failed") duration:2.0 position:CSToastPositionCenter];
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 64;
}

- (NIMSession *)didGetSessionWithTeam:(id)team {
    NIMTeam *teamItem = (NIMTeam *)team;
    NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    return session;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    if (_sliderIndex <= 0) {
        return self.friendArray.count;
    }else{
        return self.groupArray.count;
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.01f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01f;
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [[UIView alloc] init];
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [[UIView alloc] init];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    if (_sliderIndex <= 0) {
//        NIMUser *user = self.friendArray[indexPath.section];
//
//        NTESFriendListTableViewCell *cell = [NTESFriendListTableViewCell cellWithTableView:tableView];
////        cell.delegate = self;
//        [cell reloadUserItem:user];
//        cell.messageBtn.hidden = YES;
//        
//        return cell;
//        
//    }else{
//        
//        NIMTeam *team = self.groupArray[indexPath.section];
//
//        NTESContactDataCell * cell = [tableView dequeueReusableCellWithIdentifier:@"KEKEItemCell"];
//        if (!cell) {
//            cell = [[NTESContactDataCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"KEKEItemCell"];
//        }
//        cell.backgroundColor = [UIColor clearColor];
//        cell.accessoryType = UITableViewCellAccessoryNone;
//        [cell refreshTeam:team];
////        [cell setDelegate:self];
//        
//        return cell;
//    }
    
    NTESFriendListTableViewCell *cell = [NTESFriendListTableViewCell cellWithTableView:tableView];
    //        cell.delegate = self;
    if (_sliderIndex <= 0) {
        NIMUser *user = self.friendArray[indexPath.section];
        [cell reloadUserItem:user];
    }else{
        NIMTeam *team = self.groupArray[indexPath.section];
        [cell refreshTeam:team];
    }
    return cell;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT+64, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-64) style:UITableViewStyleGrouped];
        _tableView.delegate       = self;
        _tableView.dataSource     = self;
        _tableView.backgroundColor = [UIColor clearColor];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}

@end
