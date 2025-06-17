// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeMessage.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFileUtil.h"
#import "SizeMessage.h"
//: #import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonDigest.h>
//: #import "NSData+NTES.h"
#import "NSData+Closes.h"

//: @implementation NTESFileUtil
@implementation SizeMessage

//: + (NSString *)fileMD5:(NSString *)filepath
+ (NSString *)bar:(NSString *)filepath
{
    //: NSString *md5 = nil;
    NSString *md5 = nil;

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:filepath])
    if ([[NSFileManager defaultManager] fileExistsAtPath:filepath])
    {
        //: unsigned long long fileSize = [self fileSize:filepath];
        unsigned long long fileSize = [self on:filepath];
        //: if(fileSize > 200 * 1024 * 1024) {
        if(fileSize > 200 * 1024 * 1024) {
            //: md5 = [self bigFileMD5:filepath];
            md5 = [self headspring:filepath];
        //: }else {
        }else {
            //: NSData *data = [NSData dataWithContentsOfFile:filepath];
            NSData *data = [NSData dataWithContentsOfFile:filepath];
            //: md5 = [data MD5String];
            md5 = [data subMessage];
        }
    }
    //: return md5;
    return md5;
}

//: + (void)fileMD5:(NSString *)filepath completion:(void(^)(NSString *MD5))completion;
+ (void)media:(NSString *)filepath size:(void(^)(NSString *MD5))completion;
{
    //: dispatch_block_t block = ^(){
    dispatch_block_t block = ^(){
        //: NSString *md5 = [self fileMD5:filepath];
        NSString *md5 = [self bar:filepath];
        //: if(completion) {
        if(completion) {
            //: completion(md5);
            completion(md5);
        }
    //: };
    };

    //: dispatch_queue_t queue = dispatch_get_global_queue(-32768, 0);
    dispatch_queue_t queue = dispatch_get_global_queue(-32768, 0);
    //: dispatch_async(queue,block);
    dispatch_async(queue,block);
}

//: + (NSString *)bigFileMD5:(NSString *)filePath
+ (NSString *)headspring:(NSString *)filePath
{
    //: NSFileHandle *fileHandle = [NSFileHandle fileHandleForReadingAtPath:filePath];
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForReadingAtPath:filePath];
    //: if(!fileHandle) {
    if(!fileHandle) {
        //: return nil;
        return nil;
    }

    //: CC_MD5_CTX ctx;
    CC_MD5_CTX ctx;
    //: CC_MD5_Init(&ctx);
    CC_MD5_Init(&ctx);

    //: BOOL done = NO;
    BOOL done = NO;
    //: NSData *data = nil;
    NSData *data = nil;
    //: while (!done) {
    while (!done) {
        //: @autoreleasepool {
        @autoreleasepool {
            //: data = [fileHandle readDataOfLength:256];
            data = [fileHandle readDataOfLength:256];
            //: if([data length]) {
            if([data length]) {
                //: CC_MD5_Update(&ctx, [data bytes], (CC_LONG)[data length]);
                CC_MD5_Update(&ctx, [data bytes], (CC_LONG)[data length]);
            //: }else {
            }else {
                //: done = YES;
                done = YES;
            }
        }
    //: };
    };
    //: unsigned char digest[16];
    unsigned char digest[16];
    //: CC_MD5_Final(digest, &ctx);
    CC_MD5_Final(digest, &ctx);
    //: NSString *result = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
    NSString *result = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                        //: digest[0],digest[1],
                        digest[0],digest[1],
                        //: digest[2],digest[3],
                        digest[2],digest[3],
                        //: digest[4],digest[5],
                        digest[4],digest[5],
                        //: digest[6],digest[7],
                        digest[6],digest[7],
                        //: digest[8],digest[9],
                        digest[8],digest[9],
                        //: digest[10],digest[11],
                        digest[10],digest[11],
                        //: digest[12],digest[13],
                        digest[12],digest[13],
                        //: digest[14],digest[15]
                        digest[14],digest[15]
                        //: ];
                        ];
    //: return result;
    return result;
}

//: + (unsigned long long)fileSize:(NSString *)filepath
+ (unsigned long long)on:(NSString *)filepath
{
    //: unsigned long long fileSize = 0;
    unsigned long long fileSize = 0;
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:filepath])
    if ([[NSFileManager defaultManager] fileExistsAtPath:filepath])
    {
        //: NSDictionary *attributes = [[NSFileManager defaultManager] attributesOfItemAtPath:filepath
        NSDictionary *attributes = [[NSFileManager defaultManager] attributesOfItemAtPath:filepath
                                                                                    //: error:nil];
                                                                                    error:nil];
        //: id item = [attributes objectForKey:NSFileSize];
        id item = [attributes objectForKey:NSFileSize];
        //: fileSize = [item isKindOfClass:[NSNumber class]] ? [item unsignedLongLongValue] : 0;
        fileSize = [item isKindOfClass:[NSNumber class]] ? [item unsignedLongLongValue] : 0;
    }
    //: return fileSize;
    return fileSize;

}

//: @end
@end