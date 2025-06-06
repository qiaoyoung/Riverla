
#import <Foundation/Foundation.h>

NSString *StringFromLimitData(Byte *data);


//: insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)
Byte kStr_spaceColorName[] = {60, 96, 9, 217, 56, 37, 192, 243, 134, 41, 63, 44, 63, 44, 63, 44, 63, 44, 63, 40, 115, 101, 117, 108, 97, 118, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 115, 117, 116, 97, 116, 115, 44, 116, 110, 101, 116, 110, 111, 99, 44, 114, 101, 118, 105, 101, 99, 101, 114, 44, 114, 101, 100, 110, 101, 115, 44, 103, 97, 116, 101, 109, 105, 116, 40, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 111, 116, 110, 105, 32, 116, 114, 101, 115, 110, 105, 115};


//: content
Byte kStr_kitWithValue[] = {57, 7, 9, 115, 89, 229, 193, 195, 224, 116, 110, 101, 116, 110, 111, 99, 44};


//: create index if not exists readindex on notifications(status)
Byte kStr_appStopName[] = {79, 61, 5, 32, 77, 41, 115, 117, 116, 97, 116, 115, 40, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 110, 111, 32, 120, 101, 100, 110, 105, 100, 97, 101, 114, 32, 115, 116, 115, 105, 120, 101, 32, 116, 111, 110, 32, 102, 105, 32, 120, 101, 100, 110, 105, 32, 101, 116, 97, 101, 114, 99, 231};


//: create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)
Byte kStr_normalItemDisplayText[] = {20, 165, 8, 217, 231, 237, 126, 47, 41, 114, 101, 103, 101, 116, 110, 105, 32, 115, 117, 116, 97, 116, 115, 44, 116, 120, 101, 116, 32, 116, 110, 101, 116, 110, 111, 99, 44, 116, 120, 101, 116, 32, 114, 101, 118, 105, 101, 99, 101, 114, 44, 116, 120, 101, 116, 32, 114, 101, 100, 110, 101, 115, 44, 114, 101, 103, 101, 116, 110, 105, 32, 103, 97, 116, 101, 109, 105, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 44, 121, 101, 107, 32, 121, 114, 97, 109, 105, 114, 112, 32, 114, 101, 103, 101, 116, 110, 105, 32, 108, 97, 105, 114, 101, 115, 40, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 115, 116, 115, 105, 120, 101, 32, 116, 111, 110, 32, 102, 105, 32, 101, 108, 98, 97, 116, 32, 101, 116, 97, 101, 114, 99, 130};


//: select * from notifications where timetag < %f and status != ? order by timetag desc limit ?
Byte kStr_questionValue[] = {28, 92, 12, 78, 170, 21, 23, 104, 126, 79, 129, 63, 63, 32, 116, 105, 109, 105, 108, 32, 99, 115, 101, 100, 32, 103, 97, 116, 101, 109, 105, 116, 32, 121, 98, 32, 114, 101, 100, 114, 111, 32, 63, 32, 61, 33, 32, 115, 117, 116, 97, 116, 115, 32, 100, 110, 97, 32, 102, 37, 32, 60, 32, 103, 97, 116, 101, 109, 105, 116, 32, 101, 114, 101, 104, 119, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 109, 111, 114, 102, 32, 42, 32, 116, 99, 101, 108, 101, 115, 175};


//: create index if not exists timetagindex on notifications(timetag)
Byte kStr_shadowInfoName[] = {19, 65, 8, 246, 78, 50, 38, 234, 41, 103, 97, 116, 101, 109, 105, 116, 40, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 110, 111, 32, 120, 101, 100, 110, 105, 103, 97, 116, 101, 109, 105, 116, 32, 115, 116, 115, 105, 120, 101, 32, 116, 111, 110, 32, 102, 105, 32, 120, 101, 100, 110, 105, 32, 101, 116, 97, 101, 114, 99, 68};


//: update notifications set status  = ? where serial = ?
Byte kStr_nameTitle[] = {35, 53, 6, 142, 9, 197, 63, 32, 61, 32, 108, 97, 105, 114, 101, 115, 32, 101, 114, 101, 104, 119, 32, 63, 32, 61, 32, 32, 115, 117, 116, 97, 116, 115, 32, 116, 101, 115, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 101, 116, 97, 100, 112, 117, 184};


