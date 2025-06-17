
#import <Foundation/Foundation.h>

NSString *StringFromOxygenData(Byte *data);


//: NTESMessageRefusedTag
Byte kStr_frequentlyName[] = {48, 21, 77, 14, 64, 182, 35, 143, 221, 55, 189, 243, 206, 71, 155, 161, 146, 160, 154, 178, 192, 192, 174, 180, 178, 159, 178, 179, 194, 192, 178, 177, 161, 174, 180, 177};


//: chatroom_role_master
Byte kStr_maxSubmitData[] = {7, 20, 61, 9, 229, 146, 25, 158, 63, 160, 165, 158, 177, 175, 172, 172, 170, 156, 175, 172, 169, 162, 156, 170, 158, 176, 177, 162, 175, 79};


//: type
Byte kStr_mustMumText[] = {95, 4, 72, 7, 190, 226, 178, 188, 193, 184, 173, 100};


//: chatroom_role_manager
Byte kStr_storeOxygenViewData[] = {23, 21, 29, 6, 158, 192, 128, 133, 126, 145, 143, 140, 140, 138, 124, 143, 140, 137, 130, 124, 138, 126, 139, 126, 132, 130, 143, 252};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ActivityLayoutConfig.m
//  NIM
//
//  Created by amao on 2016/11/22.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCellLayoutConfig.h"
#import "ActivityLayoutConfig.h"
//: #import "NTESSessionCustomContentConfig.h"
#import "CustomThanWith.h"
//: #import "NTESChatroomTextContentConfig.h"
#import "CheckedHideShow.h"
//: #import "NTESWhiteboardAttachment.h"
#import "ButtonSupport.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "CommentAttachment.h"

//: @interface NTESCellLayoutConfig ()
@interface ActivityLayoutConfig ()
//: @property (nonatomic,strong) NSArray *types;
@property (nonatomic,strong) NSArray *types;
//: @property (nonatomic,strong) NTESSessionCustomContentConfig *sessionCustomconfig;
@property (nonatomic,strong) CustomThanWith *sessionCustomconfig;
//: @property (nonatomic,strong) NTESChatroomTextContentConfig *chatroomTextConfig;
@property (nonatomic,strong) CheckedHideShow *chatroomTextConfig;
//: @end
@end

//: @implementation NTESCellLayoutConfig
@implementation ActivityLayoutConfig

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _types = @[
        _types = @[
                   //: @"NTESJanKenPonAttachment",
                   @"ChapterAttachment",
                   //: @"NTESSnapchatAttachment",
                   @"FileAllocationTableTransform",
                   //: @"NTESWhiteboardAttachment",
                   @"ButtonSupport",
                   //: @"NTESRedPacketAttachment",
                   @"RecentAttachment",
                   //: @"NTESRedPacketTipAttachment",
                   @"CommentAttachment",
                   //: @"NTESMultiRetweetAttachment",
                   @"StopOperationAttachment",
                   //: @"NTESShareCardAttachment"
                   @"TableFit"
                   //: ];
                   ];
        //: _sessionCustomconfig = [[NTESSessionCustomContentConfig alloc] init];
        _sessionCustomconfig = [[CustomThanWith alloc] init];
        //: _chatroomTextConfig = [[NTESChatroomTextContentConfig alloc] init];
        _chatroomTextConfig = [[CheckedHideShow alloc] init];
    }
    //: return self;
    return self;
}
//: #pragma mark - FFFCellLayoutConfig
#pragma mark - TitleConfig
//: - (CGSize)contentSize:(FFFMessageModel *)model cellWidth:(CGFloat)width{
- (CGSize)compartmentTitle:(StochasticProcessTeam *)model bottomText:(CGFloat)width{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message])
    if ([self press:message])
    {
        //: return [_sessionCustomconfig contentSize:width message:message];
        return [_sessionCustomconfig ting:width record:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message])
    if ([self at:message])
    {
        //: return [_chatroomTextConfig contentSize:width message:message];
        return [_chatroomTextConfig ting:width record:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentSize:model
    return [super compartmentTitle:model
                    //: cellWidth:width];
                    bottomText:width];

}

//: - (NSString *)cellContent:(FFFMessageModel *)model{
- (NSString *)aggregationTableColor:(StochasticProcessTeam *)model{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self press:message]) {
        //: return [_sessionCustomconfig cellContent:message];
        return [_sessionCustomconfig fire:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self at:message]) {
        //: return [_chatroomTextConfig cellContent:message];
        return [_chatroomTextConfig fire:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellContent:model];
    return [super aggregationTableColor:model];
}

