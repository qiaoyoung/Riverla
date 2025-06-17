//
//  FFFTeamCardOperationViewController.h
// MyUserKit
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//  群组操作

#import "FFFTeamCardViewController.h"

NS_ASSUME_NONNULL_BEGIN

#pragma mark - 外部配置项
@interface FFFTeamCardViewControllerOption : NSObject

@property (nonatomic, assign) BOOL isTop;

@end

@interface FFFTeamCardOperationViewController : FFFTeamCardViewController

//外部配置
@property (nonatomic,strong) FFFTeamCardViewControllerOption *option;

//群组管理
@property (nonatomic,strong) FFFTeamListDataManager *teamListManager;


//初始化
- (instancetype)initWithTeam:(NIMTeam *)team
                     session:(NIMSession *)session
                      option:(FFFTeamCardViewControllerOption * _Nullable)option;
//查询全部群成员
- (void)didFetchTeamMember:(nullable FFFMembersFetchOption *)option;

//加人
- (void)didInviteUsers:(NSArray<NSString *> *)userIds
            completion:(nullable dispatch_block_t)completion;

//踢人
- (void)didKickUser:(NSString *)userId;

//更新群名称
- (void)didUpdateTeamName:(NSString *)name;

//更新群昵称
- (void)didUpdateTeamNick:(NSString *)nick;

//更新群公告
- (void)didUpdateTeamIntro:(NSString *)intro;

//更新群禁言
- (void)didUpdateTeamMute:(BOOL)mute;

//更新群头像
- (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type;

//更新群组验证方式
- (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode;

//更新邀请模式
- (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode;

//更新被邀请模式
- (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode;

//更新群信息修改权限
- (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode;

//更新群消息接受状态
- (void)didUpdateNotifiyState:(NIMTeamNotifyState)state;

//转移群组
- (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave;

//退出群组
- (void)didQuitTeam;

//解散群组
- (void)didDismissTeam;

- (void)reloadData;


@end

NS_ASSUME_NONNULL_END
