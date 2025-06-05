
#import <Foundation/Foundation.h>

NSString *StringFromHazardRagData(Byte *data);        


//: logininfo
Byte kStr_passengerName[] = {3, 9, 90, 5, 247, 18, 21, 13, 15, 20, 15, 20, 12, 21, 89};


//: isclose
Byte kStr_tablespoonText[] = {37, 7, 16, 8, 217, 10, 176, 19, 89, 99, 83, 92, 95, 99, 85, 140};


//: isregitor
Byte kStr_worksName[] = {28, 9, 73, 5, 61, 32, 42, 41, 28, 30, 32, 43, 38, 41, 235};


//: Hello World
Byte kStr_clearTingConsumeName[] = {94, 11, 58, 7, 154, 153, 117, 14, 43, 50, 50, 53, 230, 29, 53, 56, 50, 42, 123};


//: Webpage
Byte kStr_politicsText[] = {90, 7, 56, 10, 84, 70, 81, 33, 35, 189, 31, 45, 42, 56, 41, 47, 45, 13};


//: language
Byte kStr_obviouslyText[] = {1, 8, 29, 14, 66, 116, 157, 148, 189, 79, 177, 225, 1, 151, 79, 68, 81, 74, 88, 68, 74, 72, 228};


//: KEKENotificationLanguageChanged
Byte kStr_articularData[] = {7, 31, 18, 12, 138, 49, 219, 164, 247, 40, 82, 97, 57, 51, 57, 51, 60, 93, 98, 87, 84, 87, 81, 79, 98, 87, 93, 92, 58, 79, 92, 85, 99, 79, 85, 83, 49, 86, 79, 92, 85, 83, 82, 95};


//: webViewURL
Byte kStr_canvasValue[] = {41, 10, 34, 5, 111, 85, 67, 64, 52, 71, 67, 85, 51, 48, 42, 39};


//: NSUserDefault%@
Byte kStr_finishJuryName[] = {44, 15, 96, 6, 32, 249, 238, 243, 245, 19, 5, 18, 228, 5, 6, 1, 21, 12, 20, 197, 224, 166};


//: webViewTitle
Byte kStr_goodValue[] = {62, 12, 39, 10, 40, 169, 125, 64, 80, 104, 80, 62, 59, 47, 66, 62, 80, 45, 66, 77, 69, 62, 2};


//: e6548ec2fe71a38961430ee520b0ad47
Byte kStr_contentKneelTitle[] = {33, 32, 44, 11, 127, 244, 168, 90, 79, 249, 80, 57, 10, 9, 8, 12, 57, 55, 6, 58, 57, 11, 5, 53, 7, 12, 13, 10, 5, 8, 7, 4, 57, 57, 9, 6, 4, 54, 4, 53, 56, 8, 11, 246};


//: appkey
Byte kStr_integratedTitle[] = {32, 6, 10, 9, 142, 118, 16, 162, 68, 87, 102, 102, 97, 91, 111, 106};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlondeDefaults+Util.m
//  译同行
//
//  Created by 曹宇 on 2017/8/29.
//  Copyright © 2017年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NIMUserDefaults+Util.h"
#import "BlondeDefaults+Util.h"
//: #import "ZCHttpManager.h"
#import "InfoManager.h"

//: @implementation NIMUserDefaults (Util)
@implementation BlondeDefaults (Util)

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
- (NSDictionary *)convert {
    //: return @{
    return @{
             //: @"webViewTitle" : @"Webpage",
             StringFromHazardRagData(kStr_goodValue) : StringFromHazardRagData(kStr_politicsText),
             //: @"webViewURL" : @"",
             StringFromHazardRagData(kStr_canvasValue) : @"",
             //: @"appkey" : @"e6548ec2fe71a38961430ee520b0ad47",
             StringFromHazardRagData(kStr_integratedTitle) : StringFromHazardRagData(kStr_contentKneelTitle),
             //: @"isclose" : @"0",
             StringFromHazardRagData(kStr_tablespoonText) : @"0",
             //: @"logininfo" : @"Hello World",
             StringFromHazardRagData(kStr_passengerName) : StringFromHazardRagData(kStr_clearTingConsumeName),
             //: @"isregitor" : @"1",
             StringFromHazardRagData(kStr_worksName) : @"1",
             //: @"language" : @""
             StringFromHazardRagData(kStr_obviouslyText) : @""
             //: };
             };
}

//: - (void)updateLanguageWith:(NSString *)lang; {
- (void)frameOf:(NSString *)lang; {

    //: if (lang.length == 0) {
    if (lang.length == 0) {
        //: return;
        return;
    }

    //: [ZCHttpManager sharedManager].lastLang = lang;
    [InfoManager limitManager].lastLang = lang;

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    BlondeDefaults *userDefaults = [BlondeDefaults phone];

    //: userDefaults.language = lang;
    userDefaults.language = lang;
    //: [[FFFLanguageManager shareInstance] setLanguagre:lang];
    [[TeamManager instance] setPile:lang];

    //: [MyUserKit sharedKit].languageBundle = nil;
    [Notice fullKit].languageBundle = nil;

    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:StringFromHazardRagData(kStr_articularData) object:nil];

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
- (NSString *)modifies:(NSString *)key {
    //: key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    //: return [NSString stringWithFormat:@"NSUserDefault%@", key];
    return [NSString stringWithFormat:StringFromHazardRagData(kStr_finishJuryName), key];
}
//: @end
@end

Byte * HazardRagDataToCache(Byte *data) {
    int lock = data[0];
    int unity = data[1];
    Byte confessEthic = data[2];
    int wise = data[3];
    if (!lock) return data + wise;
    for (int i = wise; i < wise + unity; i++) {
        int value = data[i] + confessEthic;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[wise + unity] = 0;
    return data + wise;
}

NSString *StringFromHazardRagData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HazardRagDataToCache(data)];
}
