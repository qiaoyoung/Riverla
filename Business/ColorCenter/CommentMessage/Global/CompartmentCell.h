// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentCell.h
//  NIM
//
//  Created by chris on 15/6/29.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: @class NIMCommonTableRow;
@class ColorContentRow;

//: @protocol FFFCommonTableViewCell <NSObject>
@protocol CompartmentCell <NSObject>

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (instancetype)initWithVertical:(UITableViewCellStyle)style text:(NSString *)reuseIdentifier;

//: @optional
@optional
//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;
- (void)view:(ColorContentRow *)rowData title:(UITableView *)tableView;

//: @end
@end