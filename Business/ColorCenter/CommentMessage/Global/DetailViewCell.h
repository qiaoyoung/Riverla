// __DEBUG__
// __CLOSE_PRINT__
//
//  DetailViewCell.h
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFCommonTableViewCell.h"
#import "CompartmentCell.h"

//: @interface FFFKitSwitcherCell : UITableViewCell<FFFCommonTableViewCell>
@interface DetailViewCell : UITableViewCell<CompartmentCell>

//: @property(nonatomic,strong,readonly) UISwitch *switcher;
@property(nonatomic,strong,readonly) UISwitch *switcher;

//: @end
@end