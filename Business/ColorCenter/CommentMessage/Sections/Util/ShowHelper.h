// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowHelper.h
// Afterwards
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface FFFKitFileLocationHelper : NSObject
@interface ShowHelper : NSObject

//: + (NSString *)getAppDocumentPath;
+ (NSString *)text;

//: + (NSString *)getAppTempPath;
+ (NSString *)tool;

//: + (NSString *)userDirectory;
+ (NSString *)play;

//: + (NSString *)genFilenameWithExt:(NSString *)ext;
+ (NSString *)timeName:(NSString *)ext;

//: + (NSString *)filepathForVideo:(NSString *)filename;
+ (NSString *)nameVideo:(NSString *)filename;

//: + (NSString *)filepathForImage:(NSString *)filename;
+ (NSString *)showFilter:(NSString *)filename;

//: @end
@end