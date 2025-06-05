//
//  FFFMessageCellMaker.h
// MyUserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FFFMessageCell.h"
#import "FFFSessionTimestampCell.h"
#import "FFFCellConfig.h"
#import "FFFMessageCellProtocol.h"

@interface FFFMessageCellFactory : NSObject

- (FFFMessageCell *)cellInTable:(UITableView*)tableView
                 forMessageMode:(FFFMessageModel *)model;

- (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
                            forTimeModel:(FFFTimestampModel *)model;

@end
