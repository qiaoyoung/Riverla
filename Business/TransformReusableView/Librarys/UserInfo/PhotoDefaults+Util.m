
#import <Foundation/Foundation.h>

NSString *StringFromSignificanceData(Byte *data);        


//: webViewURL
Byte kStr_mootName[] = {45, 10, 27, 14, 72, 78, 208, 181, 98, 220, 121, 222, 78, 15, 92, 74, 71, 59, 78, 74, 92, 58, 55, 49, 220};


//: Hello World
Byte kStr_requestTopValue[] = {21, 11, 81, 10, 114, 210, 148, 175, 100, 87, 247, 20, 27, 27, 30, 207, 6, 30, 33, 27, 19, 244};


//: language
Byte kStr_stackViewName[] = {80, 8, 19, 8, 99, 132, 127, 44, 89, 78, 91, 84, 98, 78, 84, 82, 224};


//: appkey
Byte kStr_alsoValue[] = {81, 6, 83, 7, 192, 33, 115, 14, 29, 29, 24, 18, 38, 252};


//: isregitor
Byte kStr_titleSubmitData[] = {12, 9, 95, 8, 208, 214, 123, 215, 10, 20, 19, 6, 8, 10, 21, 16, 19, 49};


//: NSUserDefault%@
Byte kStr_broadcastContent[] = {97, 15, 53, 10, 203, 74, 136, 91, 25, 225, 25, 30, 32, 62, 48, 61, 15, 48, 49, 44, 64, 55, 63, 240, 11, 244};


//: KEKENotificationLanguageChanged
Byte kStr_burningHungerValue[] = {48, 31, 21, 14, 183, 138, 221, 12, 144, 209, 168, 207, 151, 62, 54, 48, 54, 48, 57, 90, 95, 84, 81, 84, 78, 76, 95, 84, 90, 89, 55, 76, 89, 82, 96, 76, 82, 80, 46, 83, 76, 89, 82, 80, 79, 206};


//: logininfo
Byte kStr_dayData[] = {91, 9, 53, 8, 75, 69, 223, 111, 55, 58, 50, 52, 57, 52, 57, 49, 58, 29};


//: e6548ec2fe71a38961430ee520b0ad47
Byte kStr_middleBurningValue[] = {32, 32, 34, 13, 35, 246, 170, 30, 181, 192, 28, 35, 133, 67, 20, 19, 18, 22, 67, 65, 16, 68, 67, 21, 15, 63, 17, 22, 23, 20, 15, 18, 17, 14, 67, 67, 19, 16, 14, 64, 14, 63, 66, 18, 21, 174};


//: Webpage
Byte kStr_blueBroadcastName[] = {8, 7, 21, 7, 185, 183, 67, 66, 80, 77, 91, 76, 82, 80, 198};


//: isclose
Byte kStr_emptySizeTitle[] = {5, 7, 96, 14, 185, 100, 255, 191, 98, 253, 228, 162, 39, 214, 9, 19, 3, 12, 15, 19, 5, 212};


//: webViewTitle
Byte kStr_contentSelectedValue[] = {68, 12, 89, 9, 74, 239, 17, 71, 224, 30, 12, 9, 253, 16, 12, 30, 251, 16, 27, 19, 12, 195};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PhotoDefaults+Util.m
//  译同行
//
//  Created by 曹宇 on 2017/8/29.
//  Copyright © 2017年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NIMUserDefaults+Util.h"
#import "PhotoDefaults+Util.h"
//: #import "ZCHttpManager.h"
#import "PhotoManager.h"

//: @implementation NIMUserDefaults (Util)
@implementation PhotoDefaults (Util)

//: @dynamic webViewTitle;
@dynamic webViewTitle;
//: @dynamic webViewURL;
@dynamic webViewURL;
//: @dynamic appkey;
@dynamic appkey;
//: @dynamic isclose;
@dynamic isclose;

//: @dynamic isregitor;
@dynamic isregitor;
//: @dynamic accountName;
@dynamic accountName;

//: @dynamic loginToken;
@dynamic loginToken;
//: @dynamic language;
@dynamic language;



//: - (NSDictionary *)setupDefaults {
- (NSDictionary *)asMy {
    //: return @{
    return @{
             //: @"webViewTitle" : @"Webpage",
             StringFromSignificanceData(kStr_contentSelectedValue) : StringFromSignificanceData(kStr_blueBroadcastName),
             //: @"webViewURL" : @"",
             StringFromSignificanceData(kStr_mootName) : @"",
             //: @"appkey" : @"e6548ec2fe71a38961430ee520b0ad47",
             StringFromSignificanceData(kStr_alsoValue) : StringFromSignificanceData(kStr_middleBurningValue),
             //: @"isclose" : @"0",
             StringFromSignificanceData(kStr_emptySizeTitle) : @"0",
             //: @"logininfo" : @"Hello World",
             StringFromSignificanceData(kStr_dayData) : StringFromSignificanceData(kStr_requestTopValue),
             //: @"isregitor" : @"1",
             StringFromSignificanceData(kStr_titleSubmitData) : @"1",
             //: @"language" : @""
             StringFromSignificanceData(kStr_stackViewName) : @""
             //: };
             };
}

//: - (void)updateLanguageWith:(NSString *)lang; {
- (void)date:(NSString *)lang; {

    //: if (lang.length == 0) {
    if (lang.length == 0) {
        //: return;
        return;
    }

    //: [ZCHttpManager sharedManager].lastLang = lang;
    [PhotoManager commonManager].lastLang = lang;

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    PhotoDefaults *userDefaults = [PhotoDefaults ting];

    //: userDefaults.language = lang;
    userDefaults.language = lang;
    //: [[FFFLanguageManager shareInstance] setLanguagre:lang];
    [[ItemManager quickInstance] setRow:lang];

    //: [MyUserKit sharedKit].languageBundle = nil;
    [Afterwards blue].languageBundle = nil;

    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:StringFromSignificanceData(kStr_burningHungerValue) object:nil];

    //: AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //: if (delegate.deviceToken) {
    if (delegate.deviceToken) {
        //: [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];

        //: dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            //: setting.type = NIMPushNotificationDisplayTypeNoDetail;
            setting.type = NIMPushNotificationDisplayTypeNoDetail;

            //: [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
                //: if (error)
                if (error)
                {

                }
            //: }];
            }];
        //: });
        });
    }
}

//: - (NSString *)transformKey:(NSString *)key {
- (NSString *)bottomsed:(NSString *)key {
    //: key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    //: return [NSString stringWithFormat:@"NSUserDefault%@", key];
    return [NSString stringWithFormat:StringFromSignificanceData(kStr_broadcastContent), key];
}
//: @end
@end

Byte * SignificanceDataToCache(Byte *data) {
    int textThorough = data[0];
    int sizeControl = data[1];
    Byte seaEagle = data[2];
    int stackFrame = data[3];
    if (!textThorough) return data + stackFrame;
    for (int i = stackFrame; i < stackFrame + sizeControl; i++) {
        int value = data[i] + seaEagle;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[stackFrame + sizeControl] = 0;
    return data + stackFrame;
}

NSString *StringFromSignificanceData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SignificanceDataToCache(data)];
}
