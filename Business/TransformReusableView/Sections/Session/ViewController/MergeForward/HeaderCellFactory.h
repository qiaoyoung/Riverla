// __DEBUG__
// __CLOSE_PRINT__
//
//  HeaderCellFactory.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCellFactory.h"
#import "ThanFactory.h"
//: #import "NTESTimestampCell.h"
#import "PickApartViewCell.h"
//: #import "NTESMergeMessageCell.h"
#import "CloseMessageCell.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageCellFactory : FFFMessageCellFactory
@interface HeaderCellFactory : ThanFactory

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (CloseMessageCell *)inscription:(UITableView*)tableView
                           //: forMessageMode:(FFFMessageModel *)model;
                           compartmentData:(StochasticProcessTeam *)model;

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (PickApartViewCell *)ting:(UITableView *)tableView
                          //: forTimeModel:(FFFTimestampModel *)model;
                          specialSession:(ModelTimestampSupport *)model;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END