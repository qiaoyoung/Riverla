
#import <Foundation/Foundation.h>

NSString *StringFromTotalegratedData(Byte *data);


//: Video
Byte kStr_colorConfirmData[] = {63, 5, 13, 10, 143, 168, 198, 32, 163, 176, 99, 118, 113, 114, 124, 186};


//: teamgonggao_record_
Byte kStr_adviceLeasedEarnContent[] = {39, 19, 5, 6, 46, 39, 121, 106, 102, 114, 108, 116, 115, 108, 108, 102, 116, 100, 119, 106, 104, 116, 119, 105, 100, 118};


//: Audio
Byte kStr_beachTressArcherName[] = {32, 5, 49, 14, 167, 119, 5, 86, 94, 91, 75, 190, 57, 212, 114, 166, 149, 154, 160, 155};


//: teamgonggao_
Byte kStr_growElectricValue[] = {34, 12, 57, 11, 239, 226, 107, 204, 211, 64, 233, 173, 158, 154, 166, 160, 168, 167, 160, 160, 154, 168, 152, 190};


//: content
Byte kStr_beachTitle[] = {70, 7, 53, 5, 112, 152, 164, 163, 169, 154, 163, 169, 85};


//: Super_Group_Information_Update
Byte kStr_spaSetColorName[] = {17, 30, 65, 6, 38, 174, 148, 182, 177, 166, 179, 160, 136, 179, 176, 182, 177, 160, 138, 175, 167, 176, 179, 174, 162, 181, 170, 176, 175, 160, 150, 177, 165, 162, 181, 166, 106};


//: teamgonggao_title_
Byte kStr_neverthelessValue[] = {44, 18, 53, 12, 105, 164, 13, 249, 120, 250, 45, 173, 169, 154, 150, 162, 156, 164, 163, 156, 156, 150, 164, 148, 169, 158, 169, 161, 154, 148, 113};


//: title
Byte kStr_mortgageTitle[] = {14, 5, 37, 13, 12, 44, 51, 21, 134, 115, 192, 75, 90, 153, 142, 153, 145, 138, 29};


//: Location
Byte kStr_rompCattleName[] = {74, 8, 51, 7, 252, 175, 64, 127, 162, 150, 148, 167, 156, 162, 161, 130};


//: Image
Byte kStr_aboutData[] = {58, 5, 58, 11, 61, 24, 38, 68, 40, 112, 127, 131, 167, 155, 161, 159, 47};


//: Group_chat_information_update
Byte kStr_statisticsValue[] = {55, 29, 85, 4, 156, 199, 196, 202, 197, 180, 184, 189, 182, 201, 180, 190, 195, 187, 196, 199, 194, 182, 201, 190, 196, 195, 180, 202, 197, 185, 182, 201, 186, 214};


//: Group_information_update
Byte kStr_hornData[] = {54, 24, 2, 14, 153, 158, 183, 3, 205, 19, 55, 239, 15, 151, 73, 116, 113, 119, 114, 97, 107, 112, 104, 113, 116, 111, 99, 118, 107, 113, 112, 97, 119, 114, 102, 99, 118, 103, 24};


//: Internet_call
Byte kStr_absolutelyVictorName[] = {38, 13, 86, 14, 79, 249, 197, 180, 218, 101, 38, 139, 53, 241, 159, 196, 202, 187, 200, 196, 187, 202, 181, 185, 183, 194, 194, 186};


//: teamgonggao_content_
Byte kStr_underValue[] = {12, 20, 2, 10, 51, 73, 102, 112, 134, 191, 118, 103, 99, 111, 105, 113, 112, 105, 105, 99, 113, 97, 101, 113, 112, 118, 103, 112, 118, 97, 208};


//: Video_chat
Byte kStr_spendReplyText[] = {45, 10, 75, 14, 70, 103, 75, 221, 169, 247, 157, 244, 253, 164, 161, 180, 175, 176, 186, 170, 174, 179, 172, 191, 28};


//: File
Byte kStr_convictText[] = {79, 4, 17, 8, 78, 108, 45, 211, 87, 122, 125, 118, 205};

// __DEBUG__
// __CLOSE_PRINT__
//
//  OriginUtil.m
// Notice
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageUtil.h"
#import "OriginUtil.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFKitUtil.h"
#import "UtilizerUtil.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "NSDictionary+MyUserKit.h"
#import "NSDictionary+Notice.h"

//: @implementation FFFMessageUtil
@implementation OriginUtil

