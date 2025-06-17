// __DEBUG__
// __CLOSE_PRINT__
//
//  ImagePopViewController.h
// Afterwards
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFTeamMemberListDataSource.h"
#import "FitSource.h"
//: #import "FFFTeamListDataManager.h"
#import "WithReply.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFTeamMuteMemberListViewController : UIViewController
@interface ImagePopViewController : UIViewController

//: @property (nonatomic,strong) FFFTeamListDataManager *teamListManager;
@property (nonatomic,strong) WithReply *teamListManager;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END