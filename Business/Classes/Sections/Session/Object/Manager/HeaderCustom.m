
#import <Foundation/Foundation.h>
typedef struct {
    Byte debt;
    Byte *legislator;
    unsigned int residency;
    bool gaze;
	int executing;
} SkiData;

NSString *StringFromSkiData(SkiData *data);


//: CFBundleShortVersionString
SkiData kStr_shoutContent = (SkiData){246, (Byte []){181, 176, 180, 131, 152, 146, 154, 147, 165, 158, 153, 132, 130, 160, 147, 132, 133, 159, 153, 152, 165, 130, 132, 159, 152, 145, 226}, 26, false, 184};

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeaderCustom.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateHeader.h"
#import "HeaderCustom.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Enable.h"

//: static NSString *const kNTESMigrateHeaderVersion = @"version";
static NSString *const let_nameBeautyText = @"version";
//: static NSString *const kNTESMigrateHeaderTerminal = @"terminal";
static NSString *const let_managerText = @"terminal";
//: static NSString *const kNTESMigrateHeaderSDKVersion = @"sdk_version";
static NSString *const let_personTitle = @"sdk_version";
//: static NSString *const kNTESMigrateHeaderAPPVersion = @"app_version";
static NSString *const let_windowName = @"app_version";
//: static NSString *const kNTESMigrateHeaderMessageCount = @"message_count";
static NSString *const let_effectInfoName = @"message_count";

//: @implementation NTESMigrateHeader
@implementation HeaderCustom


//: + (instancetype)initWithDefaultConfig {
+ (instancetype)initWithModel {
    //: NTESMigrateHeader *ret = [[NTESMigrateHeader alloc] init];
    HeaderCustom *ret = [[HeaderCustom alloc] init];
    //: ret.version = 0;
    ret.version = 0;
    //: ret.clientType = NIMLoginClientTypeiOS;
    ret.clientType = NIMLoginClientTypeiOS;
    //: ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    //: ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:StringFromSkiData(&kStr_shoutContent)];
    //: return ret;
    return ret;
}

//: + (instancetype)initWithRawContent:(NSData *)data {
+ (instancetype)initWithVideoExamine:(NSData *)data {
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
    HeaderCustom *info = [[HeaderCustom alloc] init];
    //: info.version = [dict jsonInteger:kNTESMigrateHeaderVersion];
    info.version = [dict bubble:let_nameBeautyText];
    //: info.clientType = [dict jsonInteger:kNTESMigrateHeaderTerminal];
    info.clientType = [dict bubble:let_managerText];
    //: info.sdkVersion = [dict jsonString:kNTESMigrateHeaderSDKVersion];
    info.sdkVersion = [dict provider:let_personTitle];
    //: info.appVersion = [dict jsonString:kNTESMigrateHeaderAPPVersion];
    info.appVersion = [dict provider:let_windowName];
    //: info.totalInfoCount = [dict jsonInteger:kNTESMigrateHeaderMessageCount];
    info.totalInfoCount = [dict bubble:let_effectInfoName];
    //: return info;
    return info;
}

//: - (nullable NSData *)toRawContent {
- (nullable NSData *)can {

    //: if ([self invalid]) {
    if ([self title]) {
        //: return nil;
        return nil;
    }

    //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    //: dic[kNTESMigrateHeaderVersion] = @(_version);
    dic[let_nameBeautyText] = @(_version);
    //: dic[kNTESMigrateHeaderTerminal] = @(_clientType);
    dic[let_managerText] = @(_clientType);
    //: dic[kNTESMigrateHeaderSDKVersion] = _sdkVersion;
    dic[let_personTitle] = _sdkVersion;
    //: dic[kNTESMigrateHeaderAPPVersion] = _appVersion;
    dic[let_windowName] = _appVersion;
    //: dic[kNTESMigrateHeaderMessageCount] = @(_totalInfoCount);
    dic[let_effectInfoName] = @(_totalInfoCount);
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    //: return jsonData;
    return jsonData;
}

//: - (BOOL)invalid {
- (BOOL)title {
    //: return (_totalInfoCount == 0 ||
    return (_totalInfoCount == 0 ||
            //: _version != 0);
            _version != 0);
}

//: @end
@end

Byte *SkiDataToByte(SkiData *data) {
    if (data->gaze) return data->legislator;
    for (int i = 0; i < data->residency; i++) {
        data->legislator[i] ^= data->debt;
    }
    data->legislator[data->residency] = 0;
    data->gaze = true;
	if (data->residency >= 1) {
		data->executing = data->legislator[0];
	}
    return data->legislator;
}

NSString *StringFromSkiData(SkiData *data) {
    return [NSString stringWithUTF8String:(char *)SkiDataToByte(data)];
}
