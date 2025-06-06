
#import <Foundation/Foundation.h>
typedef struct {
    Byte scareBeach;
    Byte *billRomp;
    unsigned int exposeDialogue;
    bool speaker;
} ItemMotivateData;

NSString *StringFromItemMotivateData(ItemMotivateData *data);


//: icon_sender_text_node_normal
ItemMotivateData kStr_boneText = (ItemMotivateData){226, (Byte []){139, 129, 141, 140, 189, 145, 135, 140, 134, 135, 144, 189, 150, 135, 154, 150, 189, 140, 141, 134, 135, 189, 140, 141, 144, 143, 131, 142, 182}, 28, false};


//: {18,25,17,25}
ItemMotivateData kStr_suitTitle = (ItemMotivateData){206, (Byte []){181, 255, 246, 226, 252, 251, 226, 255, 249, 226, 252, 251, 179, 171}, 13, false};


//: icon_receiver_node_pressed
ItemMotivateData kStr_hangName = (ItemMotivateData){134, (Byte []){239, 229, 233, 232, 217, 244, 227, 229, 227, 239, 240, 227, 244, 217, 232, 233, 226, 227, 217, 246, 244, 227, 245, 245, 227, 226, 221}, 26, false};


//: icon_receiver_node_normal
ItemMotivateData kStr_correlationContent = (ItemMotivateData){13, (Byte []){100, 110, 98, 99, 82, 127, 104, 110, 104, 100, 123, 104, 127, 82, 99, 98, 105, 104, 82, 99, 98, 127, 96, 108, 97, 87}, 25, false};


//: icon_sender_text_node_pressed
ItemMotivateData kStr_weakenFileContent = (ItemMotivateData){191, (Byte []){214, 220, 208, 209, 224, 204, 218, 209, 219, 218, 205, 224, 203, 218, 199, 203, 224, 209, 208, 219, 218, 224, 207, 205, 218, 204, 204, 218, 219, 255}, 29, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowClickMessage.m
// Notice
//
//  Created by chris on 2017/10/30.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitSetting.h"
#import "ShowClickMessage.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"

//: @implementation FFFKitSetting
@implementation ShowClickMessage

//: - (instancetype)init:(BOOL)isRight
- (instancetype)initOf:(BOOL)isRight
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
            _normalBackgroundImage = [[UIImage neutral:StringFromItemMotivateData(&kStr_boneText)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromItemMotivateData(&kStr_suitTitle)) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage neutral:StringFromItemMotivateData(&kStr_weakenFileContent)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromItemMotivateData(&kStr_suitTitle)) resizingMode:UIImageResizingModeStretch];

        }
        //: else
        else
        {
            //: _normalBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage imageNamed:StringFromItemMotivateData(&kStr_correlationContent)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromItemMotivateData(&kStr_suitTitle)) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage imageNamed:StringFromItemMotivateData(&kStr_hangName)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromItemMotivateData(&kStr_suitTitle)) resizingMode:UIImageResizingModeStretch];
        }
    }
    //: return self;
    return self;
}

//: @end
@end

Byte *ItemMotivateDataToByte(ItemMotivateData *data) {
    if (data->speaker) return data->billRomp;
    for (int i = 0; i < data->exposeDialogue; i++) {
        data->billRomp[i] ^= data->scareBeach;
    }
    data->billRomp[data->exposeDialogue] = 0;
    data->speaker = true;
    return data->billRomp;
}

NSString *StringFromItemMotivateData(ItemMotivateData *data) {
    return [NSString stringWithUTF8String:(char *)ItemMotivateDataToByte(data)];
}
