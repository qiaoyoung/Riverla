
#import <Foundation/Foundation.h>

NSString *StringFromContinentData(Byte *data);


//: group_info_activity_update_failed
Byte kStr_viewDestructName[] = {44, 33, 26, 4, 129, 140, 137, 143, 138, 121, 131, 136, 128, 137, 121, 123, 125, 142, 131, 144, 131, 142, 147, 121, 143, 138, 126, 123, 142, 127, 121, 128, 123, 131, 134, 127, 126, 200};


//: 邀请你加入超大群
Byte kStr_requestCorridorValue[] = {38, 24, 10, 12, 123, 54, 62, 99, 244, 107, 56, 71, 243, 140, 138, 242, 185, 193, 238, 199, 170, 239, 148, 170, 239, 143, 175, 242, 192, 143, 239, 174, 177, 241, 200, 174, 42};


//: jpg
Byte kStr_toxicData[] = {19, 3, 97, 9, 17, 129, 181, 78, 190, 203, 209, 200, 54};


//: attach
Byte kStr_toRequestValue[] = {36, 6, 34, 4, 131, 150, 150, 131, 133, 138, 177};


//: 邀请你加入讨论组
Byte kStr_gasJackValue[] = {6, 24, 1, 13, 240, 175, 150, 177, 193, 119, 7, 203, 245, 234, 131, 129, 233, 176, 184, 229, 190, 161, 230, 139, 161, 230, 134, 166, 233, 175, 169, 233, 175, 187, 232, 188, 133, 238};


//: 邀请你加入高级群
Byte kStr_theaterData[] = {44, 24, 1, 4, 234, 131, 129, 233, 176, 184, 229, 190, 161, 230, 139, 161, 230, 134, 166, 234, 172, 153, 232, 187, 168, 232, 191, 165, 203};


//: 扩展消息
Byte kStr_tingFileData[] = {11, 12, 29, 6, 99, 29, 3, 166, 198, 2, 206, 178, 3, 211, 165, 3, 158, 204, 82};


//: postscript
Byte kStr_mumLagData[] = {62, 10, 25, 12, 101, 38, 91, 98, 59, 228, 37, 82, 137, 136, 140, 141, 140, 124, 139, 130, 137, 141, 221};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorfulViewController.m
// Afterwards
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamCardOperationViewController.h"
#import "ColorfulViewController.h"
//: #import "FFFKitProgressHUD.h"
#import "ExampleView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Afterwards.h"
//: #import "NTESSessionMsgConverter.h"
#import "ActionConverter.h"

//: @implementation FFFTeamCardOperationViewController
@implementation ColorfulViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithSession:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     oldOption:(NIMSession *)session
                      //: option:(FFFTeamCardViewControllerOption *)option {
                      background:(UserOption *)option {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _option = option;
        _option = option;
        //: _teamListManager = [[FFFTeamListDataManager alloc] initWithTeam:team session:session];
        _teamListManager = [[WithReply alloc] initWithCountInfo:team top:session];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamInfoUpdate:) name:kNIMTeamListDataTeamInfoUpdate object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(messageLayerFrame:) name:kLet_tipActiveValue object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(boardMember:) name:kLet_contentValue object:nil];
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: FFFMembersFetchOption *option = [[FFFMembersFetchOption alloc] init];
    RecentBottomOption *option = [[RecentBottomOption alloc] init];
    //: option.isRefresh = YES;
    option.isRefresh = YES;
    //: option.offset = 0;
    option.offset = 0;
    //: option.count = (10);
    option.count = (10);
    //: [self didFetchTeamMember:option];
    [self nameWithColor:option];
}

//: - (void)reloadData {
- (void)titleSuccess {
    //: [self reloadTableHeaderData];
    [self timeInAccumulation];
    //: [self reloadTableViewData];
    [self cancel];
    //: [self reloadOtherData];
    [self domain];
}

//: - (void)didFetchTeamMember:(FFFMembersFetchOption *)option {
- (void)nameWithColor:(RecentBottomOption *)option {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager fetchTeamMembersWithOption:option
    [self.teamListManager image:option
                                          //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                                          titleSuccessDataBlock:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself titleSuccess];
        }
        //: [wself showToastMsg:msg];
        [wself wastepaperBasket:msg];
    //: }];
    }];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)bySource:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            itemSpace:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[StringFromContinentData(kStr_toRequestValue)] = StringFromContinentData(kStr_tingFileData);
    //: switch (_teamListManager.team.type) {
    switch (_teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[StringFromContinentData(kStr_mumLagData)] = StringFromContinentData(kStr_gasJackValue).textKey;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[StringFromContinentData(kStr_mumLagData)] = StringFromContinentData(kStr_theaterData).textKey;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[StringFromContinentData(kStr_mumLagData)] = StringFromContinentData(kStr_requestCorridorValue).textKey;
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
    [ExampleView duringVoice];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager event:userIds segment:info addTable:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself timeInAccumulation];
        }
        //: [wself showToastMsg:msg];
        [wself wastepaperBasket:msg];
        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}