//: - (UIEdgeInsets)contentViewInsets:(FFFMessageModel *)model
- (UIEdgeInsets)behindCollection:(StochasticProcessTeam *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self press:message]) {
        //: return [_sessionCustomconfig contentViewInsets:message];
        return [_sessionCustomconfig maxIconManager:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self at:message]) {
        //: return [_chatroomTextConfig contentViewInsets:message];
        return [_chatroomTextConfig maxIconManager:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentViewInsets:model];
    return [super behindCollection:model];
}

//: - (UIEdgeInsets)cellInsets:(FFFMessageModel *)model
- (UIEdgeInsets)telegram:(StochasticProcessTeam *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;

    //检查是不是聊天室消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellInsets:model];
    return [super telegram:model];
}




//: - (BOOL)shouldShowAvatar:(FFFMessageModel *)model
- (BOOL)containerBubble:(StochasticProcessTeam *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self path:model.message]) {
        //: return NO;
        return NO;
    }
    //: if ([self isWhiteboardCloseNotificationMessage:model.message]){
    if ([self gray:model.message]){
        //: return NO;
        return NO;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self endWith:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowAvatar:model];
    return [super containerBubble:model];
}

//: - (BOOL)shouldShowLeft:(FFFMessageModel *)model{
- (BOOL)colouredLeft:(StochasticProcessTeam *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self path:model.message]) {
        //: return YES;
        return YES;
    }
    //: return [super shouldShowLeft:model];
    return [super colouredLeft:model];
}


//: - (BOOL)shouldShowNickName:(FFFMessageModel *)model{
- (BOOL)max:(StochasticProcessTeam *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self path:model.message]) {
        //: return YES;
        return YES;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self endWith:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowNickName:model];
    return [super max:model];
}

//: - (CGPoint)nickNameMargin:(FFFMessageModel *)model{
- (CGPoint)replacement:(StochasticProcessTeam *)model{

    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self path:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[StringFromOxygenData(kStr_mustMumText)] integerValue];
        //: switch (type) {
        switch (type) {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: return CGPointMake(50.f, -3.f);
                return CGPointMake(50.f, -3.f);
            //: default:
            default:
                //: break;
                break;
        }
        //: return CGPointMake(15.f, -3.f);;
        return CGPointMake(15.f, -3.f);;

    }
    //: return [super nickNameMargin:model];
    return [super replacement:model];
}

//: - (NSArray *)customViews:(FFFMessageModel *)model
- (NSArray *)atViews:(StochasticProcessTeam *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self path:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[StringFromOxygenData(kStr_mustMumText)] integerValue];
        //: NSString *imageName;
        NSString *imageName;

        //: switch (type)
        switch (type)
        {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
                //: imageName = @"chatroom_role_manager";
                imageName = StringFromOxygenData(kStr_storeOxygenViewData);
                //: break;
                break;
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: imageName = @"chatroom_role_master";
                imageName = StringFromOxygenData(kStr_maxSubmitData);
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }

        //: UIImageView *imageView;
        UIImageView *imageView;
        //: if (imageName.length) {
        if (imageName.length) {
            //: UIImage *image = [UIImage imageNamed:imageName];
            UIImage *image = [UIImage imageNamed:imageName];
            //: imageView = [[UIImageView alloc] initWithImage:image];
            imageView = [[UIImageView alloc] initWithImage:image];
            //: CGFloat leftMargin = 15.f;
            CGFloat leftMargin = 15.f;
            //: CGFloat topMatgin = 0.f;
            CGFloat topMatgin = 0.f;
            //: CGRect frame = imageView.frame;
            CGRect frame = imageView.frame;
            //: frame.origin = CGPointMake(leftMargin, topMatgin);
            frame.origin = CGPointMake(leftMargin, topMatgin);
            //: imageView.frame = frame;
            imageView.frame = frame;
        }
        //: return imageView ? @[imageView] : nil;
        return imageView ? @[imageView] : nil;
    }
    //: return [super customViews:model];
    return [super atViews:model];
}


