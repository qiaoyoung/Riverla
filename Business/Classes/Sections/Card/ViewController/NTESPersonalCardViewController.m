//
//  NTESPersonCardViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "NTESPersonalCardViewController.h"
#import "FFFCommonTableDelegate.h"
#import "FFFCommonTableData.h"
#import "UIView+Toast.h"
#import "SVProgressHUD.h"
#import "NTESColorButtonCell.h"
#import "UIView+NTES.h"
#import "NTESSessionViewController.h"
#import "NTESBundleSetting.h"
#import "UIAlertView+NTESBlock.h"
#import "NTESUserUtil.h"
#import "HMDataPicker.h"
#import "FFFRemarksView.h"
#import "NTESOpinionBackViewController.h"
#import "ZMONReportUserView.h"
#import "ZMONReportNextView.h"
#import "ZMONReportBlackView.h"
#import "ZMONReportDeleteView.h"
#import "NTESUserQRCodeViewController.h"
#import "CCCBlackListViewController.h"
#import "NTESSessionMsgConverter.h"
#import "NTESShareCardAttachment.h"
#import "ZOMNForwardViewController.h"
#import "CCCContactsViewController.h"
#import "FFFContactSelectViewController.h"
#import "FFFKitFileLocationHelper.h"


@interface NTESPersonalCardViewController ()<NIMUserManagerDelegate,HMDataPickerDelegate,NTESReportDelegate,NTESReportNextDelegate>

@property (nonatomic,strong) FFFCommonTableDelegate *delegator;

@property (nonatomic,copy  ) NSArray *data;

@property (nonatomic,copy) NSString *userId;
@property (nonatomic,strong) NIMUser *user;

@property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UIView *accountView;
@property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) UIImageView *sexImg;
@property (nonatomic, strong) NSString *userAcount;

@property (nonatomic, strong) UIButton *messageBtn;
@property (nonatomic, strong) UIButton *groupBtn;

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

@property (nonatomic, strong) ZMONReportUserView *reprotView;
@property (nonatomic, strong) FFFRemarksView *changeRemarksView;
@property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) ZMONReportNextView *reprotNextView;
@property (nonatomic, strong) ZMONReportBlackView *reprotBlackView;
@property (nonatomic, strong) ZMONReportDeleteView *reprotDeleteView;

@end

@implementation NTESPersonalCardViewController

- (instancetype)initWithUserId:(NSString *)userId{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        _userId = userId;
    }
    return self;
}

- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self setUpNav];
    self.view.backgroundColor = RGB_COLOR_String(@"#F6F7FA");
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:scrollView];
    scrollView.contentSize = CGSizeMake(SCREEN_WIDTH,900);
    scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    
    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    if(isMyFriend){
        [scrollView addSubview:self.userView];
        self.userView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 310);
    }else{
        [scrollView addSubview:self.userView];
        self.userView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 256);
    }
    
    [scrollView addSubview:self.personView];
    self.personView.frame = CGRectMake(0, self.userView.bottom, SCREEN_WIDTH, 353);
    
    [self.view addSubview:self.loadingView];
    self.loadingView.hidden = YES;
    
   
    
    [[NIMSDK sharedSDK].userManager addDelegate:self];
    
    NSMutableDictionary *dict = @{}.mutableCopy;
    dict[@"user_id"] = self.userId;
    [ZCHttpManager getWithUrl:Server_user_detail params:dict isShow:NO success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue <= 0) {
            NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            self.userAcount = [data newStringValueForKey:@"account"];
            NSString *avatar = [data newStringValueForKey:@"avatar"];
            
            NSString *str = [NSString stringWithFormat:@"%@:%@",LangKey(@"register_avtivity_account"),self.userAcount];
            self.accountId.text = str;
//            [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:avatar] placeholderImage:[UIImage imageNamed:@"head_default"]];
            
            self.accountView.hidden = NO;
            CGSize size = [str sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14]}];
            self.accountView.frame = CGRectMake((SCREEN_WIDTH-size.width-20)/2, self.accountNickname.bottom+10, size.width+20, 24);
            self.accountId.frame = CGRectMake(10, 0, size.width, 24);
        }

    } failed:^(id responseObject, NSError *error) {

    }];
    
    [self refresh];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];
}