//: select * from notifications where status != ? order by timetag desc limit ?
Byte kStr_limitText[] = {42, 75, 6, 245, 231, 31, 63, 32, 116, 105, 109, 105, 108, 32, 99, 115, 101, 100, 32, 103, 97, 116, 101, 109, 105, 116, 32, 121, 98, 32, 114, 101, 100, 114, 111, 32, 63, 32, 61, 33, 32, 115, 117, 116, 97, 116, 115, 32, 101, 114, 101, 104, 119, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 109, 111, 114, 102, 32, 42, 32, 116, 99, 101, 108, 101, 115, 56};


//: receiver
Byte kStr_tapTextExtensionTitle[] = {84, 8, 9, 15, 47, 154, 159, 224, 162, 114, 101, 118, 105, 101, 99, 101, 114, 197};


//: update notifications set status  = ? where status < ? or status > ?
Byte kStr_optionStopData[] = {69, 67, 8, 156, 161, 94, 162, 21, 63, 32, 62, 32, 115, 117, 116, 97, 116, 115, 32, 114, 111, 32, 63, 32, 60, 32, 115, 117, 116, 97, 116, 115, 32, 101, 114, 101, 104, 119, 32, 63, 32, 61, 32, 32, 115, 117, 116, 97, 116, 115, 32, 116, 101, 115, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 101, 116, 97, 100, 112, 117, 36};


//: update notifications set status  = ? where status = ?
Byte kStr_infoOnData[] = {12, 53, 13, 243, 103, 147, 38, 192, 3, 235, 26, 195, 149, 63, 32, 61, 32, 115, 117, 116, 97, 116, 115, 32, 101, 114, 101, 104, 119, 32, 63, 32, 61, 32, 32, 115, 117, 116, 97, 116, 115, 32, 116, 101, 115, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 101, 116, 97, 100, 112, 117, 90};


//: notification.db
Byte kStr_fileDoingContent[] = {66, 15, 7, 239, 200, 99, 64, 98, 100, 46, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 218};


//: timetag
Byte kStr_pinRedBubbleName[] = {10, 7, 7, 179, 15, 175, 157, 103, 97, 116, 101, 109, 105, 116, 181};


//: serial
Byte kStr_showData[] = {10, 6, 4, 94, 108, 97, 105, 114, 101, 115, 152};


//: sender
Byte kStr_optionValue[] = {30, 6, 10, 199, 41, 71, 26, 113, 168, 163, 114, 101, 100, 110, 101, 115, 170};


//: select count(serial) from notifications where status = ?
Byte kStr_optionChildName[] = {40, 56, 6, 215, 234, 220, 63, 32, 61, 32, 115, 117, 116, 97, 116, 115, 32, 101, 114, 101, 104, 119, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 109, 111, 114, 102, 32, 41, 108, 97, 105, 114, 101, 115, 40, 116, 110, 117, 111, 99, 32, 116, 99, 101, 108, 101, 115, 231};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldDb.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomNotificationDB.h"
#import "ShouldDb.h"
//: #import "FMDB.h"
#import "FMDB.h"
//: #import "NTESFileLocationHelper.h"
#import "TrademarkByScaleHelper.h"
//: #import "NTESCustomNotificationObject.h"
#import "ChangeMargin.h"

//: typedef NS_ENUM(NSInteger, CustomNotificationStatus){
typedef NS_ENUM(NSInteger, CustomNotificationStatus){
    //: CustomNotificationStatusNone = 0,
    CustomNotificationStatusNone = 0,
    //: CustomNotificationStatusRead = 1,
    CustomNotificationStatusRead = 1,
    //: CustomNotificationStatusDeleted = 2,
    CustomNotificationStatusDeleted = 2,
//: };
};

//: @interface NTESCustomNotificationDB ()
@interface ShouldDb ()
//: @property (nonatomic,strong) FMDatabase *db;
@property (nonatomic,strong) FMDatabase *db;
//: @end
@end


//: @implementation NTESCustomNotificationDB
@implementation ShouldDb

//: + (instancetype)sharedInstance { static NTESCustomNotificationDB *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[NTESCustomNotificationDB alloc] init]; }); return sharedNTESCustomNotificationDB; };
+ (instancetype)instance { static ShouldDb *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[ShouldDb alloc] init]; }); return sharedNTESCustomNotificationDB; };

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self openDatabase];
        [self lance];
    }
    //: return self;
    return self;
}


