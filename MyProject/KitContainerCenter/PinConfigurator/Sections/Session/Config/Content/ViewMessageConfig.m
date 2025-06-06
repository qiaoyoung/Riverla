
#import <Foundation/Foundation.h>

NSString *StringFromInvolvedData(Byte *data);


//: message should be audio
Byte kStr_verbalTitle[] = {1, 23, 3, 111, 105, 100, 117, 97, 32, 101, 98, 32, 100, 108, 117, 111, 104, 115, 32, 101, 103, 97, 115, 115, 101, 109, 130};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewMessageConfig.m
// Notice
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFAudioContentConfig.h"
#import "ViewMessageConfig.h"
//: #import "MyUserKit.h"
#import "Notice.h"

//: @implementation FFFAudioContentConfig
@implementation ViewMessageConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)text:(CGFloat)cellWidth option:(NIMMessage *)message
{
        //使用公式 长度 = (最长－最小)*(2/pi)*artan(时间/10)+最小，在10秒时变化逐渐变缓，随着时间增加 无限趋向于最大值
    //: NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    //: NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], @"message should be audio");
    NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], StringFromInvolvedData(kStr_verbalTitle));


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
- (NSString *)result:(NIMMessage *)message
{
    //: return @"FFFSessionAudioContentView";
    return @"AggregationNameView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)max:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Notice fullKit].config sizeGroupBar:message].contentInsets;
}

//: @end
@end

Byte * InvolvedDataToCache(Byte *data) {
    int liableObviously = data[0];
    int tress = data[1];
    int horehoundVoluntary = data[2];
    if (!liableObviously) return data + horehoundVoluntary;
    for (int i = 0; i < tress / 2; i++) {
        int begin = horehoundVoluntary + i;
        int end = horehoundVoluntary + tress - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[horehoundVoluntary + tress] = 0;
    return data + horehoundVoluntary;
}

NSString *StringFromInvolvedData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)InvolvedDataToCache(data)];
}  
