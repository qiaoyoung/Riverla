// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFMessageCell.h"
#import "ImageViewCell.h"
//: #import "FFFSessionTimestampCell.h"
#import "TitleViewCell.h"
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"
//: #import "FFFMessageCellProtocol.h"
#import "FFFMessageCellProtocol.h"

//: @interface FFFMessageCellFactory : NSObject
@interface ThanFactory : NSObject

//: - (FFFMessageCell *)cellInTable:(UITableView*)tableView
- (ImageViewCell *)notTableMessage:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model;
                 voice:(StochasticProcessTeam *)model;

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (TitleViewCell *)sub:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model;
                            collection:(ModelTimestampSupport *)model;

//: @end
@end