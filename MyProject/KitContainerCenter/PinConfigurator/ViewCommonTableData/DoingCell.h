// __DEBUG__
// __CLOSE_PRINT__
//
//  DoingCell.h
//  NIM
//
//  Created by chris on 15/6/29.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: @class NIMCommonTableRow;
@class BuildRow;

//: @protocol FFFCommonTableViewCell <NSObject>
@protocol DoingCell <NSObject>

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (instancetype)initWithStatusIdentifier:(UITableViewCellStyle)style full_strong:(NSString *)reuseIdentifier;

//: @optional
@optional
//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;
- (void)elite:(BuildRow *)rowData past:(UITableView *)tableView;

//: @end
@end