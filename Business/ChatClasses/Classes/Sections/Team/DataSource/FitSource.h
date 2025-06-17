// __DEBUG__
// __CLOSE_PRINT__
//
//  FitSource.h
// Afterwards
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFTeamCardMemberItem.h"
#import "FrameMemberItem.h"
//: #import "FFFMembersFetchOption.h"
#import "RecentBottomOption.h"

// __M_A_C_R_O__

//: typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
//: typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<FFFTeamCardMemberItem *> * _Nullable members);
typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<FrameMemberItem *> * _Nullable members);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol FFFTeamOperation <NSObject>
@protocol RecentHigh <NSObject>

//加人
//: - (void)addUsers:(NSArray *)userIds
- (void)event:(NSArray *)userIds
            //: info:(NSDictionary *)info
            segment:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)completion;
      addTable:(NIMTeamListDataBlock)completion;

//踢人
//: - (void)kickUsers:(NSArray *)userIds
- (void)inputText:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)completion;
       lozenge:(NIMTeamListDataBlock)completion;

//更新群公告
//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)tableGame:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)completion;
                    scaleDataBlock:(NIMTeamListDataBlock)completion;

//更新群头像
//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)successLanguage:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)completion;
              can:(NIMTeamListDataBlock)completion;

//更新群名称
//: - (void)updateTeamName:(NSString *)name
- (void)file:(NSString *)name
            //: completion:(NIMTeamListDataBlock)completion;
            with:(NIMTeamListDataBlock)completion;

//更新群昵称
//: - (void)updateTeamNick:(NSString *)nick
- (void)basketballTeamFor:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            demonstrate:(NIMTeamListDataBlock)completion;

//更新群简介
//: - (void)updateTeamIntro:(NSString *)intro
- (void)towardBubble:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)completion;
             titleCompletion:(NIMTeamListDataBlock)completion;

//更新群禁言
//: - (void)updateTeamMute:(BOOL)mute
- (void)dateCompletion:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)completion;
            option:(NIMTeamListDataBlock)completion;

//权限更改
//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)on:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                thread:(NIMTeamListDataBlock)completion;

//邀请模式更改
//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)invite:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)completion;
                  color:(NIMTeamListDataBlock)completion;

//群信息修改权限更改
//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)genus:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                should:(NIMTeamListDataBlock)completion;

//群通知状态修改
//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)cell:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)completion;
                   length:(NIMTeamListDataBlock)completion;

//被邀请模式更改
//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)sizeTeam:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)completion;
                    customTitle:(NIMTeamListDataBlock)completion;

//增加管理员
//: - (void)addManagers:(NSArray *)userIds
- (void)behindData:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)completion;
         enable:(NIMTeamListDataBlock)completion;

//移除管理员
//: - (void)removeManagers:(NSArray *)userIds
- (void)tinkle:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)completion;
            file:(NIMTeamListDataBlock)completion;

//群主转移
//: - (void)transferOwnerWithUserId:(NSString *)newOwnerId
- (void)value:(NSString *)newOwnerId
                           //: leave:(BOOL)leave
                           voiceCompletion:(BOOL)leave
                      //: completion:(NIMTeamListDataBlock)completion;
                      range:(NIMTeamListDataBlock)completion;

//修改用户昵称
//: - (void)updateUserNick:(NSString *)userId
- (void)label:(NSString *)userId
                  //: nick:(NSString *)nick
                  doUtilizer:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            title:(NIMTeamListDataBlock)completion;

//修改用户禁言状态
//: - (void)updateUserMuteState:(NSString *)userId
- (void)by:(NSString *)userId
                       //: mute:(BOOL)mute
                       packetCompletion:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)completion;
                 sessionAdd:(NIMTeamListDataBlock)completion;

//查询群成员
//: - (void)fetchTeamMembersWithOption:(FFFMembersFetchOption * _Nullable )option
- (void)image:(RecentBottomOption * _Nullable )option
                        //: completion:(NIMTeamListDataBlock)completion;
                        titleSuccessDataBlock:(NIMTeamListDataBlock)completion;

//查询群禁言列表
//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)completion;
- (void)key:(NIMTeamMuteListDataBlock)completion;

//退群
//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)quitTag:(NIMTeamListDataBlock)completion;

//解散群
//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)message:(NIMTeamListDataBlock)completion;

//: @end
@end



//: @protocol FFFTeamMemberListDataSource <FFFTeamOperation>
@protocol FitSource <RecentHigh>

//: - (NIMTeam *)team;
- (NIMTeam *)generateQuick;

//: - (NIMSession *)session;
- (NIMSession *)position;

//: - (NSInteger)memberNumber;
- (NSInteger)length;

//: - (NSMutableArray <FFFTeamCardMemberItem *> *)members;
- (NSMutableArray <FrameMemberItem *> *)tab;

//: - (FFFTeamCardMemberItem *)myCard;
- (FrameMemberItem *)halogen;

//: - (FFFTeamCardMemberItem *)memberWithUserId:(NSString *)userId;
- (FrameMemberItem *)soulCenter:(NSString *)userId;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END