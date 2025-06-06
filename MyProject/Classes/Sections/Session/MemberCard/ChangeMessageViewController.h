// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamMemberListViewController.h
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFTeamMemberListDataSource.h"
#import "LabelSource.h"
//: #import "FFFTeamListDataManager.h"
#import "WishListManager.h"

//: @interface CCCTeamMemberListViewController : UIViewController
@interface ChangeMessageViewController : UIViewController

//: @property (nonatomic,strong) FFFTeamListDataManager *teamListManager;
@property (nonatomic,strong) WishListManager *teamListManager;

//: - (instancetype)initWithDataSource:(FFFTeamListDataManager *)dataSource;
- (instancetype)initWithScan:(WishListManager *)dataSource;

//: @end
@end