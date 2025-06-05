//
//  FFFUnsupportContentConfig.m
// NeeyoKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

#import "FFFUnsupportContentConfig.h"
#import "NeeyoKit.h"

@interface FFFUnsupportContentConfig ()

@property (nonatomic,strong) UILabel *label;

@end

@implementation FFFUnsupportContentConfig

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label.text = @"未知类型消息".nim_localized;
    }
    return self;
}

- (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
{
    CGSize size = [self.label sizeThatFits:CGSizeMake(CGFLOAT_MAX, 40.f)];
    return CGSizeMake(size.width, 40.f);
}

- (NSString *)cellContent:(NIMMessage *)message
{
    FFFKitSetting *setting = [[NeeyoKit sharedKit].config setting:message];
    self.label.textColor = setting.textColor;
    self.label.font = setting.font;
    
    return @"FFFSessionUnknowContentView";
}

- (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
{
    FFFKitSettings *settings = message.isOutgoingMsg? [NeeyoKit sharedKit].config.rightBubbleSettings : [NeeyoKit sharedKit].config.leftBubbleSettings;
    return settings.unsupportSetting.contentInsets;
}

@end
