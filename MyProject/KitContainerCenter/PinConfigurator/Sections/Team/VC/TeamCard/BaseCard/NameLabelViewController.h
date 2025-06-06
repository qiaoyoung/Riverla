// __DEBUG__
// __CLOSE_PRINT__
//
//  NameLabelViewController.h
// Notice
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//  群组操作

// __M_A_C_R_O__
//: #import "FFFTeamCardViewController.h"
#import "CardViewController.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: #pragma mark - 外部配置项
#pragma mark - 外部配置项
//: @interface FFFTeamCardViewControllerOption : NSObject
@interface BackOption : NSObject

//: @property (nonatomic, assign) BOOL isTop;
@property (nonatomic, assign) BOOL isTop;

//: @end
@end

//: @interface FFFTeamCardOperationViewController : FFFTeamCardViewController
@interface NameLabelViewController : CardViewController

//外部配置
//: @property (nonatomic,strong) FFFTeamCardViewControllerOption *option;
@property (nonatomic,strong) BackOption *option;

//群组管理
//: @property (nonatomic,strong) FFFTeamListDataManager *teamListManager;
@property (nonatomic,strong) WishListManager *teamListManager;


//初始化
//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWithView:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     humanity:(NIMSession *)session
                      //: option:(FFFTeamCardViewControllerOption * _Nullable)option;
                      quick:(BackOption * _Nullable)option;
//查询全部群成员
//: - (void)didFetchTeamMember:(nullable FFFMembersFetchOption *)option;
- (void)refer:(nullable RecentLockUpOption *)option;

//加人
//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)search:(NSArray<NSString *> *)userIds
            //: completion:(nullable dispatch_block_t)completion;
            recording:(nullable dispatch_block_t)completion;

//踢人
//: - (void)didKickUser:(NSString *)userId;
- (void)scaleFor:(NSString *)userId;

//更新群名称
//: - (void)didUpdateTeamName:(NSString *)name;
- (void)container:(NSString *)name;

//更新群昵称
//: - (void)didUpdateTeamNick:(NSString *)nick;
- (void)location:(NSString *)nick;

//更新群公告
//: - (void)didUpdateTeamIntro:(NSString *)intro;
- (void)field:(NSString *)intro;

//更新群禁言
//: - (void)didUpdateTeamMute:(BOOL)mute;
- (void)complete:(BOOL)mute;

//更新群头像
//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type;
- (void)imageFileProgress:(UIImagePickerControllerSourceType)type;

//更新群组验证方式
//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode;
- (void)itemPath:(NIMTeamJoinMode)mode;

//更新邀请模式
//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode;
- (void)flush:(NIMTeamInviteMode)mode;

//更新被邀请模式
//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode;
- (void)deviceMode:(NIMTeamBeInviteMode)mode;

//更新群信息修改权限
//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode;
- (void)upward:(NIMTeamUpdateInfoMode)mode;

//更新群消息接受状态
//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state;
- (void)exceptUserState:(NIMTeamNotifyState)state;

//转移群组
//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave;
- (void)view:(NSString *)userId show:(BOOL)leave;

//退出群组
//: - (void)didQuitTeam;
- (void)bolograph;

//解散群组
//: - (void)didDismissTeam;
- (void)on;

//: - (void)reloadData;
- (void)frailInput;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END