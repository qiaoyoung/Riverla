//
//  TeamMemberNormalViewController.h
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <NIMSDK/NIMSDK.h>
#import "FFFTeamMemberListDataSource.h"
#import "FFFTeamListDataManager.h"
NS_ASSUME_NONNULL_BEGIN

@interface TeamMemberNormalViewController : UIViewController

@property (nonatomic,strong) FFFTeamListDataManager *teamListManager;

@end

NS_ASSUME_NONNULL_END