- (void)refresh{
   
        @weakify(self)
            [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                if (users.count) {
                    @strongify(self);
                    self.user = users.firstObject;
                    
                    [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                    self.accountNickname.text = self.user.userInfo.nickName;
                    self.accountNickname.frame = CGRectMake(15, self.accountheadImg.bottom+15, SCREEN_WIDTH-30, 20);
                    [self.accountNickname sizeToFit];
                    self.accountNickname.centerX = self.view.centerX-12;
                    
                    self.sexImg.frame = CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14);
                    if (self.user.userInfo.gender == NIMUserGenderMale) {
                        _sexImg.image = [UIImage imageNamed:@"ic_sex_man"];
                    }else if (self.user.userInfo.gender == NIMUserGenderFemale){
                        _sexImg.image = [UIImage imageNamed:@"ic_sex_woman"];
                    }
                    
                    BOOL isMe          = [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
                    BOOL isMyFriend    = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
                    BOOL isInBlackList = [[NIMSDK sharedSDK].userManager isUserInBlackList:self.userId];
                    BOOL needNotify    = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.userId];
                    
                    if(isMyFriend){
                        self.btnAdd.hidden = YES;
                        self.btnDelete.hidden = NO;
                    }else{
                        self.btnAdd.hidden = NO;
                        self.btnDelete.hidden = YES;
                    }
                    
                    if (isMe) {
                        self.btnAdd.hidden = YES;
                        self.btnDelete.hidden = YES;
                    }
                    
                    self.switchBlack.on = isInBlackList;
                    self.switchNotice.on = needNotify;
                    
                    self.labRemark.text = self.user.alias.length ? self.user.alias : LangKey(@"未设置");
                    self.labSign.text = self.user.userInfo.sign.length ? self.user.userInfo.sign : LangKey(@"未设置");
                    
                    if(isMyFriend){
                        self.messageBtn.hidden = NO;
                        self.groupBtn.hidden = NO;
                        self.userView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 310);
                    }else{
                        self.messageBtn.hidden = YES;
                        self.groupBtn.hidden = YES;
                        self.userView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 256);
                    }
                    self.personView.frame = CGRectMake(0, self.userView.bottom, SCREEN_WIDTH, 353);
                    
                }
            }];
    
    
   
}

- (void)backAction{
    [self.navigationController popViewControllerAnimated:NO];
}

#pragma mark - Action


-(void)onActionGroup:(id)sender{
    
//    [SVProgressHUD show];
    [self.loadingView animationShow];
    [ZCHttpManager getWithUrl:Server_group_getgroups params:nil isShow:NO success:^(id responseObject) {
        [self.loadingView animationClose];
//        [SVProgressHUD dismissWithCompletion:^{
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSString *code = [resultDict newStringValueForKey:@"code"];
            if (code.integerValue == 0) {
                NSArray *dataArray = [resultDict arrayValueForKey:@"data"];
                NSDictionary *dataDict = [NSDictionary dictionaryWithObject:dataArray forKey:@"item_data"];
                HMDataPicker *dataPick = [[HMDataPicker alloc] initWithDelegate:self dataDict:dataDict selectedDict:nil jsonNode:@"name"];
                dataPick.tag = 500;
                [dataPick show];
            }
//        }];
    } failed:^(id responseObject, NSError *error) {
//        [SVProgressHUD dismiss];
        [self.loadingView animationClose];
        [self.view makeToast:LangKey(@"add_friend_request_fail")
                    duration:2.0
                    position:CSToastPositionCenter];
    }];
}



#pragma mark - HMDataPickerDelegate
- (void)dataPicker:(HMDataPicker *)dataPicker selectedDict:(NSDictionary *)selectedDict{
    _groupDict = selectedDict;
    [self refresh];
    [self setingGroup];//设置分组

}

- (void)onActionEditAlias:(id)sender{
//    NTESAliasSettingViewController *vc = [[NTESAliasSettingViewController alloc] initWithUserId:self.userId];
//    [self.navigationController pushViewController:vc animated:YES];
}

- (void)onActionEditMyInfo:(id)sender{
//    NTESUserInfoSettingViewController *vc = [[NTESUserInfoSettingViewController alloc] initWithNibName:nil bundle:nil];
//    [self.navigationController pushViewController:vc animated:YES];
}

