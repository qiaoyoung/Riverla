
#import <Foundation/Foundation.h>

NSString *StringFromCottaData(Byte *data);


//: CFBundleShortVersionString
Byte kStr_cakeProviderValue[] = {4, 26, 6, 6, 61, 28, 73, 76, 72, 123, 116, 106, 114, 107, 89, 110, 117, 120, 122, 92, 107, 120, 121, 111, 117, 116, 89, 122, 120, 111, 116, 109, 69};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonHeader.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateHeader.h"
#import "ButtonHeader.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+After.h"

//: static NSString *const kNTESMigrateHeaderVersion = @"version";
static NSString *const kLet_statePathData = @"version";
//: static NSString *const kNTESMigrateHeaderTerminal = @"terminal";
static NSString *const kLet_keyData = @"terminal";
//: static NSString *const kNTESMigrateHeaderSDKVersion = @"sdk_version";
static NSString *const kLet_renderData = @"sdk_version";
//: static NSString *const kNTESMigrateHeaderAPPVersion = @"app_version";
static NSString *const kLet_dateValue = @"app_version";
//: static NSString *const kNTESMigrateHeaderMessageCount = @"message_count";
static NSString *const kLet_failureValue = @"message_count";

//: @implementation NTESMigrateHeader
@implementation ButtonHeader


//: + (instancetype)initWithDefaultConfig {
+ (instancetype)initWithMessage {
    //: NTESMigrateHeader *ret = [[NTESMigrateHeader alloc] init];
    ButtonHeader *ret = [[ButtonHeader alloc] init];
    //: ret.version = 0;
    ret.version = 0;
    //: ret.clientType = NIMLoginClientTypeiOS;
    ret.clientType = NIMLoginClientTypeiOS;
    //: ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    //: ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:StringFromCottaData(kStr_cakeProviderValue)];
    //: return ret;
    return ret;
}

//: + (instancetype)initWithRawContent:(NSData *)data {
+ (instancetype)initWithImage:(NSData *)data {
    //: if (!data) {
    if (!data) {
        //: return nil;
        return nil;
    }
    //: id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    //: if (![jsonData isKindOfClass:[NSDictionary class]]) {
    if (![jsonData isKindOfClass:[NSDictionary class]]) {
        //: return nil;
        return nil;
    }

    //: NSDictionary *dict = (NSDictionary *)jsonData;
    NSDictionary *dict = (NSDictionary *)jsonData;
    //: NTESMigrateHeader *info = [[NTESMigrateHeader alloc] init];
    ButtonHeader *info = [[ButtonHeader alloc] init];
    //: info.version = [dict jsonInteger:kNTESMigrateHeaderVersion];
    info.version = [dict session:kLet_statePathData];
    //: info.clientType = [dict jsonInteger:kNTESMigrateHeaderTerminal];
    info.clientType = [dict session:kLet_keyData];
    //: info.sdkVersion = [dict jsonString:kNTESMigrateHeaderSDKVersion];
    info.sdkVersion = [dict of:kLet_renderData];
    //: info.appVersion = [dict jsonString:kNTESMigrateHeaderAPPVersion];
    info.appVersion = [dict of:kLet_dateValue];
    //: info.totalInfoCount = [dict jsonInteger:kNTESMigrateHeaderMessageCount];
    info.totalInfoCount = [dict session:kLet_failureValue];
    //: return info;
    return info;
}

//: - (nullable NSData *)toRawContent {
- (nullable NSData *)viewText {

    //: if ([self invalid]) {
    if ([self ting]) {
        //: return nil;
        return nil;
    }

    //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    //: dic[kNTESMigrateHeaderVersion] = @(_version);
    dic[kLet_statePathData] = @(_version);
    //: dic[kNTESMigrateHeaderTerminal] = @(_clientType);
    dic[kLet_keyData] = @(_clientType);
    //: dic[kNTESMigrateHeaderSDKVersion] = _sdkVersion;
    dic[kLet_renderData] = _sdkVersion;
    //: dic[kNTESMigrateHeaderAPPVersion] = _appVersion;
    dic[kLet_dateValue] = _appVersion;
    //: dic[kNTESMigrateHeaderMessageCount] = @(_totalInfoCount);
    dic[kLet_failureValue] = @(_totalInfoCount);
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    //: return jsonData;
    return jsonData;
}

//: - (BOOL)invalid {
- (BOOL)ting {
    //: return (_totalInfoCount == 0 ||
    return (_totalInfoCount == 0 ||
            //: _version != 0);
            _version != 0);
}

//: @end
@end

Byte * CottaDataToCache(Byte *data) {
    int statusVideo = data[0];
    int cellNab = data[1];
    Byte smellContributor = data[2];
    int thorough = data[3];
    if (!statusVideo) return data + thorough;
    for (int i = thorough; i < thorough + cellNab; i++) {
        int value = data[i] - smellContributor;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[thorough + cellNab] = 0;
    return data + thorough;
}

NSString *StringFromCottaData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CottaDataToCache(data)];
}
