// __DEBUG__
// __CLOSE_PRINT__
//
//  ArrayUtil.h
//  NIMDemo
//
//  Created by ght on 15-1-27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
// 最近会话本地扩展标记类型

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: typedef NS_ENUM(NSInteger, NTESRecentSessionMarkType){
typedef NS_ENUM(NSInteger, NTESRecentSessionMarkType){
    // @ 标记
    //: NTESRecentSessionMarkTypeAt,
    NTESRecentSessionMarkTypeAt,
    // 置顶标记（已废弃）
    //: NTESRecentSessionMarkTypeTop,
    NTESRecentSessionMarkTypeTop,
//: };
};

//: @interface NTESSessionUtil : NSObject
@interface ArrayUtil : NSObject

//: + (CGSize)getImageSizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)shirtButtonSize:(CGSize)originSize
                                  //: minSize:(CGSize)imageMinSize
                                  text:(CGSize)imageMinSize
                                  //: maxSize:(CGSize)imageMaxSize;
                                  bar:(CGSize)imageMaxSize;

//: + (NSString *)showNick:(NSString*)uid inSession:(NIMSession*)session;
+ (NSString *)bringHome:(NSString*)uid imageSession:(NIMSession*)session;

//接收时间格式化
//: + (NSString*)showTime:(NSTimeInterval) msglastTime showDetail:(BOOL)showDetail;
+ (NSString*)viewDetail:(NSTimeInterval) msglastTime list:(BOOL)showDetail;

//: + (void)sessionWithInputURL:(NSURL*)inputURL
+ (void)quickWindow:(NSURL*)inputURL
                  //: outputURL:(NSURL*)outputURL
                  pinImage:(NSURL*)outputURL
               //: blockHandler:(void (^)(AVAssetExportSession*))handler;
               specialSessionThroughHandler:(void (^)(AVAssetExportSession*))handler;


//: + (NSDictionary *)dictByJsonData:(NSData *)data;
+ (NSDictionary *)ting:(NSData *)data;

//: + (NSDictionary *)dictByJsonString:(NSString *)jsonString;
+ (NSDictionary *)tin:(NSString *)jsonString;

//: + (BOOL)canMessageBeForwarded:(NIMMessage *)message;
+ (BOOL)afoot:(NIMMessage *)message;

//: + (BOOL)canMessageBeRevoked:(NIMMessage *)message;
+ (BOOL)nearItem:(NIMMessage *)message;

//: + (BOOL)canMessageBeCanceled:(NIMMessage *)message;
+ (BOOL)messageCanceled:(NIMMessage *)message;

//: + (NSString *)tipOnMessageRevoked:(NIMRevokeMessageNotification *)notificaton;
+ (NSString *)cover:(NIMRevokeMessageNotification *)notificaton;

//: + (NSString *)tipOnMessageRevokedLocal:(NSString *)postscript;
+ (NSString *)secretTitle:(NSString *)postscript;

//: + (void)addRecentSessionMark:(NIMSession *)session type:(NTESRecentSessionMarkType)type;
+ (void)redSub:(NIMSession *)session will:(NTESRecentSessionMarkType)type;

//: + (void)removeRecentSessionMark:(NIMSession *)session type:(NTESRecentSessionMarkType)type;
+ (void)distance:(NIMSession *)session extra:(NTESRecentSessionMarkType)type;

//: + (BOOL)recentSessionIsMark:(NIMRecentSession *)recent type:(NTESRecentSessionMarkType)type;
+ (BOOL)on:(NIMRecentSession *)recent touch:(NTESRecentSessionMarkType)type;



//: + (NSString *)onlineState:(NSString *)userId detail:(BOOL)detail;
+ (NSString *)recording:(NSString *)userId key:(BOOL)detail;

//: + (NSString *)formatAutoLoginMessage:(NSError *)error;
+ (NSString *)voice:(NSError *)error;

//: @end
@end