- (void)onActionBlackListValueChange:(id)sender{
    
    [self onActionBlackListValueChange_1:sender];//SDK拉黑
//    [self requestBlackChanged:sender];
}
////拉黑信息同步
-(void)requestBlackChanged:(id)sender{
    UISwitch *switcher = sender;
    
    __weak typeof(self) wself = self;

    if (switcher.on) {
        NSMutableDictionary *dict = @{}.mutableCopy;
        dict[@"mobile"] = self.userId;
        dict[@"type"] =  kConstant_1;//拉入黑名单
        [wself refresh];

    }else{
        NSMutableDictionary *dict = @{}.mutableCopy;
        dict[@"mobile"] = self.userId;
        dict[@"type"] =  kConstant_0;//解除黑名单
        [wself refresh];

    }
}

- (void)onActionBlackListValueChange_1:(id)sender{
    UISwitch *switcher = sender;
//    [SVProgressHUD show];
    [self.loadingView animationShow];
    __weak typeof(self) wself = self;
    if (switcher.on) {
        [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {
//            [SVProgressHUD dismiss];
            [self.loadingView animationClose];
            if (!error) {
                [wself.view makeToast:LangKey(@"group_chat_avatar_activity_add_black_success") duration:2.0f position:CSToastPositionCenter];
            }else{
                [wself.view makeToast:LangKey(@"black_list_activity_add_black_failed") duration:2.0f position:CSToastPositionCenter];
                [wself refresh];
            }
        }];
    }else{
        [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:self.userId completion:^(NSError *error) {
//            [SVProgressHUD dismiss];
            [self.loadingView animationClose];
            if (!error) {
                [wself.view makeToast:LangKey(@"black_list_activity_remove_black") duration:2.0f position:CSToastPositionCenter];
            }else{
                [wself.view makeToast:LangKey(@"black_list_activity_remove_black_failed") duration:2.0f position:CSToastPositionCenter];
                [wself refresh];
            }
        }];
    }
}

- (void)onActionNeedNotifyValueChange:(id)sender{
    UISwitch *switcher = sender;
//    [SVProgressHUD show];
    [self.loadingView animationShow];
    __weak typeof(self) wself = self;
    [[NIMSDK sharedSDK].userManager updateNotifyState:switcher.on forUser:self.userId completion:^(NSError *error) {
//        [SVProgressHUD dismiss];
        [self.loadingView animationClose];
        if (error) {
            [wself.view makeToast:LangKey(@"group_info_activity_op_failed") duration:2.0f position:CSToastPositionCenter];
            [wself refresh];
        }
    }];
}


- (void)btnchat
{
    UINavigationController *nav = self.navigationController;
    NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    [nav pushViewController:vc animated:YES];
    UIViewController *root = nav.viewControllers[0];
    nav.viewControllers = @[root,vc];
}

- (void)btnGroupchat
{
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @weakify(self);
    [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
        @strongify(self);
        
//        [SVProgressHUD show];
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
                }else{
                    [self.view makeToast:LangKey(@"team_create_helper_create_failed") duration:2.0 position:CSToastPositionCenter];
                }
            }];
            
            
     
           
        }];
        
    }];

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
    config.alreadySelectedMemberId = @[self.userId];
    //需要多选
    config.needMutiSelected = YES;
    config.showSelectHeaderview = YES;
    //初始化联系人选择器
    FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    //回调处理
    vc.finshBlock = block;
    [vc show];
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


//加好友
-(void)addFriend{
    
    if (_teamSetingConfig != nil) {
        NSString *canAddFriend = [_teamSetingConfig newStringValueForKey:@"canAddFriend"];
        if (canAddFriend.integerValue <= 0) {
            [SVProgressHUD showMessage:LangKey(@"please_contact_your_administrator")];
            return;
        }
    }
    
    [self sendAddFriendRequest];//添加好友

}

