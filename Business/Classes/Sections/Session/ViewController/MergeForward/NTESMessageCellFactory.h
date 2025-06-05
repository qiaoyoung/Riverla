//
//  NTESMessageCellFactory.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

#import "FFFMessageCellFactory.h"
#import "NTESTimestampCell.h"
#import "NTESMergeMessageCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface NTESMessageCellFactory : FFFMessageCellFactory

- (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
                           forMessageMode:(FFFMessageModel *)model;

- (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
                          forTimeModel:(FFFTimestampModel *)model;

@end

NS_ASSUME_NONNULL_END
