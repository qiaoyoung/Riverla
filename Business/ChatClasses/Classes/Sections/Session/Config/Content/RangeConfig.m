
#import <Foundation/Foundation.h>

NSString *StringFromFortData(Byte *data);


//: message should be notification
Byte kStr_hesitateName[] = {41, 30, 5, 119, 66, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 101, 98, 32, 100, 108, 117, 111, 104, 115, 32, 101, 103, 97, 115, 115, 101, 109, 174};


//: not supported notification type %zd
Byte kStr_sateIngredientContent[] = {94, 35, 6, 55, 141, 110, 100, 122, 37, 32, 101, 112, 121, 116, 32, 110, 111, 105, 116, 97, 99, 105, 102, 105, 116, 111, 110, 32, 100, 101, 116, 114, 111, 112, 112, 117, 115, 32, 116, 111, 110, 213};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeConfig.m
// Afterwards
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFNotificationContentConfig.h"
#import "RangeConfig.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"
//: #import "FFFUnsupportContentConfig.h"
#import "DisableConfig.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @implementation FFFNotificationContentConfig
@implementation RangeConfig
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)ting:(CGFloat)cellWidth record:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], StringFromFortData(kStr_hesitateName));

    //: CGSize contentSize = CGSizeZero;
    CGSize contentSize = CGSizeZero;

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
        {
            //: CGFloat TeamNotificationMessageWidth = cellWidth;
            CGFloat TeamNotificationMessageWidth = cellWidth;
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
            //: contentSize = CGSizeMake(TeamNotificationMessageWidth, size.height + 2 * cellPadding);
            contentSize = CGSizeMake(TeamNotificationMessageWidth, size.height + 2 * cellPadding);
            //: break;
            break;
        }
        //: case NIMNotificationTypeNetCall:{
        case NIMNotificationTypeNetCall:{
            //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
            ShowTitleView *label = [[ShowTitleView alloc] initWithFrame:CGRectZero];
            //: label.autoDetectLinks = NO;
            label.autoDetectLinks = NO;
            //: label.font = [[MyUserKit sharedKit].config setting:message].font;
            label.font = [[Afterwards blue].config with:message].font;
            //: NSString *text = [FFFKitUtil messageTipContent:message];
            NSString *text = [PopUtil visualImage:message];
            //: [label nim_setText:text];
            [label time:text];

            //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
            CGFloat msgBubbleMaxWidth = (cellWidth - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            //: contentSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            contentSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            //: break;
            break;
        }
        //: default:
        default:
        {
            //: FFFUnsupportContentConfig *config = [[FFFUnsupportContentConfig alloc] init];
            DisableConfig *config = [[DisableConfig alloc] init];
            //: contentSize = [config contentSize:cellWidth message:message];
            contentSize = [config ting:cellWidth record:message];
            //: NSAssert(0, @"not supported notification type %zd",object.notificationType);
            NSAssert(0, StringFromFortData(kStr_sateIngredientContent),object.notificationType);
        }
            //: break;
            break;
    }
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)fire:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], StringFromFortData(kStr_hesitateName));

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
            //: return @"FFFSessionNotificationContentView";
            return @"FitControl";
        //: case NIMNotificationTypeNetCall:
        case NIMNotificationTypeNetCall:
            //: return @"FFFSessionNetChatNotifyContentView";
            return @"TelephotoView";
        //: case NIMNotificationTypeUnsupport:
        case NIMNotificationTypeUnsupport:
            //: return @"FFFSessionUnknowContentView";
            return @"RandomControl";
        //: default:
        default:
            //: break;
            break;
    }
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
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], StringFromFortData(kStr_hesitateName));

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
            //: return NO;
            return NO;
        //: case NIMNotificationTypeNetCall:
        case NIMNotificationTypeNetCall:
            //: return YES;
            return YES;
        //: case NIMNotificationTypeUnsupport:
        case NIMNotificationTypeUnsupport:
            //: return NO;
            return NO;
        //: default:
        default:
            //: break;
            break;
    }
    //: return YES;
    return YES;
}

//: @end
@end

Byte * FortDataToCache(Byte *data) {
    int redDrop = data[0];
    int mootEqual = data[1];
    int primBurning = data[2];
    if (!redDrop) return data + primBurning;
    for (int i = 0; i < mootEqual / 2; i++) {
        int begin = primBurning + i;
        int end = primBurning + mootEqual - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[primBurning + mootEqual] = 0;
    return data + primBurning;
}

NSString *StringFromFortData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FortDataToCache(data)];
}  
