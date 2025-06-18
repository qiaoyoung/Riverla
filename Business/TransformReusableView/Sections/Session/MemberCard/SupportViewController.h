// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamMemberCardViewController.h
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFTeamCardMemberItem.h"
#import "FrameMemberItem.h"
//: #import "FFFTeamMemberListDataSource.h"
#import "FitSource.h"
//: #import "FFFTeamListDataManager.h"
#import "WithReply.h"

//: @protocol NIMTeamMemberCardActionDelegate <NSObject>
@protocol MagnitudeSize <NSObject>
//: @optional
@optional

//: - (void)onTeamMemberMuted:(FFFTeamCardMemberItem *)member mute:(BOOL)mute;
- (void)info:(FrameMemberItem *)member space:(BOOL)mute;
//: - (void)onTeamMemberKicked:(FFFTeamCardMemberItem *)member;
- (void)completeColor:(FrameMemberItem *)member;

//: @end
@end

//: @interface FFFTeamMemberCardViewController : UIViewController
@interface SupportViewController : UIViewController

//: @property (nonatomic, strong) id<NIMTeamMemberCardActionDelegate> delegate;
@property (nonatomic, strong) id<MagnitudeSize> delegate;

//: @property (nonatomic, strong) FFFTeamListDataManager *teamListManager;
@property (nonatomic, strong) WithReply *teamListManager;
//: @property (nonatomic, strong) NSString *memberId;
@property (nonatomic, strong) NSString *memberId;
//: @property (nonatomic, strong) NIMTeamMember *member;
@property (nonatomic, strong) NIMTeamMember *member;

//: @end
@end