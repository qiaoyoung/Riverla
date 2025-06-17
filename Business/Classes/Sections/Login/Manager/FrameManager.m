
#import <Foundation/Foundation.h>
typedef struct {
    Byte directionTable;
    Byte *shouldChange;
    unsigned int sumerlayer;
    bool cellColor;
	int civilStatus;
	int today;
	int viewVictor;
} VaccineeData;

NSString *StringFromVaccineeData(VaccineeData *data);


//: tyl_NTESLoginData
VaccineeData kStr_killerContent = (VaccineeData){112, (Byte []){4, 9, 28, 47, 62, 36, 53, 35, 60, 31, 23, 25, 30, 52, 17, 4, 17, 81}, 17, false, 244, 207, 15};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameManager.m
//  NIM
//
//  Created by amao on 5/26/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCLoginManager.h"
#import "FrameManager.h"
//: #import "NTESFileLocationHelper.h"
#import "MessageSearchedHelper.h"

//: @interface NTESLoginData ()
@interface SupportData ()

//: @end
@end

//: @implementation NTESLoginData
@implementation SupportData

//: - (BOOL)isValid {
- (BOOL)replyValid {
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
@implementation FrameManager

//: + (instancetype)sharedManager
+ (instancetype)viewMemberRead
{
    //: static CCCLoginManager *instance = nil;
    static FrameManager *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[CCCLoginManager alloc] init];
        instance = [[FrameManager alloc] init];
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
        [self comment];
    }
    //: return self;
    return self;
}


//: - (void)setCurrentLoginData:(NTESLoginData *)currentLoginData
- (void)setCurrentLoginData:(SupportData *)currentLoginData
{
    //: _currentLoginData = currentLoginData;
    _currentLoginData = currentLoginData;
    //: [self saveData];
    [self infoData];
}

//从文件中读取和保存用户名密码,建议上层开发对这个地方做加密,DEMO只为了做示范,所以没加密
//: - (void)readData
- (void)comment
{
    //: NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:@"tyl_NTESLoginData"];
    NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromVaccineeData(&kStr_killerContent)];
    //: if (loginDataDic) {
    if (loginDataDic) {
        //: _currentLoginData = [NTESLoginData yy_modelWithDictionary:loginDataDic];
        _currentLoginData = [SupportData yy_modelWithDictionary:loginDataDic];
    }
}

//: - (void)saveData
- (void)infoData
{
    //: if (_currentLoginData)
    if (_currentLoginData)
    {
        //: [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:@"tyl_NTESLoginData"];
        [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:StringFromVaccineeData(&kStr_killerContent)];
    }
}


//: @end
@end

Byte *VaccineeDataToByte(VaccineeData *data) {
    if (data->cellColor) return data->shouldChange;
    for (int i = 0; i < data->sumerlayer; i++) {
        data->shouldChange[i] ^= data->directionTable;
    }
    data->shouldChange[data->sumerlayer] = 0;
    data->cellColor = true;
	if (data->sumerlayer >= 3) {
		data->civilStatus = data->shouldChange[0];
		data->today = data->shouldChange[1];
		data->viewVictor = data->shouldChange[2];
	}
    return data->shouldChange;
}

NSString *StringFromVaccineeData(VaccineeData *data) {
    return [NSString stringWithUTF8String:(char *)VaccineeDataToByte(data)];
}
