
#import <Foundation/Foundation.h>
typedef struct {
    Byte congee;
    Byte *weakBar;
    unsigned int fly;
    bool finding;
	int dialogueStop;
	int tineBindGreatly;
	int grateful;
} HeyData;

NSString *StringFromHeyData(HeyData *data);


//: 邀请你加入超大群
HeyData kStr_gasolineBadlyEndlessData = (HeyData){27, (Byte []){242, 153, 155, 243, 180, 172, 255, 166, 187, 254, 145, 187, 254, 158, 190, 243, 173, 158, 254, 191, 188, 252, 165, 191, 2}, 24, false, 80, 22, 216};


//: 邀请你加入讨论组
HeyData kStr_escapePassengerValue = (HeyData){141, (Byte []){100, 15, 13, 101, 34, 58, 105, 48, 45, 104, 7, 45, 104, 8, 40, 101, 35, 37, 101, 35, 55, 106, 54, 9, 124}, 24, false, 197, 187, 130};


//: attach
HeyData kStr_gainTressData = (HeyData){5, (Byte []){100, 113, 113, 100, 102, 109, 171}, 6, false, 243, 16, 244};


//: postscript
HeyData kStr_climbContent = (HeyData){78, (Byte []){62, 33, 61, 58, 61, 45, 60, 39, 62, 58, 197}, 10, false, 167, 115, 140};


//: group_info_activity_update_failed
HeyData kStr_unfoldOvenData = (HeyData){219, (Byte []){188, 169, 180, 174, 171, 132, 178, 181, 189, 180, 132, 186, 184, 175, 178, 173, 178, 175, 162, 132, 174, 171, 191, 186, 175, 190, 132, 189, 186, 178, 183, 190, 191, 230}, 33, false, 199, 251, 181};


//: 邀请你加入高级群
HeyData kStr_selectFloodNumberernationalName = (HeyData){179, (Byte []){90, 49, 51, 91, 28, 4, 87, 14, 19, 86, 57, 19, 86, 54, 22, 90, 24, 43, 84, 9, 20, 84, 13, 23, 38}, 24, false, 122, 165, 109};


//: 扩展消息
HeyData kStr_breadData = (HeyData){145, (Byte []){119, 24, 56, 116, 32, 4, 119, 39, 25, 119, 16, 62, 46}, 12, false, 79, 58, 151};


//: jpg
HeyData kStr_mortgageName = (HeyData){182, (Byte []){220, 198, 209, 230}, 3, false, 16, 169, 133};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameLabelViewController.m
// Notice
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamCardOperationViewController.h"
#import "NameLabelViewController.h"
//: #import "FFFKitProgressHUD.h"
#import "DiscoverEffectView.h"
//: #import "ViewKitDependency.h"
#import "ViewKitDependency.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Notice.h"
//: #import "NTESSessionMsgConverter.h"
#import "InputConverter.h"

//: @implementation FFFTeamCardOperationViewController
@implementation NameLabelViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithView:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     humanity:(NIMSession *)session
                      //: option:(FFFTeamCardViewControllerOption *)option {
                      quick:(BackOption *)option {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _option = option;
        _option = option;
        //: _teamListManager = [[FFFTeamListDataManager alloc] initWithTeam:team session:session];
        _teamListManager = [[WishListManager alloc] initWithButton:team alter:session];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamInfoUpdate:) name:kNIMTeamListDataTeamInfoUpdate object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keys:) name:let_tapName object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(totalsing:) name:let_fromEventValue object:nil];
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: FFFMembersFetchOption *option = [[FFFMembersFetchOption alloc] init];
    RecentLockUpOption *option = [[RecentLockUpOption alloc] init];
    //: option.isRefresh = YES;
    option.isRefresh = YES;
    //: option.offset = 0;
    option.offset = 0;
    //: option.count = (10);
    option.count = (10);
    //: [self didFetchTeamMember:option];
    [self refer:option];
}

