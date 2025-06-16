//
//  CCCContactsViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

#import "CCCContactsViewController.h"
#import "NTESSessionUtil.h"
#import "NTESSessionViewController.h"
#import "NTESContactUtilItem.h"
#import "NTESContactDefines.h"
#import "NTESGroupedContacts.h"
#import "UIView+Toast.h"
#import "NTESCustomNotificationDB.h"
#import "NTESNotificationCenter.h"
#import "UIActionSheet+NTESBlock.h"
#import "NTESContactAddFriendViewController.h"
#import "NTESPersonalCardViewController.h"
#import "UIAlertView+NTESBlock.h"
#import "SVProgressHUD.h"
#import "NTESContactUtilCell.h"
#import "NTESContactDataCell.h"
#import "FFFContactSelectViewController.h"
#import "NTESUserUtil.h"
#import "NTESBundleSetting.h"
#import "UIView+NTES.h"
//#import "NTESContactSearchResultVC.h"
#import "NTESContactSearchViewController.h"
#import "NTESSystemNotificationViewController.h"
#import "CCCBlackListViewController.h"
#import "NTESContactHeaderView.h"
#import "CCCContactScanViewController.h"
#import "NTESContactTableHeader.h"
#import "NTESContactGroupCell.h"
#import "CCCAddressBookManager.h"
#import "NSObject+YYModel.h"
#import <FFDropDownMenu/FFDropDownMenu.h>
#import <FFDropDownMenu/FFDropDownMenuView.h>
#import "NTESFriendListTableViewCell.h"
#import "FFFKitFileLocationHelper.h"


static const NSString *contactCellUtilIcon   = @"icon";
static const NSString *contactCellUtilVC     = @"vc";
static const NSString *contactCellUtilBadge  = @"badge";
static const NSString *contactCellUtilTitle  = @"title";
static const NSString *contactCellUtilUid    = @"uid";
static const NSString *contactCellUtilSelectorName = @"selName";


@interface CCCContactsViewController ()<NTESUserListCellDelegate,NIMUserManagerDelegate,NIMSystemNotificationManagerDelegate,
NTESContactUtilCellDelegate,
FFFContactDataCellDelegate,
NIMLoginManagerDelegate,
NIMEventSubscribeManagerDelegate,
NTESContactSearchDelegate> {
    UIRefreshControl *_refreshControl;
    NTESGroupedContacts *_contacts;
}


@property (nonatomic,strong) NSArray * datas;
@property (nonatomic,strong) UIButton *btnfriend;
@property (nonatomic,strong) UIButton *btngroup;

@property (nonatomic,strong) UIButton *btnScan;
@property (nonatomic,strong) UIButton *btnCreatgroup;


@property (nonatomic ,strong) NSArray *advancedTeamArray;
@property (nonatomic ,assign) NSInteger sliderIndex;

@property (nonatomic ,strong) NSArray *groupArray;

@property (nonatomic ,strong) NSMutableArray *tempOpenArray;

@property (nonatomic,strong) UIView *friendheaderView;
@property (nonatomic,strong) UIView *groupheaderView;
@property (nonatomic,strong) ZMONCustomLoadingView *loadingView;

@property (nonatomic,strong) UIView *defView;

@end

@implementation CCCContactsViewController

- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
    [self prepareData];
    self.advancedTeamArray = [self advancedDidFetchTeams];
//    [self.tableView reloadData];
    [self loadTheView];
}

- (void)loadTheView
{
    if (_sliderIndex<=0) {
        
        if([_contacts groupCount]>0){
           self.defView.hidden = YES;
           [self.tableView reloadData];
        } else{
            self.defView.hidden = NO;
        }
        
        
    }else{
        if(self.advancedTeamArray.count>0){
           self.defView.hidden = YES;
           [self.tableView reloadData];
        } else{
            self.defView.hidden = NO;
        }
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
   
    [self setUpNavItem];
    
    [self.view addSubview:self.tableView];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.tableHeaderView = self.friendheaderView;
    
    if ([self.tableView respondsToSelector:@selector(setSectionIndexColor:)]) {
        self.tableView.sectionIndexColor = RGB_COLOR_String(@"#2C3042"); // 索引文字颜色
//        self.tableView.sectionIndexBackgroundColor = [UIColor clearColor]; // 索引背景色
//        self.tableView.sectionIndexTrackingBackgroundColor = [UIColor lightGrayColor]; // 选中时的背景色
    }
    
//    [self prepareData];
    self.tempOpenArray = [NSMutableArray arrayWithCapacity:0];
    
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    
    [self.view addSubview:self.loadingView];
    
    [self.view addSubview:self.defView];
}

- (UIView *)defView{
    if(!_defView){
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_STATUS_HEIGHT+140, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_STATUS_HEIGHT-140-SCREEN_TABBAR_HEIGHT)];
        _defView.backgroundColor = [UIColor whiteColor];
//        _defView.hidden = YES;
        
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-213)/2, 20, 213, 148)];
        defImg.image = [UIImage imageNamed:@"ic_none_ContactList"];
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

