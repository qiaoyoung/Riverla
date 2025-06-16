//
//  TeamMemberCardViewController.m
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "FFFTeamMemberCardViewController.h"
#import "FFFCommonTableData.h"
#import "FFFCommonTableDelegate.h"
#import "FFFAvatarImageView.h"
#import "FFFTeamCardMemberItem.h"
#import "FFFKitUtil.h"
#import "FFFKitDependency.h"
#import "NeeyoKit.h"
#import "ZMONSetGroupNickNameView.h"
#import "FFFKitColorButtonCell.h"
#import "FFFKitSwitcherCell.h"
#import "FFFKitInfoFetchOption.h"
#import "FFFTeamHelper.h"

@interface FFFTeamMemberCardViewController ()<NIMUserManagerDelegate>

@property (nonatomic, strong) ZMONSetGroupNickNameView *groupNickNameView;

@property (nonatomic,strong) NIMUser *user;

@property (nonatomic,strong) FFFCommonTableDelegate *delegator;

@property (nonatomic,weak) id <FFFTeamMemberListDataSource> dataSource;

@property (nonatomic,strong) NSArray *data;

@property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) NSString *userAcount;

@property (nonatomic, strong) UIView *personView;
@property (strong, nonatomic)  UIButton *btnDelete;
@property (strong, nonatomic)  UIButton *btnChat;
@property (strong, nonatomic)  UISwitch *switchNotice;
@property (strong, nonatomic)  UISwitch *switchBlack;
@property (strong, nonatomic)  UIButton *btnRes;
@property (strong, nonatomic)  UIButton *btnReport;
@property (strong, nonatomic)  UILabel *labRemark;
@property (strong, nonatomic)  UILabel *labTitleRemark;
@property (strong, nonatomic)  UILabel *labTitlenotice;
@property (strong, nonatomic)  UILabel *labTitleBlack;
@property (strong, nonatomic)  UILabel *labTitleResport;
@property (strong, nonatomic)  UIButton *btnAdd;
@property (strong, nonatomic)  UILabel *labSign;
@property (strong, nonatomic)  UILabel *labTitSign;

@end

@implementation FFFTeamMemberCardViewController

- (void)dealloc {
  
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RGB_COLOR_String(@"#F6F7FA");
    
    self.member = [[NIMSDK sharedSDK].teamManager teamMember:self.memberId inTeam:self.teamListManager.team.teamId];
    
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:scrollView];
    scrollView.contentSize = CGSizeMake(SCREEN_WIDTH,900);
    scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    
    [scrollView addSubview:self.userView];
    self.userView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 250);
    
    [scrollView addSubview:self.personView];
    self.personView.frame = CGRectMake(0, 250, SCREEN_WIDTH, 300);
    
//    [self refresh];
    
    [[NIMSDK sharedSDK].userManager addDelegate:self];
    
    NSMutableDictionary *dict = @{}.mutableCopy;
    dict[@"user_id"] = self.memberId;
    [ZCHttpManager getWithUrl:Server_user_detail params:dict isShow:NO success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue <= 0) {
            NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            self.userAcount = [data newStringValueForKey:@"account"];
//            NSString *avatar = [data newStringValueForKey:@"avatar"];
            
            self.accountId.text = self.userAcount;
//            [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:avatar] placeholderImage:[UIImage imageNamed:@"head_default"]];
        }

    } failed:^(id responseObject, NSError *error) {

    }];
}


- (void)backAction{
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)updateTeamNick
{
    [self.view addSubview:self.groupNickNameView];
    [self.groupNickNameView animationShow];
        @weakify(self)
        self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
            @strongify(self)
            [[NIMSDK sharedSDK].teamManager updateUserNick:self.memberId
                                                   newNick:Name
                                                    inTeam:self.teamListManager.team.teamId
                                                completion:^(NSError *error) {
                self.accountNickname.text = Name;
                [self.groupNickNameView animationClose];
            }];
        };
}

- (void)updateMute:(UISwitch *)switcher
{
    BOOL mute = switcher.on;
    [[NIMSDK sharedSDK].teamManager updateMuteState:mute
                                             userId:self.memberId
                                             inTeam:self.teamListManager.team.teamId
                                         completion:^(NSError *error) {
        NSString *msg = nil;
        if (!error) {
            msg = LangKey(@"modify_activity_modify_success");
        }else{
            msg = LangKey(@"group_info_activity_op_failed");
            switcher.on = !mute;
        }
        [self showToastMsg:msg];
     }];
}

