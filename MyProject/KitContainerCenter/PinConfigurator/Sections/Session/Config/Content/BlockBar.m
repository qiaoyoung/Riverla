// __DEBUG__
// __CLOSE_PRINT__
//
//  BlockBar.m
// Notice
//
//  Created by chris on 16/1/21.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTipContentConfig.h"
#import "BlockBar.h"
//: #import "FFFKitUtil.h"
#import "UtilizerUtil.h"
//: #import "MyUserKit.h"
#import "Notice.h"

//: @implementation FFFTipContentConfig
@implementation BlockBar

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)text:(CGFloat)cellWidth option:(NIMMessage *)message
{
    //: CGFloat messageWidth = cellWidth;
    CGFloat messageWidth = cellWidth;
    //: UILabel *label = [[UILabel alloc] init];
    UILabel *label = [[UILabel alloc] init];
    //: label.text = [FFFKitUtil messageTipContent:message];
    label.text = [UtilizerUtil change:message];
    //: label.font = [[MyUserKit sharedKit].config setting:message].font;
    label.font = [[Notice fullKit].config sizeGroupBar:message].font;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;
    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [Notice fullKit].config.enable;
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
- (NSString *)result:(NIMMessage *)message
{
    //: return @"FFFSessionNotificationContentView";
    return @"IndependentView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)max:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Notice fullKit].config sizeGroupBar:message].contentInsets;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)streetwiseTable:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end