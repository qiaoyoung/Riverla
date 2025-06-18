
#import <Foundation/Foundation.h>

NSString *StringFromDramaData(Byte *data);


//: message should be audio
Byte kStr_mustRetreatName[] = {53, 23, 56, 14, 137, 52, 23, 143, 139, 237, 118, 64, 107, 55, 165, 157, 171, 171, 153, 159, 157, 88, 171, 160, 167, 173, 164, 156, 88, 154, 157, 88, 153, 173, 156, 161, 167, 55};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageConfig.m
// Afterwards
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFAudioContentConfig.h"
#import "ImageConfig.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @implementation FFFAudioContentConfig
@implementation ImageConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)ting:(CGFloat)cellWidth record:(NIMMessage *)message
{
        //使用公式 长度 = (最长－最小)*(2/pi)*artan(时间/10)+最小，在10秒时变化逐渐变缓，随着时间增加 无限趋向于最大值
    //: NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    //: NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], @"message should be audio");
    NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], StringFromDramaData(kStr_mustRetreatName));


    //: CGFloat value = 2*atan((audioContent.duration/1000.0-1)/10.0)/3.14159265358979323846264338327950288;
    CGFloat value = 2*atan((audioContent.duration/1000.0-1)/10.0)/3.14159265358979323846264338327950288;
    //: NSInteger audioContentMinWidth = 90;
    NSInteger audioContentMinWidth = 90;
    //: NSInteger audioContentMaxWidth = (cellWidth - 170);
    NSInteger audioContentMaxWidth = (cellWidth - 170);
    //: NSInteger audioContentHeight = 30;
    NSInteger audioContentHeight = 30;
//    return CGSizeMake((audioContentMaxWidth - audioContentMinWidth)* value + audioContentMinWidth, audioContentHeight);
    //: return CGSizeMake(15 + audioContentMinWidth, audioContentHeight);
    return CGSizeMake(15 + audioContentMinWidth, audioContentHeight);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)fire:(NIMMessage *)message
{
    //: return @"FFFSessionAudioContentView";
    return @"LightTitleView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)maxIconManager:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Afterwards blue].config with:message].contentInsets;
}

//: @end
@end

Byte * DramaDataToCache(Byte *data) {
    int carefullyJuror = data[0];
    int mentalRepresentation = data[1];
    Byte necessaryStatus = data[2];
    int groupLog = data[3];
    if (!carefullyJuror) return data + groupLog;
    for (int i = groupLog; i < groupLog + mentalRepresentation; i++) {
        int value = data[i] - necessaryStatus;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[groupLog + mentalRepresentation] = 0;
    return data + groupLog;
}

NSString *StringFromDramaData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DramaDataToCache(data)];
}
