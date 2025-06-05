// __DEBUG__
// __CLOSE_PRINT__
//
//  ElectronicImageLength.h
// Notice
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
@interface ElectronicImageLength : NSObject

//: + (NIMMessage*)msgWithText:(NSString *)text;
+ (NIMMessage*)installment:(NSString *)text;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)withAudio:(NSString *)filePath;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)ofGreen:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)ignore:(NSString *)path;

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)deleteModel:(NSData *)data show:(NSString *)extension;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)actionVideo:(NSString *)filePath;


//: @end
@end


//: @interface NIMCommentMaker : NSObject
@interface OriginVideo : NSObject

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)colorRange:(int64_t)type
                             //: content:(NSString *)content
                             key:(NSString *)content
                                 //: ext:(NSString *)ext;
                                 view_strong:(NSString *)ext;

//: @end
@end