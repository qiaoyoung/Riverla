// __DEBUG__
// __CLOSE_PRINT__
//
//  IndependentViewController.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ContactDataMember;
@class ContactDataMember;

//: @interface NTESPersonalCardViewController : UIViewController
@interface IndependentViewController : UIViewController

//: @property (nonatomic ,strong) NSDictionary *teamSetingConfig;
@property (nonatomic ,strong) NSDictionary *teamSetingConfig;

//: @property (nonatomic,strong) NSDictionary *groupDict;
@property (nonatomic,strong) NSDictionary *groupDict;

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithDoingTo:(NSString *)userId;

//: - (void)onActionEditAlias:(id)sender;
- (void)along:(id)sender;

//: -(void)onActionGroup:(id)sender;
-(void)ting:(id)sender;

//: - (void)onActionNeedNotifyValueChange:(id)sender;
- (void)messaging:(id)sender;
//: - (void)onActionBlackListValueChange:(id)sender;
- (void)distanceBy:(id)sender;

//: - (void)chat;
- (void)blue;
//: - (void)deleteFriend;
- (void)sizeTo;
//: -(void)addFriend;
-(void)searchedText;
//: @end
@end