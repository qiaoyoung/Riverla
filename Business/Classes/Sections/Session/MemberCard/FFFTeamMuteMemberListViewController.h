//
//  FFFTeamMuteMemberListViewController.h
// MyUserKit
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FFFTeamMemberListDataSource.h"
#import "FFFTeamListDataManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface FFFTeamMuteMemberListViewController : UIViewController

@property (nonatomic,strong) FFFTeamListDataManager *teamListManager;

@end

NS_ASSUME_NONNULL_END
