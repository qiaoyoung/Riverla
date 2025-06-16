//
//  FFFMessageUtil.m
// NeeyoKit
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

#import "FFFMessageUtil.h"
#import <NIMSDK/NIMSDK.h>
#import "FFFGlobalMacro.h"
#import "FFFKitUtil.h"
#import "NeeyoKit.h"
#import "NSDictionary+NeeyoKit.h"

@implementation FFFMessageUtil

+ (NSString *)messageContent:(NIMMessage*)message {
    NSString *text = @"";
    switch (message.messageType) {
        case NIMMessageTypeText:
            text = message.text;
            break;
        case NIMMessageTypeAudio:
            text = LangKey(@"Audio"); //@"[语音]".;
            break;
        case NIMMessageTypeImage:
            text = LangKey(@"Image");//@"[图片]".;
            break;
        case NIMMessageTypeVideo:
            text = LangKey(@"Video");//@"[视频]".;
            break;
        case NIMMessageTypeLocation:
            text = LangKey(@"Location");//@"[位置]".;
            break;
        case NIMMessageTypeNotification:{
            return [self notificationMessageContent:message];
        }
        case NIMMessageTypeFile:
            text = LangKey(@"File");//@"[文件]".;
            break;
        case NIMMessageTypeTip:
            text = message.text;
            break;
        case NIMMessageTypeRtcCallRecord: {
            NIMRtcCallRecordObject *record = message.messageObject;
            return (record.callType == NIMRtcCallTypeAudio ? LangKey(@"Internet_call") : LangKey(@"Video_chat"));
        }
        default:
            text = @"";//@"[未知消息]".;
    }
    return text;
}

+ (NSString *)notificationMessageContent:(NIMMessage *)message{
    NIMNotificationObject *object = message.messageObject;
    if (object.notificationType == NIMNotificationTypeNetCall) {
        NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        if (content.callType == NIMNetCallTypeAudio) {
            return LangKey(@"Internet_call");//@"[网络通话]".;
        }
        return LangKey(@"Video_chat");//@"[视频聊天]".;
    }
    if (object.notificationType == NIMNotificationTypeTeam) {
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        if (team.type == NIMTeamTypeNormal) {
            return LangKey(@"Group_chat_information_update");//@"[讨论组信息更新]".;
        }else{
            
            NSString * flag=nil;
            NSString * title=nil;
            NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            switch (content.operationType) {
                    case NIMTeamOperationTypeUpdate:
                        
                        if ([[content attachment] isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                            NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)[content attachment];
                            if ([teamAttachment.values count] == 1) {
                                NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                                switch (tag) {
                                    case NIMTeamUpdateTagAnouncement:
                                    {
                                        title=[[[teamAttachment.values allValues] firstObject] lowercaseString];
                                        NSData* data = [title dataUsingEncoding:NSUTF8StringEncoding];
                                        NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                        if([datas count]==0){
                                            break;
                                        }
                                        title=[datas lastObject][@"title"];
                                        content=[datas lastObject][@"content"];
                                
                                       //记录群公告标志
                                        //记录messageid
                                        flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                        if(flag.length==0){
                                            [[NSUserDefaults standardUserDefaults] setValue:kConstant_1 forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:kConstant_1 forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",message.session.sessionId]];
                                            //记录标题和内容
                                            [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",message.session.sessionId]];
                                        }
             
                                    }
                                        break;
                                        
                                    default:
                                        break;
                                }
                            }
                        }
                        
                        break;
                    default:
                        break;
            }
            
            return LangKey(@"Group_information_update");//@"[群信息更新]".;
        }
    }
    
    if (object.notificationType == NIMNotificationTypeSuperTeam) {
        return LangKey(@"Super_Group_Information_Update");//@"[超大群信息更新]".;
    }
    return @"";//@"[未知消息]".;LangKey(@"Unknown_message")
}

@end