//: - (NSInteger)unreadCount
- (NSInteger)unreadCount
{
    //: __block NSInteger count = 0;
    __block NSInteger count = 0;
    //: io_sync_safe(^{
    io_sync_safe(^{
        //: count = _unreadCount;
        count = _unreadCount;
    //: });
    });
    //: return count;
    return count;
}

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)wearer:(ChangeMargin *)notification
                          //: limit:(NSInteger)limit{
                          futurism:(NSInteger)limit{
    //: __block NSArray *result = nil;
    __block NSArray *result = nil;

    //: NSString *sql = nil;
    NSString *sql = nil;
    //: if (notification)
    if (notification)
    {
        //: sql = [NSString stringWithFormat:@"select * from notifications where timetag < %f and status != ? order by timetag desc limit ?",
        sql = [NSString stringWithFormat:StringFromLimitData(kStr_questionValue),
               //: notification.timestamp] ;
               notification.timestamp] ;
    }
    //: else
    else
    {
        //: sql = @"select * from notifications where status != ? order by timetag desc limit ?";
        sql = StringFromLimitData(kStr_limitText);
    }
    //: io_sync_safe(^{
    io_sync_safe(^{
        //: NSMutableArray *array = [NSMutableArray array];
        NSMutableArray *array = [NSMutableArray array];
        //: FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        //: while ([rs next])
        while ([rs next])
        {
            //: NTESCustomNotificationObject *notification = [[NTESCustomNotificationObject alloc] init];
            ChangeMargin *notification = [[ChangeMargin alloc] init];
            //: notification.serial = (NSInteger)[rs intForColumn:@"serial"];
            notification.serial = (NSInteger)[rs intForColumn:StringFromLimitData(kStr_showData)];
            //: notification.timestamp = [rs doubleForColumn:@"timetag"];
            notification.timestamp = [rs doubleForColumn:StringFromLimitData(kStr_pinRedBubbleName)];
            //: notification.sender = [rs stringForColumn:@"sender"];
            notification.sender = [rs stringForColumn:StringFromLimitData(kStr_optionValue)];
            //: notification.receiver = [rs stringForColumn:@"receiver"];
            notification.receiver = [rs stringForColumn:StringFromLimitData(kStr_tapTextExtensionTitle)];
            //: notification.content = [rs stringForColumn:@"content"];
            notification.content = [rs stringForColumn:StringFromLimitData(kStr_kitWithValue)];
            //: [array addObject:notification];
            [array addObject:notification];
        }
        //: [rs close];
        [rs close];
        //: result = array;
        result = array;
    //: });
    });

    //: return result;
    return result;

}

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification{
- (BOOL)background:(ChangeMargin *)notification{
    //: __block BOOL result = NO;
    __block BOOL result = NO;
    //: io_sync_safe(^{
    io_sync_safe(^{
        //: if (notification)
        if (notification)
        {
            //: CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            //: NSString *sql = @"insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)";
            NSString *sql = StringFromLimitData(kStr_spaceColorName);

            //: if (![self.db executeUpdate:sql,
            if (![self.db executeUpdate:sql,
                  //: @(notification.timestamp),
                  @(notification.timestamp),
                  //: notification.sender,
                  notification.sender,
                  //: notification.receiver,
                  notification.receiver,
                  //: notification.content,
                  notification.content,
                  //: @(status)])
                  @(status)])
            {
            }
            //: else
            else
            {
                //: notification.serial = (NSInteger)[self.db lastInsertRowId];
                notification.serial = (NSInteger)[self.db lastInsertRowId];
                //: if (notification.needBadge) {
                if (notification.needBadge) {
                    //: self.unreadCount++;
                    self.unreadCount++;
                }
                //: result = YES;
                result = YES;
            }
        }
    //: });
    });
    //: return result;
    return result;

}

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification{
- (void)with:(ChangeMargin *)notification{
    //: NSString *sql = @"update notifications set status  = ? where serial = ?";
    NSString *sql = StringFromLimitData(kStr_nameTitle);
    //: io_async(^{
    io_async(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        {
        }
        //: [self queryUnreadCount];
        [self queryTeam];
    //: });
    });
}


//: - (void)deleteAllNotification{
- (void)boxNotification{
    //: NSString *sql = @"update notifications set status  = ? where status < ? or status > ?";
    NSString *sql = StringFromLimitData(kStr_optionStopData);
    //: io_async(^{
    io_async(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        {
        }
        //: [self queryUnreadCount];
        [self queryTeam];
    //: });
    });
}


