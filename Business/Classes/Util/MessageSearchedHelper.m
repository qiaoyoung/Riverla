
#import <Foundation/Foundation.h>

NSString *StringFromDrivewayData(Byte *data);


//: image
Byte kStr_logTitle[] = {27, 5, 67, 7, 132, 131, 90, 172, 176, 164, 170, 168, 166};


//: video
Byte kStr_apologyTitle[] = {31, 5, 34, 8, 62, 26, 212, 192, 152, 139, 134, 135, 145, 98};


//: merge
Byte kStr_emptyExecutiveValue[] = {64, 5, 58, 13, 194, 189, 74, 51, 217, 174, 46, 109, 128, 167, 159, 172, 161, 159, 76};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageSearchedHelper.m
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFileLocationHelper.h"
#import "MessageSearchedHelper.h"
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "FFFConfig.h"
#import "ButtonConfig.h"

//: @interface NTESFileLocationHelper ()
@interface MessageSearchedHelper ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)marque: (NSString *)dirname info: (NSString *)filename;
//: @end
@end


//: @implementation NTESFileLocationHelper
@implementation MessageSearchedHelper
//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)overleapFinished:(NSURL *)URL
{
    //: assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);
    assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);


    //: NSError *error = nil;
    NSError *error = nil;
    //: BOOL success = [URL setResourceValue:@(YES)
    BOOL success = [URL setResourceValue:@(YES)
                                  //: forKey:NSURLIsExcludedFromBackupKey
                                  forKey:NSURLIsExcludedFromBackupKey
                                   //: error:&error];
                                   error:&error];
    //: if(!success)
    if(!success)
    {
    }
    //: return success;
    return success;

}
//: + (NSString *)getAppDocumentPath
+ (NSString *)disappearBy
{
    //: static NSString *appDocumentPath = nil;
    static NSString *appDocumentPath = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NSString *appKey = [[FFFConfig sharedConfig] appKey];
        NSString *appKey = [[ButtonConfig inputConfig] appKey];
        //: NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        //: appDocumentPath= [[NSString alloc]initWithFormat:@"%@/%@/",[paths objectAtIndex:0],appKey];
        appDocumentPath= [[NSString alloc]initWithFormat:@"%@/%@/",[paths objectAtIndex:0],appKey];
        //: if (![[NSFileManager defaultManager] fileExistsAtPath:appDocumentPath])
        if (![[NSFileManager defaultManager] fileExistsAtPath:appDocumentPath])
        {
            //: [[NSFileManager defaultManager] createDirectoryAtPath:appDocumentPath
            [[NSFileManager defaultManager] createDirectoryAtPath:appDocumentPath
                                      //: withIntermediateDirectories:NO
                                      withIntermediateDirectories:NO
                                                       //: attributes:nil
                                                       attributes:nil
                                                            //: error:nil];
                                                            error:nil];
        }
        //: [NTESFileLocationHelper addSkipBackupAttributeToItemAtURL:[NSURL fileURLWithPath:appDocumentPath]];
        [MessageSearchedHelper overleapFinished:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}

//: + (NSString *)getAppTempPath
+ (NSString *)world
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}

//: + (NSString *)userDirectory
+ (NSString *)bubbleDirectory
{
    //: NSString *documentPath = [NTESFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [MessageSearchedHelper disappearBy];
    //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: if ([userID length] == 0)
    if ([userID length] == 0)
    {
    }
    //: NSString* userDirectory= [NSString stringWithFormat:@"%@%@/",documentPath,userID];
    NSString* userDirectory= [NSString stringWithFormat:@"%@%@/",documentPath,userID];
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:userDirectory])
    if (![[NSFileManager defaultManager] fileExistsAtPath:userDirectory])
    {
        //: [[NSFileManager defaultManager] createDirectoryAtPath:userDirectory
        [[NSFileManager defaultManager] createDirectoryAtPath:userDirectory
                                  //: withIntermediateDirectories:NO
                                  withIntermediateDirectories:NO
                                                   //: attributes:nil
                                                   attributes:nil
                                                        //: error:nil];
                                                        error:nil];

    }
    //: return userDirectory;
    return userDirectory;
}

//: + (NSString *)resourceDir: (NSString *)resouceName
+ (NSString *)object: (NSString *)resouceName
{
    //: NSString *dir = [[NTESFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[MessageSearchedHelper bubbleDirectory] stringByAppendingPathComponent:resouceName];
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:dir])
    if (![[NSFileManager defaultManager] fileExistsAtPath:dir])
    {
        //: [[NSFileManager defaultManager] createDirectoryAtPath:dir
        [[NSFileManager defaultManager] createDirectoryAtPath:dir
                                  //: withIntermediateDirectories:NO
                                  withIntermediateDirectories:NO
                                                   //: attributes:nil
                                                   attributes:nil
                                                        //: error:nil];
                                                        error:nil];
    }
    //: return dir;
    return dir;
}


//: + (NSString *)filepathForVideo:(NSString *)filename
+ (NSString *)cocktailLounge:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"video")
    return [MessageSearchedHelper marque:(StringFromDrivewayData(kStr_apologyTitle))
                                     //: filename:filename];
                                     info:filename];
}

//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)system:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"image")
    return [MessageSearchedHelper marque:(StringFromDrivewayData(kStr_logTitle))
                                     //: filename:filename];
                                     info:filename];
}

//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename {
+ (NSString *)frame:(NSString *)filename {
    //: return [NTESFileLocationHelper filepathForDir:(@"merge")
    return [MessageSearchedHelper marque:(StringFromDrivewayData(kStr_emptyExecutiveValue))
                                     //: filename:filename];
                                     info:filename];
}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)random:(NSString *)ext
{
    //: CFUUIDRef uuid = CFUUIDCreate(nil);
    CFUUIDRef uuid = CFUUIDCreate(nil);
    //: NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    //: CFRelease(uuid);
    CFRelease(uuid);
    //: NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    //: NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    //: return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
    return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
}


//: #pragma mark - 辅助方法
#pragma mark - 辅助方法
//: + (NSString *)filepathForDir:(NSString *)dirname
+ (NSString *)marque:(NSString *)dirname
                    //: filename:(NSString *)filename
                    info:(NSString *)filename
{
    //: return [[NTESFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[MessageSearchedHelper object:dirname] stringByAppendingPathComponent:filename];
}

//: @end
@end

Byte * DrivewayDataToCache(Byte *data) {
    int grad = data[0];
    int paintView = data[1];
    Byte moot = data[2];
    int digitiser = data[3];
    if (!grad) return data + digitiser;
    for (int i = digitiser; i < digitiser + paintView; i++) {
        int value = data[i] - moot;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[digitiser + paintView] = 0;
    return data + digitiser;
}

NSString *StringFromDrivewayData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DrivewayDataToCache(data)];
}
