//
//  NTESCustomNotificationDB.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NTESCustomNotificationObject;
@interface NTESCustomNotificationDB : NSObject

dSINGLETON_FOR_CLASS_HEADER(NTESCustomNotificationDB);

@property (nonatomic,assign) NSInteger unreadCount;

- (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
                          limit:(NSInteger)limit;

- (BOOL)saveNotification:(NTESCustomNotificationObject *)notification;

- (void)deleteNotification:(NTESCustomNotificationObject *)notification;

- (void)deleteAllNotification;

- (void)markAllNotificationsAsRead;

@end
