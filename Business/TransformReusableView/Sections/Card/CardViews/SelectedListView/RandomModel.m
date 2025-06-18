// __DEBUG__
// __CLOSE_PRINT__
//
//  RandomModel.m
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SelectedListModel.h"
#import "RandomModel.h"

//: @implementation SelectedListModel
@implementation RandomModel

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithModel:(NSInteger)sid
                      //: Title:(NSString *)title{
                      emptyTitle:(NSString *)title{

    //: return [[SelectedListModel alloc] initWithSid:sid Title:title Context:nil];
    return [[RandomModel alloc] initWithFixing:sid content:title stateContext:nil];
}

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithFixing:(NSInteger)sid
                      //: Title:(NSString *)title
                      content:(NSString *)title
                    //: Context:(id)context{
                    stateContext:(id)context{

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