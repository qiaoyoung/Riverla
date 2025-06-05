
#import <Foundation/Foundation.h>

NSString *StringFromHeaveData(Byte *data);        


//: home_fragment_pc
Byte kStr_wasteTitle[] = {86, 16, 98, 14, 156, 68, 123, 46, 95, 251, 238, 210, 175, 38, 6, 13, 11, 3, 253, 4, 16, 255, 5, 11, 3, 12, 18, 253, 14, 1, 87};


//: home_fragment_phone
Byte kStr_canvasColorFromText[] = {24, 19, 40, 12, 104, 194, 71, 205, 200, 104, 211, 19, 64, 71, 69, 61, 55, 62, 74, 57, 63, 69, 61, 70, 76, 55, 72, 64, 71, 70, 61, 221};


//: home_fragment_web
Byte kStr_convictionText[] = {89, 17, 7, 13, 100, 99, 221, 237, 83, 117, 35, 7, 174, 97, 104, 102, 94, 88, 95, 107, 90, 96, 102, 94, 103, 109, 88, 112, 94, 91, 126};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AstatineUtil.m
//  NIM
//
//  Created by chris on 15/7/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESClientUtil.h"
#import "AstatineUtil.h"

//: @implementation NTESClientUtil
@implementation AstatineUtil

//: + (NSString *)clientName:(NIMLoginClientType)clientType{
+ (NSString *)clientName:(NIMLoginClientType)clientType{
    //: switch (clientType) {
    switch (clientType) {
        //: case NIMLoginClientTypeAOS:
        case NIMLoginClientTypeAOS:
        //: case NIMLoginClientTypeiOS:
        case NIMLoginClientTypeiOS:
        //: case NIMLoginClientTypeWP:
        case NIMLoginClientTypeWP:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_phone"];
            return [TeamManager sizeKey:StringFromHeaveData(kStr_canvasColorFromText)];
        //: case NIMLoginClientTypePC:
        case NIMLoginClientTypePC:
        //: case NIMLoginClientTypemacOS:
        case NIMLoginClientTypemacOS:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_pc"];
            return [TeamManager sizeKey:StringFromHeaveData(kStr_wasteTitle)];
        //: case NIMLoginClientTypeWeb:
        case NIMLoginClientTypeWeb:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_web"];
            return [TeamManager sizeKey:StringFromHeaveData(kStr_convictionText)];
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: @end
@end

Byte * HeaveDataToCache(Byte *data) {
    int showHotel = data[0];
    int sumegrated = data[1];
    Byte pullTogether = data[2];
    int tradeTablespoon = data[3];
    if (!showHotel) return data + tradeTablespoon;
    for (int i = tradeTablespoon; i < tradeTablespoon + sumegrated; i++) {
        int value = data[i] + pullTogether;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[tradeTablespoon + sumegrated] = 0;
    return data + tradeTablespoon;
}

NSString *StringFromHeaveData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HeaveDataToCache(data)];
}
