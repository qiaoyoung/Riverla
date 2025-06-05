//
//  TeamAnnouncementListViewController.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "FFFTeamAnnouncementListViewController.h"
#import "FFFUsrInfoData.h"
#import "FFFCreateTeamAnnouncement.h"
#import "FFFTeamAnnouncementListCell.h"
#import "FFFKitDependency.h"
#import "FFFKitProgressHUD.h"
#import "FFFGlobalMacro.h"
#import "LEEAlert.h"
#import "LEEAlertHelper.h"
#import "ZMONAlartView.h"

@interface FFFTeamAnnouncementListViewController () <UITableViewDelegate,
                                                     UITableViewDataSource,
                                                     NTESCreateTeamAnnouncementDelegate>

@property (nonatomic,strong) NSMutableArray *announcements;;
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NIMTeamAnnouncementListOption *option;

@property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *box;

@property (nonatomic, strong) ZMONAlartView *groupAlartView;

@end

@implementation FFFTeamAnnouncementListViewController

- (instancetype)initWithOption:(NIMTeamAnnouncementListOption *)option {
    if (self = [super initWithNibName:nil bundle:nil]) {
        self.option = option;
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];
}

- (void)backAction{
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = CommonBGView_Color;

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
    labtitle.text = LangKey(@"activity_group_info_group_toast");//群公告
    [bgView addSubview:labtitle];
    
    
    [self.view addSubview:self.defView];
    [self.view addSubview:self.box];
    self.box.frame = CGRectMake(0, SCREEN_HEIGHT-64-SCREEN_BOTTOM_HEIGHT, SCREEN_WIDTH, 64);
    
    [self.view addSubview:self.tableView];
}

- (void)setOption:(NIMTeamAnnouncementListOption *)option {
    _option = option;
    [self updateAnnouncementsWithContent:option.announcement];
}

- (void)updateAnnouncementsWithContent:(NSString *)content {
    if (content) {
        NSData *contentData = [content dataUsingEncoding:NSUTF8StringEncoding];
        NSArray *datas = [NSJSONSerialization JSONObjectWithData:contentData options:0 error:0];
        _announcements = [NSMutableArray arrayWithArray:datas];
    } else {
        _announcements = nil;
    }
    if(_announcements == nil){
        self.tableView.hidden = YES;
        self.defView.hidden = NO;
        self.box.hidden = YES;
    }else{
        self.tableView.hidden = NO;
        self.defView.hidden = YES;
        if(_option.canCreateAnnouncement) {
            self.box.hidden = NO;
        }
    }
}

- (void)onCreateAnnouncement:(id)sender {
    FFFCreateTeamAnnouncement *vc = [[FFFCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)onEditAnnouncement:(id)sender {
    
    NSDictionary *announcement = _announcements.lastObject;
    
    FFFCreateTeamAnnouncement *vc = [[FFFCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    vc.delegate = self;
    vc.defaultTitle = [announcement objectForKey:@"title"] ?: @"";
    vc.defaultContent = [announcement objectForKey:@"content"] ?: @"";
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)onCleanAnnouncement:(id)sender {

    [self.view addSubview:self.groupAlartView];
    [self.groupAlartView reloadWithTitlename:LangKey(@"sure_to_clear")];
    [self.groupAlartView animationShow];
        @weakify(self)
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @strongify(self)
            // 删除点击事件Block
            [self cleanTeamAnnouncement];
            [self.groupAlartView animationClose];
        };
    
//    __weak typeof(self) wself = self;
//
//    [LEEAlert alert].config
//        .LeeAddTitle(^(UILabel *label) {
//            label.text = LangKey(@"sure_to_clear");
//            label.textColor = [UIColor grayColor];
//        })
//        .LeeAddAction(^(LEEAction *action) {
//            
//            action.type = LEEActionTypeCancel;
//            action.title = LangKey(@"contact_tag_fragment_cancel");//@"取消"
//            action.titleColor = [UIColor grayColor];
//            action.backgroundColor = [UIColor whiteColor];
//            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
//            action.borderWidth = 1.0f;
//            action.borderColor = action.backgroundHighlightColor;
//            action.clickBlock = ^{
//                
//                // 取消点击事件Block
//            };
//        })
//        .LeeAddAction(^(LEEAction *action) {
//            
//            action.type = LEEActionTypeDefault;
//            action.title = LangKey(@"contact_tag_fragment_sure"); //@"确定";
//            action.titleColor = [UIColor redColor];
//            action.backgroundColor = [UIColor whiteColor];
//            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
//            action.borderWidth = 1.0f;
//            action.borderColor = action.backgroundHighlightColor;
//            action.clickBlock = ^{
//                // 删除点击事件Block
//                [wself cleanTeamAnnouncement];
//            };
//        })
//        .LeeHeaderColor([UIColor whiteColor])
//        .LeeShow();
}

- (void)cleanTeamAnnouncement
{
    __weak typeof(self) wself = self;
    [FFFKitProgressHUD show];
//    NSDictionary *announcement = @{@"title": @"",
//                                   @"content": @"",
//                                   @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
//                                   @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};
//    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
//    self.option.team.announcement = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:@"" teamId:wself.option.team.teamId completion:^(NSError *error) {
        [FFFKitProgressHUD dismiss];
        if(!error && wself) {
            [wself.view makeToast:LangKey(@"Clean_success")];// @"清理成功"
            wself.announcements = nil;
//            [wself.tableView reloadData];
            
            self.tableView.hidden = YES;
            self.defView.hidden = NO;
            self.box.hidden = YES;
        }
    }];
}


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _announcements.lastObject ? 1 : 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *announcement = _announcements.lastObject;
    NSString *content = [announcement objectForKey:@"content"];
    
    return [FFFTeamAnnouncementListCell cellHeight:content];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *announcement = _announcements.lastObject;
    FFFTeamAnnouncementListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FFFTeamAnnouncementListCell"];
    if (!cell) {
        cell = [[FFFTeamAnnouncementListCell alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"FFFTeamAnnouncementListCell"];
    }
    [cell refreshData:announcement nick:_option.nick];
//
//    FFFTeamAnnouncementListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FFFTeamAnnouncementListCell"];
//    [cell refreshData:announcement nick:_option.nick];
    return cell;
}

#pragma mark - CreateTeamAnnouncementDelegate
- (void)createTeamAnnouncementCompleteWithTitle:(NSString *)title content:(NSString *)content {
    NSString *ret = nil;
    NSDictionary *announcement = @{@"title": title ?: @"",
                                   @"content": content ?: @"",
                                   @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
                                   @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};

    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
    ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    [FFFKitProgressHUD show];
    if ([_delegate respondsToSelector:@selector(didUpdateAnnouncement:completion:)]) {
        __weak typeof(self) wself = self;
        [_delegate didUpdateAnnouncement:ret completion:^(NSError *error) {
            [FFFKitProgressHUD dismiss];
            if(!error) {
                [wself.view makeToast:LangKey(@"team_create_helper_create_success")];
                [wself updateAnnouncementsWithContent:ret];
                [wself.tableView reloadData];
            } else {
                [wself.view makeToast:LangKey(@"team_create_helper_create_failed")];
            }
        }];
    }
}

#pragma mark - Getter
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+15, SCREEN_WIDTH-30, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-15-64-SCREEN_BOTTOM_HEIGHT) style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor clearColor];
//        _tableView.rowHeight = SCREEN_HEIGHT;
        [_tableView setTableFooterView:[UIView new]];
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

