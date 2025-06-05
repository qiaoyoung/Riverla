// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldDb.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESCustomNotificationObject;
@class ChangeMargin;
//: @interface NTESCustomNotificationDB : NSObject
@interface ShouldDb : NSObject

//: + (instancetype)sharedInstance;;
+ (instancetype)instance;;

//: @property (nonatomic,assign) NSInteger unreadCount;
@property (nonatomic,assign) NSInteger unreadCount;

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)wearer:(ChangeMargin *)notification
                          //: limit:(NSInteger)limit;
                          futurism:(NSInteger)limit;

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification;
- (BOOL)background:(ChangeMargin *)notification;

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification;
- (void)with:(ChangeMargin *)notification;

//: - (void)deleteAllNotification;
- (void)boxNotification;

//: - (void)markAllNotificationsAsRead;
- (void)info;

//: @end
@end