//: - (void)reloadData {
- (void)frailInput {
    //: [self reloadTableHeaderData];
    [self pressedData];
    //: [self reloadTableViewData];
    [self reloadLikeRawData];
    //: [self reloadOtherData];
    [self voice];
}

//: - (void)didFetchTeamMember:(FFFMembersFetchOption *)option {
- (void)refer:(RecentLockUpOption *)option {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager fetchTeamMembersWithOption:option
    [self.teamListManager can:option
                                          //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                                          request:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself frailInput];
        }
        //: [wself showToastMsg:msg];
        [wself bull:msg];
    //: }];
    }];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)search:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            recording:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[StringFromHeyData(&kStr_gainTressData)] = StringFromHeyData(&kStr_breadData);
    //: switch (_teamListManager.team.type) {
    switch (_teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[StringFromHeyData(&kStr_climbContent)] = StringFromHeyData(&kStr_escapePassengerValue).positionMenu;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[StringFromHeyData(&kStr_climbContent)] = StringFromHeyData(&kStr_selectFloodNumberernationalName).positionMenu;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[StringFromHeyData(&kStr_climbContent)] = StringFromHeyData(&kStr_gasolineBadlyEndlessData).positionMenu;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager content:userIds sizeForCompletion:info close:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself pressedData];
        }
        //: [wself showToastMsg:msg];
        [wself bull:msg];
        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}