-(void)sendAddFriendRequest{
    NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    request.userId = self.userId;
    request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationRequest;
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    
    NSString *contact_tag_fragment_add_success = LangKey(@"contact_tag_fragment_add_success");//@"添加成功"
    NSString *request_successful = LangKey(@"request_successful");//@"请求成功"
    NSString *add_friend_add_fail = LangKey(@"add_friend_add_fail");//@"添加失败"
    NSString *add_friend_request_fail = LangKey(@"add_friend_request_fail");//@"请求失败"
    NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    NSString *failedText =  request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;
    
    __weak typeof(self) wself = self;
//    [SVProgressHUD show];
    [self.loadingView animationShow];
    
    [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
//        [SVProgressHUD dismiss];
        [self.loadingView animationClose];
        if (!error) {
            [wself.view makeToast:successText
                         duration:2.0f
                         position:CSToastPositionCenter];
            [wself refresh];
        }else{
            [wself.view makeToast:failedText
                         duration:2.0f
                         position:CSToastPositionCenter];
        }
    }];
}

//分组网络请求
-(void)setingGroup{
    
    BOOL isMyFriend    = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];

    NSMutableDictionary *dict = @{}.mutableCopy;
    dict[@"group_id"] = [_groupDict newStringValueForKey:@"id"];
    dict[@"friend_ids"] = self.user.userId;
    dict[@"isfrend"] = isMyFriend?kConstant_1:kConstant_0;
    
    [ZCHttpManager getWithUrl:Server_group_addgroupuser params:dict isShow:YES success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSLog(@"-----%@",resultDict);
    } failed:^(id responseObject, NSError *error) {
        
    }];
    
}

- (void)deleteFriend{
    __weak typeof(self) wself = self;//@"删除好友后，将同时解除双方的好友关系"
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:LangKey(@"user_profile_avtivity_remove_friend") message:LangKey(@"user_profile_avtivity_remove_friend_tip") delegate:nil cancelButtonTitle:LangKey(@"contact_tag_fragment_cancel") otherButtonTitles:LangKey(@"contact_tag_fragment_sure"), nil];
    [alert showAlertWithCompletionHandler:^(NSInteger index) {
        if (index == 1) {
//            [SVProgressHUD show];
            [self.loadingView animationShow];

            
            
            [[NIMSDK sharedSDK].userManager deleteFriend:wself.userId
                                             removeAlias:[[NTESBundleSetting sharedConfig] autoRemoveAlias]
                                              completion:^(NSError *error) {
//                [SVProgressHUD dismiss];
                [self.loadingView animationClose];
                if (!error) {
                    [wself.view makeToast:LangKey(@"contact_tag_fragment_delete_success") duration:2.0f position:CSToastPositionCenter];
                    [wself refresh];
                    [self removeNIMRecentSession];
                }else{
                    [wself.view makeToast:LangKey(@"friend_delete_fail") duration:2.0f position:CSToastPositionCenter];
                }
            }];
        }
    }];
}

- (void)removeNIMRecentSession
{
    NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    id<NIMConversationManager> manager = [[NIMSDK sharedSDK] conversationManager];
    [manager deleteRecentSession:recent];
}

#pragma mark - NIMUserManagerDelegate

- (void)onUserInfoChanged:(NIMUser *)user
{
    if ([user.userId isEqualToString:self.userId]) {
        [self refresh];
    }
}

- (void)onFriendChanged:(NIMUser *)user{
    if ([user.userId isEqualToString:self.userId]) {
        [self refresh];
    }
}

- (void)onBlackListChanged{
    [self refresh];
}

- (void)onMuteListChanged
{
    [self refresh];
}

- (void)onActionEditAlias{
    
    [self.view addSubview:self.changeRemarksView];
    [ self.changeRemarksView reloadWithNickname: self.user];
    [self.changeRemarksView animationShow];
}

- (void)reportsAction {
    [self.view addSubview:self.reprotView];
    [self.reprotView animationShow];
//    NTESOpinionBackViewController *vc = [[NTESOpinionBackViewController alloc]init];
//    [self.navigationController pushViewController:vc animated:YES];
}

- (void)handleQrbtn
{
    NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    vc.userID = _userId;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)btngotoBlackList
{
    CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)shareCardAction
{
    NTESShareCardAttachment *attachment = [[NTESShareCardAttachment alloc] init];
    attachment.title = self.user.userInfo.nickName;
    attachment.type = @"0";
    attachment.personCardId = self.userId;
    attachment.content = self.userAcount;
    NIMMessage *message = [NTESSessionMsgConverter msgWithShareCard:attachment];
    
    ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    vc.isCard = YES;
    vc.message = message;
    [self.navigationController pushViewController:vc animated:YES];

}


