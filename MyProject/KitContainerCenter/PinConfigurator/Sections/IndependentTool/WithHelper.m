
#import <Foundation/Foundation.h>

NSString *StringFromPoneData(Byte *data);


//: image
Byte kStr_customTitle[] = {23, 5, 34, 14, 22, 245, 67, 5, 111, 64, 234, 105, 117, 108, 139, 143, 131, 137, 135, 242};


//: video
Byte kStr_chocolateTitle[] = {73, 5, 13, 12, 48, 197, 148, 11, 196, 152, 40, 33, 131, 118, 113, 114, 124, 167};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithHelper.m
// Notice
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitFileLocationHelper.h"
#import "WithHelper.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import <sys/stat.h>
#import <sys/stat.h>

//: @interface FFFKitFileLocationHelper ()
@interface WithHelper ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)disableByMust: (NSString *)dirname modeItem: (NSString *)filename;
//: @end
@end


//: @implementation FFFKitFileLocationHelper
@implementation WithHelper
//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)accept:(NSURL *)URL
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
        //: NSLog(@"Error excluding %@ from backup %@", [URL lastPathComponent], error);
    }
    //: return success;
    return success;

}
//: + (NSString *)getAppDocumentPath
+ (NSString *)dismissCustom
{
    //: static NSString *appDocumentPath = nil;
    static NSString *appDocumentPath = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NSString *appKey = [NIMSDK sharedSDK].appKey;
        NSString *appKey = [NIMSDK sharedSDK].appKey;
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
        //: [FFFKitFileLocationHelper addSkipBackupAttributeToItemAtURL:[NSURL fileURLWithPath:appDocumentPath]];
        [WithHelper accept:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}

//: + (NSString *)getAppTempPath
+ (NSString *)lifestyle
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}

//: + (NSString *)userDirectory
+ (NSString *)style
{
    //: NSString *documentPath = [FFFKitFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [WithHelper dismissCustom];
    //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: if ([userID length] == 0)
    if ([userID length] == 0)
    {
        //: NSLog(@"Error: Get User Directory While UserID Is Empty");
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
+ (NSString *)month: (NSString *)resouceName
{
    //: NSString *dir = [[FFFKitFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[WithHelper style] stringByAppendingPathComponent:resouceName];
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
+ (NSString *)barVideo:(NSString *)filename
{
    //: return [FFFKitFileLocationHelper filepathForDir:@"video"
    return [WithHelper disableByMust:StringFromPoneData(kStr_chocolateTitle)
                                         //: filename:filename];
                                         modeItem:filename];
}

//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)viewAt:(NSString *)filename
{
    //: return [FFFKitFileLocationHelper filepathForDir:@"image"
    return [WithHelper disableByMust:StringFromPoneData(kStr_customTitle)
                                         //: filename:filename];
                                         modeItem:filename];
}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)value:(NSString *)ext
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
+ (NSString *)disableByMust:(NSString *)dirname
                    //: filename:(NSString *)filename
                    modeItem:(NSString *)filename
{
    //: return [[FFFKitFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[WithHelper month:dirname] stringByAppendingPathComponent:filename];
}

//: @end
@end

Byte * PoneDataToCache(Byte *data) {
    int shankIronically = data[0];
    int tsa = data[1];
    Byte magi = data[2];
    int culturalBallBishop = data[3];
    if (!shankIronically) return data + culturalBallBishop;
    for (int i = culturalBallBishop; i < culturalBallBishop + tsa; i++) {
        int value = data[i] - magi;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[culturalBallBishop + tsa] = 0;
    return data + culturalBallBishop;
}

NSString *StringFromPoneData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PoneDataToCache(data)];
}
