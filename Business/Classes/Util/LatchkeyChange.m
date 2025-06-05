
#import <Foundation/Foundation.h>

NSString *StringFromPaperKnifeData(Byte *data);


//: person_card
Byte kStr_leapData[] = {53, 11, 7, 88, 92, 162, 10, 100, 114, 97, 99, 95, 110, 111, 115, 114, 101, 112, 128};


//: home_fragment_bai
Byte kStr_fromData[] = {84, 17, 4, 207, 105, 97, 98, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 217};


//: message_red_packet
Byte kStr_effectivenessName[] = {34, 18, 6, 228, 145, 5, 116, 101, 107, 99, 97, 112, 95, 100, 101, 114, 95, 101, 103, 97, 115, 115, 101, 109, 234};


//: home_fragment_yue
Byte kStr_screenCanvasName[] = {76, 17, 12, 73, 251, 218, 17, 46, 167, 231, 67, 187, 101, 117, 121, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 146};


//: group_card
Byte kStr_chanceData[] = {48, 10, 12, 80, 34, 52, 83, 113, 43, 146, 127, 179, 100, 114, 97, 99, 95, 112, 117, 111, 114, 103, 33};


//: home_fragment_liao
Byte kStr_tradeContent[] = {31, 18, 12, 155, 219, 97, 22, 11, 40, 70, 166, 172, 111, 97, 105, 108, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 101, 109, 111, 104, 19};


//: message_guess
Byte kStr_championshipData[] = {35, 13, 5, 29, 220, 115, 115, 101, 117, 103, 95, 101, 103, 97, 115, 115, 101, 109, 34};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LatchkeyChange.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageUtil.h"
#import "LatchkeyChange.h"
//: #import "FFFMessageUtil.h"
#import "OriginUtil.h"
//: #import "NTESShareCardAttachment.h"
#import "ChildApp.h"

//: @implementation NTESMessageUtil
@implementation LatchkeyChange

//: + (NSString *)messageContent:(NIMMessage *)message {
+ (NSString *)at:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: text = [self customMessageContent:message];
        text = [self array:message];
    //: } else {
    } else {
        //: text = [FFFMessageUtil messageContent:message];
        text = [OriginUtil visibleThread:message];
    }
    //: return text;
    return text;
}

//: + (NSString *)customMessageContent:(NIMMessage *)message {
+ (NSString *)array:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object.attachment isKindOfClass:[NTESSnapchatAttachment class]])
    if ([object.attachment isKindOfClass:[PresentAttachment class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_yue"];
        text = [TeamManager sizeKey:StringFromPaperKnifeData(kStr_screenCanvasName)];//@"[阅后即焚]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    else if ([object.attachment isKindOfClass:[ChangeScale class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"message_guess"];
        text = [TeamManager sizeKey:StringFromPaperKnifeData(kStr_championshipData)];//@"[猜拳]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([object.attachment isKindOfClass:[PastAttachment class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_bai"];
        text = [TeamManager sizeKey:StringFromPaperKnifeData(kStr_fromData)];//@"[白板]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketAttachment class]])
    else if ([object.attachment isKindOfClass:[RubyRedRecentAttachmentCustom class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"message_red_packet"];
        text = [TeamManager sizeKey:StringFromPaperKnifeData(kStr_effectivenessName)];//@"[红包消息]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if ([object.attachment isKindOfClass:[StyleAction class]])
    {
        //: NTESRedPacketTipAttachment *attach = (NTESRedPacketTipAttachment *)object.attachment;
        StyleAction *attach = (StyleAction *)object.attachment;
        //: text = attach.formatedMessage;
        text = attach.userMessage;
    }
    //: else if ([object.attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([object.attachment isKindOfClass:[ConstituentAttachment class]])
    {
        //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_liao"];
        text = [TeamManager sizeKey:StringFromPaperKnifeData(kStr_tradeContent)];//@"[聊天记录]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([object.attachment isKindOfClass:[ChildApp class]])
    {
        //: NTESShareCardAttachment *cardAtt = (NTESShareCardAttachment *)object.attachment;
        ChildApp *cardAtt = (ChildApp *)object.attachment;
        //: if ([cardAtt.type boolValue]) {
        if ([cardAtt.type boolValue]) {
            //: text = [FFFLanguageManager getTextWithKey:@"group_card"];
            text = [TeamManager sizeKey:StringFromPaperKnifeData(kStr_chanceData)];
        //: } else {
        } else {
            //: text = [FFFLanguageManager getTextWithKey:@"person_card"];
            text = [TeamManager sizeKey:StringFromPaperKnifeData(kStr_leapData)];
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

Byte * PaperKnifeDataToCache(Byte *data) {
    int keyMake = data[0];
    int tubFriendly = data[1];
    int voterResponsibility = data[2];
    if (!keyMake) return data + voterResponsibility;
    for (int i = 0; i < tubFriendly / 2; i++) {
        int begin = voterResponsibility + i;
        int end = voterResponsibility + tubFriendly - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[voterResponsibility + tubFriendly] = 0;
    return data + voterResponsibility;
}

NSString *StringFromPaperKnifeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PaperKnifeDataToCache(data)];
}  
