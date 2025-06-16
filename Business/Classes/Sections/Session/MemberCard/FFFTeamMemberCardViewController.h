//
//  TeamMemberCardViewController.h
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FFFTeamCardMemberItem.h"
#import "FFFTeamMemberListDataSource.h"
#import "FFFTeamListDataManager.h"

@protocol NIMTeamMemberCardActionDelegate <NSObject>
@optional

- (void)onTeamMemberMuted:(FFFTeamCardMemberItem *)member mute:(BOOL)mute;
- (void)onTeamMemberKicked:(FFFTeamCardMemberItem *)member;

@end

@interface FFFTeamMemberCardViewController : UIViewController

@property (nonatomic, strong) id<NIMTeamMemberCardActionDelegate> delegate;

@property (nonatomic, strong) FFFTeamListDataManager *teamListManager;
@property (nonatomic, strong) NSString *memberId;
@property (nonatomic, strong) NIMTeamMember *member;

@end
