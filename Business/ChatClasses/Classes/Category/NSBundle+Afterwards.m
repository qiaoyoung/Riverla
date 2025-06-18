
#import <Foundation/Foundation.h>
typedef struct {
    Byte windowMust;
    Byte *missileConfirm;
    unsigned int maxTone;
    bool titleDate;
	int appearanceBlue;
	int findLog;
	int invoke;
} EntitleAideData;

NSString *StringFromEntitleAideData(EntitleAideData *data);


//: HolisticSaver
EntitleAideData kStr_micaTitle = (EntitleAideData){246, (Byte []){190, 153, 154, 159, 133, 130, 159, 149, 165, 151, 128, 147, 132, 61}, 13, false, 254, 83, 226};


//: emoji.plist
EntitleAideData kStr_destructName = (EntitleAideData){107, (Byte []){14, 6, 4, 1, 2, 69, 27, 7, 2, 24, 31, 232}, 11, false, 189, 168, 7};


//: %@.lproj
EntitleAideData kStr_franchiseSoleName = (EntitleAideData){141, (Byte []){168, 205, 163, 225, 253, 255, 226, 231, 182}, 8, false, 90, 20, 2};


//: bundle
EntitleAideData kStr_cocaineHeAfterValue = (EntitleAideData){161, (Byte []){195, 212, 207, 197, 205, 196, 88}, 6, false, 180, 120, 168};


//: emoji_ios.plist
EntitleAideData kStr_oxygenBiasLogContent = (EntitleAideData){75, (Byte []){46, 38, 36, 33, 34, 20, 34, 36, 56, 101, 59, 39, 34, 56, 63, 177}, 15, false, 116, 29, 248};


//: NSUserDefaultLanguage
EntitleAideData kStr_grossData = (EntitleAideData){72, (Byte []){6, 27, 29, 59, 45, 58, 12, 45, 46, 41, 61, 36, 60, 4, 41, 38, 47, 61, 41, 47, 45, 46}, 21, false, 230, 186, 192};


//: en.lproj
EntitleAideData kStr_interruptTallName = (EntitleAideData){65, (Byte []){36, 47, 111, 45, 49, 51, 46, 43, 30}, 8, false, 240, 99, 15};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSBundle+NIMKit.m
// Afterwards
//
//  Created by Genning-Work on 2019/11/14.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Afterwards.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: #import "SSZipArchiveManager.h"
#import "ArchiveManager.h"

//: @implementation NSBundle (MyUserKit)
@implementation NSBundle (Afterwards)

//: + (NSBundle *)nim_defaultEmojiBundle {
+ (NSBundle *)tag {
    //: NSBundle *bundle = [NSBundle bundleForClass:[MyUserKit class]];
    NSBundle *bundle = [NSBundle bundleForClass:[Afterwards class]];
    //: NSURL *url = [bundle URLForResource:@"HolisticSaver" withExtension:@"bundle"];
    NSURL *url = [bundle URLForResource:StringFromEntitleAideData(&kStr_micaTitle) withExtension:StringFromEntitleAideData(&kStr_cocaineHeAfterValue)];
    //: NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    //: return emojiBundle;
    return emojiBundle;
}

//: + (NSBundle *)nim_defaultLanguageBundle {
+ (NSBundle *)withFile {
    // 获取语言资源所在路径
    //: NSString *lprojPath = [[SSZipArchiveManager sharedManager] getLprojPath];
    NSString *lprojPath = [[ArchiveManager block] show];
    //: if (!lprojPath || ![lprojPath length]) {
    if (!lprojPath || ![lprojPath length]) {
        //: return nil;
        return nil;
    }

    // 构建完整的语言资源路径
    //: NSString *languageName = [self preferredLanguage];
    NSString *languageName = [self indicatorLanguage];
    //: NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.lproj", languageName]];
    NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:StringFromEntitleAideData(&kStr_franchiseSoleName), languageName]];

    // 检查路径是否存在
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        // 如果指定语言的资源不存在，尝试使用默认语言（英语）
        //: fullLprojPath = [lprojPath stringByAppendingPathComponent:@"en.lproj"];
        fullLprojPath = [lprojPath stringByAppendingPathComponent:StringFromEntitleAideData(&kStr_interruptTallName)];
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
+ (NSString *)beyondSize {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[ArchiveManager block] framework];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji_ios.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:StringFromEntitleAideData(&kStr_oxygenBiasLogContent)];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [Afterwards sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji_ios" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}


//: + (NSString *)nim_EmojiGifPlistFile {
+ (NSString *)path {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[ArchiveManager block] framework];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:StringFromEntitleAideData(&kStr_destructName)];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [Afterwards sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}

//: + (NSString *)preferredLanguage
+ (NSString *)indicatorLanguage
{

    //: NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromEntitleAideData(&kStr_grossData)];
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

Byte *EntitleAideDataToByte(EntitleAideData *data) {
    if (data->titleDate) return data->missileConfirm;
    for (int i = 0; i < data->maxTone; i++) {
        data->missileConfirm[i] ^= data->windowMust;
    }
    data->missileConfirm[data->maxTone] = 0;
    data->titleDate = true;
	if (data->maxTone >= 3) {
		data->appearanceBlue = data->missileConfirm[0];
		data->findLog = data->missileConfirm[1];
		data->invoke = data->missileConfirm[2];
	}
    return data->missileConfirm;
}

NSString *StringFromEntitleAideData(EntitleAideData *data) {
    return [NSString stringWithUTF8String:(char *)EntitleAideDataToByte(data)];
}
