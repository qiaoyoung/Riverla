// __DEBUG__
// __CLOSE_PRINT__
//
//  OpenDb.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESCustomNotificationObject;
@class ButtonObject;
//: @interface NTESCustomNotificationDB : NSObject
@interface OpenDb : NSObject

//: + (instancetype)sharedInstance;;
+ (instancetype)corporate;;

//: @property (nonatomic,assign) NSInteger unreadCount;
@property (nonatomic,assign) NSInteger unreadCount;

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)magnitudeeract:(ButtonObject *)notification
                          //: limit:(NSInteger)limit;
                          timeOriginQuantity:(NSInteger)limit;

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification;
- (BOOL)barName:(ButtonObject *)notification;

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification;
- (void)enable:(ButtonObject *)notification;

//: - (void)deleteAllNotification;
- (void)tap;

//: - (void)markAllNotificationsAsRead;
- (void)midfield;

//: @end
@end