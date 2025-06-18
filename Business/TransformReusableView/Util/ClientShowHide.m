
#import <Foundation/Foundation.h>

NSString *StringFromStreetSmartData(Byte *data);


//: home_fragment_phone
Byte kStr_blueRequestData[] = {67, 19, 3, 101, 110, 111, 104, 112, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 251};


//: home_fragment_web
Byte kStr_musicianStatusContent[] = {53, 17, 7, 8, 16, 146, 157, 98, 101, 119, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 133};


//: home_fragment_pc
Byte kStr_burningDishText[] = {76, 16, 7, 229, 215, 254, 146, 99, 112, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 61};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClientShowHide.m
//  NIM
//
//  Created by chris on 15/7/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESClientUtil.h"
#import "ClientShowHide.h"

//: @implementation NTESClientUtil
@implementation ClientShowHide

//: + (NSString *)clientName:(NIMLoginClientType)clientType{
+ (NSString *)month:(NIMLoginClientType)clientType{
    //: switch (clientType) {
    switch (clientType) {
        //: case NIMLoginClientTypeAOS:
        case NIMLoginClientTypeAOS:
        //: case NIMLoginClientTypeiOS:
        case NIMLoginClientTypeiOS:
        //: case NIMLoginClientTypeWP:
        case NIMLoginClientTypeWP:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_phone"];
            return [ItemManager sessionInformation:StringFromStreetSmartData(kStr_blueRequestData)];
        //: case NIMLoginClientTypePC:
        case NIMLoginClientTypePC:
        //: case NIMLoginClientTypemacOS:
        case NIMLoginClientTypemacOS:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_pc"];
            return [ItemManager sessionInformation:StringFromStreetSmartData(kStr_burningDishText)];
        //: case NIMLoginClientTypeWeb:
        case NIMLoginClientTypeWeb:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_web"];
            return [ItemManager sessionInformation:StringFromStreetSmartData(kStr_musicianStatusContent)];
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: @end
@end

Byte * StreetSmartDataToCache(Byte *data) {
    int userStack = data[0];
    int store = data[1];
    int torn = data[2];
    if (!userStack) return data + torn;
    for (int i = 0; i < store / 2; i++) {
        int begin = torn + i;
        int end = torn + store - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[torn + store] = 0;
    return data + torn;
}

NSString *StringFromStreetSmartData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)StreetSmartDataToCache(data)];
}  
