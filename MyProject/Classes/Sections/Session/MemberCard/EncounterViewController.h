// __DEBUG__
// __CLOSE_PRINT__
//
//  EncounterViewController.h
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
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

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface TeamMemberNormalViewController : UIViewController
@interface EncounterViewController : UIViewController

//: @property (nonatomic,strong) FFFTeamListDataManager *teamListManager;
@property (nonatomic,strong) WishListManager *teamListManager;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END