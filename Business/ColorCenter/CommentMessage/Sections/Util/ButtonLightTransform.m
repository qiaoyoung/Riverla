
#import <Foundation/Foundation.h>

NSString *StringFromExecutiveData(Byte *data);


//: Image
Byte kStr_essentialValue[] = {72, 5, 11, 36, 168, 4, 13, 101, 25, 234, 107, 101, 103, 97, 109, 73, 183};


//: Group_chat_information_update
Byte kStr_careText[] = {62, 29, 4, 56, 101, 116, 97, 100, 112, 117, 95, 110, 111, 105, 116, 97, 109, 114, 111, 102, 110, 105, 95, 116, 97, 104, 99, 95, 112, 117, 111, 114, 71, 149};


//: title
Byte kStr_vertValue[] = {67, 5, 4, 197, 101, 108, 116, 105, 116, 12};


//: Location
Byte kStr_retreatName[] = {16, 8, 8, 177, 119, 86, 165, 162, 110, 111, 105, 116, 97, 99, 111, 76, 74};


//: content
Byte kStr_colorImageData[] = {31, 7, 10, 24, 245, 199, 210, 26, 94, 113, 116, 110, 101, 116, 110, 111, 99, 94};


//: Internet_call
Byte kStr_publicityData[] = {95, 13, 12, 181, 128, 200, 29, 110, 99, 253, 65, 238, 108, 108, 97, 99, 95, 116, 101, 110, 114, 101, 116, 110, 73, 167};


//: teamgonggao_title_
Byte kStr_dishName[] = {9, 18, 10, 109, 149, 179, 100, 235, 151, 235, 95, 101, 108, 116, 105, 116, 95, 111, 97, 103, 103, 110, 111, 103, 109, 97, 101, 116, 29};


//: Group_information_update
Byte kStr_mythContent[] = {11, 24, 5, 55, 72, 101, 116, 97, 100, 112, 117, 95, 110, 111, 105, 116, 97, 109, 114, 111, 102, 110, 105, 95, 112, 117, 111, 114, 71, 251};


//: Super_Group_Information_Update
Byte kStr_balanceName[] = {56, 30, 13, 14, 79, 32, 8, 32, 195, 194, 183, 118, 180, 101, 116, 97, 100, 112, 85, 95, 110, 111, 105, 116, 97, 109, 114, 111, 102, 110, 73, 95, 112, 117, 111, 114, 71, 95, 114, 101, 112, 117, 83, 219};


//: Video
Byte kStr_postData[] = {52, 5, 8, 129, 76, 190, 252, 85, 111, 101, 100, 105, 86, 34};


//: Video_chat
Byte kStr_moleTitle[] = {42, 10, 13, 112, 80, 116, 69, 32, 105, 65, 209, 186, 112, 116, 97, 104, 99, 95, 111, 101, 100, 105, 86, 8};


//: teamgonggao_
Byte kStr_equalAtData[] = {83, 12, 9, 144, 58, 99, 94, 199, 30, 95, 111, 97, 103, 103, 110, 111, 103, 109, 97, 101, 116, 43};


//: teamgonggao_record_
Byte kStr_lagName[] = {69, 19, 5, 128, 231, 95, 100, 114, 111, 99, 101, 114, 95, 111, 97, 103, 103, 110, 111, 103, 109, 97, 101, 116, 234};


//: File
Byte kStr_drawData[] = {27, 4, 8, 196, 116, 255, 210, 221, 101, 108, 105, 70, 239};


//: Audio
Byte kStr_significanceValue[] = {59, 5, 10, 129, 137, 114, 232, 3, 132, 73, 111, 105, 100, 117, 65, 77};


//: teamgonggao_content_
Byte kStr_approveName[] = {25, 20, 5, 133, 20, 95, 116, 110, 101, 116, 110, 111, 99, 95, 111, 97, 103, 103, 110, 111, 103, 109, 97, 101, 116, 81};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonLightTransform.m
// Afterwards
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageUtil.h"
#import "ButtonLightTransform.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "UserGlobalMacro.h"
#import "UserGlobalMacro.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "NSDictionary+MyUserKit.h"
#import "NSDictionary+Afterwards.h"

