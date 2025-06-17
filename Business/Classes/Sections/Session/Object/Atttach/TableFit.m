
#import <Foundation/Foundation.h>

NSString *StringFromHalloTingData(Byte *data);        


//: content
Byte kStr_showBuyerData[] = {12, 7, 40, 6, 249, 254, 59, 71, 70, 76, 61, 70, 76, 12};


//: personCardId
Byte kStr_taiValue[] = {84, 12, 60, 10, 103, 75, 17, 222, 165, 189, 52, 41, 54, 55, 51, 50, 7, 37, 54, 40, 13, 40, 144};


//: data
Byte kStr_enemyScaleValue[] = {54, 4, 10, 10, 221, 109, 144, 108, 152, 203, 90, 87, 106, 87, 66};


//: title
Byte kStr_underlyingContent[] = {79, 5, 78, 10, 65, 95, 57, 234, 26, 68, 38, 27, 38, 30, 23, 226};


//: type
Byte kStr_supporterSpillText[] = {49, 4, 26, 13, 109, 59, 180, 127, 206, 162, 8, 153, 83, 90, 95, 86, 75, 247};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableFit.m
//  NIM
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESShareCardAttachment.h"
#import "TableFit.h"

//: @implementation NTESShareCardAttachment
@implementation TableFit

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
        //: @"title" : self.title?:@"",
        StringFromHalloTingData(kStr_underlyingContent) : self.title?:@"",
        //: @"content" : self.content?:@"",
        StringFromHalloTingData(kStr_showBuyerData) : self.content?:@"",
        //: @"personCardId" : self.personCardId?:@"",
        StringFromHalloTingData(kStr_taiValue) : self.personCardId?:@"",
        //: @"type" : self.type?:@"0",
        StringFromHalloTingData(kStr_supporterSpillText) : self.type?:@"0",
    //: };
    };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeCard), @"data": dictContent};
    NSDictionary *dict = @{StringFromHalloTingData(kStr_supporterSpillText): @(CustomMessageTypeCard), StringFromHalloTingData(kStr_enemyScaleValue): dictContent};
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];
    //: return [[NSString alloc] initWithData:jsonData
    return [[NSString alloc] initWithData:jsonData
                                 //: encoding:NSUTF8StringEncoding];
                                 encoding:NSUTF8StringEncoding];
}


//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)titleSizeTelegram:(CGFloat)cellWidth min:(NIMMessage *)message
{
//    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];

    //: CGSize contentSize = CGSizeMake(170, 36);
    CGSize contentSize = CGSizeMake(170, 36);
    //: return contentSize;
    return contentSize;
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)with:(NIMMessage *)message viewPerimeter:(CGFloat)width {
    //: return CGSizeMake(170, 36);
    return CGSizeMake(170, 36);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: return @"FFFSessionShareCardContentView";
    return @"NameControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)assemblageTitleInsets:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Afterwards blue].config with:message].contentInsets;
}

//: - (BOOL)canBeForwarded
- (BOOL)color
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)circleRevoked
{
    //: return NO;
    return NO;
}


//: @end
@end

Byte * HalloTingDataToCache(Byte *data) {
    int strainChange = data[0];
    int brutal = data[1];
    Byte regime = data[2];
    int tacticDirection = data[3];
    if (!strainChange) return data + tacticDirection;
    for (int i = tacticDirection; i < tacticDirection + brutal; i++) {
        int value = data[i] + regime;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[tacticDirection + brutal] = 0;
    return data + tacticDirection;
}

NSString *StringFromHalloTingData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HalloTingDataToCache(data)];
}
