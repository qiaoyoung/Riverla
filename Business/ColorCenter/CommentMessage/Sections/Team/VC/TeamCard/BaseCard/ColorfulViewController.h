// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorfulViewController.h
// Afterwards
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//  群组操作

// __M_A_C_R_O__
//: #import "FFFTeamCardViewController.h"
#import "BasketballTeamLightRandomViewController.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: #pragma mark - 外部配置项
#pragma mark - 外部配置项
//: @interface FFFTeamCardViewControllerOption : NSObject
@interface UserOption : NSObject

//: @property (nonatomic, assign) BOOL isTop;
@property (nonatomic, assign) BOOL isTop;

//: @end
@end

//: @interface FFFTeamCardOperationViewController : FFFTeamCardViewController
@interface ColorfulViewController : BasketballTeamLightRandomViewController

//外部配置
//: @property (nonatomic,strong) FFFTeamCardViewControllerOption *option;
@property (nonatomic,strong) UserOption *option;

//群组管理
//: @property (nonatomic,strong) FFFTeamListDataManager *teamListManager;
@property (nonatomic,strong) WithReply *teamListManager;


//初始化
//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithSession:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     oldOption:(NIMSession *)session
                      //: option:(FFFTeamCardViewControllerOption * _Nullable)option;
                      background:(UserOption * _Nullable)option;
//查询全部群成员
//: - (void)didFetchTeamMember:(nullable FFFMembersFetchOption *)option;
- (void)nameWithColor:(nullable RecentBottomOption *)option;

//加人
//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)bySource:(NSArray<NSString *> *)userIds
            //: completion:(nullable dispatch_block_t)completion;
            itemSpace:(nullable dispatch_block_t)completion;

//踢人
//: - (void)didKickUser:(NSString *)userId;
- (void)outsideModel:(NSString *)userId;

//更新群名称
//: - (void)didUpdateTeamName:(NSString *)name;
- (void)placementText:(NSString *)name;

//更新群昵称
//: - (void)didUpdateTeamNick:(NSString *)nick;
- (void)bottom:(NSString *)nick;

//更新群公告
//: - (void)didUpdateTeamIntro:(NSString *)intro;
- (void)cell:(NSString *)intro;

//更新群禁言
//: - (void)didUpdateTeamMute:(BOOL)mute;
- (void)team:(BOOL)mute;

//更新群头像
//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type;
- (void)frank:(UIImagePickerControllerSourceType)type;

//更新群组验证方式
//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode;
- (void)add:(NIMTeamJoinMode)mode;

//更新邀请模式
//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode;
- (void)dayMax:(NIMTeamInviteMode)mode;

//更新被邀请模式
//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode;
- (void)provider:(NIMTeamBeInviteMode)mode;

//更新群信息修改权限
//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode;
- (void)sheetTo:(NIMTeamUpdateInfoMode)mode;

//更新群消息接受状态
//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state;
- (void)data:(NIMTeamNotifyState)state;

//转移群组
//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave;
- (void)input:(NSString *)userId leave:(BOOL)leave;

//退出群组
//: - (void)didQuitTeam;
- (void)ground;

//解散群组
//: - (void)didDismissTeam;
- (void)minorLeagueClub;

//: - (void)reloadData;
- (void)titleSuccess;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END