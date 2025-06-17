
#import <Foundation/Foundation.h>

NSString *StringFromExamineedData(Byte *data);


//: friend_info_activity_nv
Byte kStr_heroTitleName[] = {99, 23, 33, 5, 223, 135, 147, 138, 134, 143, 133, 128, 138, 143, 135, 144, 128, 130, 132, 149, 138, 151, 138, 149, 154, 128, 143, 151, 79};


//: friend_info_activity_nan
Byte kStr_dateTitle[] = {57, 24, 11, 5, 242, 113, 125, 116, 112, 121, 111, 106, 116, 121, 113, 122, 106, 108, 110, 127, 116, 129, 116, 127, 132, 106, 121, 108, 121, 79};


//: friend_info_activity_xu
Byte kStr_brigText[] = {48, 23, 58, 13, 79, 80, 6, 142, 251, 147, 8, 180, 245, 160, 172, 163, 159, 168, 158, 153, 163, 168, 160, 169, 153, 155, 157, 174, 163, 176, 163, 174, 179, 153, 178, 175, 237};

// __DEBUG__
// __CLOSE_PRINT__
//
//  Util.m
//  NIM
//
//  Created by chris on 15/9/17.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESUserUtil.h"
#import "Util.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"

//: @implementation NTESUserUtil
@implementation Util

//: + (NSString *)genderString:(NIMUserGender)gender{
+ (NSString *)cord:(NIMUserGender)gender{
    //: NSString *genderStr = @"";
    NSString *genderStr = @"";
    //: switch (gender) {
    switch (gender) {
        //: case NIMUserGenderMale:
        case NIMUserGenderMale:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nan"];
            genderStr = [ItemManager sessionInformation:StringFromExamineedData(kStr_dateTitle)];
            //: break;
            break;
        //: case NIMUserGenderFemale:
        case NIMUserGenderFemale:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nv"];
            genderStr = [ItemManager sessionInformation:StringFromExamineedData(kStr_heroTitleName)];
            //: break;
            break;
        //: case NIMUserGenderUnknown:
        case NIMUserGenderUnknown:
            //: genderStr = [FFFLanguageManager getTextWithKey:@"friend_info_activity_xu"];
            genderStr = [ItemManager sessionInformation:StringFromExamineedData(kStr_brigText)];
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

Byte * ExamineedDataToCache(Byte *data) {
    int submit = data[0];
    int withCell = data[1];
    Byte turnOut = data[2];
    int novelApology = data[3];
    if (!submit) return data + novelApology;
    for (int i = novelApology; i < novelApology + withCell; i++) {
        int value = data[i] - turnOut;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[novelApology + withCell] = 0;
    return data + novelApology;
}

NSString *StringFromExamineedData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ExamineedDataToCache(data)];
}