-(void)getGroupData{

    [ZCHttpManager getWithUrl:Server_group_searchall params:nil isShow:NO success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue == 0) {
            
            NSArray *friendList = [[NIMSDK sharedSDK].userManager myFriends];
            NSMutableArray *friendIds = [NSMutableArray arrayWithCapacity:0];
            for (NIMUser *user in friendList) {
                NSDictionary *dict = [NSDictionary dictionaryWithObject:user.userId forKey:@"user_id"];
                [friendIds addObject:dict];
            }
            
            
            NSMutableDictionary *myfriend = [NSMutableDictionary dictionaryWithCapacity:0];
            [myfriend setObject:LangKey(@"contact_tag_fragment_friend") forKey:@"name"];
            [myfriend setObject:friendIds forKey:@"ids"];
            NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
            [dataArray addObject:myfriend];
            
            
            NSArray *data = [resultDict arrayValueForKey:@"data"];
            [dataArray addObjectsFromArray:data];
            _groupArray = dataArray;
            [_tableView reloadData];
        }
    } failed:^(id responseObject, NSError *error) {
        
    }];
    

}

- (void)setUpNavItem
{
    UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_STATUS_HEIGHT+132)];
    [self.view addSubview:navView];
    
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, SCREEN_STATUS_HEIGHT+8, SCREEN_WIDTH-30, 48)];
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
    
}

- (void)handleNotice
{
    NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)prepareData{
    _contacts = [[NTESGroupedContacts alloc] init];
}

//普通群组
- (NSMutableArray *)normalDidFetchTeams{
    NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
        if (team.type == NIMTeamTypeNormal) {
            [myTeams addObject:team];
        }
    }
    return myTeams;
}

- (NSMutableArray *)advancedDidFetchTeams {
    NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
        if (team.type == NIMTeamTypeAdvanced) {
            [myTeams addObject:team];
        }
    }
    return myTeams;
}

#pragma mark - Action
- (void)onEnterMyComputer{
    NSString *uid = [[NIMSDK sharedSDK].loginManager currentAccount];
    NIMSession *session = [NIMSession session:uid type:NIMSessionTypeP2P];
    NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    [self.navigationController pushViewController:vc animated:YES];
}


-(void)createGroupRequestWithTeamID:(NSString *)teamID teamName:(NSString *)teamName type:(NSString *)type{
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSMutableDictionary *dict = @{}.mutableCopy;
    dict[@"owner"] = currentUserId;
    dict[@"type"] = type;
    dict[@"tname"] = teamName;
    dict[@"tid"] = teamID;

}

- (void)searchAction:(id)sender {
    NTESContactSearchViewController *vc = [[NTESContactSearchViewController alloc] init];
    vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (_sliderIndex <= 0) {
        id<NTESContactItem> contactItem = (id<NTESContactItem>)[_contacts memberOfIndex:indexPath];
        if ([contactItem respondsToSelector:@selector(selName)] && [contactItem selName].length) {
            SEL sel = NSSelectorFromString([contactItem selName]);
            SuppressPerformSelectorLeakWarning([self performSelector:sel withObject:nil]);
        }
        else if (contactItem.vcName.length) {
            Class clazz = NSClassFromString(contactItem.vcName);
            UIViewController * vc = [[clazz alloc] initWithNibName:nil bundle:nil];
            [self.navigationController pushViewController:vc animated:YES];
        }else if([contactItem respondsToSelector:@selector(userId)]){
            NSString * friendId   = contactItem.userId;
            [self enterPersonalCard:friendId];
        }
    }else{
        NSArray *itemArray = _advancedTeamArray;
        NIMTeam *team = itemArray[indexPath.section];
        NIMSession *session = [self didGetSessionWithTeam:team];
        if (session) {
            NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    id<NTESContactItem> contactItem = (id<NTESContactItem>)[_contacts memberOfIndex:indexPath];
//    return contactItem.uiHeight;
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
        return [_contacts groupCount];
    }else{
        return _advancedTeamArray.count;

    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (_sliderIndex <= 0) {
        return [_contacts memberCountOfGroup:section];
    }else{
        return 1;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    if (_sliderIndex == 0) {
            return 30;
        }
        return CGFLOAT_MIN;

}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.01f;
}


- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    if (_sliderIndex == 0) {
           UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 30)];
           view.backgroundColor = [UIColor whiteColor];
           
           UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 7.5, SCREEN_WIDTH-30, 15)];
           label.text = [_contacts titleOfGroup:section];
           label.font = [UIFont systemFontOfSize:16];
           label.textColor = kTextColor_2c3042;
           [view addSubview:label];
           
           return view;
       }
       return [[UIView alloc] init];
}


- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [[UIView alloc] init];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NTESFriendListTableViewCell *cell = [NTESFriendListTableViewCell cellWithTableView:tableView];
    //        cell.delegate = self;
    if (_sliderIndex <= 0) {
        id contactItem = [_contacts memberOfIndex:indexPath];
        [cell refreshUser:contactItem];
    }else{
        NIMTeam *team = _advancedTeamArray[indexPath.section];
        [cell refreshTeam:team];
    }
    
    return cell;
}

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (_sliderIndex <= 0) {
        return [_contacts titleOfGroup:section];
    }else{
        return @"";
    }
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    if (_sliderIndex <= 0) {
        return _contacts.sortedGroupTitles;
    }else{
        NSArray *itemArray = _advancedTeamArray;
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:itemArray.count];
        for (int i = 0; i < itemArray.count; i++) {
            [array addObject:@""];
        }
        return array;
    }
}

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    return index + 1;
}

#pragma mark - NTESUserListCellDelegate
- (void)didTouchMessageButton:(NSString *)memberId
{
    NIMSession *session = [NIMSession session:memberId type:NIMSessionTypeP2P];
    NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    [self.navigationController pushViewController:vc animated:YES];
}


#pragma mark - NTESContactSearchDelegate
- (BOOL)disableSearchTeam {
    return _disableSearchTeam;
}

- (BOOL)ignoreCase {
    return _searchIgoreCase;
}

#pragma mark - FFFContactDataCellDelegate
- (void)onPressAvatar:(NSString *)memberId{
    [self enterPersonalCard:memberId];
}

#pragma mark - NTESContactUtilCellDelegate
- (void)onPressUtilImage:(NSString *)content{
    
}

#pragma mark - NIMContactSelectDelegate
- (void)didFinishedSelect:(NSArray *)selectedContacts{
    
}

#pragma mark - NIMSDK Delegate
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    [self prepareData];
    [self.tableView reloadData];
}

- (void)onLogin:(NIMLoginStep)step
{
    if (step == NIMLoginStepSyncOK) {
        if (self.isViewLoaded) {//没有加载view的话viewDidLoad里会走一遍prepareData
            [self prepareData];
            [self.tableView reloadData];
        }
    }
}

- (void)onUserInfoChanged:(NIMUser *)user
{
    [self refresh];
}

- (void)onFriendChanged:(NIMUser *)user{
    [self refresh];
}

- (void)onBlackListChanged
{
    [self refresh];
}

- (void)onMuteListChanged
{
    [self refresh];
}

- (void)refresh
{
    [self prepareData];
    [self.tableView reloadData];
}


#pragma mark - NIMEventSubscribeManagerDelegate

- (void)onRecvSubscribeEvents:(NSArray *)events
{
    NSMutableSet *ids = [[NSMutableSet alloc] init];
    for (NIMSubscribeEvent *event in events) {
        [ids addObject:event.from];
    }
    
    NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    for (NSIndexPath *indexPath in self.tableView.indexPathsForVisibleRows) {
        
        id<NTESContactItem> contactItem = (id<NTESContactItem>)[_contacts memberOfIndex:indexPath];
        if([contactItem respondsToSelector:@selector(userId)]){
            NSString * friendId   = contactItem.userId;
            if ([ids containsObject:friendId]) {
                [indexPaths addObject:indexPath];
            }
        }
    }
    if (indexPaths.count > 0)
    {
        [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
    }
}

#pragma mark - Private
- (void)enterPersonalCard:(NSString *)userId{
    NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)presentMemberSelector:(ContactSelectFinishBlock) block{
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //使用内置的好友选择器
    NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    //获取自己id
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    [users addObject:currentUserId];
    //将自己的id过滤
    config.filterIds = users;
    //需要多选
    config.needMutiSelected = YES;
    config.showSelectHeaderview = YES;
    //初始化联系人选择器
    FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    //回调处理
    vc.finshBlock = block;
    [vc show];
}


- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, SCREEN_STATUS_HEIGHT+64, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_STATUS_HEIGHT-64-SCREEN_TABBAR_HEIGHT) style:UITableViewStyleGrouped];
        _tableView.delegate       = self;
        _tableView.dataSource     = self;
        UIEdgeInsets separatorInset   = self.tableView.separatorInset;
        separatorInset.right          = 0;
        _tableView.separatorInset = separatorInset;
        _tableView.sectionIndexBackgroundColor = [UIColor clearColor];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}


