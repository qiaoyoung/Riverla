
#import <Foundation/Foundation.h>

NSString *StringFromMessageData(Byte *data);


//: create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)
Byte kStr_addPinValue[] = {17, 165, 9, 238, 46, 37, 62, 168, 147, 41, 114, 101, 103, 101, 116, 110, 105, 32, 115, 117, 116, 97, 116, 115, 44, 116, 120, 101, 116, 32, 116, 110, 101, 116, 110, 111, 99, 44, 116, 120, 101, 116, 32, 114, 101, 118, 105, 101, 99, 101, 114, 44, 116, 120, 101, 116, 32, 114, 101, 100, 110, 101, 115, 44, 114, 101, 103, 101, 116, 110, 105, 32, 103, 97, 116, 101, 109, 105, 116, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 44, 121, 101, 107, 32, 121, 114, 97, 109, 105, 114, 112, 32, 114, 101, 103, 101, 116, 110, 105, 32, 108, 97, 105, 114, 101, 115, 40, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 115, 116, 115, 105, 120, 101, 32, 116, 111, 110, 32, 102, 105, 32, 101, 108, 98, 97, 116, 32, 101, 116, 97, 101, 114, 99, 232};


//: select * from notifications where timetag < %f and status != ? order by timetag desc limit ?
Byte kStr_onTitle[] = {66, 92, 8, 235, 29, 118, 249, 227, 63, 32, 116, 105, 109, 105, 108, 32, 99, 115, 101, 100, 32, 103, 97, 116, 101, 109, 105, 116, 32, 121, 98, 32, 114, 101, 100, 114, 111, 32, 63, 32, 61, 33, 32, 115, 117, 116, 97, 116, 115, 32, 100, 110, 97, 32, 102, 37, 32, 60, 32, 103, 97, 116, 101, 109, 105, 116, 32, 101, 114, 101, 104, 119, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 109, 111, 114, 102, 32, 42, 32, 116, 99, 101, 108, 101, 115, 169};


//: receiver
Byte kStr_contentBubbleText[] = {36, 8, 3, 114, 101, 118, 105, 101, 99, 101, 114, 93};


//: create index if not exists readindex on notifications(status)
Byte kStr_bubbleNameContent[] = {75, 61, 10, 132, 185, 61, 172, 58, 59, 13, 41, 115, 117, 116, 97, 116, 115, 40, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 110, 111, 32, 120, 101, 100, 110, 105, 100, 97, 101, 114, 32, 115, 116, 115, 105, 120, 101, 32, 116, 111, 110, 32, 102, 105, 32, 120, 101, 100, 110, 105, 32, 101, 116, 97, 101, 114, 99, 154};


//: content
Byte kStr_myHandleData[] = {42, 7, 13, 145, 253, 114, 197, 16, 184, 57, 7, 248, 35, 116, 110, 101, 116, 110, 111, 99, 206};


//: update notifications set status  = ? where status < ? or status > ?
Byte kStr_cellObjectTitle[] = {42, 67, 10, 55, 89, 219, 80, 98, 238, 236, 63, 32, 62, 32, 115, 117, 116, 97, 116, 115, 32, 114, 111, 32, 63, 32, 60, 32, 115, 117, 116, 97, 116, 115, 32, 101, 114, 101, 104, 119, 32, 63, 32, 61, 32, 32, 115, 117, 116, 97, 116, 115, 32, 116, 101, 115, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 101, 116, 97, 100, 112, 117, 154};


//: notification.db
Byte kStr_sessionText[] = {21, 15, 7, 223, 223, 212, 174, 98, 100, 46, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 169};


//: create index if not exists timetagindex on notifications(timetag)
Byte kStr_styleContent[] = {29, 65, 12, 147, 37, 114, 71, 121, 34, 20, 135, 94, 41, 103, 97, 116, 101, 109, 105, 116, 40, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 110, 111, 32, 120, 101, 100, 110, 105, 103, 97, 116, 101, 109, 105, 116, 32, 115, 116, 115, 105, 120, 101, 32, 116, 111, 110, 32, 102, 105, 32, 120, 101, 100, 110, 105, 32, 101, 116, 97, 101, 114, 99, 248};


//: sender
Byte kStr_insertContent[] = {91, 6, 5, 98, 36, 114, 101, 100, 110, 101, 115, 47};


