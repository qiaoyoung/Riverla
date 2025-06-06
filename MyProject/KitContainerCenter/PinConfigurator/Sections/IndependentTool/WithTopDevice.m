// __DEBUG__
// __CLOSE_PRINT__
//
//  WithTopDevice.m
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitDevice.h"
#import "WithTopDevice.h"
//: #import "ViewGlobalMacro.h"
#import "ViewGlobalMacro.h"

//: @interface FFFKitDevice ()
@interface WithTopDevice ()

//: @end
@end

//: @implementation FFFKitDevice
@implementation WithTopDevice

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {

    }
    //: return self;
    return self;
}


//: + (FFFKitDevice *)currentDevice{
+ (WithTopDevice *)catapult{
    //: static FFFKitDevice *instance = nil;
    static WithTopDevice *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFKitDevice alloc] init];
        instance = [[WithTopDevice alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

/// 语言
//: + (NSString *)language {
+ (NSString *)background {
    //: NSString *language;
    NSString *language;
    //: NSLocale *locale = [NSLocale currentLocale];
    NSLocale *locale = [NSLocale currentLocale];
    //: if ([[NSLocale preferredLanguages] count] > 0) {
    if ([[NSLocale preferredLanguages] count] > 0) {
        //: language = [[NSLocale preferredLanguages]objectAtIndex:0];
        language = [[NSLocale preferredLanguages]objectAtIndex:0];
    //: } else {
    } else {
        //: language = [locale objectForKey:NSLocaleLanguageCode];
        language = [locale objectForKey:NSLocaleLanguageCode];
    }
    //: return language;
    return language;
}


//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels{
- (CGFloat)quick{
    //: return (1280 * 960);
    return (1280 * 960);
}

//: - (CGFloat)compressQuality{
- (CGFloat)bottom{
    //: return 0.5;
    return 0.5;
}


//: - (CGFloat)statusBarHeight{
- (CGFloat)title{
    //: return [UIDevice vg_statusBarHeight];
    return [UIDevice table];
}


//: @end
@end