#pragma mark - Private
- (UIView *)userView
{
    if(!_userView){
        _userView = [[UIView alloc] init];
        self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];
//        _userView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"personCard_bg"]];
        
        UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 250)];
        Bg.image = [UIImage imageNamed:@"personCard_bg"];
        [_userView addSubview:Bg];
        
        UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(15, SCREEN_STATUS_HEIGHT+44+20, SCREEN_WIDTH-30, 140)];
        userBg.image = [UIImage imageNamed:@"personcart_profile_bg"];
        userBg.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        userBg.layer.shadowOffset = CGSizeMake(0,4);
        userBg.layer.shadowOpacity = 1;
        userBg.layer.shadowRadius = 16;
        [_userView addSubview:userBg];
        
        UIButton *QrBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        QrBtn.frame = CGRectMake(SCREEN_WIDTH-30-36, SCREEN_STATUS_HEIGHT+44+35, 36, 36);
//        QrBtn.backgroundColor = [UIColor whiteColor];
        [QrBtn setImage:[UIImage imageNamed:@"his_qr"] forState:UIControlStateNormal];
        [QrBtn addTarget:self action:@selector(handleQrbtn) forControlEvents:UIControlEventTouchUpInside];
        QrBtn.layer.cornerRadius = 8;
        [_userView addSubview:QrBtn];
        
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
        
        _sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        if (self.user.userInfo.gender == NIMUserGenderMale) {
            _sexImg.image = [UIImage imageNamed:@"ic_sex_man"];
        }else if (self.user.userInfo.gender == NIMUserGenderFemale){
            _sexImg.image = [UIImage imageNamed:@"ic_sex_woman"];
        }
        [_userView addSubview:_sexImg];
        
        _accountView = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-156)/2, self.accountNickname.bottom+10, 156, 24)];
        _accountView.backgroundColor = RGB_COLOR_String(@"#FDF4C9");
        _accountView.layer.cornerRadius = 12;
        [_userView addSubview:_accountView];
        _accountView.hidden = YES;
        
        self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 156, 24)];