#pragma mark - NTESContactHeaderDelegate
-(void)searchClick{
    [self searchAction:nil];
}

-(void)addFriend{
    NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];

}

-(void)newGroup{
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @weakify(self);
    [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
        @strongify(self);
        
        [self.loadingView animationShow];

        [self uploadImage:avater complete:^(NSString *urlString) {
            
            @strongify(self);
            NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            option.name       = name;
            option.avatarUrl = urlString ? : @"";
            option.type       = NIMTeamTypeAdvanced;
            option.joinMode   = NIMTeamJoinModeNoAuth;
            option.postscript = LangKey(@"invite_you_group");
//            [SVProgressHUD show];
            
            
            [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
//                [SVProgressHUD dismiss];
                [self.loadingView animationClose];
                if (!error) {
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                    [self.navigationController pushViewController:vc animated:YES];
                    [self createGroupRequestWithTeamID:teamId teamName:option.name type:kConstant_1];
                    [self newGroupSyncRequest:option.name teamID:teamId];
                }else{
                    [self.view makeToast:LangKey(@"team_create_helper_create_failed") duration:2.0 position:CSToastPositionCenter];
                }
            }];
        }];
    }];
}

- (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
    
    if (!image) {
        !complete ? :complete(nil);
        return;
    }
    
    UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(375, 375)];
    NSString *fileName = [FFFKitFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *filePath = [[FFFKitFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.3);
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    __weak typeof(self) wself = self;
    if (success) {
        [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
            NSLog(@"%.2f",progress);
        } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
            if (!error && wself) {
                
                
            }else{
                [wself.view makeToast:LangKey(@"user_info_avtivity_upload_avatar_failed")
                             duration:2
                             position:CSToastPositionCenter];
            }
            
            !complete ? :complete(urlString);
        }];
    }else{
        [self.view makeToast:LangKey(@"user_info_avtivity_upload_avatar_failed")
                    duration:2
                    position:CSToastPositionCenter];
        
        !complete ? :complete(nil);
    }
    
}

//同步数据
-(void)newGroupSyncRequest:(NSString *)groupName teamID:(NSString *)teamId{
    NSMutableDictionary *dict = @{}.mutableCopy;
    dict[@"name"] = groupName;
    dict[@"id"] = teamId;
    [ZCHttpManager getWithUrl:Server_team_create params:dict isShow:NO success:^(id responseObject) {
        
    } failed:^(id responseObject, NSError *error) {
        
    }];
}

-(void)scan{
    CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)friendNotification{
    NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] init];
    vc.filterType = kConstant_1;
    [self.navigationController pushViewController:vc animated:YES];
    
}
-(void)groupNotification{
    NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] init];
    vc.filterType = kConstant_2;
    [self.navigationController pushViewController:vc animated:YES];
}



-(void)blackFriendList{
    CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

-(void)collectList{
  
}


-(void)sliderButtonClick:(UIButton *)sender
{
    sender.selected = YES;
    
    if(sender == self.btnfriend){
        _btnfriend.backgroundColor = ThemeColor;
        _btngroup.backgroundColor = [UIColor clearColor];
        [_btngroup setTitleColor:TextColor_2 forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
        self.tableView.tableHeaderView = self.friendheaderView;
        
    }else if (sender == self.btngroup){
        _btngroup.backgroundColor = ThemeColor;
        _btnfriend.backgroundColor = [UIColor clearColor];
        [_btnfriend setTitleColor:TextColor_2 forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
        self.tableView.tableHeaderView = self.groupheaderView;
    }
  
    
    _sliderIndex = sender.tag;
//    [_tableView reloadData];
    [self loadTheView];
    
}

- (NSString *)arrayToJSONString:(NSArray *)array {
    
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSString *jsonTemp = [jsonString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return jsonTemp;
}

/**
 *  请求相机权限
 */
- (void)requestAuthorizationForVideo {
   
    @weakify(self);
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            if (granted == YES) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    @strongify(self);

                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
                        [self.navigationController pushViewController:vc animated:YES];
                        
                    }
                });
            }
        }];
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            
        }
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }
        
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:LangKey(@"warm_prompt") message:LangKey(@"setting_privacy_camera") preferredStyle:UIAlertControllerStyleAlert];
        [alertControl addAction:([UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        }])];
        [alertControl addAction:([UIAlertAction actionWithTitle:LangKey(@"tag_activity_set") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        }])];
        [self presentViewController:alertControl animated:YES completion:nil];
        
    }
}

