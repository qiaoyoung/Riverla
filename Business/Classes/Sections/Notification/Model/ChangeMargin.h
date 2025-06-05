// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeMargin.h
//  NIM
//
//  Created by chris on 15/5/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESCustomNotificationObject : NSObject
@interface ChangeMargin : NSObject


/**
 *  存储用的标识
 */
//: @property (nonatomic,assign) NSInteger serial;
@property (nonatomic,assign) NSInteger serial;

/**
 *  时间戳
 */
//: @property (nonatomic,assign) NSTimeInterval timestamp;
@property (nonatomic,assign) NSTimeInterval timestamp;

/**
 *  通知发起者id
 */
//: @property (nonatomic,copy) NSString *sender;
@property (nonatomic,copy) NSString *sender;

/**
 *  通知接受者id
 */
//: @property (nonatomic,copy) NSString *receiver;
@property (nonatomic,copy) NSString *receiver;

/**
 *  透传的消息体内容
 */
//: @property (nonatomic,copy) NSString *content;
@property (nonatomic,copy) NSString *content;


/**
 *  是否需要未读计数
 */
//: @property (nonatomic,assign) BOOL needBadge;
@property (nonatomic,assign) BOOL needBadge;


//: - (instancetype)initWithNotification:(NIMCustomSystemNotification *)notification;
- (instancetype)initWithColor:(NIMCustomSystemNotification *)notification;


//: @end
@end