//: - (void)markAllNotificationsAsRead{
- (void)info{
    //: NSString *sql = @"update notifications set status  = ? where status = ?";
    NSString *sql = StringFromLimitData(kStr_infoOnData);
    //: io_sync_safe(^{
    io_sync_safe(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        {
        }
        //: [self queryUnreadCount];
        [self queryTeam];
    //: });
    });
}

//: - (void)queryUnreadCount{
- (void)queryTeam{
    //: NSInteger count = 0;
    NSInteger count = 0;
    //: NSString *sql = @"select count(serial) from notifications where status = ?";
    NSString *sql = StringFromLimitData(kStr_optionChildName);
    //: FMResultSet *rs = [_db executeQuery:sql,@(CustomNotificationStatusNone)];
    FMResultSet *rs = [_db executeQuery:sql,@(CustomNotificationStatusNone)];
    //: if ([rs next])
    if ([rs next])
    {
        //: count = (NSInteger)[rs intForColumnIndex:0];
        count = (NSInteger)[rs intForColumnIndex:0];
    }
    //: [rs close];
    [rs close];

    //: if (count != _unreadCount)
    if (count != _unreadCount)
    {
        //: self.unreadCount = count;
        self.unreadCount = count;
    }
}


//: #pragma mark - Misc
#pragma mark - Misc
//: - (void)openDatabase
- (void)lance
{
    //: NSString *filepath = [[NTESFileLocationHelper userDirectory] stringByAppendingString:@"notification.db"];
    NSString *filepath = [[TrademarkByScaleHelper endUser] stringByAppendingString:StringFromLimitData(kStr_fileDoingContent)];
    //: FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    //: if ([db open])
    if ([db open])
    {
        //: _db = db;
        _db = db;
        //: NSArray *sqls = @[@"create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)",
        NSArray *sqls = @[StringFromLimitData(kStr_normalItemDisplayText),

                          //: @"create index if not exists readindex on notifications(status)",
                          StringFromLimitData(kStr_appStopName),
                          //: @"create index if not exists timetagindex on notifications(timetag)"];
                          StringFromLimitData(kStr_shadowInfoName)];
        //: for (NSString *sql in sqls)
        for (NSString *sql in sqls)
        {
            //: if (![_db executeUpdate:sql])
            if (![_db executeUpdate:sql])
            {
            }
        }
        //: [self queryUnreadCount];
        [self queryTeam];
    }
    //: else
    else
    {
    }
}

//: static const void * const NTESDispatchIOSpecificKey = &NTESDispatchIOSpecificKey;
static const void * const let_tapTitle = &let_tapTitle;
//: dispatch_queue_t NTESDispatchIOQueue()
dispatch_queue_t NTESDispatchIOQueue()
{
    //: static dispatch_queue_t queue;
    static dispatch_queue_t queue;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: queue = dispatch_queue_create("nim.demo.io.queue", 0);
        queue = dispatch_queue_create("nim.demo.io.queue", 0);
        //: dispatch_queue_set_specific(queue, NTESDispatchIOSpecificKey, (void *)NTESDispatchIOSpecificKey, NULL);
        dispatch_queue_set_specific(queue, let_tapTitle, (void *)let_tapTitle, NULL);
    //: });
    });
    //: return queue;
    return queue;
}


//: typedef void(^dispatch_block)(void);
typedef void(^dispatch_block)(void);
//: void io_sync_safe(dispatch_block block)
void io_sync_safe(dispatch_block block)
{
    //: if (dispatch_get_specific(NTESDispatchIOSpecificKey))
    if (dispatch_get_specific(let_tapTitle))
    {
        //: block();
        block();
    }
    //: else
    else
    {
        //: dispatch_sync(NTESDispatchIOQueue(), ^() {
        dispatch_sync(NTESDispatchIOQueue(), ^() {
            //: block();
            block();
        //: });
        });
    }
}


//: void io_async(dispatch_block block){
void io_async(dispatch_block block){
    //: dispatch_async(NTESDispatchIOQueue(), ^() {
    dispatch_async(NTESDispatchIOQueue(), ^() {
        //: block();
        block();
    //: });
    });
}


//: @end
@end

Byte * LimitDataToCache(Byte *data) {
    int replyWindow = data[0];
    int titleMake = data[1];
    int hypocorism = data[2];
    if (!replyWindow) return data + hypocorism;
    for (int i = 0; i < titleMake / 2; i++) {
        int begin = hypocorism + i;
        int end = hypocorism + titleMake - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[hypocorism + titleMake] = 0;
    return data + hypocorism;
}

NSString *StringFromLimitData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)LimitDataToCache(data)];
}  