-(void)creatTeamGroup{
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    __weak typeof(self) wself = self;
    [wself presentMemberSelector:^(NSArray *uids, NSString *groupName, UIImage *avater) {
        NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
        NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
        option.name       = groupName;
        option.type       = NIMTeamTypeAdvanced;
        option.joinMode   = NIMTeamJoinModeNoAuth;
        option.postscript = LangKey(@"invite_you_group");
        [SVProgressHUD show];
        [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            [SVProgressHUD dismiss];
            if (!error) {
                NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                [wself.navigationController pushViewController:vc animated:YES];
                [self createGroupRequestWithTeamID:teamId teamName:option.name type:kConstant_1];
                [wself newGroupSyncRequest:option.name teamID:teamId];
            }else{
                [wself.view makeToast:LangKey(@"team_create_helper_create_failed") duration:2.0 position:CSToastPositionCenter];
            }
        }];
    }];
}

- (ZMONCustomLoadingView *)loadingView
{
    if(!_loadingView){
        _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        _loadingView.hidden = YES;
    }
    return  _loadingView;
}

- (UIView *)friendheaderView
{
    if (!_friendheaderView) {
        _friendheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 76)];
        
        CGFloat width2 = (SCREEN_WIDTH-45)/2;
        UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        editView.backgroundColor = RGB_COLOR_String(@"#F7D2F3");
        editView.layer.cornerRadius = 12;
        [_friendheaderView addSubview:editView];
        editView.userInteractionEnabled = YES;
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        [editView addGestureRecognizer:singleTap1];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        editimg.image = [UIImage imageNamed:@"contact_notice"];
        [editView addSubview:editimg];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        labedit.font = [UIFont systemFontOfSize:14];
        labedit.textColor = RGB_COLOR_String(@"#2C3042");
        labedit.text = LangKey(@"notification");
        [editView addSubview:labedit];
        
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        langView.backgroundColor = RGB_COLOR_String(@"E3F4AA");
        langView.layer.cornerRadius = 12;
        [_friendheaderView addSubview:langView];
        langView.userInteractionEnabled = YES;
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(addFriend)];
        [langView addGestureRecognizer:singleTap2];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        langimg.image = [UIImage imageNamed:@"contact_add_friend"];
        [langView addSubview:langimg];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        lablang.font = [UIFont systemFontOfSize:14];
        lablang.textColor = RGB_COLOR_String(@"#2C3042");
        lablang.text = LangKey(@"add_friend_activity_add_friend");
        [langView addSubview:lablang];
    }
    return _friendheaderView;
}
- (UIView *)groupheaderView
{
    if (!_groupheaderView) {
        _groupheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 76)];
        
        CGFloat width2 = (SCREEN_WIDTH-45)/2;
        UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        editView.backgroundColor = RGB_COLOR_String(@"#F7D2F3");
        editView.layer.cornerRadius = 12;
        [_groupheaderView addSubview:editView];
        editView.userInteractionEnabled = YES;
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        [editView addGestureRecognizer:singleTap1];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        editimg.image = [UIImage imageNamed:@"contact_notice"];
        [editView addSubview:editimg];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        labedit.font = [UIFont systemFontOfSize:14];
        labedit.textColor = RGB_COLOR_String(@"#2C3042");
        labedit.text = LangKey(@"notification");
        [editView addSubview:labedit];
        
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        langView.backgroundColor = RGB_COLOR_String(@"#CCECFC");
        langView.layer.cornerRadius = 12;
        [_groupheaderView addSubview:langView];
        langView.userInteractionEnabled = YES;
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(newGroup)];
        [langView addGestureRecognizer:singleTap2];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        langimg.image = [UIImage imageNamed:@"contact_group"];
        [langView addSubview:langimg];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        lablang.font = [UIFont systemFontOfSize:14];
        lablang.textColor = RGB_COLOR_String(@"#2C3042");
        lablang.text = LangKey(@"activity_create_group_name_create_group");
        [langView addSubview:lablang];
    }
    return _groupheaderView;
}

@end
