// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorViewController.h
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
@interface ColorViewController : UIViewController

//: @property (nonatomic ,strong) NSDictionary *teamSetingConfig;
@property (nonatomic ,strong) NSDictionary *teamSetingConfig;

//: @property (nonatomic,strong) NSDictionary *groupDict;
@property (nonatomic,strong) NSDictionary *groupDict;

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithCell:(NSString *)userId;

//: - (void)onActionEditAlias:(id)sender;
- (void)tingAlias:(id)sender;

//: -(void)onActionGroup:(id)sender;
-(void)keyPin:(id)sender;

//: - (void)onActionNeedNotifyValueChange:(id)sender;
- (void)handled:(id)sender;
//: - (void)onActionBlackListValueChange:(id)sender;
- (void)characteristicRootOfASquareMatrixTeam:(id)sender;

//: - (void)chat;
- (void)showEmpty;
//: - (void)deleteFriend;
- (void)enableFor;
//: -(void)addFriend;
-(void)endOf;
//: @end
@end