//        self.accountId.backgroundColor = RGB_COLOR_String(@"#FDF4C9");
        self.accountId.font = [UIFont systemFontOfSize:14];
        self.accountId.textColor = RGB_COLOR_String(@"#2C3042");
        self.accountId.textAlignment = NSTextAlignmentCenter;
        [_accountView addSubview:self.accountId];
        
        BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
        if(isMyFriend){
            CGFloat width = (SCREEN_WIDTH-15*3)/2;
            _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            _messageBtn.frame = CGRectMake(15, userBg.bottom+10, width, 44);
            _messageBtn.backgroundColor = ThemeColor;
            [_messageBtn addTarget:self action:@selector(btnchat) forControlEvents:UIControlEventTouchUpInside];
            _messageBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            [_messageBtn setTitleColor:RGB_COLOR_String(@"#ffffff") forState:UIControlStateNormal];
            [_messageBtn setTitle:LangKey(@"message_info_activity_message_info") forState:UIControlStateNormal];
            _messageBtn.layer.cornerRadius = 22;
            [_userView addSubview:_messageBtn];
            
            _groupBtn= [UIButton buttonWithType:UIButtonTypeCustom];
            _groupBtn.frame = CGRectMake(30+width, userBg.bottom+10, width, 44);
            _groupBtn.backgroundColor = ThemeColor;
            [_groupBtn addTarget:self action:@selector(btnGroupchat) forControlEvents:UIControlEventTouchUpInside];
            _groupBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            [_groupBtn setTitleColor:RGB_COLOR_String(@"#ffffff") forState:UIControlStateNormal];
            [_groupBtn setTitle:LangKey(@"Group_chat") forState:UIControlStateNormal];
            _groupBtn.layer.cornerRadius = 22;
            [_userView addSubview:_groupBtn];
        }
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
        _personView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 353);
        
        UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, SCREEN_WIDTH-30, 112)];
        [_personView addSubview:contView];
        contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        contView.layer.cornerRadius = 12;
        contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        contView.layer.shadowOffset = CGSizeMake(0,4);
        contView.layer.shadowOpacity = 1;
        contView.layer.shadowRadius = 16;
        
        UIView *noticeView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, SCREEN_WIDTH-60, 50)];
        [contView addSubview:noticeView];
        UIImageView *pic3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        pic3.image = [UIImage imageNamed:@"ic_card_notice"];
        [noticeView addSubview:pic3];
        self.labTitlenotice = [[UILabel alloc]initWithFrame:CGRectMake(pic3.right+12, 10, 250, 28)];
        self.labTitlenotice.font = [UIFont systemFontOfSize:16.f];
        self.labTitlenotice.textColor = [UIColor blackColor];
        self.labTitlenotice.text = LangKey(@"message_info_activity_msg_notice");
        [noticeView addSubview:self.labTitlenotice];
        self.switchNotice = [[UISwitch alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60-51, 8, 33, 20)];
        [self.switchNotice addTarget:self action:@selector(onActionNeedNotifyValueChange:) forControlEvents:UIControlEventValueChanged];
        self.switchNotice.onTintColor = ThemeColor;
        [noticeView addSubview:self.switchNotice];
        UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 47, SCREEN_WIDTH-60-36, 1)];
        line3.backgroundColor = RGB_COLOR_String(@"#ECECEC");
        [noticeView addSubview:line3];
        
        UIView *blackView = [[UIView alloc]initWithFrame:CGRectMake(15, noticeView.bottom, SCREEN_WIDTH-60, 62)];
        [contView addSubview:blackView];
        UIImageView *pic4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        pic4.image = [UIImage imageNamed:@"ic_card_black"];
        [blackView addSubview:pic4];
        self.labTitleBlack = [[UILabel alloc]initWithFrame:CGRectMake(pic4.right+12, 10, 250, 22)];
        self.labTitleBlack.font = [UIFont systemFontOfSize:16.f];
        self.labTitleBlack.textColor = [UIColor blackColor];
        self.labTitleBlack.text = LangKey(@"func_viewholder_black");
        [blackView addSubview:self.labTitleBlack];

        UIButton *blackBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        blackBtn.frame = CGRectMake(pic4.right+12, self.labTitleBlack.bottom, 250, 20);
        [blackBtn addTarget:self action:@selector(btngotoBlackList) forControlEvents:UIControlEventTouchUpInside];
        blackBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [blackBtn setTitleColor:ThemeColor forState:UIControlStateNormal];
        [blackBtn setTitle:LangKey(@"gotoBlacklist") forState:UIControlStateNormal];
        [blackView addSubview:blackBtn];
        blackBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        
        self.switchBlack = [[UISwitch alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60-51, 14, 33, 20)];
        [self.switchBlack addTarget:self action:@selector(onActionBlackListValueChange:) forControlEvents:UIControlEventValueChanged];
        self.switchBlack.onTintColor = ThemeColor;
        [blackView addSubview:self.switchBlack];
        
//        UIView *line4 = [[UIView alloc]initWithFrame:CGRectMake(36, 61, SCREEN_WIDTH-60-36, 1)];
//        line4.backgroundColor = RGB_COLOR_String(@"#ECECEC");
//        [blackView addSubview:line4];
//        
//        UIView *shareCartView = [[UIView alloc]initWithFrame:CGRectMake(15, blackView.bottom, SCREEN_WIDTH-60, 50)];
//        [contView addSubview:shareCartView];
//        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(shareCardAction)];
//        [shareCartView addGestureRecognizer:tapGesture];
//        UIImageView *pic5 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
//        pic5.image = [UIImage imageNamed:@"ic_card_share"];
//        [shareCartView addSubview:pic5];
//        UILabel *labTitleShare = [[UILabel alloc]initWithFrame:CGRectMake(pic5.right+12, 10, 250, 28)];
//        labTitleShare.font = [UIFont systemFontOfSize:16.f];
//        labTitleShare.textColor = [UIColor blackColor];
//        labTitleShare.text = LangKey(@"send_card");
//        [shareCartView addSubview:labTitleShare];
//        UIImageView *arrow5 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60-12, 18, 12, 12)];
//        arrow5.image = [UIImage imageNamed:@"icon_me_arrow"];
//        [shareCartView addSubview:arrow5];
        

        UIView *cont2View = [[UIView alloc]initWithFrame:CGRectMake(15, contView.bottom+10, SCREEN_WIDTH-30, 100)];
        [_personView addSubview:cont2View];
        cont2View.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        cont2View.layer.cornerRadius = 12;
        cont2View.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        cont2View.layer.shadowOffset = CGSizeMake(0,4);
        cont2View.layer.shadowOpacity = 1;
        cont2View.layer.shadowRadius = 16;
        
        
        UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, SCREEN_WIDTH-60, 50)];
        [cont2View addSubview:nameView];
        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onActionEditAlias)];
        [nameView addGestureRecognizer:panGesture];
        UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        pic1.image = [UIImage imageNamed:@"ic_card_edit"];
        [nameView addSubview:pic1];
        self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 150, 24)];
        self.labTitleRemark.font = [UIFont systemFontOfSize:16.f];
        self.labTitleRemark.textColor = [UIColor blackColor];
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
        