//: update notifications set status  = ? where status = ?
Byte kStr_itemName[] = {65, 53, 6, 60, 99, 46, 63, 32, 61, 32, 115, 117, 116, 97, 116, 115, 32, 101, 114, 101, 104, 119, 32, 63, 32, 61, 32, 32, 115, 117, 116, 97, 116, 115, 32, 116, 101, 115, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 101, 116, 97, 100, 112, 117, 168};


//: timetag
Byte kStr_colorContent[] = {87, 7, 4, 181, 103, 97, 116, 101, 109, 105, 116, 217};


//: update notifications set status  = ? where serial = ?
Byte kStr_messageCaptureValue[] = {57, 53, 13, 158, 105, 244, 86, 63, 61, 30, 52, 179, 208, 63, 32, 61, 32, 108, 97, 105, 114, 101, 115, 32, 101, 114, 101, 104, 119, 32, 63, 32, 61, 32, 32, 115, 117, 116, 97, 116, 115, 32, 116, 101, 115, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 101, 116, 97, 100, 112, 117, 70};


//: select * from notifications where status != ? order by timetag desc limit ?
Byte kStr_mobileContent[] = {21, 75, 3, 63, 32, 116, 105, 109, 105, 108, 32, 99, 115, 101, 100, 32, 103, 97, 116, 101, 109, 105, 116, 32, 121, 98, 32, 114, 101, 100, 114, 111, 32, 63, 32, 61, 33, 32, 115, 117, 116, 97, 116, 115, 32, 101, 114, 101, 104, 119, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 109, 111, 114, 102, 32, 42, 32, 116, 99, 101, 108, 101, 115, 178};


//: insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)
Byte kStr_remoteTitle[] = {63, 96, 12, 64, 89, 44, 37, 161, 80, 132, 22, 145, 41, 63, 44, 63, 44, 63, 44, 63, 44, 63, 40, 115, 101, 117, 108, 97, 118, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 115, 117, 116, 97, 116, 115, 44, 116, 110, 101, 116, 110, 111, 99, 44, 114, 101, 118, 105, 101, 99, 101, 114, 44, 114, 101, 100, 110, 101, 115, 44, 103, 97, 116, 101, 109, 105, 116, 40, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 111, 116, 110, 105, 32, 116, 114, 101, 115, 110, 105, 81};


//: serial
Byte kStr_enableContent[] = {51, 6, 7, 58, 31, 5, 173, 108, 97, 105, 114, 101, 115, 152};


//: select count(serial) from notifications where status = ?
Byte kStr_selectedName[] = {52, 56, 13, 148, 129, 190, 18, 31, 248, 145, 133, 188, 121, 63, 32, 61, 32, 115, 117, 116, 97, 116, 115, 32, 101, 114, 101, 104, 119, 32, 115, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 109, 111, 114, 102, 32, 41, 108, 97, 105, 114, 101, 115, 40, 116, 110, 117, 111, 99, 32, 116, 99, 101, 108, 101, 115, 43};

// __DEBUG__
// __CLOSE_PRINT__
//
//  OpenDb.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomNotificationDB.h"
#import "OpenDb.h"
//: #import "FMDB.h"
#import "FMDB.h"
//: #import "NTESFileLocationHelper.h"
#import "MessageSearchedHelper.h"
//: #import "NTESCustomNotificationObject.h"
#import "ButtonObject.h"

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
@interface OpenDb ()
//: @property (nonatomic,strong) FMDatabase *db;
@property (nonatomic,strong) FMDatabase *db;
//: @end
@end


//: @implementation NTESCustomNotificationDB
@implementation OpenDb

