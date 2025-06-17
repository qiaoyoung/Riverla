// __DEBUG__
// __CLOSE_PRINT__
//
//  CalendarWith.h
//  NIM
//
//  Created by chris on 15/6/29.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FFFCommonTableDelegate : NSObject<UITableViewDataSource,UITableViewDelegate>
@interface CalendarWith : NSObject<UITableViewDataSource,UITableViewDelegate>

//: - (instancetype) initWithTableData:(NSArray *(^)(void))data;
- (instancetype) initWithStreetwise:(NSArray *(^)(void))data;

//: @property (nonatomic,assign) CGFloat defaultSeparatorLeftEdge;
@property (nonatomic,assign) CGFloat defaultSeparatorLeftEdge;

//: @end
@end