//        UIView *signView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, SCREEN_WIDTH-60, 80)];
//        [contView addSubview:signView];
//        UIImageView *pic2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 10, 24, 24)];
//        pic2.image = [UIImage imageNamed:@"ic_card_sign"];
//        [signView addSubview:pic2];
//        self.labTitSign = [[UILabel alloc]initWithFrame:CGRectMake(pic2.right+12, 10, 250, 24)];
//        self.labTitSign.font = [UIFont systemFontOfSize:16.f];
//        self.labTitSign.textColor = [UIColor blackColor];
//        self.labTitSign.text = LangKey(@"user_profile_avtivity_signature");
//        [signView addSubview:self.labTitSign];
//        self.labSign = [[UILabel alloc]initWithFrame:CGRectMake(pic2.right+12, self.labTitleRemark.bottom, 250, 50)];
//        self.labSign.font = [UIFont systemFontOfSize:14.f];
//        self.labSign.numberOfLines = 2;
//        self.labSign.textColor = TextColor_3;
//        [signView addSubview:self.labSign];
//        UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(36, 79, SCREEN_WIDTH-60-36, 1)];
//        line2.backgroundColor = RGB_COLOR_String(@"#ECECEC");
//        [signView addSubview:line2];
        
        
        UIView *reportView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, SCREEN_WIDTH-60, 50)];
        [cont2View addSubview:reportView];
        UITapGestureRecognizer *reporttapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(reportsAction)];
        [reportView addGestureRecognizer:reporttapGesture];
        UIImageView *picreport = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        picreport.image = [UIImage imageNamed:@"ic_card_report"];
        [reportView addSubview:picreport];
        self.labTitleResport = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 250, 28)];
        self.labTitleResport.font = [UIFont systemFontOfSize:16.f];
        self.labTitleResport.textColor = [UIColor blackColor];
        self.labTitleResport.text = LangKey(@"report_activity_title");
        [reportView addSubview:self.labTitleResport];
        UIImageView *arrowreport = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60-12, 18, 12, 12)];
        arrowreport.image = [UIImage imageNamed:@"icon_me_arrow"];
        [reportView addSubview:arrowreport];
   
        
        self.btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btnAdd.frame = CGRectMake(15, cont2View.bottom+15, SCREEN_WIDTH-30, 48);
        self.btnAdd.titleLabel.font = [UIFont systemFontOfSize:14];
        [self.btnAdd setTitleColor:RGB_COLOR_String(@"#FF483D") forState:UIControlStateNormal];
        [self.btnAdd setTitle:LangKey(@"add_friend_activity_add_friend") forState:UIControlStateNormal];
        [self.btnAdd addTarget:self action:@selector(addFriend) forControlEvents:UIControlEventTouchUpInside];
        self.btnAdd.backgroundColor = RGB_COLOR_String(@"#ffffff");
        self.btnAdd.layer.borderWidth = 1;
        self.btnAdd.layer.borderColor = RGB_COLOR_String(@"#EEEEEE").CGColor;
        self.btnAdd.layer.cornerRadius = 24;
        [_personView addSubview:self.btnAdd];
        
        self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btnDelete.frame = CGRectMake(15, cont2View.bottom+15, SCREEN_WIDTH-30, 48);
        self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
        [self.btnDelete setTitleColor:RGB_COLOR_String(@"#FF483D") forState:UIControlStateNormal];
        [self.btnDelete setTitle:LangKey(@"friend_circle_adapter_delete") forState:UIControlStateNormal];
        [self.btnDelete addTarget:self action:@selector(deleteFriend) forControlEvents:UIControlEventTouchUpInside];
        self.btnDelete.backgroundColor = RGB_COLOR_String(@"#ffffff");
        self.btnDelete.layer.borderWidth = 1;
        self.btnDelete.layer.borderColor = RGB_COLOR_String(@"#EEEEEE").CGColor;
        self.btnDelete.layer.cornerRadius = 24;
        [_personView addSubview:self.btnDelete];
    }
    return _personView;
}