//: + (instancetype)sharedInstance { static NTESCustomNotificationDB *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[NTESCustomNotificationDB alloc] init]; }); return sharedNTESCustomNotificationDB; };
+ (instancetype)corporate { static OpenDb *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[OpenDb alloc] init]; }); return sharedNTESCustomNotificationDB; };

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self openDatabase];
        [self successOf];
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
- (NSArray *)magnitudeeract:(ButtonObject *)notification
                          //: limit:(NSInteger)limit{
                          timeOriginQuantity:(NSInteger)limit{
    //: __block NSArray *result = nil;
    __block NSArray *result = nil;

    //: NSString *sql = nil;
    NSString *sql = nil;
    //: if (notification)
    if (notification)
    {
        //: sql = [NSString stringWithFormat:@"select * from notifications where timetag < %f and status != ? order by timetag desc limit ?",
        sql = [NSString stringWithFormat:StringFromMessageData(kStr_onTitle),
               //: notification.timestamp] ;
               notification.timestamp] ;
    }
    //: else
    else
    {
        //: sql = @"select * from notifications where status != ? order by timetag desc limit ?";
        sql = StringFromMessageData(kStr_mobileContent);
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
            ButtonObject *notification = [[ButtonObject alloc] init];
            //: notification.serial = (NSInteger)[rs intForColumn:@"serial"];
            notification.serial = (NSInteger)[rs intForColumn:StringFromMessageData(kStr_enableContent)];
            //: notification.timestamp = [rs doubleForColumn:@"timetag"];
            notification.timestamp = [rs doubleForColumn:StringFromMessageData(kStr_colorContent)];
            //: notification.sender = [rs stringForColumn:@"sender"];
            notification.sender = [rs stringForColumn:StringFromMessageData(kStr_insertContent)];
            //: notification.receiver = [rs stringForColumn:@"receiver"];
            notification.receiver = [rs stringForColumn:StringFromMessageData(kStr_contentBubbleText)];
            //: notification.content = [rs stringForColumn:@"content"];
            notification.content = [rs stringForColumn:StringFromMessageData(kStr_myHandleData)];
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
- (BOOL)barName:(ButtonObject *)notification{
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
            NSString *sql = StringFromMessageData(kStr_remoteTitle);

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
- (void)enable:(ButtonObject *)notification{
    //: NSString *sql = @"update notifications set status  = ? where serial = ?";
    NSString *sql = StringFromMessageData(kStr_messageCaptureValue);
    //: io_async(^{
    io_async(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        {
        }
        //: [self queryUnreadCount];
        [self queryed];
    //: });
    });
}


//: - (void)deleteAllNotification{
- (void)tap{
    //: NSString *sql = @"update notifications set status  = ? where status < ? or status > ?";
    NSString *sql = StringFromMessageData(kStr_cellObjectTitle);
    //: io_async(^{
    io_async(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        {
        }
        //: [self queryUnreadCount];
        [self queryed];
    //: });
    });
}


//: - (void)markAllNotificationsAsRead{
- (void)midfield{
    //: NSString *sql = @"update notifications set status  = ? where status = ?";
    NSString *sql = StringFromMessageData(kStr_itemName);
    //: io_sync_safe(^{
    io_sync_safe(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        {
        }
        //: [self queryUnreadCount];
        [self queryed];
    //: });
    });
}

//: - (void)queryUnreadCount{
- (void)queryed{
    //: NSInteger count = 0;
    NSInteger count = 0;
    //: NSString *sql = @"select count(serial) from notifications where status = ?";
    NSString *sql = StringFromMessageData(kStr_selectedName);
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
- (void)successOf
{
    //: NSString *filepath = [[NTESFileLocationHelper userDirectory] stringByAppendingString:@"notification.db"];
    NSString *filepath = [[MessageSearchedHelper bubbleDirectory] stringByAppendingString:StringFromMessageData(kStr_sessionText)];
    //: FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    //: if ([db open])
    if ([db open])
    {
        //: _db = db;
        _db = db;
        //: NSArray *sqls = @[@"create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)",
        NSArray *sqls = @[StringFromMessageData(kStr_addPinValue),

                          //: @"create index if not exists readindex on notifications(status)",
                          StringFromMessageData(kStr_bubbleNameContent),
                          //: @"create index if not exists timetagindex on notifications(timetag)"];
                          StringFromMessageData(kStr_styleContent)];
        //: for (NSString *sql in sqls)
        for (NSString *sql in sqls)
        {
            //: if (![_db executeUpdate:sql])
            if (![_db executeUpdate:sql])
            {
            }
        }
        //: [self queryUnreadCount];
        [self queryed];
    }
    //: else
    else
    {
    }
}

//: static const void * const NTESDispatchIOSpecificKey = &NTESDispatchIOSpecificKey;
static const void * const kLet_touchDateName = &kLet_touchDateName;
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
        dispatch_queue_set_specific(queue, kLet_touchDateName, (void *)kLet_touchDateName, NULL);
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
    if (dispatch_get_specific(kLet_touchDateName))
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

Byte * MessageDataToCache(Byte *data) {
    int tableMy = data[0];
    int colourationShould = data[1];
    int fileVideo = data[2];
    if (!tableMy) return data + fileVideo;
    for (int i = 0; i < colourationShould / 2; i++) {
        int begin = fileVideo + i;
        int end = fileVideo + colourationShould - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[fileVideo + colourationShould] = 0;
    return data + fileVideo;
}

NSString *StringFromMessageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MessageDataToCache(data)];
}  
