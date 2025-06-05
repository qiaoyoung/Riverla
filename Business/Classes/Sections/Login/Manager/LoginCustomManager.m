
#import <Foundation/Foundation.h>

NSString *StringFromPlanningData(Byte *data);        


//: tyl_NTESLoginData
Byte kStr_userName[] = {58, 17, 64, 5, 249, 52, 57, 44, 31, 14, 20, 5, 19, 12, 47, 39, 41, 46, 4, 33, 52, 33, 81};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LoginCustomManager.m
//  NIM
//
//  Created by amao on 5/26/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCLoginManager.h"
#import "LoginCustomManager.h"
//: #import "NTESFileLocationHelper.h"
#import "TrademarkByScaleHelper.h"

//: @interface NTESLoginData ()
@interface LoginData ()

//: @end
@end

//: @implementation NTESLoginData
@implementation LoginData

//: - (BOOL)isValid {
- (BOOL)content {
    //: if (_authType == NIMSDKAuthTypeDefault) {
    if (_authType == NIMSDKAuthTypeDefault) {
        //: return [_account length] && [_token length];
        return [_account length] && [_token length];
    }

    //: if (_authType == NIMSDKAuthTypeDynamicToken) {
    if (_authType == NIMSDKAuthTypeDynamicToken) {
        //: return [_account length] && [_token length];
        return [_account length] && [_token length];
    }

    //: if (_authType == NIMSDKAuthTypeThirdParty) {
    if (_authType == NIMSDKAuthTypeThirdParty) {
        //: return [_account length] && [_token length] && [_loginExtension length];
        return [_account length] && [_token length] && [_loginExtension length];
    }

    //: return NO;
    return NO;
}
//: @end
@end



//: @implementation CCCLoginManager
@implementation LoginCustomManager

//: + (instancetype)sharedManager
+ (instancetype)correlate
{
    //: static CCCLoginManager *instance = nil;
    static LoginCustomManager *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[CCCLoginManager alloc] init];
        instance = [[LoginCustomManager alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}


//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self readData];
        [self input];
    }
    //: return self;
    return self;
}


//: - (void)setCurrentLoginData:(NTESLoginData *)currentLoginData
- (void)setCurrentLoginData:(LoginData *)currentLoginData
{
    //: _currentLoginData = currentLoginData;
    _currentLoginData = currentLoginData;
    //: [self saveData];
    [self state];
}

//从文件中读取和保存用户名密码,建议上层开发对这个地方做加密,DEMO只为了做示范,所以没加密
//: - (void)readData
- (void)input
{
    //: NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:@"tyl_NTESLoginData"];
    NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromPlanningData(kStr_userName)];
    //: if (loginDataDic) {
    if (loginDataDic) {
        //: _currentLoginData = [NTESLoginData yy_modelWithDictionary:loginDataDic];
        _currentLoginData = [LoginData yy_modelWithDictionary:loginDataDic];
    }
}

//: - (void)saveData
- (void)state
{
    //: if (_currentLoginData)
    if (_currentLoginData)
    {
        //: [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:@"tyl_NTESLoginData"];
        [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:StringFromPlanningData(kStr_userName)];
    }
}


//: @end
@end

Byte * PlanningDataToCache(Byte *data) {
    int infinite = data[0];
    int policeStation = data[1];
    Byte bindSpace = data[2];
    int weedValuable = data[3];
    if (!infinite) return data + weedValuable;
    for (int i = weedValuable; i < weedValuable + policeStation; i++) {
        int value = data[i] + bindSpace;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[weedValuable + policeStation] = 0;
    return data + weedValuable;
}

NSString *StringFromPlanningData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PlanningDataToCache(data)];
}
