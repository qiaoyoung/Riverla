
#import <Foundation/Foundation.h>

NSString *StringFromFormatData(Byte *data);


//: image
Byte kStr_standingName[] = {66, 5, 7, 77, 225, 5, 27, 101, 103, 97, 109, 105, 106};


//: merge
Byte kStr_leaseData[] = {57, 5, 5, 26, 4, 101, 103, 114, 101, 109, 12};


//: video
Byte kStr_floodText[] = {94, 5, 3, 111, 101, 100, 105, 118, 55};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TrademarkByScaleHelper.m
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFileLocationHelper.h"
#import "TrademarkByScaleHelper.h"
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "FFFConfig.h"
#import "BirdSEyeViewConfig.h"

//: @interface NTESFileLocationHelper ()
@interface TrademarkByScaleHelper ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)expanse: (NSString *)dirname change: (NSString *)filename;
//: @end
@end


//: @implementation NTESFileLocationHelper
@implementation TrademarkByScaleHelper
//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)inscription:(NSURL *)URL
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
+ (NSString *)oldTing
{
    //: static NSString *appDocumentPath = nil;
    static NSString *appDocumentPath = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NSString *appKey = [[FFFConfig sharedConfig] appKey];
        NSString *appKey = [[BirdSEyeViewConfig titleMessage] appKey];
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
        [TrademarkByScaleHelper inscription:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}

//: + (NSString *)getAppTempPath
+ (NSString *)triumphOrCourse
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}

//: + (NSString *)userDirectory
+ (NSString *)endUser
{
    //: NSString *documentPath = [NTESFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [TrademarkByScaleHelper oldTing];
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
+ (NSString *)nameTag: (NSString *)resouceName
{
    //: NSString *dir = [[NTESFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[TrademarkByScaleHelper endUser] stringByAppendingPathComponent:resouceName];
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
+ (NSString *)dateSearched:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"video")
    return [TrademarkByScaleHelper expanse:(StringFromFormatData(kStr_floodText))
                                     //: filename:filename];
                                     change:filename];
}

//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)gammaHydroxybutyrate:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"image")
    return [TrademarkByScaleHelper expanse:(StringFromFormatData(kStr_standingName))
                                     //: filename:filename];
                                     change:filename];
}

//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename {
+ (NSString *)phoneFile:(NSString *)filename {
    //: return [NTESFileLocationHelper filepathForDir:(@"merge")
    return [TrademarkByScaleHelper expanse:(StringFromFormatData(kStr_leaseData))
                                     //: filename:filename];
                                     change:filename];
}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)view:(NSString *)ext
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
+ (NSString *)expanse:(NSString *)dirname
                    //: filename:(NSString *)filename
                    change:(NSString *)filename
{
    //: return [[NTESFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[TrademarkByScaleHelper nameTag:dirname] stringByAppendingPathComponent:filename];
}

//: @end
@end

Byte * FormatDataToCache(Byte *data) {
    int billow = data[0];
    int fedEcological = data[1];
    int lameReply = data[2];
    if (!billow) return data + lameReply;
    for (int i = 0; i < fedEcological / 2; i++) {
        int begin = lameReply + i;
        int end = lameReply + fedEcological - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[lameReply + fedEcological] = 0;
    return data + lameReply;
}

NSString *StringFromFormatData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FormatDataToCache(data)];
}  
