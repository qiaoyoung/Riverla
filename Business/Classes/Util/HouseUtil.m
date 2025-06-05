
#import <Foundation/Foundation.h>
typedef struct {
    Byte ecologicalSpend;
    Byte *oldMagnitudery;
    unsigned int pause;
    bool birdRap;
	int spectrum;
} TreasureMaterData;

NSString *StringFromTreasureMaterData(TreasureMaterData *data);


//: friend_info_activity_nv
TreasureMaterData kStr_avoidText = (TreasureMaterData){203, (Byte []){173, 185, 162, 174, 165, 175, 148, 162, 165, 173, 164, 148, 170, 168, 191, 162, 189, 162, 191, 178, 148, 165, 189, 48}, 23, false, 49};


//: friend_info_activity_nan
TreasureMaterData kStr_animalTitle = (TreasureMaterData){64, (Byte []){38, 50, 41, 37, 46, 36, 31, 41, 46, 38, 47, 31, 33, 35, 52, 41, 54, 41, 52, 57, 31, 46, 33, 46, 86}, 24, false, 78};


//: friend_info_activity_xu
TreasureMaterData kStr_cementMakeBothValue = (TreasureMaterData){221, (Byte []){187, 175, 180, 184, 179, 185, 130, 180, 179, 187, 178, 130, 188, 190, 169, 180, 171, 180, 169, 164, 130, 165, 168, 1}, 23, false, 133};

// __DEBUG__
// __CLOSE_PRINT__
//
//  HouseUtil.m
//  NIM
//
//  Created by chris on 15/9/17.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESUserUtil.h"
#import "HouseUtil.h"
//: #import "FFFKitUtil.h"
#import "UtilizerUtil.h"

//: @implementation NTESUserUtil
@implementation HouseUtil

//: + (NSString *)genderString:(NIMUserGender)gender{
+ (NSString *)commence:(NIMUserGender)gender{
    //: NSString *genderStr = @"";
    NSString *genderStr = @"";
    //: switch (gender) {
    switch (gender) {
        //: case NIMUserGenderMale:
        case NIMUserGenderMale:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nan"];
            genderStr = [TeamManager sizeKey:StringFromTreasureMaterData(&kStr_animalTitle)];
            //: break;
            break;
        //: case NIMUserGenderFemale:
        case NIMUserGenderFemale:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nv"];
            genderStr = [TeamManager sizeKey:StringFromTreasureMaterData(&kStr_avoidText)];
            //: break;
            break;
        //: case NIMUserGenderUnknown:
        case NIMUserGenderUnknown:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_xu"];
            genderStr = [TeamManager sizeKey:StringFromTreasureMaterData(&kStr_cementMakeBothValue)];
        //: default:
        default:
            //: break;
            break;
    }
    //: return genderStr;
    return genderStr;
}

//: @end
@end

Byte *TreasureMaterDataToByte(TreasureMaterData *data) {
    if (data->birdRap) return data->oldMagnitudery;
    for (int i = 0; i < data->pause; i++) {
        data->oldMagnitudery[i] ^= data->ecologicalSpend;
    }
    data->oldMagnitudery[data->pause] = 0;
    data->birdRap = true;
	if (data->pause >= 1) {
		data->spectrum = data->oldMagnitudery[0];
	}
    return data->oldMagnitudery;
}

NSString *StringFromTreasureMaterData(TreasureMaterData *data) {
    return [NSString stringWithUTF8String:(char *)TreasureMaterDataToByte(data)];
}
