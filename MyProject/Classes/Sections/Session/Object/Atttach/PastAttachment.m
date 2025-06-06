
#import <Foundation/Foundation.h>

NSString *StringFromSumernationalAleData(Byte *data);


//: icon_whiteboard_session_msg
Byte kStr_fascinatingText[] = {56, 27, 96, 13, 69, 49, 56, 180, 115, 160, 97, 202, 90, 201, 195, 207, 206, 191, 215, 200, 201, 212, 197, 194, 207, 193, 210, 196, 191, 211, 197, 211, 211, 201, 207, 206, 191, 205, 211, 199, 54};


//: data
Byte kStr_flourName[] = {52, 4, 16, 9, 162, 17, 220, 203, 201, 116, 113, 132, 113, 133};


//: 白板演示已结束
Byte kStr_wisdomData[] = {54, 21, 99, 5, 97, 74, 252, 32, 73, 0, 34, 73, 31, 247, 74, 7, 29, 72, 26, 21, 74, 30, 246, 73, 0, 2, 97};


//: flag
Byte kStr_clearCommonText[] = {61, 4, 69, 13, 52, 168, 63, 125, 182, 112, 94, 183, 38, 171, 177, 166, 172, 145};


//: type
Byte kStr_lidMaxData[] = {67, 4, 73, 5, 195, 189, 194, 185, 174, 111};


//: 我发起了白板演示
Byte kStr_patronName[] = {24, 24, 31, 4, 5, 167, 176, 4, 174, 176, 7, 212, 214, 3, 217, 165, 6, 184, 220, 5, 188, 222, 5, 219, 179, 6, 195, 217, 89};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PastAttachment.m
//  NIM
//
//  Created by 高峰 on 15/7/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESWhiteboardAttachment.h"
#import "PastAttachment.h"
//: #import "M80AttributedLabel.h"
#import "PopScrollView.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"

//: @implementation NTESWhiteboardAttachment
@implementation PastAttachment

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeWhiteboard),
    NSDictionary *dict = @{StringFromSumernationalAleData(kStr_lidMaxData) : @(CustomMessageTypeWhiteboard),
                           //: @"data" : @{@"flag":@(self.flag)}};
                           StringFromSumernationalAleData(kStr_flourName) : @{StringFromSumernationalAleData(kStr_clearCommonText):@(self.flag)}};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }
    //: return content;
    return content;
}

//: - (NSString *)formatedMessage{
- (NSString *)userMessage{
    //: NSString *msg = @"";
    NSString *msg = @"";
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: msg = @"我发起了白板演示".ntes_localized;
            msg = StringFromSumernationalAleData(kStr_patronName).titleLocalized;
            //: break;
            break;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: msg = @"白板演示已结束".ntes_localized;
            msg = StringFromSumernationalAleData(kStr_wisdomData).titleLocalized;
        //: default:
        default:
            //: break;
            break;
    }
    //: return msg;
    return msg;
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)videoContent:(NIMMessage *)message{
    //: NSString *content;
    NSString *content;
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: content = @"NTESSessionWhiteBoardContentView";
            content = @"ChildTitleView";
            //: break;
            break;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: content = @"NTESSessionTipContentView";
            content = @"PinView";
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: return content;
    return content;
}

