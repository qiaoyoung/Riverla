// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.h
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFMessageCell.h"
#import "CompartmentInputView.h"
//: #import "FFFSessionTimestampCell.h"
#import "MMaxView.h"
//: #import "ViewCellConfig.h"
#import "ViewCellConfig.h"
//: #import "ViewMessageCellProtocol.h"
#import "ViewMessageCellProtocol.h"

//: @interface FFFMessageCellFactory : NSObject
@interface LinkIndex : NSObject

//: - (FFFMessageCell *)cellInTable:(UITableView*)tableView
- (CompartmentInputView *)place:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model;
                 reply:(MaxLink *)model;

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (MMaxView *)showBubbleModel:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model;
                            red:(IndexIcon *)model;

//: @end
@end
