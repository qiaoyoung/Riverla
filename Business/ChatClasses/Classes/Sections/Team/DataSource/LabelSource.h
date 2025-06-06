// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelSource.h
// Notice
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFTeamCardMemberItem.h"
#import "PunchCardShow.h"
//: #import "FFFMembersFetchOption.h"
#import "RecentLockUpOption.h"

// __M_A_C_R_O__

//: typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
//: typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<FFFTeamCardMemberItem *> * _Nullable members);
typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<PunchCardShow *> * _Nullable members);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol FFFTeamOperation <NSObject>
@protocol SightOperation <NSObject>

//加人
//: - (void)addUsers:(NSArray *)userIds
- (void)content:(NSArray *)userIds
            //: info:(NSDictionary *)info
            sizeForCompletion:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)completion;
      close:(NIMTeamListDataBlock)completion;

//踢人
//: - (void)kickUsers:(NSArray *)userIds
- (void)modal:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)completion;
       searched:(NIMTeamListDataBlock)completion;

//更新群公告
//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)color:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)completion;
                    viewTeamModifyDeclaration:(NIMTeamListDataBlock)completion;

//更新群头像
//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)data:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)completion;
              fillIn:(NIMTeamListDataBlock)completion;

//更新群名称
//: - (void)updateTeamName:(NSString *)name
- (void)quick:(NSString *)name
            //: completion:(NIMTeamListDataBlock)completion;
            with:(NIMTeamListDataBlock)completion;

//更新群昵称
//: - (void)updateTeamNick:(NSString *)nick
- (void)questionIn:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            size:(NIMTeamListDataBlock)completion;

//更新群简介
//: - (void)updateTeamIntro:(NSString *)intro
- (void)distinct:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)completion;
             tingTip:(NIMTeamListDataBlock)completion;

//更新群禁言
//: - (void)updateTeamMute:(BOOL)mute
- (void)show:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)completion;
            screen:(NIMTeamListDataBlock)completion;

//权限更改
//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)untilSearched:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                changeAcross:(NIMTeamListDataBlock)completion;

//邀请模式更改
//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)dateModify:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)completion;
                  background:(NIMTeamListDataBlock)completion;

//群信息修改权限更改
//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)doing:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                teamHand:(NIMTeamListDataBlock)completion;

//群通知状态修改
//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)namePullIndex:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)completion;
                   than:(NIMTeamListDataBlock)completion;

//被邀请模式更改
//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)forwardLanguage:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)completion;
                    layUp:(NIMTeamListDataBlock)completion;

//增加管理员
//: - (void)addManagers:(NSArray *)userIds
- (void)changeHand:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)completion;
         should:(NIMTeamListDataBlock)completion;

//移除管理员
//: - (void)removeManagers:(NSArray *)userIds
- (void)under:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)completion;
            last:(NIMTeamListDataBlock)completion;

//群主转移
//: - (void)transferOwnerWithUserId:(NSString *)newOwnerId
- (void)maxCompletion:(NSString *)newOwnerId
                           //: leave:(BOOL)leave
                           leave:(BOOL)leave
                      //: completion:(NIMTeamListDataBlock)completion;
                      background:(NIMTeamListDataBlock)completion;

//修改用户昵称
//: - (void)updateUserNick:(NSString *)userId
- (void)stateSelected:(NSString *)userId
                  //: nick:(NSString *)nick
                  session:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            onDataBlock:(NIMTeamListDataBlock)completion;

//修改用户禁言状态
//: - (void)updateUserMuteState:(NSString *)userId
- (void)color:(NSString *)userId
                       //: mute:(BOOL)mute
                       withCounterval:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)completion;
                 control:(NIMTeamListDataBlock)completion;

//查询群成员
//: - (void)fetchTeamMembersWithOption:(FFFMembersFetchOption * _Nullable )option
- (void)can:(RecentLockUpOption * _Nullable )option
                        //: completion:(NIMTeamListDataBlock)completion;
                        request:(NIMTeamListDataBlock)completion;

//查询群禁言列表
//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)completion;
- (void)name:(NIMTeamMuteListDataBlock)completion;

//退群
//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)message:(NIMTeamListDataBlock)completion;

//解散群
//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)pinWith:(NIMTeamListDataBlock)completion;

//: @end
@end



//: @protocol FFFTeamMemberListDataSource <FFFTeamOperation>
@protocol LabelSource <SightOperation>

//: - (NIMTeam *)team;
- (NIMTeam *)countChild;

//: - (NIMSession *)session;
- (NIMSession *)session;

//: - (NSInteger)memberNumber;
- (NSInteger)delay;

//: - (NSMutableArray <FFFTeamCardMemberItem *> *)members;
- (NSMutableArray <PunchCardShow *> *)show;

//: - (FFFTeamCardMemberItem *)myCard;
- (PunchCardShow *)manager;

//: - (FFFTeamCardMemberItem *)memberWithUserId:(NSString *)userId;
- (PunchCardShow *)endUserMemberWithId:(NSString *)userId;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
