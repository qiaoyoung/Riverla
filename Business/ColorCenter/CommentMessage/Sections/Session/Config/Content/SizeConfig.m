// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeConfig.m
// Afterwards
//
//  Created by chris on 16/1/21.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTipContentConfig.h"
#import "SizeConfig.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @implementation FFFTipContentConfig
@implementation SizeConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)ting:(CGFloat)cellWidth record:(NIMMessage *)message
{
    //: CGFloat messageWidth = cellWidth;
    CGFloat messageWidth = cellWidth;
    //: UILabel *label = [[UILabel alloc] init];
    UILabel *label = [[UILabel alloc] init];
    //: label.text = [FFFKitUtil messageTipContent:message];
    label.text = [PopUtil visualImage:message];
    //: label.font = [[MyUserKit sharedKit].config setting:message].font;
    label.font = [[Afterwards blue].config with:message].font;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;
    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [Afterwards blue].config.easyLay;
    //: CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
    CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
    //: CGFloat cellPadding = 11.f;
    CGFloat cellPadding = 11.f;
    //: CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)fire:(NIMMessage *)message
{
    //: return @"FFFSessionNotificationContentView";
    return @"FitControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)maxIconManager:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Afterwards blue].config with:message].contentInsets;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)dated:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end