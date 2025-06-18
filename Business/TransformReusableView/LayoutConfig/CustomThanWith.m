
#import <Foundation/Foundation.h>

NSString *StringFromRefreshCellDrivewayData(Byte *data);        


//: message must be custom
Byte kStr_titleToneData[] = {79, 22, 73, 7, 240, 170, 185, 36, 28, 42, 42, 24, 30, 28, 215, 36, 44, 42, 43, 215, 25, 28, 215, 26, 44, 42, 43, 38, 36, 193};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomThanWith.m
//  NIM
//
//  Created by chris on 16/1/14.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionCustomContentConfig.h"
#import "CustomThanWith.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionCustomContentConfig()
@interface CustomThanWith()

//: @end
@end

//: @implementation NTESSessionCustomContentConfig
@implementation CustomThanWith

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)ting:(CGFloat)cellWidth record:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromRefreshCellDrivewayData(kStr_titleToneData));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<EmptyInfo> info = (id<EmptyInfo>)object.attachment;
    //: return [info contentSize:message cellWidth:cellWidth];
    return [info with:message viewPerimeter:cellWidth];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)fire:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromRefreshCellDrivewayData(kStr_titleToneData));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<EmptyInfo> info = (id<EmptyInfo>)object.attachment;
    //: return [info cellContent:message];
    return [info compartment:message];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)maxIconManager:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromRefreshCellDrivewayData(kStr_titleToneData));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<EmptyInfo> info = (id<EmptyInfo>)object.attachment;
    //: return [info contentViewInsets:message];
    return [info assemblageTitleInsets:message];
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)dated:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromRefreshCellDrivewayData(kStr_titleToneData));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<EmptyInfo> info = (id<EmptyInfo>)object.attachment;
    //: if (![info respondsToSelector:@selector(canDisplayBubbleBackground:)])
    if (![info respondsToSelector:@selector(removeBackground:)])
    {
        //: return YES;
        return YES;
    }
    //: return [info canDisplayBubbleBackground:message];
    return [info removeBackground:message];
}


//: @end
@end

Byte * RefreshCellDrivewayDataToCache(Byte *data) {
    int hourAlcohol = data[0];
    int micaAt = data[1];
    Byte hugeContinentBeef = data[2];
    int imageCellCruise = data[3];
    if (!hourAlcohol) return data + imageCellCruise;
    for (int i = imageCellCruise; i < imageCellCruise + micaAt; i++) {
        int value = data[i] + hugeContinentBeef;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[imageCellCruise + micaAt] = 0;
    return data + imageCellCruise;
}

NSString *StringFromRefreshCellDrivewayData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RefreshCellDrivewayDataToCache(data)];
}
