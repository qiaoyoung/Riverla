// __DEBUG__
// __CLOSE_PRINT__
//
//  AfterView.h
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFTeamSwitchTableViewCell;
@class AfterView;

//: @protocol NIMTeamSwitchProtocol <NSObject>
@protocol AtomicSum85High <NSObject>
//: - (void)cell:(FFFTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on;
- (void)italianRegion:(AfterView *)cell south:(BOOL)on;
//: @end
@end

//: @interface FFFTeamSwitchTableViewCell : UITableViewCell
@interface AfterView : UITableViewCell
//: @property (nonatomic, assign) NSInteger identify;
@property (nonatomic, assign) NSInteger identify;
//: @property (strong, nonatomic) UISwitch *switcher;
@property (strong, nonatomic) UISwitch *switcher;
//: @property (weak, nonatomic) id<NIMTeamSwitchProtocol> switchDelegate;
@property (weak, nonatomic) id<AtomicSum85High> switchDelegate;

//: @end
@end