//: @implementation FFFMessageUtil
@implementation ButtonLightTransform

//: + (NSString *)messageContent:(NIMMessage*)message {
+ (NSString *)accumulationPicture:(NIMMessage*)message {
    //: NSString *text = @"";
    NSString *text = @"";
    //: switch (message.messageType) {
    switch (message.messageType) {
        //: case NIMMessageTypeText:
        case NIMMessageTypeText:
            //: text = message.text;
            text = message.text;
            //: break;
            break;
        //: case NIMMessageTypeAudio:
        case NIMMessageTypeAudio:
            //: text = [FFFLanguageManager getTextWithKey:@"Audio"]; 
            text = [ItemManager sessionInformation:StringFromExecutiveData(kStr_significanceValue)]; //@"[语音]".;
            //: break;
            break;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: text = [FFFLanguageManager getTextWithKey:@"Image"];
            text = [ItemManager sessionInformation:StringFromExecutiveData(kStr_essentialValue)];//@"[图片]".;
            //: break;
            break;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: text = [FFFLanguageManager getTextWithKey:@"Video"];
            text = [ItemManager sessionInformation:StringFromExecutiveData(kStr_postData)];//@"[视频]".;
            //: break;
            break;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: text = [FFFLanguageManager getTextWithKey:@"Location"];
            text = [ItemManager sessionInformation:StringFromExecutiveData(kStr_retreatName)];//@"[位置]".;
            //: break;
            break;
        //: case NIMMessageTypeNotification:{
        case NIMMessageTypeNotification:{
            //: return [self notificationMessageContent:message];
            return [self with:message];
        }
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: text = [FFFLanguageManager getTextWithKey:@"File"];
            text = [ItemManager sessionInformation:StringFromExecutiveData(kStr_drawData)];//@"[文件]".;
            //: break;
            break;
        //: case NIMMessageTypeTip:
        case NIMMessageTypeTip:
            //: text = message.text;
            text = message.text;
            //: break;
            break;
        //: case NIMMessageTypeRtcCallRecord: {
        case NIMMessageTypeRtcCallRecord: {
            //: NIMRtcCallRecordObject *record = message.messageObject;
            NIMRtcCallRecordObject *record = message.messageObject;
            //: return (record.callType == NIMRtcCallTypeAudio ? [FFFLanguageManager getTextWithKey:@"Internet_call"] : [FFFLanguageManager getTextWithKey:@"Video_chat"]);
            return (record.callType == NIMRtcCallTypeAudio ? [ItemManager sessionInformation:StringFromExecutiveData(kStr_publicityData)] : [ItemManager sessionInformation:StringFromExecutiveData(kStr_moleTitle)]);
        }
        //: default:
        default:
            //: text = @"";
            text = @"";//@"[未知消息]".;
    }
    //: return text;
    return text;
}

