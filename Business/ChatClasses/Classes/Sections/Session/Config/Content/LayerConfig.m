
#import <Foundation/Foundation.h>
typedef struct {
    Byte successSpokesman;
    Byte *historicallyBread;
    unsigned int goldTreasure;
    bool badly;
} CreateData;

NSString *StringFromCreateData(CreateData *data);


//: 未知类型消息
CreateData kStr_wagonValue = (CreateData){181, (Byte []){83, 41, 31, 82, 42, 16, 82, 4, 14, 80, 43, 62, 83, 3, 61, 83, 52, 26, 219}, 18, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LayerConfig.m
// Notice
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFUnsupportContentConfig.h"
#import "LayerConfig.h"
//: #import "MyUserKit.h"
#import "Notice.h"

//: @interface FFFUnsupportContentConfig ()
@interface LayerConfig ()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation FFFUnsupportContentConfig
@implementation LayerConfig

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.text = @"未知类型消息".nim_localized;
        _label.text = StringFromCreateData(&kStr_wagonValue).positionMenu;
    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)text:(CGFloat)cellWidth option:(NIMMessage *)message
{
    //: CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    //: return CGSizeMake(size.width, 40.f);
    return CGSizeMake(size.width, 40.f);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)result:(NIMMessage *)message
{
    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:message];
    ShowClickMessage *setting = [[Notice fullKit].config sizeGroupBar:message];
    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;

    //: return @"FFFSessionUnknowContentView";
    return @"InfoLayerView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)max:(NIMMessage *)message
{
    //: FFFKitSettings *settings = message.isOutgoingMsg? [MyUserKit sharedKit].config.rightBubbleSettings : [MyUserKit sharedKit].config.leftBubbleSettings;
    ViewSettings *settings = message.isOutgoingMsg? [Notice fullKit].config.rightBubbleSettings : [Notice fullKit].config.leftBubbleSettings;
    //: return settings.unsupportSetting.contentInsets;
    return settings.unsupportSetting.contentInsets;
}

//: @end
@end

Byte *CreateDataToByte(CreateData *data) {
    if (data->badly) return data->historicallyBread;
    for (int i = 0; i < data->goldTreasure; i++) {
        data->historicallyBread[i] ^= data->successSpokesman;
    }
    data->historicallyBread[data->goldTreasure] = 0;
    data->badly = true;
    return data->historicallyBread;
}

NSString *StringFromCreateData(CreateData *data) {
    return [NSString stringWithUTF8String:(char *)CreateDataToByte(data)];
}