-(void)removeMember
{
    __weak typeof(self) weakSelf = self;
    [[NIMSDK sharedSDK].teamManager kickUsers:@[self.memberId]
                                     fromTeam:self.teamListManager.team.teamId
                                   completion:^(NSError *error) {
        [weakSelf.navigationController popViewControllerAnimated:NO];
    }];
}
#pragma mark - Private
- (void)showToastMsg:(NSString *)msg {
    if (msg) {
        [self.view makeToast:msg
                    duration:2.0
                    position:CSToastPositionCenter];
    }
}

#pragma mark - Getter
- (UIView *)userView
{
    if(!_userView){
        _userView = [[UIView alloc] init];
        self.user = [[NIMSDK sharedSDK].userManager userInfo:self.memberId];
        
        UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 250)];
        Bg.image = [UIImage imageNamed:@"personCard_bg"];
        [_userView addSubview:Bg];
        
        UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-345)/2, SCREEN_STATUS_HEIGHT+44+20, 345, 140)];
        userBg.image = [UIImage imageNamed:@"personcart_profile_bg"];
        [_userView addSubview:userBg];
        
        self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake((SCREEN_WIDTH-100)/2, SCREEN_STATUS_HEIGHT+20, 88, 88)];
        [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
        self.accountheadImg.layer.cornerRadius = 44;
        self.accountheadImg.layer.masksToBounds = YES;
        self.accountheadImg.layer.borderWidth = 2;
        self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        [_userView addSubview:self.accountheadImg];
    
        self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+15, SCREEN_WIDTH-30, 20)];
        self.accountNickname.font = [UIFont boldSystemFontOfSize:20];
        self.accountNickname.textColor = [UIColor blackColor];
        self.accountNickname.text = self.user.userInfo.nickName;
        self.accountNickname.textAlignment = NSTextAlignmentCenter;
        [_userView addSubview:self.accountNickname];
        [self.accountNickname sizeToFit];
        self.accountNickname.centerX = self.view.centerX-12;
        
        UIImageView *sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        if (self.user.userInfo.gender == NIMUserGenderMale) {
            sexImg.image = [UIImage imageNamed:@"ic_sex_man"];
        }else if (self.user.userInfo.gender == NIMUserGenderFemale){
            sexImg.image = [UIImage imageNamed:@"ic_sex_woman"];
        }
        [_userView addSubview:sexImg];

        self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, SCREEN_WIDTH-30, 15)];
//        self.accountId.backgroundColor = RGB_COLOR_String(@"#FDF4C9");
        self.accountId.font = [UIFont systemFontOfSize:14];
        self.accountId.textColor = RGB_COLOR_String(@"#2C3042");
        self.accountId.textAlignment = NSTextAlignmentCenter;
        [_userView addSubview:self.accountId];
 
        self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.closeBtn.backgroundColor = [UIColor clearColor];
        [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
        [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        [_userView addSubview:self.closeBtn];
        self.closeBtn.frame = CGRectMake(15, 4+SCREEN_STATUS_HEIGHT, 36, 36);
        
    }
    return _userView;
}

