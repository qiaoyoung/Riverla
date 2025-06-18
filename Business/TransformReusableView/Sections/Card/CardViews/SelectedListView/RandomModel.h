// __DEBUG__
// __CLOSE_PRINT__
//
//  RandomModel.h
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface SelectedListModel : NSObject
@interface RandomModel : NSObject

//: @property (nonatomic , assign ) NSInteger sid;
@property (nonatomic , assign ) NSInteger sid;

//: @property (nonatomic , copy ) NSString *title;
@property (nonatomic , copy ) NSString *title;

//: @property (nonatomic , strong ) id context;
@property (nonatomic , strong ) id context;

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithModel:(NSInteger)sid
                      //: Title:(NSString *)title;
                      emptyTitle:(NSString *)title;

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithFixing:(NSInteger)sid
                      //: Title:(NSString *)title
                      content:(NSString *)title
                    //: Context:(id)context;
                    stateContext:(id)context;

//: @end
@end