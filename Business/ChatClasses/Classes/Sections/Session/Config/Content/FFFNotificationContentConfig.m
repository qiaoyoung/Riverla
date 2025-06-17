//
//  FFFNotificationContentConfig.m
// MyUserKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

#import "FFFNotificationContentConfig.h"
#import "M80AttributedLabel+MyUserKit.h"
#import "FFFKitUtil.h"
#import "FFFUnsupportContentConfig.h"
#import "MyUserKit.h"

@implementation FFFNotificationContentConfig
- (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
{
    NIMNotificationObject *object = message.messageObject;
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    
    CGSize contentSize = CGSizeZero;
    
    switch (object.notificationType) {
        case NIMNotificationTypeTeam:
        case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeChatroom:
        {
            CGFloat TeamNotificationMessageWidth  = cellWidth;
            UILabel *label = [[UILabel alloc] init];
            label.text  = [FFFKitUtil messageTipContent:message];
            label.font = [[MyUserKit sharedKit].config setting:message].font;
            label.numberOfLines = 0;
            CGFloat padding =   [MyUserKit sharedKit].config.maxNotificationTipPadding;
            CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, CGFLOAT_MAX)];
            CGFloat cellPadding = 11.f;
            contentSize = CGSizeMake(TeamNotificationMessageWidth, size.height + 2 * cellPadding);
            break;
        }
        case NIMNotificationTypeNetCall:{
            M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
            label.autoDetectLinks = NO;
            label.font = [[MyUserKit sharedKit].config setting:message].font;
            NSString *text = [FFFKitUtil messageTipContent:message];
            [label nim_setText:text];
            
            CGFloat msgBubbleMaxWidth    = (cellWidth - 130);
            CGFloat bubbleLeftToContent  = 14;
            CGFloat contentRightToBubble = 14;
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            contentSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
            break;
        }
        default:
        {
            FFFUnsupportContentConfig *config = [[FFFUnsupportContentConfig alloc] init];
            contentSize = [config contentSize:cellWidth message:message];
            NSAssert(0, @"not supported notification type %zd",object.notificationType);
        }
            break;
    }
    return contentSize;
}

- (NSString *)cellContent:(NIMMessage *)message
{
    NIMNotificationObject *object = message.messageObject;
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    
    switch (object.notificationType) {
        case NIMNotificationTypeTeam:
        case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeChatroom:
            return @"FFFSessionNotificationContentView";
        case NIMNotificationTypeNetCall:
            return @"FFFSessionNetChatNotifyContentView";
        case NIMNotificationTypeUnsupport:
            return @"FFFSessionUnknowContentView";
        default:
            break;
    }
}

- (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
{
    return [[MyUserKit sharedKit].config setting:message].contentInsets;
}

- (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
{
    NIMNotificationObject *object = message.messageObject;
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    
    switch (object.notificationType) {
        case NIMNotificationTypeTeam:
        case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeChatroom:
            return NO;
        case NIMNotificationTypeNetCall:
            return YES;
        case NIMNotificationTypeUnsupport:
            return NO;
        default:
            break;
    }
    return YES;
}

@end
