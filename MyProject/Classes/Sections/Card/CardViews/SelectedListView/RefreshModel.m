// __DEBUG__
// __CLOSE_PRINT__
//
//  RefreshModel.m
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SelectedListModel.h"
#import "RefreshModel.h"

//: @implementation SelectedListModel
@implementation RefreshModel

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithView:(NSInteger)sid
                      //: Title:(NSString *)title{
                      enable:(NSString *)title{

    //: return [[SelectedListModel alloc] initWithSid:sid Title:title Context:nil];
    return [[RefreshModel alloc] initWithTotalItem:sid timeTag:title comparison:nil];
}

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithTotalItem:(NSInteger)sid
                      //: Title:(NSString *)title
                      timeTag:(NSString *)title
                    //: Context:(id)context{
                    comparison:(id)context{

    //: self = [super init];
    self = [super init];

    //: if (self) {
    if (self) {

        //: _sid = sid;
        _sid = sid;

        //: _title = title;
        _title = title;

        //: _context = context;
        _context = context;
    }

    //: return self;
    return self;
}

//: @end
@end