//: - (BOOL)disableRetryButton:(FFFMessageModel *)model
- (BOOL)names:(StochasticProcessTeam *)model
{
    //: if ([model.message.localExt.allKeys containsObject:@"NTESMessageRefusedTag"])
    if ([model.message.localExt.allKeys containsObject:StringFromOxygenData(kStr_frequentlyName)])
    {
        //: return [[model.message.localExt objectForKey:@"NTESMessageRefusedTag"] boolValue];
        return [[model.message.localExt objectForKey:StringFromOxygenData(kStr_frequentlyName)] boolValue];
    }
    //: return [super disableRetryButton:model];
    return [super names:model];
}



//: #pragma mark - misc
#pragma mark - misc
//: - (BOOL)isSupportedCustomMessage:(NIMMessage *)message
- (BOOL)press:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: return [object isKindOfClass:[NIMCustomObject class]] &&
    return [object isKindOfClass:[NIMCustomObject class]] &&
    //: [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
    [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
}


//: - (BOOL)isSupportedChatroomMessage:(NIMMessage *)message
- (BOOL)path:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: (message.messageType == NIMMessageTypeText || [self isSupportedCustomMessage:message]);
    (message.messageType == NIMMessageTypeText || [self press:message]);
}

//: - (BOOL)isChatroomTextMessage:(NIMMessage *)message
- (BOOL)at:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: message.messageType == NIMMessageTypeText;
    message.messageType == NIMMessageTypeText;
}

//: - (BOOL)isWhiteboardCloseNotificationMessage:(NIMMessage *)message
- (BOOL)gray:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]]) {
        if ([object.attachment isKindOfClass:[ButtonSupport class]]) {
            //: return [(NTESWhiteboardAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
            return [(ButtonSupport *)object.attachment flag] == CustomWhiteboardFlagClose;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isRedpacketTip:(NIMMessage *)message
- (BOOL)endWith:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]]) {
        if ([object.attachment isKindOfClass:[CommentAttachment class]]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)shouldDisplayBubbleBackground:(FFFMessageModel *)model
- (BOOL)pressedFrame:(StochasticProcessTeam *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!message)
    if (!message)
    {
        //: return NO;
        return NO;
    }

    //: if ([self isSupportedCustomMessage:message])
    if ([self press:message])
    {
        //: return [_sessionCustomconfig enableBackgroundBubbleView:message];
        return [_sessionCustomconfig dated:message];
    }

    //检查是不是聊天室文本消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: if ([_chatroomTextConfig respondsToSelector:@selector(enableBackgroundBubbleView:)])
        if ([_chatroomTextConfig respondsToSelector:@selector(dated:)])
        {
            //: return [_chatroomTextConfig enableBackgroundBubbleView:message];
            return [_chatroomTextConfig dated:message];
        }
        //: return NO;
        return NO;
    }

    //: return [super shouldDisplayBubbleBackground:model];
    return [super pressedFrame:model];
}
//: @end
@end

Byte * OxygenDataToCache(Byte *data) {
    int lengthToday = data[0];
    int languageMum = data[1];
    Byte cocaine = data[2];
    int barRation = data[3];
    if (!lengthToday) return data + barRation;
    for (int i = barRation; i < barRation + languageMum; i++) {
        int value = data[i] - cocaine;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[barRation + languageMum] = 0;
    return data + barRation;
}

NSString *StringFromOxygenData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)OxygenDataToCache(data)];
}
