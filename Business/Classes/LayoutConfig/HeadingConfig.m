
#import <Foundation/Foundation.h>

NSString *StringFromScoreIceData(Byte *data);


//: message must be custom
Byte kStr_creditBadlyName[] = {84, 22, 15, 10, 189, 163, 136, 254, 71, 30, 124, 116, 130, 130, 112, 118, 116, 47, 124, 132, 130, 131, 47, 113, 116, 47, 114, 132, 130, 131, 126, 124, 40};

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeadingConfig.m
//  NIM
//
//  Created by chris on 16/1/14.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionCustomContentConfig.h"
#import "HeadingConfig.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionCustomContentConfig()
@interface HeadingConfig()

//: @end
@end

//: @implementation NTESSessionCustomContentConfig
@implementation HeadingConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)text:(CGFloat)cellWidth option:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromScoreIceData(kStr_creditBadlyName));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ImaginationImageInfo> info = (id<ImaginationImageInfo>)object.attachment;
    //: return [info contentSize:message cellWidth:cellWidth];
    return [info dataPriority:message numericalTotal:cellWidth];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)result:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromScoreIceData(kStr_creditBadlyName));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ImaginationImageInfo> info = (id<ImaginationImageInfo>)object.attachment;
    //: return [info cellContent:message];
    return [info videoContent:message];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)max:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromScoreIceData(kStr_creditBadlyName));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ImaginationImageInfo> info = (id<ImaginationImageInfo>)object.attachment;
    //: return [info contentViewInsets:message];
    return [info max:message];
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)streetwiseTable:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], StringFromScoreIceData(kStr_creditBadlyName));
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ImaginationImageInfo> info = (id<ImaginationImageInfo>)object.attachment;
    //: if (![info respondsToSelector:@selector(canDisplayBubbleBackground:)])
    if (![info respondsToSelector:@selector(shoulded:)])
    {
        //: return YES;
        return YES;
    }
    //: return [info canDisplayBubbleBackground:message];
    return [info shoulded:message];
}


//: @end
@end

Byte * ScoreIceDataToCache(Byte *data) {
    int albumContainerTonight = data[0];
    int whipsaw = data[1];
    Byte truth = data[2];
    int convict = data[3];
    if (!albumContainerTonight) return data + convict;
    for (int i = convict; i < convict + whipsaw; i++) {
        int value = data[i] - truth;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[convict + whipsaw] = 0;
    return data + convict;
}

NSString *StringFromScoreIceData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ScoreIceDataToCache(data)];
}