//: + (NSString *)messageContent:(NIMMessage*)message {
+ (NSString *)visibleThread:(NIMMessage*)message {
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
            text = [TeamManager sizeKey:StringFromTotalegratedData(kStr_beachTressArcherName)]; //@"[语音]".;
            //: break;
            break;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: text = [FFFLanguageManager getTextWithKey:@"Image"];
            text = [TeamManager sizeKey:StringFromTotalegratedData(kStr_aboutData)];//@"[图片]".;
            //: break;
            break;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: text = [FFFLanguageManager getTextWithKey:@"Video"];
            text = [TeamManager sizeKey:StringFromTotalegratedData(kStr_colorConfirmData)];//@"[视频]".;
            //: break;
            break;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: text = [FFFLanguageManager getTextWithKey:@"Location"];
            text = [TeamManager sizeKey:StringFromTotalegratedData(kStr_rompCattleName)];//@"[位置]".;
            //: break;
            break;
        //: case NIMMessageTypeNotification:{
        case NIMMessageTypeNotification:{
            //: return [self notificationMessageContent:message];
            return [self begin:message];
        }
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: text = [FFFLanguageManager getTextWithKey:@"File"];
            text = [TeamManager sizeKey:StringFromTotalegratedData(kStr_convictText)];//@"[文件]".;
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
            return (record.callType == NIMRtcCallTypeAudio ? [TeamManager sizeKey:StringFromTotalegratedData(kStr_absolutelyVictorName)] : [TeamManager sizeKey:StringFromTotalegratedData(kStr_spendReplyText)]);
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
+ (NSString *)begin:(NIMMessage *)message{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: if (object.notificationType == NIMNotificationTypeNetCall) {
    if (object.notificationType == NIMNotificationTypeNetCall) {
        //: NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        //: if (content.callType == NIMNetCallTypeAudio) {
        if (content.callType == NIMNetCallTypeAudio) {
            //: return [FFFLanguageManager getTextWithKey:@"Internet_call"];
            return [TeamManager sizeKey:StringFromTotalegratedData(kStr_absolutelyVictorName)];//@"[网络通话]".;
        }
        //: return [FFFLanguageManager getTextWithKey:@"Video_chat"];
        return [TeamManager sizeKey:StringFromTotalegratedData(kStr_spendReplyText)];//@"[视频聊天]".;
    }
    //: if (object.notificationType == NIMNotificationTypeTeam) {
    if (object.notificationType == NIMNotificationTypeTeam) {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        //: if (team.type == NIMTeamTypeNormal) {
        if (team.type == NIMTeamTypeNormal) {
            //: return [FFFLanguageManager getTextWithKey:@"Group_chat_information_update"];
            return [TeamManager sizeKey:StringFromTotalegratedData(kStr_statisticsValue)];//@"[讨论组信息更新]".;
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
                                        title=[datas lastObject][StringFromTotalegratedData(kStr_mortgageTitle)];
                                        //: content=[datas lastObject][@"content"];
                                        content=[datas lastObject][StringFromTotalegratedData(kStr_beachTitle)];

                                       //记录群公告标志
                                        //记录messageid
                                        //: flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                        flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",StringFromTotalegratedData(kStr_adviceLeasedEarnContent),message.messageId]];
                                        //: if(flag.length==0){
                                        if(flag.length==0){
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",StringFromTotalegratedData(kStr_adviceLeasedEarnContent),message.messageId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",StringFromTotalegratedData(kStr_growElectricValue),message.session.sessionId]];
                                            //记录标题和内容
                                            //: [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",StringFromTotalegratedData(kStr_neverthelessValue),message.session.sessionId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",StringFromTotalegratedData(kStr_underValue),message.session.sessionId]];
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
            return [TeamManager sizeKey:StringFromTotalegratedData(kStr_hornData)];//@"[群信息更新]".;
        }
    }

    //: if (object.notificationType == NIMNotificationTypeSuperTeam) {
    if (object.notificationType == NIMNotificationTypeSuperTeam) {
        //: return [FFFLanguageManager getTextWithKey:@"Super_Group_Information_Update"];
        return [TeamManager sizeKey:StringFromTotalegratedData(kStr_spaSetColorName)];//@"[超大群信息更新]".;
    }
    //: return @"";
    return @"";//@"[未知消息]".;LangKey(@"Unknown_message")
}

//: @end
@end

Byte * TotalegratedDataToCache(Byte *data) {
    int routineRed = data[0];
    int blossomOut = data[1];
    Byte friendly = data[2];
    int poWay = data[3];
    if (!routineRed) return data + poWay;
    for (int i = poWay; i < poWay + blossomOut; i++) {
        int value = data[i] - friendly;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[poWay + blossomOut] = 0;
    return data + poWay;
}

NSString *StringFromTotalegratedData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TotalegratedDataToCache(data)];
}
