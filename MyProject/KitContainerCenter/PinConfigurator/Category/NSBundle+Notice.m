
#import <Foundation/Foundation.h>

NSString *StringFromWagonFusionData(Byte *data);


//: NSUserDefaultLanguage
Byte kStr_approvalName[] = {79, 21, 39, 6, 227, 148, 117, 122, 124, 154, 140, 153, 107, 140, 141, 136, 156, 147, 155, 115, 136, 149, 142, 156, 136, 142, 140, 93};


//: emoji.plist
Byte kStr_heritageAmidName[] = {40, 11, 14, 6, 75, 171, 115, 123, 125, 120, 119, 60, 126, 122, 119, 129, 130, 42};


//: en.lproj
Byte kStr_cookStartingName[] = {96, 8, 77, 12, 2, 28, 48, 70, 83, 226, 120, 106, 178, 187, 123, 185, 189, 191, 188, 183, 203};


//: HolisticSaver
Byte kStr_fleetSkullData[] = {9, 13, 94, 5, 171, 166, 205, 202, 199, 209, 210, 199, 193, 177, 191, 212, 195, 208, 150};


//: emoji_ios.plist
Byte kStr_normalCrowTitle[] = {76, 15, 14, 4, 115, 123, 125, 120, 119, 109, 119, 125, 129, 60, 126, 122, 119, 129, 130, 6};


//: bundle
Byte kStr_heName[] = {80, 6, 68, 14, 232, 187, 226, 50, 241, 18, 227, 178, 117, 195, 166, 185, 178, 168, 176, 169, 70};


//: %@.lproj
Byte kStr_albumValue[] = {80, 8, 7, 13, 195, 80, 176, 232, 37, 54, 137, 147, 101, 44, 71, 53, 115, 119, 121, 118, 113, 164};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSBundle+NIMKit.m
// Notice
//
//  Created by Genning-Work on 2019/11/14.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Notice.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "ViewInputEmoticonDefine.h"
#import "ViewInputEmoticonDefine.h"
//: #import "SSZipArchiveManager.h"
#import "ByManager.h"

//: @implementation NSBundle (MyUserKit)
@implementation NSBundle (Notice)

//: + (NSBundle *)nim_defaultEmojiBundle {
+ (NSBundle *)send {
    //: NSBundle *bundle = [NSBundle bundleForClass:[MyUserKit class]];
    NSBundle *bundle = [NSBundle bundleForClass:[Notice class]];
    //: NSURL *url = [bundle URLForResource:@"HolisticSaver" withExtension:@"bundle"];
    NSURL *url = [bundle URLForResource:StringFromWagonFusionData(kStr_fleetSkullData) withExtension:StringFromWagonFusionData(kStr_heName)];
    //: NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    //: return emojiBundle;
    return emojiBundle;
}

//: + (NSBundle *)nim_defaultLanguageBundle {
+ (NSBundle *)bundle {
    // 获取语言资源所在路径
    //: NSString *lprojPath = [[SSZipArchiveManager sharedManager] getLprojPath];
    NSString *lprojPath = [[ByManager date] offInfo];
    //: if (!lprojPath || ![lprojPath length]) {
    if (!lprojPath || ![lprojPath length]) {
        //: return nil;
        return nil;
    }

    // 构建完整的语言资源路径
    //: NSString *languageName = [self preferredLanguage];
    NSString *languageName = [self image];
    //: NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.lproj", languageName]];
    NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:StringFromWagonFusionData(kStr_albumValue), languageName]];

    // 检查路径是否存在
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        // 如果指定语言的资源不存在，尝试使用默认语言（英语）
        //: fullLprojPath = [lprojPath stringByAppendingPathComponent:@"en.lproj"];
        fullLprojPath = [lprojPath stringByAppendingPathComponent:StringFromWagonFusionData(kStr_cookStartingName)];
        //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
            //: return nil;
            return nil;
        }
    }

    // 创建并返回语言资源包
    //: return [NSBundle bundleWithPath:fullLprojPath];
    return [NSBundle bundleWithPath:fullLprojPath];
}

//: + (NSString *)nim_EmojiPlistFile {
+ (NSString *)titleTable {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[ByManager date] signature];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji_ios.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:StringFromWagonFusionData(kStr_normalCrowTitle)];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [Notice sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji_ios" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}


//: + (NSString *)nim_EmojiGifPlistFile {
+ (NSString *)file {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[ByManager date] signature];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:StringFromWagonFusionData(kStr_heritageAmidName)];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [Notice sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}

//: + (NSString *)preferredLanguage
+ (NSString *)image
{

    //: NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromWagonFusionData(kStr_approvalName)];
    //: if (lang.length <= 0) {
    if (lang.length <= 0) {
        //: lang = @"en";
        lang = @"en";
    }
//    NSString * preferredLanguage = [NSLocale preferredLanguages].firstObject;
//    if ([preferredLanguage rangeOfString:@"zh-Hans"].location != NSNotFound) {
//        preferredLanguage = @"zh";
//    } else {
//        preferredLanguage = @"en";
//    }

    //: return lang;
    return lang;
}


//: @end
@end

Byte * WagonFusionDataToCache(Byte *data) {
    int photograph = data[0];
    int civicDuty = data[1];
    Byte demonstrate = data[2];
    int routineGratefulSkill = data[3];
    if (!photograph) return data + routineGratefulSkill;
    for (int i = routineGratefulSkill; i < routineGratefulSkill + civicDuty; i++) {
        int value = data[i] - demonstrate;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[routineGratefulSkill + civicDuty] = 0;
    return data + routineGratefulSkill;
}

NSString *StringFromWagonFusionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WagonFusionDataToCache(data)];
}