//: - (BOOL)shouldShowAvatar
- (BOOL)elite
{
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:
        case CustomWhiteboardFlagInvite:
            //: return YES;
            return YES;
        //: case CustomWhiteboardFlagClose:
        case CustomWhiteboardFlagClose:
            //: return NO;
            return NO;
        //: default:
        default:
            //: break;
            break;
    }
    //: return NO;
    return NO;
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)dataPriority:(NIMMessage *)message numericalTotal:(CGFloat)width{
    //: CGSize contentSize;
    CGSize contentSize;
    //: switch (self.flag) {
    switch (self.flag) {
        //: case CustomWhiteboardFlagInvite:{
        case CustomWhiteboardFlagInvite:{
            //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
            PopScrollView *label = [[PopScrollView alloc] initWithFrame:CGRectZero];
            //: label.autoDetectLinks = NO;
            label.autoDetectLinks = NO;
            //: label.font = [UIFont systemFontOfSize:14];
            label.font = [UIFont systemFontOfSize:14];
            //: [label setText:self.formatedMessage];
            [label setText:self.userMessage];
            //: UIImage *image = [UIImage imageNamed:@"icon_whiteboard_session_msg"];
            UIImage *image = [UIImage imageNamed:StringFromSumernationalAleData(kStr_fascinatingText)];
            //: CGFloat msgBubbleMaxWidth = ([UIScreen mainScreen].bounds.size.width - 130);
            CGFloat msgBubbleMaxWidth = ([UIScreen mainScreen].bounds.size.width - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            //: CGFloat customWhiteBorardMessageImageRightToText = 10.f;
            CGFloat customWhiteBorardMessageImageRightToText = 10.f;
            //: CGSize labelSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            CGSize labelSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            //: contentSize = CGSizeMake(labelSize.width + image.size.width + customWhiteBorardMessageImageRightToText, labelSize.height);
            contentSize = CGSizeMake(labelSize.width + image.size.width + customWhiteBorardMessageImageRightToText, labelSize.height);
            //: break;
            break;
        }
        //: case CustomWhiteboardFlagClose:{
        case CustomWhiteboardFlagClose:{
            //: CGFloat messageWidth = width;
            CGFloat messageWidth = width;
            //: CGFloat messageHeight = 40;
            CGFloat messageHeight = 40;
            //: contentSize = CGSizeMake(messageWidth, messageHeight);
            contentSize = CGSizeMake(messageWidth, messageHeight);
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return contentSize;
    return contentSize;
}


//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)max:(NIMMessage *)message
{
    //: if (self.flag == CustomWhiteboardFlagClose) {
    if (self.flag == CustomWhiteboardFlagClose) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    //: } else {
    } else {
        //: CGFloat selfBubbleTopToContentForBoard = 11.f;
        CGFloat selfBubbleTopToContentForBoard = 11.f;
        //: CGFloat selfBubbleLeftToContentForBoard = 11.f;
        CGFloat selfBubbleLeftToContentForBoard = 11.f;
        //: CGFloat selfContentButtomToBubbleForBoard = 9.f;
        CGFloat selfContentButtomToBubbleForBoard = 9.f;
        //: CGFloat selfBubbleRightToContentForBoard = 15.f;
        CGFloat selfBubbleRightToContentForBoard = 15.f;

        //: CGFloat otherBubbleTopToContentForBoard = 11.f;
        CGFloat otherBubbleTopToContentForBoard = 11.f;
        //: CGFloat otherBubbleLeftToContentForBoard = 15.f;
        CGFloat otherBubbleLeftToContentForBoard = 15.f;
        //: CGFloat otherContentButtomToBubbleForBoard = 9.f;
        CGFloat otherContentButtomToBubbleForBoard = 9.f;
        //: CGFloat otherContentRightToBubbleForBoard = 9.f;
        CGFloat otherContentRightToBubbleForBoard = 9.f;


        //: return message.isOutgoingMsg ? UIEdgeInsetsMake(selfBubbleTopToContentForBoard,
        return message.isOutgoingMsg ? UIEdgeInsetsMake(selfBubbleTopToContentForBoard,
                                                        //: selfBubbleLeftToContentForBoard,
                                                        selfBubbleLeftToContentForBoard,
                                                        //: selfContentButtomToBubbleForBoard,
                                                        selfContentButtomToBubbleForBoard,
                                                        //: selfBubbleRightToContentForBoard):
                                                        selfBubbleRightToContentForBoard):
        //: UIEdgeInsetsMake(otherBubbleTopToContentForBoard,
        UIEdgeInsetsMake(otherBubbleTopToContentForBoard,
                         //: otherBubbleLeftToContentForBoard,
                         otherBubbleLeftToContentForBoard,
                         //: otherContentButtomToBubbleForBoard,
                         otherContentButtomToBubbleForBoard,
                         //: otherContentRightToBubbleForBoard);
                         otherContentRightToBubbleForBoard);
    }
}

//: - (BOOL)canDisplayBubbleBackground:(NIMMessage *)message
- (BOOL)shoulded:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeForwarded
- (BOOL)eliteRecord
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)sendItem
{
    //: return NO;
    return NO;
}



//: @end
@end

Byte * SumernationalAleDataToCache(Byte *data) {
    int amazingly = data[0];
    int textApproximate = data[1];
    Byte kitInherit = data[2];
    int patronTing = data[3];
    if (!amazingly) return data + patronTing;
    for (int i = patronTing; i < patronTing + textApproximate; i++) {
        int value = data[i] - kitInherit;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[patronTing + textApproximate] = 0;
    return data + patronTing;
}

NSString *StringFromSumernationalAleData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SumernationalAleDataToCache(data)];
}
