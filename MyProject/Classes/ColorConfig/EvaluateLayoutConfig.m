
#import <Foundation/Foundation.h>
typedef struct {
    Byte ultravioletSpectrum;
    Byte *lemmaConRealist;
    unsigned int hairBatteryView;
    bool vesselLeading;
	int from;
	int recognise;
	int pure;
} BeyondData;

NSString *StringFromBeyondData(BeyondData *data);


//: chatroom_role_manager
BeyondData kStr_foodTitle = (BeyondData){15, (Byte []){108, 103, 110, 123, 125, 96, 96, 98, 80, 125, 96, 99, 106, 80, 98, 110, 97, 110, 104, 106, 125, 44}, 21, false, 7, 188, 30};


//: NTESMessageRefusedTag
BeyondData kStr_homelandName = (BeyondData){119, (Byte []){57, 35, 50, 36, 58, 18, 4, 4, 22, 16, 18, 37, 18, 17, 2, 4, 18, 19, 35, 22, 16, 12}, 21, false, 222, 173, 13};


//: chatroom_role_master
BeyondData kStr_confessTitle = (BeyondData){140, (Byte []){239, 228, 237, 248, 254, 227, 227, 225, 211, 254, 227, 224, 233, 211, 225, 237, 255, 248, 233, 254, 28}, 20, false, 54, 161, 249};


//: type
BeyondData kStr_workingTitle = (BeyondData){90, (Byte []){46, 35, 42, 63, 169}, 4, false, 226, 246, 81};

// __DEBUG__
// __CLOSE_PRINT__
//
//  EvaluateLayoutConfig.m
//  NIM
//
//  Created by amao on 2016/11/22.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCellLayoutConfig.h"
#import "EvaluateLayoutConfig.h"
//: #import "NTESSessionCustomContentConfig.h"
#import "HeadingConfig.h"
//: #import "NTESChatroomTextContentConfig.h"
#import "ColorConfig.h"
//: #import "NTESWhiteboardAttachment.h"
#import "PastAttachment.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "StyleAction.h"

//: @interface NTESCellLayoutConfig ()
@interface EvaluateLayoutConfig ()
//: @property (nonatomic,strong) NSArray *types;
@property (nonatomic,strong) NSArray *types;
//: @property (nonatomic,strong) NTESSessionCustomContentConfig *sessionCustomconfig;
@property (nonatomic,strong) HeadingConfig *sessionCustomconfig;
//: @property (nonatomic,strong) NTESChatroomTextContentConfig *chatroomTextConfig;
@property (nonatomic,strong) ColorConfig *chatroomTextConfig;
//: @end
@end

//: @implementation NTESCellLayoutConfig
@implementation EvaluateLayoutConfig

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _types = @[
        _types = @[
                   //: @"NTESJanKenPonAttachment",
                   @"ChangeScale",
                   //: @"NTESSnapchatAttachment",
                   @"PresentAttachment",
                   //: @"NTESWhiteboardAttachment",
                   @"PastAttachment",
                   //: @"NTESRedPacketAttachment",
                   @"RubyRedRecentAttachmentCustom",
                   //: @"NTESRedPacketTipAttachment",
                   @"StyleAction",
                   //: @"NTESMultiRetweetAttachment",
                   @"ConstituentAttachment",
                   //: @"NTESShareCardAttachment"
                   @"ChildApp"
                   //: ];
                   ];
        //: _sessionCustomconfig = [[NTESSessionCustomContentConfig alloc] init];
        _sessionCustomconfig = [[HeadingConfig alloc] init];
        //: _chatroomTextConfig = [[NTESChatroomTextContentConfig alloc] init];
        _chatroomTextConfig = [[ColorConfig alloc] init];
    }
    //: return self;
    return self;
}
//: #pragma mark - FFFCellLayoutConfig
#pragma mark - KeyChange
//: - (CGSize)contentSize:(FFFMessageModel *)model cellWidth:(CGFloat)width{
- (CGSize)accumulationCompartmentCountFrame:(MaxLink *)model achromaticColorFloat:(CGFloat)width{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message])
    if ([self sight:message])
    {
        //: return [_sessionCustomconfig contentSize:width message:message];
        return [_sessionCustomconfig text:width option:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message])
    if ([self sub:message])
    {
        //: return [_chatroomTextConfig contentSize:width message:message];
        return [_chatroomTextConfig text:width option:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentSize:model
    return [super accumulationCompartmentCountFrame:model
                    //: cellWidth:width];
                    achromaticColorFloat:width];

}

//: - (NSString *)cellContent:(FFFMessageModel *)model{
- (NSString *)data:(MaxLink *)model{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self sight:message]) {
        //: return [_sessionCustomconfig cellContent:message];
        return [_sessionCustomconfig result:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self sub:message]) {
        //: return [_chatroomTextConfig cellContent:message];
        return [_chatroomTextConfig result:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellContent:model];
    return [super data:model];
}

//: - (UIEdgeInsets)contentViewInsets:(FFFMessageModel *)model
- (UIEdgeInsets)userMain:(MaxLink *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self sight:message]) {
        //: return [_sessionCustomconfig contentViewInsets:message];
        return [_sessionCustomconfig max:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self sub:message]) {
        //: return [_chatroomTextConfig contentViewInsets:message];
        return [_chatroomTextConfig max:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentViewInsets:model];
    return [super userMain:model];
}

//: - (UIEdgeInsets)cellInsets:(FFFMessageModel *)model
- (UIEdgeInsets)add:(MaxLink *)model
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
    return [super add:model];
}