//: + (NSString *)notificationMessageContent:(NIMMessage *)message{
+ (NSString *)with:(NIMMessage *)message{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: if (object.notificationType == NIMNotificationTypeNetCall) {
    if (object.notificationType == NIMNotificationTypeNetCall) {
        //: NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        //: if (content.callType == NIMNetCallTypeAudio) {
        if (content.callType == NIMNetCallTypeAudio) {
            //: return [FFFLanguageManager getTextWithKey:@"Internet_call"];
            return [ItemManager sessionInformation:StringFromExecutiveData(kStr_publicityData)];//@"[网络通话]".;
        }
        //: return [FFFLanguageManager getTextWithKey:@"Video_chat"];
        return [ItemManager sessionInformation:StringFromExecutiveData(kStr_moleTitle)];//@"[视频聊天]".;
    }
    //: if (object.notificationType == NIMNotificationTypeTeam) {
    if (object.notificationType == NIMNotificationTypeTeam) {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        //: if (team.type == NIMTeamTypeNormal) {
        if (team.type == NIMTeamTypeNormal) {
            //: return [FFFLanguageManager getTextWithKey:@"Group_chat_information_update"];
            return [ItemManager sessionInformation:StringFromExecutiveData(kStr_careText)];//@"[讨论组信息更新]".;
        //: }else{
        }else{

            //: NSString * flag=nil;
            NSString * flag=nil;
            //: NSString * title=nil;
            NSString * title=nil;
            //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            //: switch (content.operationType) {
            switch (content.operationType) {
                    //: case NIMTeamOperationTypeUpdate:
                    case NIMTeamOperationTypeUpdate:

                        //: if ([[content attachment] isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                        if ([[content attachment] isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                            //: NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)[content attachment];
                            NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)[content attachment];
                            //: if ([teamAttachment.values count] == 1) {
                            if ([teamAttachment.values count] == 1) {
                                //: NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                                NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                                //: switch (tag) {
                                switch (tag) {
                                    //: case NIMTeamUpdateTagAnouncement:
                                    case NIMTeamUpdateTagAnouncement:
                                    {
                                        //: title=[[[teamAttachment.values allValues] firstObject] lowercaseString];
                                        title=[[[teamAttachment.values allValues] firstObject] lowercaseString];
                                        //: NSData* data = [title dataUsingEncoding:NSUTF8StringEncoding];
                                        NSData* data = [title dataUsingEncoding:NSUTF8StringEncoding];
                                        //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                        NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                        //: if([datas count]==0){
                                        if([datas count]==0){
                                            //: break;
                                            break;
                                        }
                                        //: title=[datas lastObject][@"title"];
                                        title=[datas lastObject][StringFromExecutiveData(kStr_vertValue)];
                                        //: content=[datas lastObject][@"content"];
                                        content=[datas lastObject][StringFromExecutiveData(kStr_colorImageData)];

                                       //记录群公告标志
                                        //记录messageid
                                        //: flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                        flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",StringFromExecutiveData(kStr_lagName),message.messageId]];
                                        //: if(flag.length==0){
                                        if(flag.length==0){
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",StringFromExecutiveData(kStr_lagName),message.messageId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",StringFromExecutiveData(kStr_equalAtData),message.session.sessionId]];
                                            //记录标题和内容
                                            //: [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",StringFromExecutiveData(kStr_dishName),message.session.sessionId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",StringFromExecutiveData(kStr_approveName),message.session.sessionId]];
                                        }

                                    }
                                        //: break;
                                        break;

                                    //: default:
                                    default:
                                        //: break;
                                        break;
                                }
                            }
                        }

                        //: break;
                        break;
                    //: default:
                    default:
                        //: break;
                        break;
            }

            //: return [FFFLanguageManager getTextWithKey:@"Group_information_update"];
            return [ItemManager sessionInformation:StringFromExecutiveData(kStr_mythContent)];//@"[群信息更新]".;
        }
    }

    //: if (object.notificationType == NIMNotificationTypeSuperTeam) {
    if (object.notificationType == NIMNotificationTypeSuperTeam) {
        //: return [FFFLanguageManager getTextWithKey:@"Super_Group_Information_Update"];
        return [ItemManager sessionInformation:StringFromExecutiveData(kStr_balanceName)];//@"[超大群信息更新]".;
    }
    //: return @"";
    return @"";//@"[未知消息]".;LangKey(@"Unknown_message")
}

//: @end
@end

Byte * ExecutiveDataToCache(Byte *data) {
    int quantity = data[0];
    int anger = data[1];
    int mongrel = data[2];
    if (!quantity) return data + mongrel;
    for (int i = 0; i < anger / 2; i++) {
        int begin = mongrel + i;
        int end = mongrel + anger - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[mongrel + anger] = 0;
    return data + mongrel;
}

NSString *StringFromExecutiveData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ExecutiveDataToCache(data)];
}  
