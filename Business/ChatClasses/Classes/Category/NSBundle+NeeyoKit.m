//
//  NSBundle+NIMKit.m
// NeeyoKit
//
//  Created by Genning-Work on 2019/11/14.
//  Copyright © 2019 NetEase. All rights reserved.
//

#import "NSBundle+NeeyoKit.h"
#import "NeeyoKit.h"
#import "FFFInputEmoticonDefine.h"

@implementation NSBundle (NeeyoKit)

+ (NSBundle *)nim_defaultEmojiBundle {
    NSBundle *bundle = [NSBundle bundleForClass:[NeeyoKit class]];
    NSURL *url = [bundle URLForResource:@"NeeyoEmoticon" withExtension:@"bundle"];
    NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    return emojiBundle;
}

+ (NSBundle *)nim_defaultLanguageBundle {
    NSBundle *bundle = [NSBundle bundleForClass:[NeeyoKit class]];
    NSURL *url = [bundle URLForResource:@"NeeyoLanguage"
                          withExtension:@"bundle"];
    
    NSBundle * languageBundle = nil;
    if (url)
    {
        languageBundle = [NSBundle bundleWithURL:url];
    }
    
    NSURL *projUrl = [languageBundle URLForResource:[self preferredLanguage]
                                      withExtension:@"lproj"];
    NSBundle * projBundle = nil;
    if (projUrl)
    {
        projBundle = [NSBundle bundleWithURL:projUrl];
    }
    return projBundle;
}

+ (NSString *)nim_EmojiPlistFile {
    NSBundle *bundle = [NeeyoKit sharedKit].emoticonBundle;
    NSString *filepath = [bundle pathForResource:@"emoji_ios" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
    return filepath;
}


+ (NSString *)nim_EmojiGifPlistFile {
    NSBundle *bundle = [NeeyoKit sharedKit].emoticonBundle;
    NSString *filepath = [bundle pathForResource:@"emoji" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
    return filepath;
}

+ (NSString *)nim_EmojiImage:(NSString *)imageName {
    NSBundle *bundle = [NeeyoKit sharedKit].emoticonBundle;
    NSString *ext = [imageName pathExtension];
    if (ext.length == 0) {
        ext = @"png";
    }
    NSString *name = [imageName stringByDeletingPathExtension];
    NSString *doubleImage  = [name stringByAppendingString:@"@2x"];
    NSString *tribleImage  = [name stringByAppendingString:@"@3x"];
    NSString *path = nil;
    if ([UIScreen mainScreen].scale == 3.0) {
        path = [bundle pathForResource:tribleImage ofType:ext inDirectory:NEEKIT_EmojiPath];
    }
    path = path ? path : [bundle pathForResource:doubleImage ofType:ext inDirectory:NEEKIT_EmojiPath]; //取二倍图
    path = path ? path : [bundle pathForResource:name ofType:ext inDirectory:NEEKIT_EmojiPath]; //实在没了就去取一倍图
    return path;
}

+ (NSString *)preferredLanguage
{
    
    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    if (lang.length <= 0) {
        lang = Language_Default;
    }
//    NSString * preferredLanguage = [NSLocale preferredLanguages].firstObject;
//    if ([preferredLanguage rangeOfString:@"zh-Hans"].location != NSNotFound) {
//        preferredLanguage = @"zh";
//    } else {
//        preferredLanguage = @"en";
//    }
    
    return lang;
}


@end
