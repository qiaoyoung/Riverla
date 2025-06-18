// __DEBUG__
// __CLOSE_PRINT__
//
//  ThreadMaker.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: @class MyUserKitLocationPoint;
@class MyUserKitLocationPoint;

//: @interface FFFMessageMaker : NSObject
@interface ThreadMaker : NSObject

//: + (NIMMessage*)msgWithText:(NSString *)text;
+ (NIMMessage*)cancel:(NSString *)text;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)insideInformation:(NSString *)filePath;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)tool:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)should:(NSString *)path;

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)human:(NSData *)data disable:(NSString *)extension;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)theFind:(NSString *)filePath;


//: @end
@end


//: @interface NIMCommentMaker : NSObject
@interface CommentTingSailmakerMaker : NSObject

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)groundButton:(int64_t)type
                             //: content:(NSString *)content
                             margin:(NSString *)content
                                 //: ext:(NSString *)ext;
                                 segment:(NSString *)ext;

//: @end
@end