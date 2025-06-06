// __DEBUG__
// __CLOSE_PRINT__
//
//  IndependentViewCell.h
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFTeamSwitchTableViewCell;
@class IndependentViewCell;

//: @protocol NIMTeamSwitchProtocol <NSObject>
@protocol PinShow <NSObject>
//: - (void)cell:(FFFTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on;
- (void)account:(IndependentViewCell *)cell oval:(BOOL)on;
//: @end
@end

//: @interface FFFTeamSwitchTableViewCell : UITableViewCell
@interface IndependentViewCell : UITableViewCell
//: @property (nonatomic, assign) NSInteger identify;
@property (nonatomic, assign) NSInteger identify;
//: @property (strong, nonatomic) UISwitch *switcher;
@property (strong, nonatomic) UISwitch *switcher;
//: @property (weak, nonatomic) id<NIMTeamSwitchProtocol> switchDelegate;
@property (weak, nonatomic) id<PinShow> switchDelegate;

//: @end
@end