//: - (void)didKickUser:(NSString *)userId {
- (void)scaleFor:(NSString *)userId {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager kickUsers:@[userId] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager modal:@[userId] searched:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself pressedData];
        }
        //: [wself showToastMsg:msg];
        [wself bull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamName:(NSString *)name {
- (void)container:(NSString *)name {
    //: if (!name) {
    if (!name) {
        //: return;
        return;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager updateTeamName:name
    [self.teamListManager quick:name
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              with:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself frailInput];
        }
        //: [wself showToastMsg:msg];
        [wself bull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamNick:(NSString *)nick{
- (void)location:(NSString *)nick{
    //: if (!nick) {
    if (!nick) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager updateTeamNick:nick
    [self.teamListManager questionIn:nick
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              size:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf frailInput];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf bull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamIntro:(NSString *)intro{
- (void)field:(NSString *)intro{
    //: if (!intro) {
    if (!intro) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager updateTeamIntro:intro completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager distinct:intro tingTip:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf frailInput];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf bull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamMute:(BOOL)mute {
- (void)complete:(BOOL)mute {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager updateTeamMute:mute
    [self.teamListManager show:mute
                              //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                              screen:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf frailInput];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf bull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type {
- (void)imageFileProgress:(UIImagePickerControllerSourceType)type {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self showImagePicker:type completion:^(UIImage * _Nonnull image) {
    [self imageBe:type at:^(UIImage * _Nonnull image) {
        //: [weakSelf uploadImage:image];
        [weakSelf mentalRepresentation:image];
    //: }];
    }];
}

//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode {
- (void)itemPath:(NIMTeamJoinMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager updateTeamJoinMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager untilSearched:mode changeAcross:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf frailInput];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf bull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode {
- (void)flush:(NIMTeamInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager updateTeamInviteMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager dateModify:mode background:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf frailInput];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf bull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode {
- (void)deviceMode:(NIMTeamBeInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager updateTeamBeInviteMode:mode
    [self.teamListManager forwardLanguage:mode
                                      //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                      layUp:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf frailInput];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf bull:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode {
- (void)upward:(NIMTeamUpdateInfoMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager updateTeamInfoMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager doing:mode teamHand:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf frailInput];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf bull:msg];
    //: }];
    }];
}

//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state {
- (void)exceptUserState:(NIMTeamNotifyState)state {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager updateTeamNotifyState:state completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager namePullIndex:state than:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadTableViewData];
            [weakSelf reloadLikeRawData];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf bull:msg];
    //: }];
    }];
}

//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave {
- (void)view:(NSString *)userId show:(BOOL)leave {
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager transferOwnerWithUserId:userId
    [self.teamListManager maxCompletion:userId
                                         //: leave:leave
                                         leave:leave
                                    //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                    background:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (leave) {
        if (leave) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        //: }else{
        }else{
            //: [self reloadData];
            [self frailInput];
        }
        //: [self showToastMsg:msg];
        [self bull:msg];
    //: }];
    }];
}

//: - (void)didDismissTeam{
- (void)on{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager dismissTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager pinWith:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [weakSelf.navigationController popToRootViewControllerAnimated:YES];
            [weakSelf.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf bull:msg];
    //: }];
    }];
}

//: - (void)didQuitTeam{
- (void)bolograph{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self.teamListManager quitTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager message:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if (!error) {
        if (!error) {
            //: [wself.navigationController popToRootViewControllerAnimated:YES];
            [wself.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [wself showToastMsg:msg];
        [wself bull:msg];
    //: }];
    }];
}

//: #pragma mark - Notication
#pragma mark - Notication
//: - (void)teamInfoUpdate:(NSNotification *)note {
- (void)keys:(NSNotification *)note {
    //: [self reloadData];
    [self frailInput];
}

//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)totalsing:(NSNotification *)note {

    //: [self reloadData];
    [self frailInput];
//    [self loadTeamManageList];

}

//: - (void)loadTeamManageList
- (void)dismissRange
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
    [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
                                          //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                          completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (!error) {
        if (!error) {
            //: if (members.count>20) {
            if (members.count>20) {

                //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.teamListManager.team.teamId completion:^(NSError *error){
                [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.teamListManager.team.teamId completion:^(NSError *error){

                 //: }];
                 }];

            //: }else{
            }else{
//                [self didUpdateNotifiyState:NIMTeamNotifyStateAll];
                //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.teamListManager.team.teamId completion:^(NSError *error){
                [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.teamListManager.team.teamId completion:^(NSError *error){

                 //: }];
                 }];
            }
            //: [self reloadData];
            [self frailInput];
        //: }else{
        }else{
            //: NSLog(@"error:%@",error);
        }
    //: }];
    }];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image {
- (void)mentalRepresentation:(UIImage *)image {
    //: UIImage *imageForAvatarUpload = [image nim_imageForAvatarUpload];
    UIImage *imageForAvatarUpload = [image lengthIcon];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:StringFromHeyData(&kStr_mortgageName)];
    //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [FFFKitProgressHUD show];
        [DiscoverEffectView cellToBubble];
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager data:filePath fillIn:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [FFFKitProgressHUD dismiss];
            [DiscoverEffectView view];
            //: if (!error) {
            if (!error) {
                //: NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
                NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
                //: SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                //: [sdManager.imageCache storeImage:imageForAvatarUpload
                [sdManager.imageCache storeImage:imageForAvatarUpload
                                       //: imageData:data
                                       imageData:data
                                          //: forKey:urlString
                                          forKey:urlString
                                       //: cacheType:SDImageCacheTypeAll
                                       cacheType:SDImageCacheTypeAll
                                      //: completion:nil];
                                      completion:nil];
                //: [wself reloadTableHeaderData];
                [wself pressedData];
            }
            //: [wself showToastMsg:msg];
            [wself bull:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"]];
        [wself bull:[TeamManager sizeKey:StringFromHeyData(&kStr_unfoldOvenData)]];
    }
}

//: @end
@end

//: @implementation FFFTeamCardViewControllerOption
@implementation BackOption

//: @end
@end

Byte *HeyDataToByte(HeyData *data) {
    if (data->finding) return data->weakBar;
    for (int i = 0; i < data->fly; i++) {
        data->weakBar[i] ^= data->congee;
    }
    data->weakBar[data->fly] = 0;
    data->finding = true;
	if (data->fly >= 3) {
		data->dialogueStop = data->weakBar[0];
		data->tineBindGreatly = data->weakBar[1];
		data->grateful = data->weakBar[2];
	}
    return data->weakBar;
}

NSString *StringFromHeyData(HeyData *data) {
    return [NSString stringWithUTF8String:(char *)HeyDataToByte(data)];
}
