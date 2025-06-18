
#import <Foundation/Foundation.h>

NSString *StringFromRevelationData(Byte *data);


//: icon_receiver_node_pressed
Byte kStr_screenStorageName[] = {81, 26, 9, 52, 63, 210, 254, 91, 220, 100, 101, 115, 115, 101, 114, 112, 95, 101, 100, 111, 110, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 203};


//: icon_sender_text_node_normal
Byte kStr_imageSeasonName[] = {5, 28, 3, 108, 97, 109, 114, 111, 110, 95, 101, 100, 111, 110, 95, 116, 120, 101, 116, 95, 114, 101, 100, 110, 101, 115, 95, 110, 111, 99, 105, 159};


//: {18,25,17,25}
Byte kStr_instantlyValue[] = {47, 13, 7, 235, 249, 187, 239, 125, 53, 50, 44, 55, 49, 44, 53, 50, 44, 56, 49, 123, 203};


//: icon_receiver_node_normal
Byte kStr_besidesName[] = {83, 25, 13, 51, 148, 204, 195, 37, 10, 155, 153, 50, 155, 108, 97, 109, 114, 111, 110, 95, 101, 100, 111, 110, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 133};


//: icon_sender_text_node_pressed
Byte kStr_lingValue[] = {27, 29, 13, 69, 103, 160, 128, 44, 119, 83, 66, 92, 72, 100, 101, 115, 115, 101, 114, 112, 95, 101, 100, 111, 110, 95, 116, 120, 101, 116, 95, 114, 101, 100, 110, 101, 115, 95, 110, 111, 99, 105, 154};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WorkerSetting.m
// Afterwards
//
//  Created by chris on 2017/10/30.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitSetting.h"
#import "WorkerSetting.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"

//: @implementation FFFKitSetting
@implementation WorkerSetting

//: - (instancetype)init:(BOOL)isRight
- (instancetype)initSession:(BOOL)isRight
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: if (isRight)
        if (isRight)
        {
            //: _normalBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage title:StringFromRevelationData(kStr_imageSeasonName)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromRevelationData(kStr_instantlyValue)) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage title:StringFromRevelationData(kStr_lingValue)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromRevelationData(kStr_instantlyValue)) resizingMode:UIImageResizingModeStretch];

        }
        //: else
        else
        {
            //: _normalBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage imageNamed:StringFromRevelationData(kStr_besidesName)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromRevelationData(kStr_instantlyValue)) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage imageNamed:StringFromRevelationData(kStr_screenStorageName)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromRevelationData(kStr_instantlyValue)) resizingMode:UIImageResizingModeStretch];
        }
    }
    //: return self;
    return self;
}

//: @end
@end

Byte * RevelationDataToCache(Byte *data) {
    int mutantGeneMare = data[0];
    int dessertJack = data[1];
    int gal = data[2];
    if (!mutantGeneMare) return data + gal;
    for (int i = 0; i < dessertJack / 2; i++) {
        int begin = gal + i;
        int end = gal + dessertJack - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[gal + dessertJack] = 0;
    return data + gal;
}

NSString *StringFromRevelationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RevelationDataToCache(data)];
}  
