
#import <Foundation/Foundation.h>

NSString *StringFromImpressionData(Byte *data);


//: 未知类型消息
Byte kStr_geneMythValue[] = {36, 18, 7, 42, 29, 152, 39, 175, 129, 230, 136, 182, 230, 139, 158, 229, 187, 177, 231, 165, 159, 231, 170, 156, 230, 242};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableConfig.m
// Afterwards
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFUnsupportContentConfig.h"
#import "DisableConfig.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @interface FFFUnsupportContentConfig ()
@interface DisableConfig ()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation FFFUnsupportContentConfig
@implementation DisableConfig

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
        _label.text = StringFromImpressionData(kStr_geneMythValue).textKey;
    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)ting:(CGFloat)cellWidth record:(NIMMessage *)message
{
    //: CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    //: return CGSizeMake(size.width, 40.f);
    return CGSizeMake(size.width, 40.f);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)fire:(NIMMessage *)message
{
    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:message];
    WorkerSetting *setting = [[Afterwards blue].config with:message];
    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;

    //: return @"FFFSessionUnknowContentView";
    return @"RandomControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)maxIconManager:(NIMMessage *)message
{
    //: FFFKitSettings *settings = message.isOutgoingMsg? [MyUserKit sharedKit].config.rightBubbleSettings : [MyUserKit sharedKit].config.leftBubbleSettings;
    UserMargin *settings = message.isOutgoingMsg? [Afterwards blue].config.rightBubbleSettings : [Afterwards blue].config.leftBubbleSettings;
    //: return settings.unsupportSetting.contentInsets;
    return settings.unsupportSetting.contentInsets;
}

//: @end
@end

Byte * ImpressionDataToCache(Byte *data) {
    int comingFile = data[0];
    int commissionedMilitaryOnicer = data[1];
    int buttonMax = data[2];
    if (!comingFile) return data + buttonMax;
    for (int i = 0; i < commissionedMilitaryOnicer / 2; i++) {
        int begin = buttonMax + i;
        int end = buttonMax + commissionedMilitaryOnicer - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[buttonMax + commissionedMilitaryOnicer] = 0;
    return data + buttonMax;
}

NSString *StringFromImpressionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ImpressionDataToCache(data)];
}  
