
#import <Foundation/Foundation.h>

NSString *StringFromApologyData(Byte *data);


//: home_fragment_yue
Byte kStr_imagineText[] = {31, 17, 12, 149, 159, 46, 199, 82, 108, 122, 108, 47, 101, 117, 121, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 66};


//: home_fragment_bai
Byte kStr_keyNameContent[] = {13, 17, 4, 179, 105, 97, 98, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 224};


//: message_red_packet
Byte kStr_progressTitle[] = {60, 18, 3, 116, 101, 107, 99, 97, 112, 95, 100, 101, 114, 95, 101, 103, 97, 115, 115, 101, 109, 176};


//: group_card
Byte kStr_realizeCountValue[] = {95, 10, 3, 100, 114, 97, 99, 95, 112, 117, 111, 114, 103, 188};


//: person_card
Byte kStr_hungerDishContent[] = {46, 11, 7, 17, 63, 56, 173, 100, 114, 97, 99, 95, 110, 111, 115, 114, 101, 112, 44};


//: message_guess
Byte kStr_representData[] = {92, 13, 8, 42, 114, 206, 173, 239, 115, 115, 101, 117, 103, 95, 101, 103, 97, 115, 115, 101, 109, 198};


//: home_fragment_liao
Byte kStr_imagineData[] = {33, 18, 7, 128, 106, 219, 220, 111, 97, 105, 108, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 7};

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndependentUtil.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageUtil.h"
#import "IndependentUtil.h"
//: #import "FFFMessageUtil.h"
#import "ButtonLightTransform.h"
//: #import "NTESShareCardAttachment.h"
#import "TableFit.h"

//: @implementation NTESMessageUtil
@implementation IndependentUtil

//: + (NSString *)messageContent:(NIMMessage *)message {
+ (NSString *)digitizer:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: text = [self customMessageContent:message];
        text = [self account:message];
    //: } else {
    } else {
        //: text = [FFFMessageUtil messageContent:message];
        text = [ButtonLightTransform accumulationPicture:message];
    }
    //: return text;
    return text;
}

//: + (NSString *)customMessageContent:(NIMMessage *)message {
+ (NSString *)account:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object.attachment isKindOfClass:[NTESSnapchatAttachment class]])
    if ([object.attachment isKindOfClass:[FileAllocationTableTransform class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_yue"];
        text = [ItemManager sessionInformation:StringFromApologyData(kStr_imagineText)];//@"[阅后即焚]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    else if ([object.attachment isKindOfClass:[ChapterAttachment class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"message_guess"];
        text = [ItemManager sessionInformation:StringFromApologyData(kStr_representData)];//@"[猜拳]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([object.attachment isKindOfClass:[ButtonSupport class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_bai"];
        text = [ItemManager sessionInformation:StringFromApologyData(kStr_keyNameContent)];//@"[白板]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketAttachment class]])
    else if ([object.attachment isKindOfClass:[RecentAttachment class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"message_red_packet"];
        text = [ItemManager sessionInformation:StringFromApologyData(kStr_progressTitle)];//@"[红包消息]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if ([object.attachment isKindOfClass:[CommentAttachment class]])
    {
        //: NTESRedPacketTipAttachment *attach = (NTESRedPacketTipAttachment *)object.attachment;
        CommentAttachment *attach = (CommentAttachment *)object.attachment;
        //: text = attach.formatedMessage;
        text = attach.closeBar;
    }
    //: else if ([object.attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([object.attachment isKindOfClass:[StopOperationAttachment class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_liao"];
        text = [ItemManager sessionInformation:StringFromApologyData(kStr_imagineData)];//@"[聊天记录]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([object.attachment isKindOfClass:[TableFit class]])
    {
        //: NTESShareCardAttachment *cardAtt = (NTESShareCardAttachment *)object.attachment;
        TableFit *cardAtt = (TableFit *)object.attachment;
        //: if ([cardAtt.type boolValue]) {
        if ([cardAtt.type boolValue]) {
            //: text = [FFFLanguageManager getTextWithKey:@"group_card"];
            text = [ItemManager sessionInformation:StringFromApologyData(kStr_realizeCountValue)];
        //: } else {
        } else {
            //: text = [FFFLanguageManager getTextWithKey:@"person_card"];
            text = [ItemManager sessionInformation:StringFromApologyData(kStr_hungerDishContent)];
        }
    }
//    else if (message.messageSubType == 20)
//    {
//        text = LangKey(@"retracted_message");//撤回
//    }
    //: else
    else
    {
        //: text = @"";
        text = @"";//@"[未知消息]";LangKey(@"message_unknow_message")
    }
    //: return text;
    return text;
}
//: @end
@end

Byte * ApologyDataToCache(Byte *data) {
    int aide = data[0];
    int storeSubmit = data[1];
    int evolutionaryStack = data[2];
    if (!aide) return data + evolutionaryStack;
    for (int i = 0; i < storeSubmit / 2; i++) {
        int begin = evolutionaryStack + i;
        int end = evolutionaryStack + storeSubmit - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[evolutionaryStack + storeSubmit] = 0;
    return data + evolutionaryStack;
}

NSString *StringFromApologyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ApologyDataToCache(data)];
}  
