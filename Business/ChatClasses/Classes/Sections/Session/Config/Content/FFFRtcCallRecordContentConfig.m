//
//  NIMRtcCallRecordCntentConfig.m
// NeeyoKit
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

#import "FFFRtcCallRecordContentConfig.h"
#import "M80AttributedLabel+NeeyoKit.h"
#import "NeeyoKit.h"
#import "FFFKitUtil.h"

@implementation FFFRtcCallRecordContentConfig

- (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
{
    NSString *text = [FFFKitUtil messageTipContent:message];
    UIFont *font = [[NeeyoKit sharedKit].config setting:message].font;;
    CGFloat msgBubbleMaxWidth    = (cellWidth - 130);
    CGFloat bubbleLeftToContent  = 14;
    CGFloat contentRightToBubble = 14;
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    
    CGSize contentSize = [text boundingRectWithSize:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: font} context:nil].size;
    contentSize.width +=25;
    return contentSize;
}

- (NSString *)cellContent:(NIMMessage *)message
{
    return @"FFFSessionRtcCallRecordContentView";
}

- (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
{
    return [[NeeyoKit sharedKit].config setting:message].contentInsets;
}

@end