//: - (void)didKickUser:(NSString *)userId {
- (void)outsideModel:(NSString *)userId {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager kickUsers:@[userId] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager inputText:@[userId] lozenge:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself timeInAccumulation];
        }
        //: [wself showToastMsg:msg];
        [wself wastepaperBasket:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamName:(NSString *)name {
- (void)placementText:(NSString *)name {
    //: if (!name) {
    if (!name) {
        //: return;
        return;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager updateTeamName:name
    [self.teamListManager file:name
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              with:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself titleSuccess];
        }
        //: [wself showToastMsg:msg];
        [wself wastepaperBasket:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamNick:(NSString *)nick{
- (void)bottom:(NSString *)nick{
    //: if (!nick) {
    if (!nick) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager updateTeamNick:nick
    [self.teamListManager basketballTeamFor:nick
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              demonstrate:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf titleSuccess];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf wastepaperBasket:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamIntro:(NSString *)intro{
- (void)cell:(NSString *)intro{
    //: if (!intro) {
    if (!intro) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager updateTeamIntro:intro completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager towardBubble:intro titleCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf titleSuccess];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf wastepaperBasket:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamMute:(BOOL)mute {
- (void)team:(BOOL)mute {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager updateTeamMute:mute
    [self.teamListManager dateCompletion:mute
                              //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                              option:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf titleSuccess];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf wastepaperBasket:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type {
- (void)frank:(UIImagePickerControllerSourceType)type {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self showImagePicker:type completion:^(UIImage * _Nonnull image) {
    [self noeticProjection:type upwards:^(UIImage * _Nonnull image) {
        //: [weakSelf uploadImage:image];
        [weakSelf image:image];
    //: }];
    }];
}

//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode {
- (void)add:(NIMTeamJoinMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager updateTeamJoinMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager on:mode thread:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf titleSuccess];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf wastepaperBasket:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode {
- (void)dayMax:(NIMTeamInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager updateTeamInviteMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager invite:mode color:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf titleSuccess];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf wastepaperBasket:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode {
- (void)provider:(NIMTeamBeInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager updateTeamBeInviteMode:mode
    [self.teamListManager sizeTeam:mode
                                      //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                      customTitle:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf titleSuccess];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf wastepaperBasket:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode {
- (void)sheetTo:(NIMTeamUpdateInfoMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager updateTeamInfoMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager genus:mode should:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf titleSuccess];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf wastepaperBasket:msg];
    //: }];
    }];
}

//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state {
- (void)data:(NIMTeamNotifyState)state {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager updateTeamNotifyState:state completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager cell:state length:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadTableViewData];
            [weakSelf cancel];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf wastepaperBasket:msg];
    //: }];
    }];
}

//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave {
- (void)input:(NSString *)userId leave:(BOOL)leave {
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager transferOwnerWithUserId:userId
    [self.teamListManager value:userId
                                         //: leave:leave
                                         voiceCompletion:leave
                                    //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                    range:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (leave) {
        if (leave) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        //: }else{
        }else{
            //: [self reloadData];
            [self titleSuccess];
        }
        //: [self showToastMsg:msg];
        [self wastepaperBasket:msg];
    //: }];
    }];
}

//: - (void)didDismissTeam{
- (void)minorLeagueClub{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager dismissTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager message:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [weakSelf.navigationController popToRootViewControllerAnimated:YES];
            [weakSelf.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf wastepaperBasket:msg];
    //: }];
    }];
}

//: - (void)didQuitTeam{
- (void)ground{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [ExampleView duringVoice];
    //: [self.teamListManager quitTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager quitTag:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [FFFKitProgressHUD dismiss];
        [ExampleView coordinate];
        //: if (!error) {
        if (!error) {
            //: [wself.navigationController popToRootViewControllerAnimated:YES];
            [wself.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [wself showToastMsg:msg];
        [wself wastepaperBasket:msg];
    //: }];
    }];
}

//: #pragma mark - Notication
#pragma mark - Notication
//: - (void)teamInfoUpdate:(NSNotification *)note {
- (void)messageLayerFrame:(NSNotification *)note {
    //: [self reloadData];
    [self titleSuccess];
}

//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)boardMember:(NSNotification *)note {

    //: [self reloadData];
    [self titleSuccess];
//    [self loadTeamManageList];

}

//: - (void)loadTeamManageList
- (void)atSize
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
            [self titleSuccess];
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
- (void)image:(UIImage *)image {
    //: UIImage *imageForAvatarUpload = [image nim_imageForAvatarUpload];
    UIImage *imageForAvatarUpload = [image forLabel];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:StringFromContinentData(kStr_toxicData)];
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
        [ExampleView duringVoice];
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager successLanguage:filePath can:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [FFFKitProgressHUD dismiss];
            [ExampleView coordinate];
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
                [wself timeInAccumulation];
            }
            //: [wself showToastMsg:msg];
            [wself wastepaperBasket:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"]];
        [wself wastepaperBasket:[ItemManager sessionInformation:StringFromContinentData(kStr_viewDestructName)]];
    }
}

//: @end
@end

//: @implementation FFFTeamCardViewControllerOption
@implementation UserOption

//: @end
@end

Byte * ContinentDataToCache(Byte *data) {
    int restoreHesitate = data[0];
    int dishTitle = data[1];
    Byte bias = data[2];
    int maxBlueLute = data[3];
    if (!restoreHesitate) return data + maxBlueLute;
    for (int i = maxBlueLute; i < maxBlueLute + dishTitle; i++) {
        int value = data[i] - bias;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[maxBlueLute + dishTitle] = 0;
    return data + maxBlueLute;
}

NSString *StringFromContinentData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ContinentDataToCache(data)];
}
