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
#import "PunchCardShow.h"
//: #import "FFFTeamMemberListDataSource.h"
#import "LabelSource.h"
//: #import "FFFTeamListDataManager.h"
#import "WishListManager.h"

//: @protocol NIMTeamMemberCardActionDelegate <NSObject>
@protocol LayerEvaluate <NSObject>
//: @optional
@optional

//: - (void)onTeamMemberMuted:(FFFTeamCardMemberItem *)member mute:(BOOL)mute;
- (void)netBy:(PunchCardShow *)member harvestMoonOff:(BOOL)mute;
//: - (void)onTeamMemberKicked:(FFFTeamCardMemberItem *)member;
- (void)should:(PunchCardShow *)member;

//: @end
@end

//: @interface FFFTeamMemberCardViewController : UIViewController
@interface LittleLeagueTeamViewController : UIViewController

//: @property (nonatomic, strong) id<NIMTeamMemberCardActionDelegate> delegate;
@property (nonatomic, strong) id<LayerEvaluate> delegate;

//: @property (nonatomic, strong) FFFTeamListDataManager *teamListManager;
@property (nonatomic, strong) WishListManager *teamListManager;
//: @property (nonatomic, strong) NSString *memberId;
@property (nonatomic, strong) NSString *memberId;
//: @property (nonatomic, strong) NIMTeamMember *member;
@property (nonatomic, strong) NIMTeamMember *member;

//: @end
@end