// __DEBUG__
// __CLOSE_PRINT__
//
//  LinkCellFactory.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCellFactory.h"
#import "LinkIndex.h"
//: #import "NTESTimestampCell.h"
#import "NoticeMarginView.h"
//: #import "NTESMergeMessageCell.h"
#import "RecentMessageCell.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageCellFactory : FFFMessageCellFactory
@interface LinkCellFactory : LinkIndex

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (RecentMessageCell *)compartment:(UITableView*)tableView
                           //: forMessageMode:(FFFMessageModel *)model;
                           lengthSegment:(MaxLink *)model;

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (NoticeMarginView *)limit:(UITableView *)tableView
                          //: forTimeModel:(FFFTimestampModel *)model;
                          inwardModel:(IndexIcon *)model;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END