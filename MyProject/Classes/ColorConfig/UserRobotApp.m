
#import <Foundation/Foundation.h>

NSString *StringFromSizeTitleData(Byte *data);


//: NTESChatroomTextContentView
Byte kStr_deeplyLameVentureValue[] = {44, 27, 65, 9, 219, 115, 226, 79, 114, 143, 149, 134, 148, 132, 169, 162, 181, 179, 176, 176, 174, 149, 166, 185, 181, 132, 176, 175, 181, 166, 175, 181, 151, 170, 166, 184, 71};

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserRobotApp.m
//  NIM
//
//  Created by chris on 2017/8/21.
//  Copyright © 2017年 Netease. All rights reserved.
//
//: #import "NTESChatroomRobotContentConfig.h"
#import "UserRobotApp.h"
//: #import "M80AttributedLabel+NIMKit.h"
#import "M80AttributedLabel+NIMKit.h"
//: #import "NTESSessionRobotContentView.h"
#import "FaceContentView.h"
//: #import "UIView+NIM.h"
#import "UIView+NIM.h"

// __M_A_C_R_O__

//: @interface NTESChatroomRobotContentConfig()
@interface UserRobotApp()

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) PopScrollView *label;

//: @property (nonatomic,strong) NTESSessionRobotContentView *robotContentView;
@property (nonatomic,strong) FaceContentView *robotContentView;

//: @property (nonatomic,strong) NIMMessageModel *robotModel;
@property (nonatomic,strong) NIMMessageModel *robotModel;
//: @end
@end

//: @implementation NTESChatroomRobotContentConfig
@implementation UserRobotApp

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)languageComment:(CGFloat)cellWidth index:(NIMMessage *)message
{
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: if ([self isFromRobot:message])
    if ([self range:message])
    {
        //: self.robotModel.message = message;
        self.robotModel.message = message;
        //: self.robotContentView.nim_width = msgBubbleMaxWidth;
        self.robotContentView.nim_width = msgBubbleMaxWidth;
        //: [self.robotContentView setupRobot:self.robotModel];
        [self.robotContentView setupRobot:self.robotModel];
        //: [self.robotContentView layoutIfNeeded];
        [self.robotContentView layoutIfNeeded];

        //: CGSize size = [self.robotContentView sizeThatFits:CGSizeMake(msgBubbleMaxWidth, CGFLOAT_MAX)];
        CGSize size = [self.robotContentView sizeThatFits:CGSizeMake(msgBubbleMaxWidth, CGFLOAT_MAX)];
        //: return size;
        return size;
    }
    //: else
    else
    {
        //: NSString *text = message.text;
        NSString *text = message.text;
        //: [self.label nim_setText:text];
        [self.label nim_setText:text];

        //: CGFloat bubbleLeftToContent = 14;
        CGFloat bubbleLeftToContent = 14;
        //: CGFloat contentRightToBubble = 14;
        CGFloat contentRightToBubble = 14;
        //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
        return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
    }
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: if ([self isFromRobot:message])
    if ([self range:message])
    {
        //: return @"NTESSessionRobotContentView";
        return @"FaceContentView";
    }
    //: else
    else
    {
        //: return @"NTESChatroomTextContentView";
        return StringFromSizeTitleData(kStr_deeplyLameVentureValue);
    }
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)table:(NIMMessage *)message
{
    //: if ([self isFromRobot:message])
    if ([self range:message])
    {
        //: return UIEdgeInsetsMake(9,15,10,0);
        return UIEdgeInsetsMake(9,15,10,0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(20,15,10,0);
        return UIEdgeInsetsMake(20,15,10,0);
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (BOOL)isFromRobot:(NIMMessage *)message
- (BOOL)range:(NIMMessage *)message
{
    //: NIMRobotObject *object = (NIMRobotObject *)message.messageObject;
    NIMRobotObject *object = (NIMRobotObject *)message.messageObject;
    //: return object.isFromRobot;
    return object.isFromRobot;
}

//: - (M80AttributedLabel *)label
- (PopScrollView *)label
{
    //: if (_label)
    if (_label)
    {
        //: return _label;
        return _label;
    }
    //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    _label = [[PopScrollView alloc] initWithFrame:CGRectZero];
    //: _label.font = [UIFont systemFontOfSize:Chatroom_Message_Font_Size];
    _label.font = [UIFont systemFontOfSize:Chatroom_Message_Font_Size];
    //: return _label;
    return _label;
}

//: - (NTESSessionRobotContentView *)robotContentView
- (FaceContentView *)robotContentView
{
    //: if (_robotContentView)
    if (_robotContentView)
    {
        //: return _robotContentView;
        return _robotContentView;
    }
    //: _robotContentView = [[NTESSessionRobotContentView alloc] initSessionMessageContentView];
    _robotContentView = [[FaceContentView alloc] initSessionMessageContentView];
    //: return _robotContentView;
    return _robotContentView;
}

//: - (NIMMessageModel *)robotModel
- (NIMMessageModel *)robotModel
{
    //: if (_robotModel)
    if (_robotModel)
    {
        //: return _robotModel;
        return _robotModel;
    }
    //: _robotModel = [[NIMMessageModel alloc] init];
    _robotModel = [[NIMMessageModel alloc] init];
    //: return _robotModel;
    return _robotModel;
}

//: @end
@end

Byte * SizeTitleDataToCache(Byte *data) {
    int cattle = data[0];
    int fusionCon = data[1];
    Byte responsible = data[2];
    int absorb = data[3];
    if (!cattle) return data + absorb;
    for (int i = absorb; i < absorb + fusionCon; i++) {
        int value = data[i] - responsible;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[absorb + fusionCon] = 0;
    return data + absorb;
}

NSString *StringFromSizeTitleData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SizeTitleDataToCache(data)];
}