//: - (BOOL)shouldShowAvatar:(FFFMessageModel *)model
- (BOOL)passePartout:(MaxLink *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self aggregation:model.message]) {
        //: return NO;
        return NO;
    }
    //: if ([self isWhiteboardCloseNotificationMessage:model.message]){
    if ([self send:model.message]){
        //: return NO;
        return NO;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self path:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowAvatar:model];
    return [super passePartout:model];
}

//: - (BOOL)shouldShowLeft:(FFFMessageModel *)model{
- (BOOL)coverHolder:(MaxLink *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self aggregation:model.message]) {
        //: return YES;
        return YES;
    }
    //: return [super shouldShowLeft:model];
    return [super coverHolder:model];
}


//: - (BOOL)shouldShowNickName:(FFFMessageModel *)model{
- (BOOL)atomicQuantity85Disable:(MaxLink *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self aggregation:model.message]) {
        //: return YES;
        return YES;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self path:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowNickName:model];
    return [super atomicQuantity85Disable:model];
}

//: - (CGPoint)nickNameMargin:(FFFMessageModel *)model{
- (CGPoint)lip:(MaxLink *)model{

    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self aggregation:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[StringFromBeyondData(&kStr_workingTitle)] integerValue];
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
    return [super lip:model];
}

//: - (NSArray *)customViews:(FFFMessageModel *)model
- (NSArray *)bottom:(MaxLink *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self aggregation:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[StringFromBeyondData(&kStr_workingTitle)] integerValue];
        //: NSString *imageName;
        NSString *imageName;

        //: switch (type)
        switch (type)
        {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
                //: imageName = @"chatroom_role_manager";
                imageName = StringFromBeyondData(&kStr_foodTitle);
                //: break;
                break;
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: imageName = @"chatroom_role_master";
                imageName = StringFromBeyondData(&kStr_confessTitle);
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
    return [super bottom:model];
}


//: - (BOOL)disableRetryButton:(FFFMessageModel *)model
- (BOOL)timed:(MaxLink *)model
{
    //: if ([model.message.localExt.allKeys containsObject:@"NTESMessageRefusedTag"])
    if ([model.message.localExt.allKeys containsObject:StringFromBeyondData(&kStr_homelandName)])
    {
        //: return [[model.message.localExt objectForKey:@"NTESMessageRefusedTag"] boolValue];
        return [[model.message.localExt objectForKey:StringFromBeyondData(&kStr_homelandName)] boolValue];
    }
    //: return [super disableRetryButton:model];
    return [super timed:model];
}



//: #pragma mark - misc
#pragma mark - misc
//: - (BOOL)isSupportedCustomMessage:(NIMMessage *)message
- (BOOL)sight:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: return [object isKindOfClass:[NIMCustomObject class]] &&
    return [object isKindOfClass:[NIMCustomObject class]] &&
    //: [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
    [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
}


//: - (BOOL)isSupportedChatroomMessage:(NIMMessage *)message
- (BOOL)aggregation:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: (message.messageType == NIMMessageTypeText || [self isSupportedCustomMessage:message]);
    (message.messageType == NIMMessageTypeText || [self sight:message]);
}

//: - (BOOL)isChatroomTextMessage:(NIMMessage *)message
- (BOOL)sub:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: message.messageType == NIMMessageTypeText;
    message.messageType == NIMMessageTypeText;
}

//: - (BOOL)isWhiteboardCloseNotificationMessage:(NIMMessage *)message
- (BOOL)send:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]]) {
        if ([object.attachment isKindOfClass:[PastAttachment class]]) {
            //: return [(NTESWhiteboardAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
            return [(PastAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isRedpacketTip:(NIMMessage *)message
- (BOOL)path:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]]) {
        if ([object.attachment isKindOfClass:[StyleAction class]]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)shouldDisplayBubbleBackground:(FFFMessageModel *)model
- (BOOL)foam:(MaxLink *)model
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
    if ([self sight:message])
    {
        //: return [_sessionCustomconfig enableBackgroundBubbleView:message];
        return [_sessionCustomconfig streetwiseTable:message];
    }

    //检查是不是聊天室文本消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: if ([_chatroomTextConfig respondsToSelector:@selector(enableBackgroundBubbleView:)])
        if ([_chatroomTextConfig respondsToSelector:@selector(streetwiseTable:)])
        {
            //: return [_chatroomTextConfig enableBackgroundBubbleView:message];
            return [_chatroomTextConfig streetwiseTable:message];
        }
        //: return NO;
        return NO;
    }

    //: return [super shouldDisplayBubbleBackground:model];
    return [super foam:model];
}
//: @end
@end

Byte *BeyondDataToByte(BeyondData *data) {
    if (data->vesselLeading) return data->lemmaConRealist;
    for (int i = 0; i < data->hairBatteryView; i++) {
        data->lemmaConRealist[i] ^= data->ultravioletSpectrum;
    }
    data->lemmaConRealist[data->hairBatteryView] = 0;
    data->vesselLeading = true;
	if (data->hairBatteryView >= 3) {
		data->from = data->lemmaConRealist[0];
		data->recognise = data->lemmaConRealist[1];
		data->pure = data->lemmaConRealist[2];
	}
    return data->lemmaConRealist;
}

NSString *StringFromBeyondData(BeyondData *data) {
    return [NSString stringWithUTF8String:(char *)BeyondDataToByte(data)];
}
