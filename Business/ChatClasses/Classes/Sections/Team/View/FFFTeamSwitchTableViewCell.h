//
//  FFFTeamSwitchTableViewCell.h
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FFFTeamSwitchTableViewCell;

@protocol NIMTeamSwitchProtocol <NSObject>
- (void)cell:(FFFTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on;
@end

@interface FFFTeamSwitchTableViewCell : UITableViewCell
@property (nonatomic, assign) NSInteger identify;
@property (strong, nonatomic) UISwitch *switcher;
@property (weak, nonatomic) id<NIMTeamSwitchProtocol> switchDelegate;

@end