- (UIView *)personView
{
    if(!_personView){
        _personView = [[UIView alloc]init];
        _personView.backgroundColor = [UIColor clearColor];
        _personView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 300);
        
        UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, SCREEN_WIDTH-30, 220)];
        [_personView addSubview:contView];
        contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        contView.layer.cornerRadius = 12;
        contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        contView.layer.shadowOffset = CGSizeMake(0,4);
        contView.layer.shadowOpacity = 1;
        contView.layer.shadowRadius = 16;
        
        UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, SCREEN_WIDTH-60, 50)];
        [contView addSubview:nameView];
        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(updateTeamNick)];
        [nameView addGestureRecognizer:panGesture];
        UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        pic1.image = [UIImage imageNamed:@"ic_card_edit"];
        [nameView addSubview:pic1];
        self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+15, 10, 150, 24)];
        self.labTitleRemark.font = [UIFont systemFontOfSize:14.f];
        self.labTitleRemark.textColor = kTextColor_2c3042;
        self.labTitleRemark.text = LangKey(@"message_remark_name");
        [nameView addSubview:self.labTitleRemark];
        self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60-150-20, 10, 150, 30)];
        self.labRemark.textAlignment = NSTextAlignmentRight;
        self.labRemark.font = [UIFont systemFontOfSize:14.f];
        self.labRemark.textColor = RGB_COLOR_String(@"#8A8E98");
        [nameView addSubview:self.labRemark];
        UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60-12, 18, 12, 12)];
        arrow.image = [UIImage imageNamed:@"icon_me_arrow"];
        [nameView addSubview:arrow];
        UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, SCREEN_WIDTH-60-36, 1)];
        line1.backgroundColor = RGB_COLOR_String(@"#ECECEC");
        [nameView addSubview:line1];
        
        UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, SCREEN_WIDTH-30, 60)];
        [contView addSubview:box2];
        UIImageView *icon2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        icon2.image = [UIImage imageNamed:@"ic_identity_authentication"];
        [box2 addSubview:icon2];
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, 10, 200, 20)];
        lab2.font = [UIFont systemFontOfSize:14];
        lab2.textColor = kTextColor_2c3042;
        lab2.text = LangKey(@"activity_group_member_info2_shenfen");
        [box2 addSubview:lab2];
        UILabel *sublab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, lab2.bottom, 200, 20)];
        sublab2.font = [UIFont systemFontOfSize:12];
        sublab2.textColor = ThemeColor;
        sublab2.text = [FFFTeamHelper memberTypeText:self.member.type];
        [box2 addSubview:sublab2];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60-12, 24, 12, 12)];
        arrow2.image = [UIImage imageNamed:@"icon_me_arrow"];
        [box2 addSubview:arrow2];
        UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, SCREEN_WIDTH-60-36, 1)];
        line2.backgroundColor = RGB_COLOR_String(@"#ECECEC");
        [box2 addSubview:line2];

        UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, box2.bottom, SCREEN_WIDTH-30, 60)];
        [contView addSubview:box3];
        UIImageView *icon3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        icon3.image = [UIImage imageNamed:@"ic_invite"];
        [box3 addSubview:icon3];
        UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, 10, 200, 20)];
        lab3.font = [UIFont systemFontOfSize:14];
        lab3.textColor = kTextColor_2c3042;
        lab3.text = LangKey(@"activity_group_member_info2_inviter");
        [box3 addSubview:lab3];
        UILabel *sublab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, lab3.bottom, 200, 20)];
        sublab3.font = [UIFont systemFontOfSize:12];
        sublab3.textColor = ThemeColor;
        sublab3.text = _member.inviterAccid ? (_member.inviterAccid.length ? _member.inviterAccid : _member.userId) : @"本地不存在".nim_localized;
        [box3 addSubview:sublab3];
        UIImageView *arrow3 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60-12, 24, 12, 12)];
        arrow3.image = [UIImage imageNamed:@"icon_me_arrow"];
        [box3 addSubview:arrow3];
        UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, SCREEN_WIDTH-60-36, 1)];
        line3.backgroundColor = RGB_COLOR_String(@"#ECECEC");
        [box3 addSubview:line3];

        UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, SCREEN_WIDTH-30, 50)];
        [contView addSubview:box4];
        UIImageView *icon4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        icon4.image = [UIImage imageNamed:@"ic_group_lists"];
        [box4 addSubview:icon4];
        UILabel *lab4 = [[UILabel alloc] initWithFrame:CGRectMake(icon4.right+15, 10, 200, 30)];
        lab4.font = [UIFont systemFontOfSize:14];
        lab4.textColor = kTextColor_2c3042;
        lab4.text = LangKey(@"group_member_info_activity_mute_msg");
        [box4 addSubview:lab4];
        UISwitch *pushSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-60-51, 10, 51, 30)];
        [pushSwitch setOnTintColor: ThemeColor];
        [pushSwitch addTarget:self action:@selector(updateMute:) forControlEvents:UIControlEventValueChanged];
        pushSwitch.on = _member.isMuted;
        [box4 addSubview:pushSwitch];
        

        BOOL canEdit = [FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
        if(canEdit){
            self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
            self.btnDelete.frame = CGRectMake(15, contView.bottom+15, SCREEN_WIDTH-30, 48);
            self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
            [self.btnDelete setTitleColor:RGB_COLOR_String(@"#FF483D") forState:UIControlStateNormal];
            [self.btnDelete setTitle:@"移出本群".nim_localized forState:UIControlStateNormal];
            [self.btnDelete addTarget:self action:@selector(removeMember) forControlEvents:UIControlEventTouchUpInside];
            self.btnDelete.backgroundColor = RGB_COLOR_String(@"#ffffff");
            self.btnDelete.layer.borderWidth = 1;
            self.btnDelete.layer.borderColor = RGB_COLOR_String(@"#EEEEEE").CGColor;
            self.btnDelete.layer.cornerRadius = 24;
            [_personView addSubview:self.btnDelete];
        }
        
       
    }
    return _personView;
}


- (ZMONSetGroupNickNameView *)groupNickNameView{
    if(!_groupNickNameView){
        _groupNickNameView = [[ZMONSetGroupNickNameView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    }
    return _groupNickNameView;
}



@end


