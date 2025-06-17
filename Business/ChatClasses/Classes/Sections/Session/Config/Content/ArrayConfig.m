// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMRtcCallRecordCntentConfig.m
// Afterwards
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFRtcCallRecordContentConfig.h"
#import "ArrayConfig.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"

//: @implementation FFFRtcCallRecordContentConfig
@implementation ArrayConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)ting:(CGFloat)cellWidth record:(NIMMessage *)message
{
    //: NSString *text = [FFFKitUtil messageTipContent:message];
    NSString *text = [PopUtil visualImage:message];
    //: UIFont *font = [[MyUserKit sharedKit].config setting:message].font;;
    UIFont *font = [[Afterwards blue].config with:message].font;;
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: CGSize contentSize = [text boundingRectWithSize:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: font} context:nil].size;
    CGSize contentSize = [text boundingRectWithSize:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: font} context:nil].size;
    //: contentSize.width +=25;
    contentSize.width +=25;
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)fire:(NIMMessage *)message
{
    //: return @"FFFSessionRtcCallRecordContentView";
    return @"SessionBubbleControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)maxIconManager:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Afterwards blue].config with:message].contentInsets;
}

//: @end
@end