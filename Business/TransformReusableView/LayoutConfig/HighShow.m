
#import <Foundation/Foundation.h>

NSString *StringFromRecentData(Byte *data);        


//: NTESChatroomTextContentView
Byte kStr_alsoData[] = {84, 27, 25, 11, 216, 177, 225, 48, 160, 18, 255, 53, 59, 44, 58, 42, 79, 72, 91, 89, 86, 86, 84, 59, 76, 95, 91, 42, 86, 85, 91, 76, 85, 91, 61, 80, 76, 94, 186};

// __DEBUG__
// __CLOSE_PRINT__
//
//  HighShow.m
//  NIM
//
//  Created by chris on 2017/8/21.
//  Copyright © 2017年 Netease. All rights reserved.
//
//: #import "NTESChatroomRobotContentConfig.h"
#import "HighShow.h"
//: #import "M80AttributedLabel+NIMKit.h"
#import "M80AttributedLabel+NIMKit.h"
//: #import "NTESSessionRobotContentView.h"
#import "CandlelightView.h"
//: #import "UIView+NIM.h"
#import "UIView+NIM.h"

// __M_A_C_R_O__

//: @interface NTESChatroomRobotContentConfig()
@interface HighShow()

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) ShowTitleView *label;

//: @property (nonatomic,strong) NTESSessionRobotContentView *robotContentView;
@property (nonatomic,strong) CandlelightView *robotContentView;

//: @property (nonatomic,strong) NIMMessageModel *robotModel;
@property (nonatomic,strong) NIMMessageModel *robotModel;
//: @end
@end

//: @implementation NTESChatroomRobotContentConfig
@implementation HighShow

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)cell:(CGFloat)cellWidth holder:(NIMMessage *)message
{
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: if ([self isFromRobot:message])
    if ([self action:message])
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
- (NSString *)fromName:(NIMMessage *)message
{
    //: if ([self isFromRobot:message])
    if ([self action:message])
    {
        //: return @"NTESSessionRobotContentView";
        return @"CandlelightView";
    }
    //: else
    else
    {
        //: return @"NTESChatroomTextContentView";
        return StringFromRecentData(kStr_alsoData);
    }
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)along:(NIMMessage *)message
{
    //: if ([self isFromRobot:message])
    if ([self action:message])
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
- (BOOL)action:(NIMMessage *)message
{
    //: NIMRobotObject *object = (NIMRobotObject *)message.messageObject;
    NIMRobotObject *object = (NIMRobotObject *)message.messageObject;
    //: return object.isFromRobot;
    return object.isFromRobot;
}

//: - (M80AttributedLabel *)label
- (ShowTitleView *)label
{
    //: if (_label)
    if (_label)
    {
        //: return _label;
        return _label;
    }
    //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    _label = [[ShowTitleView alloc] initWithFrame:CGRectZero];
    //: _label.font = [UIFont systemFontOfSize:Chatroom_Message_Font_Size];
    _label.font = [UIFont systemFontOfSize:Chatroom_Message_Font_Size];
    //: return _label;
    return _label;
}

//: - (NTESSessionRobotContentView *)robotContentView
- (CandlelightView *)robotContentView
{
    //: if (_robotContentView)
    if (_robotContentView)
    {
        //: return _robotContentView;
        return _robotContentView;
    }
    //: _robotContentView = [[NTESSessionRobotContentView alloc] initSessionMessageContentView];
    _robotContentView = [[CandlelightView alloc] initSessionMessageContentView];
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

Byte * RecentDataToCache(Byte *data) {
    int progressCousin = data[0];
    int analogDigitalConverter = data[1];
    Byte screen = data[2];
    int tingLength = data[3];
    if (!progressCousin) return data + tingLength;
    for (int i = tingLength; i < tingLength + analogDigitalConverter; i++) {
        int value = data[i] + screen;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[tingLength + analogDigitalConverter] = 0;
    return data + tingLength;
}

NSString *StringFromRecentData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RecentDataToCache(data)];
}