- (UIView *)defView{
    if(!_defView){
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT)];
        _defView.hidden = YES;
        
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-213)/2, 150, 213, 148)];
        defImg.image = [UIImage imageNamed:@"ic_none_announcement"];
        [_defView addSubview:defImg];
        
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, SCREEN_WIDTH, 20)];
        emptyTipLabel.textColor = TextColor_3;
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        [_defView addSubview:emptyTipLabel];
        emptyTipLabel.text = LangKey(@"No_group_announcement");
        
        if(_option.canCreateAnnouncement) {
            UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
            emptyButton.frame = CGRectMake(15, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-44-SCREEN_BOTTOM_HEIGHT, SCREEN_WIDTH-30, 44);
            emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
            [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [emptyButton setTitle:LangKey(@"Create_group_announcement") forState:UIControlStateNormal];
            [emptyButton setImage:[UIImage imageNamed:@"icon_add_w"] forState:UIControlStateNormal];
            [emptyButton addTarget:self action:@selector(onCreateAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
            [_defView addSubview:emptyButton];
            emptyButton.backgroundColor = ThemeColor;
            emptyButton.layer.cornerRadius = 22;
            [emptyButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        }
        
    }
    return _defView;
}

- (UIView *)box
{
    if(!_box){
        _box = [[UIView alloc]init];
//        _box.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
////        [self.view addSubview:_box];
//        _box.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
//        _box.layer.shadowOffset = CGSizeMake(0,0);
//        _box.layer.shadowOpacity = 1;
//        _box.layer.shadowRadius = 12;
        _box.hidden = YES;
        
        CGFloat width = (SCREEN_WIDTH-45)/2;
        UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        closeBtn.frame = CGRectMake(15, 10, width, 44);
        [closeBtn addTarget:self action:@selector(onEditAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
       [closeBtn setImage:[UIImage imageNamed:@"add_noticess"] forState:UIControlStateNormal];
        closeBtn.backgroundColor = ThemeColor;
        closeBtn.layer.cornerRadius = 22;
        closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [closeBtn setTitle:LangKey(@"user_profile_avtivity_edit") forState:UIControlStateNormal];
        [closeBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [_box addSubview:closeBtn];


        UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        sureBtn.frame = CGRectMake(width+30, 10, width, 44);
        [sureBtn addTarget:self action:@selector(onCleanAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
        [sureBtn setImage:[UIImage imageNamed:@"clear_notice"] forState:UIControlStateNormal];
        sureBtn.backgroundColor = RGB_COLOR_String(@"#FF483D");
        sureBtn.layer.cornerRadius = 22;
        sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [sureBtn setTitle:LangKey(@"delete") forState:UIControlStateNormal];
        [sureBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [_box addSubview:sureBtn];
    }
    return _box;
}

- (ZMONAlartView *)groupAlartView{
    if(!_groupAlartView){
        _groupAlartView = [[ZMONAlartView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    }
    return _groupAlartView;
}


@end

@implementation NIMTeamAnnouncementListOption
@end
