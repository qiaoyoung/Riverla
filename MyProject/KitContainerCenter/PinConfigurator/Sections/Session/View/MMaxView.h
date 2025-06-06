// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionTipCell.h
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ViewMessageCellProtocol.h"
#import "ViewMessageCellProtocol.h"

//: @class FFFTimestampModel;
@class IndexIcon;

//: @interface FFFSessionTimestampCell : UITableViewCell
@interface MMaxView : UITableViewCell

//: @property (strong, nonatomic) UIImageView *timeBGView;
@property (strong, nonatomic) UIImageView *timeBGView;

//: @property (strong, nonatomic) UILabel *timeLabel;
@property (strong, nonatomic) UILabel *timeLabel;

//: - (void)refreshData:(FFFTimestampModel *)data;
- (void)telecom:(IndexIcon *)data;

//: @end
@end
