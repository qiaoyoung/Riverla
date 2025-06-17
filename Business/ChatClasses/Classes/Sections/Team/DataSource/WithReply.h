// __DEBUG__
// __CLOSE_PRINT__
//
//  WithReply.h
// Afterwards
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFTeamMemberListDataSource.h"
#import "FitSource.h"

//: extern NSString * _Nonnull const kNIMTeamListDataTeamInfoUpdate;
extern NSString * _Nonnull const kLet_tipActiveValue;
//: extern NSString * _Nonnull const kNIMTeamListDataTeamMembersChanged;
extern NSString * _Nonnull const kLet_contentValue;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFTeamListDataManager : NSObject<FFFTeamMemberListDataSource>
@interface WithReply : NSObject<FitSource>

//当前群
//: @property (nonatomic, readonly) NIMTeam *team;
@property (nonatomic, readonly) NIMTeam *team;

//自己的帐号
//: @property (nonatomic, readonly) NSString *myAccount;
@property (nonatomic, readonly) NSString *myAccount;

//自己的群成员信息
//: @property (nonatomic, readonly) NIMTeamMember *myTeamInfo;
@property (nonatomic, readonly) NIMTeamMember *myTeamInfo;

//所有群成员的id
//: @property (nonatomic, readonly) NSMutableArray <NSString *>*memberIds;
@property (nonatomic, readonly) NSMutableArray <NSString *>*memberIds;

//初始化
//: - (instancetype)initWithTeam:(NIMTeam *)team session:(NIMSession *)session;
- (instancetype)initWithCountInfo:(NIMTeam *)team top:(NIMSession *)session;

//更新个人群组信息
//: - (void)reloadMyTeamInfo;
- (void)option;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END