- (FFFRemarksView *)changeRemarksView
{
    if(!_changeRemarksView){
        _changeRemarksView = [[FFFRemarksView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
//        _changeRemarksView.hidden = YES;

    }
    return _changeRemarksView;
}

- (ZMONCustomLoadingView *)loadingView
{
    if(!_loadingView){
        _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    }
    return  _loadingView;
}
- (ZMONReportUserView *)reprotView
{
    if(!_reprotView){
        _reprotView  = [[ZMONReportUserView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        _reprotView.delegate = self;
    }
    return _reprotView;
}

-(void)didTouchSubmitButton:(NSString *)reason
{
    NSMutableDictionary *dict = @{}.mutableCopy;
    dict[@"contact"] = reason?:@"";
    [ZCHttpManager postWithUrl:Server_other_feedback params:dict isShow:NO success:^(id responseObject) {
    } failed:^(id responseObject, NSError *error) {
    }];
    
    [self.view addSubview:self.reprotNextView];
    [self.reprotNextView animationShow];
   
}

- (ZMONReportNextView *)reprotNextView
{
    if(!_reprotNextView){
        _reprotNextView  = [[ZMONReportNextView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        _reprotNextView.delegate = self;
    }
    return _reprotNextView;

}
- (void)didTouchBlackButton
{
    [self.view addSubview:self.reprotBlackView];
//    self.reprotBlackView.userID = self.userId;
    [self.reprotBlackView animationShow];
    @weakify(self)
    self.reprotBlackView.speiceBackBlock = ^(NSString *Name){
        @strongify(self)
        [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {
       
                   if (!error) {
                       [self.view makeToast:LangKey(@"group_chat_avatar_activity_add_black_success") duration:2.0f position:CSToastPositionCenter];
                   }else{
                       [self.view makeToast:LangKey(@"black_list_activity_add_black_failed") duration:2.0f position:CSToastPositionCenter];
       
                   }
        }];
        

        NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        option.isDeleteRoamMessage = YES;
        NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        }];
        
        [self.navigationController popToRootViewControllerAnimated:YES];
        
    };
    
   
}
- (void)didTouchDeleteButton
{
    [self.view addSubview:self.reprotDeleteView];
//    self.reprotDeleteView.userID = self.userId
    [self.reprotDeleteView animationShow];
    @weakify(self)
    self.reprotDeleteView.speiceBackBlock = ^(NSString *Name){
        @strongify(self)
        [[NIMSDK sharedSDK].userManager deleteFriend:self.userId
                                         removeAlias:[[NTESBundleSetting sharedConfig] autoRemoveAlias]
                                          completion:^(NSError *error) {

            if (!error) {
                [self.view makeToast:LangKey(@"contact_tag_fragment_delete_success") duration:2.0f position:CSToastPositionCenter];
            }else{
                [self.view makeToast:LangKey(@"friend_delete_fail") duration:2.0f position:CSToastPositionCenter];
            }
        }];
        

        NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        option.isDeleteRoamMessage = YES;
        NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        }];
        
        [self.navigationController popToRootViewControllerAnimated:YES];
        
    };
}

- (ZMONReportBlackView *)reprotBlackView
{
    if(!_reprotBlackView){
        _reprotBlackView  = [[ZMONReportBlackView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    }
    return _reprotBlackView;

}

- (ZMONReportDeleteView *)reprotDeleteView
{
    if(!_reprotDeleteView){
        _reprotDeleteView  = [[ZMONReportDeleteView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    }
    return _reprotDeleteView;
}

@end
