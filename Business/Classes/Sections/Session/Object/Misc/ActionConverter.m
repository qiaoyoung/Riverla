
#import <Foundation/Foundation.h>

NSString *StringFromSumRelationData(Byte *data);        


//: init_manager_nim_status_bar_video_message
Byte kStr_pinRowTitle[] = {82, 41, 6, 6, 224, 125, 99, 104, 99, 110, 89, 103, 91, 104, 91, 97, 95, 108, 89, 104, 99, 103, 89, 109, 110, 91, 110, 111, 109, 89, 92, 91, 108, 89, 112, 99, 94, 95, 105, 89, 103, 95, 109, 109, 91, 97, 95, 53};


//: retracted_message
Byte kStr_showPathContentValue[] = {12, 17, 20, 5, 73, 94, 81, 96, 94, 77, 79, 96, 81, 80, 75, 89, 81, 95, 95, 77, 83, 81, 13};


//: init_manager_nim_status_bar_image_message
Byte kStr_thoroughRecordTitle[] = {28, 41, 23, 9, 22, 32, 21, 213, 132, 82, 87, 82, 93, 72, 86, 74, 87, 74, 80, 78, 91, 72, 87, 82, 86, 72, 92, 93, 74, 93, 94, 92, 72, 75, 74, 91, 72, 82, 86, 74, 80, 78, 72, 86, 78, 92, 92, 74, 80, 78, 108};


//: 发来一段聊天记录
Byte kStr_integrationDisableValue[] = {51, 24, 74, 12, 11, 135, 7, 90, 140, 140, 249, 225, 155, 69, 71, 156, 83, 91, 154, 110, 54, 156, 100, 107, 158, 55, 64, 155, 90, 95, 158, 100, 102, 155, 115, 75, 115};


//: 发来了一个红包
Byte kStr_mandateText[] = {15, 21, 96, 6, 252, 106, 133, 47, 49, 134, 61, 69, 132, 90, 38, 132, 88, 32, 132, 88, 74, 135, 90, 66, 133, 44, 37, 207};


//: 发来了阅后即焚
Byte kStr_tingDeemContent[] = {89, 21, 32, 10, 143, 177, 109, 135, 125, 30, 197, 111, 113, 198, 125, 133, 196, 154, 102, 201, 120, 101, 197, 112, 110, 197, 109, 147, 199, 100, 122, 241};


//: 发来了猜拳信息
Byte kStr_ticValue[] = {35, 21, 93, 4, 136, 50, 52, 137, 64, 72, 135, 93, 41, 138, 47, 63, 137, 46, 86, 135, 98, 68, 137, 36, 82, 134};


//: share card
Byte kStr_railSizeStairName[] = {69, 10, 40, 8, 105, 30, 234, 179, 75, 64, 57, 74, 61, 248, 59, 57, 74, 60, 10};


//: 发来了一个文件
Byte kStr_shrinkTableConservativeData[] = {7, 21, 6, 11, 56, 105, 233, 95, 247, 108, 166, 223, 137, 139, 224, 151, 159, 222, 180, 128, 222, 178, 122, 222, 178, 164, 224, 144, 129, 222, 181, 176, 32};


//: init_manager_nim_status_bar_audio_message
Byte kStr_complexName[] = {45, 41, 15, 9, 33, 207, 60, 238, 125, 90, 95, 90, 101, 80, 94, 82, 95, 82, 88, 86, 99, 80, 95, 90, 94, 80, 100, 101, 82, 101, 102, 100, 80, 83, 82, 99, 80, 82, 102, 85, 90, 96, 80, 94, 86, 100, 100, 82, 88, 86, 5};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionMsgHelper.m
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionMsgConverter.h"
#import "ActionConverter.h"
//: #import "NSString+NTES.h"
#import "NSString+Closes.h"
//: #import "NTESJanKenPonAttachment.h"
#import "ChapterAttachment.h"
//: #import "NTESSnapchatAttachment.h"
#import "FileAllocationTableTransform.h"
//: #import "NTESWhiteboardAttachment.h"
#import "ButtonSupport.h"
//: #import "NTESRedPacketAttachment.h"
#import "RecentAttachment.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "CommentAttachment.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "StopOperationAttachment.h"
//: #import "NTESShareCardAttachment.h"
#import "TableFit.h"
//: #import "NTESBundleSetting.h"
#import "SayImage.h"

//: @implementation NTESSessionMsgConverter
@implementation ActionConverter


//: + (NIMMessage*)msgWithText:(NSString*)text
+ (NIMMessage*)doing:(NSString*)text
{
    //: NIMMessage *textMessage = [[NIMMessage alloc] init];
    NIMMessage *textMessage = [[NIMMessage alloc] init];
    //: textMessage.text = text;
    textMessage.text = text;
    //: textMessage.setting = [[NIMMessageSetting alloc] init];
    textMessage.setting = [[NIMMessageSetting alloc] init];
    //: textMessage.setting.teamReceiptEnabled = YES;
    textMessage.setting.teamReceiptEnabled = YES;

    //: textMessage.setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    textMessage.setting.apnsWithPrefix = [[SayImage linkIn] searchedPrefix];
    //: textMessage.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    textMessage.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: textMessage.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    textMessage.apnsMemberOption.forcePush = [[SayImage linkIn] userShould];
    //: textMessage.env = [[NTESBundleSetting sharedConfig] messageEnv];
    textMessage.env = [[SayImage linkIn] installment];
    //: return textMessage;
    return textMessage;
}

//: + (NIMMessage*)msgWithImage:(UIImage*)image
+ (NIMMessage*)control:(UIImage*)image
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithImage:image];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithImage:image];
   //: return [NTESSessionMsgConverter generateImageMessage:imageObject];
   return [ActionConverter searched:imageObject];
}

//: + (NIMMessage *)msgWithImagePath:(NSString*)path
+ (NIMMessage *)lipPath:(NSString*)path
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    //: return [NTESSessionMsgConverter generateImageMessage:imageObject];
    return [ActionConverter searched:imageObject];
}

//: + (NIMMessage *)generateImageMessage:(NIMImageObject *)imageObject
+ (NIMMessage *)searched:(NIMImageObject *)imageObject
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: imageObject.displayName = [NTESSessionMsgConverter generateUUID];
    imageObject.displayName = [ActionConverter coloredUuid];
    //: NIMImageOption *option = [[NIMImageOption alloc] init];
    NIMImageOption *option = [[NIMImageOption alloc] init];
    //: option.compressQuality = 0.8;
    option.compressQuality = 0.8;
    //: imageObject.option = option;
    imageObject.option = option;
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = imageObject;
    message.messageObject = imageObject;
    //: message.apnsContent = [FFFLanguageManager getTextWithKey:@"init_manager_nim_status_bar_image_message"];
    message.apnsContent = [ItemManager sessionInformation:StringFromSumRelationData(kStr_thoroughRecordTitle)];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    setting.apnsWithPrefix = [[SayImage linkIn] searchedPrefix];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[SayImage linkIn] userShould];
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithAudio:(NSString*)filePath
+ (NIMMessage*)edgeLabel:(NSString*)filePath
{
    //: NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = audioObject;
    message.messageObject = audioObject;
    //: message.apnsContent = [FFFLanguageManager getTextWithKey:@"init_manager_nim_status_bar_audio_message"];
    message.apnsContent = [ItemManager sessionInformation:StringFromSumRelationData(kStr_complexName)];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithVideo:(NSString*)filePath
+ (NIMMessage*)videoRefer:(NSString*)filePath
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    //: videoObject.displayName = [NTESSessionMsgConverter generateUUID];
    videoObject.displayName = [ActionConverter coloredUuid];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = videoObject;
    message.messageObject = videoObject;
    //: message.apnsContent = [FFFLanguageManager getTextWithKey:@"init_manager_nim_status_bar_video_message"];
    message.apnsContent = [ItemManager sessionInformation:StringFromSumRelationData(kStr_pinRowTitle)];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];
    //: return message;
    return message;
}


//: + (NIMMessage*)msgWithJenKenPon:(NTESJanKenPonAttachment *)attachment
+ (NIMMessage*)message:(ChapterAttachment *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"发来了猜拳信息".ntes_localized;
    message.apnsContent = StringFromSumRelationData(kStr_ticValue).aboveMagnitude;
    //: message.setting = [[NIMMessageSetting alloc] init];
    message.setting = [[NIMMessageSetting alloc] init];
    //: message.setting.teamReceiptEnabled = YES;
    message.setting.teamReceiptEnabled = YES;

    //: message.setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    message.setting.apnsWithPrefix = [[SayImage linkIn] searchedPrefix];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[SayImage linkIn] userShould];
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];
    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithShareCard:(NTESShareCardAttachment *)attachment
+ (NIMMessage *)pushShare:(TableFit *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"share card";
    message.apnsContent = StringFromSumRelationData(kStr_railSizeStairName);

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.historyEnabled = NO;
    setting.historyEnabled = NO;
    //: setting.roamingEnabled = NO;
    setting.roamingEnabled = NO;
    //: setting.syncEnabled = NO;
    setting.syncEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;

    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];

    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithSnapchatAttachment:(NTESSnapchatAttachment *)attachment
+ (NIMMessage*)to:(FileAllocationTableTransform *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"发来了阅后即焚".ntes_localized;
    message.apnsContent = StringFromSumRelationData(kStr_tingDeemContent).aboveMagnitude;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.historyEnabled = NO;
    setting.historyEnabled = NO;
    //: setting.roamingEnabled = NO;
    setting.roamingEnabled = NO;
    //: setting.syncEnabled = NO;
    setting.syncEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;

    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];

    //: return message;
    return message;
}


//: + (NIMMessage*)msgWithFilePath:(NSString*)path{
+ (NIMMessage*)atPath:(NSString*)path{
    //: NIMFileObject *fileObject = [[NIMFileObject alloc] initWithSourcePath:path];
    NIMFileObject *fileObject = [[NIMFileObject alloc] initWithSourcePath:path];
    //: NSString *displayName = path.lastPathComponent;
    NSString *displayName = path.lastPathComponent;
    //: fileObject.displayName = displayName;
    fileObject.displayName = displayName;
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = fileObject;
    message.messageObject = fileObject;
    //: message.apnsContent = @"发来了一个文件".ntes_localized;
    message.apnsContent = StringFromSumRelationData(kStr_shrinkTableConservativeData).aboveMagnitude;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    message.setting.apnsWithPrefix = [[SayImage linkIn] searchedPrefix];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[SayImage linkIn] userShould];
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithFileData:(NSData*)data extension:(NSString*)extension{
+ (NIMMessage*)max:(NSData*)data itemExtension:(NSString*)extension{
    //: NIMFileObject *fileObject = [[NIMFileObject alloc] initWithData:data extension:extension];
    NIMFileObject *fileObject = [[NIMFileObject alloc] initWithData:data extension:extension];
    //: NSString *displayName;
    NSString *displayName;
    //: if (extension.length) {
    if (extension.length) {
        //: displayName = [NSString stringWithFormat:@"%@.%@",[NSUUID UUID].UUIDString.MD5String,extension];
        displayName = [NSString stringWithFormat:@"%@.%@",[NSUUID UUID].UUIDString.past,extension];
    //: }else{
    }else{
        //: displayName = [NSString stringWithFormat:@"%@",[NSUUID UUID].UUIDString.MD5String];
        displayName = [NSString stringWithFormat:@"%@",[NSUUID UUID].UUIDString.past];
    }
    //: fileObject.displayName = displayName;
    fileObject.displayName = displayName;
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = fileObject;
    message.messageObject = fileObject;
    //: message.apnsContent = @"发来了一个文件".ntes_localized;
    message.apnsContent = StringFromSumRelationData(kStr_shrinkTableConservativeData).aboveMagnitude;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithWhiteboardAttachment:(NTESWhiteboardAttachment *)attachment
+ (NIMMessage*)can:(ButtonSupport *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;

    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];
    //: return message;
    return message;
}


//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)checkTip:(NSString *)tip
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMTipObject *tipObject = [[NIMTipObject alloc] init];
    NIMTipObject *tipObject = [[NIMTipObject alloc] init];
    //: message.messageObject = tipObject;
    message.messageObject = tipObject;
    //: message.text = tip;
    message.text = tip;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];
    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)voiceSize:(NSString *)tip
              //: revokeAttach:(NSString *)revokeAttach
              library:(NSString *)revokeAttach
         //: revokeCallbackExt:(NSString *)revokeCallbackExt {
         deviceExt:(NSString *)revokeCallbackExt {
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMTipObject *tipObject = [[NIMTipObject alloc] initWithAttach:revokeAttach
    NIMTipObject *tipObject = [[NIMTipObject alloc] initWithAttach:revokeAttach
                                                          //: callbackExt:revokeCallbackExt];
                                                          callbackExt:revokeCallbackExt];
    //: message.messageObject = tipObject;
    message.messageObject = tipObject;
    //: message.text = tip;
    message.text = tip;
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];
    //: return message;
    return message;
}


//: + (NIMMessage *)msgWithRedPacket:(NTESRedPacketAttachment *)attachment
+ (NIMMessage *)network:(RecentAttachment *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;

    //: message.apnsContent = @"发来了一个红包".ntes_localized;
    message.apnsContent = StringFromSumRelationData(kStr_mandateText).aboveMagnitude;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.historyEnabled = NO;
    setting.historyEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];
    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithRedPacketTip:(NTESRedPacketTipAttachment *)attachment
+ (NIMMessage *)inputIndicator:(CommentAttachment *)attachment
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.historyEnabled = NO;
    setting.historyEnabled = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];

    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithMultiRetweetAttachment:(NTESMultiRetweetAttachment *)attachment {
+ (NIMMessage *)diam:(StopOperationAttachment *)attachment {
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: customObject.attachment = attachment;
    customObject.attachment = attachment;
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.apnsContent = @"发来一段聊天记录".ntes_localized;
    message.apnsContent = StringFromSumRelationData(kStr_integrationDisableValue).aboveMagnitude;
    //: message.setting = [[NIMMessageSetting alloc] init];
    message.setting = [[NIMMessageSetting alloc] init];
    //: message.setting.teamReceiptEnabled = YES;
    message.setting.teamReceiptEnabled = YES;

    //: message.setting.apnsWithPrefix = [[NTESBundleSetting sharedConfig] enableAPNsPrefix];
    message.setting.apnsWithPrefix = [[SayImage linkIn] searchedPrefix];
    //: message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    message.apnsMemberOption = [[NIMMessageApnsMemberOption alloc] init];
    //: message.apnsMemberOption.forcePush = [[NTESBundleSetting sharedConfig] enableTeamAPNsForce];
    message.apnsMemberOption.forcePush = [[SayImage linkIn] userShould];
    //: message.env = [[NTESBundleSetting sharedConfig] messageEnv];
    message.env = [[SayImage linkIn] installment];
    //: return message;
    return message;
}

//: + (NIMMessage *)msgWithRevocationMessage:(NIMMessage *)revocationMessage
+ (NIMMessage *)query:(NIMMessage *)revocationMessage
{
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    NIMCustomObject *customObject = [[NIMCustomObject alloc] init];
    //: message.messageObject = customObject;
    message.messageObject = customObject;
    //: message.messageSubType = 20;
    message.messageSubType = 20;

    //: NSString *msg = [NSString stringWithFormat:@"%@%@", revocationMessage.senderName,[FFFLanguageManager getTextWithKey:@"retracted_message"]];
    NSString *msg = [NSString stringWithFormat:@"%@%@", revocationMessage.senderName,[ItemManager sessionInformation:StringFromSumRelationData(kStr_showPathContentValue)]];

    //: NIMCustomObject *object = revocationMessage.messageObject;
    NIMCustomObject *object = revocationMessage.messageObject;
    //: if (object)
    if (object)
    {
        //: if ([object isKindOfClass:[NIMVideoObject class]]) {
        if ([object isKindOfClass:[NIMVideoObject class]]) {
            //: NIMVideoObject *obj = (NIMVideoObject *)object;
            NIMVideoObject *obj = (NIMVideoObject *)object;
            //: msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[视频]".nim_localized, obj.coverUrl];
            msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[视频]".textKey, obj.coverUrl];
        //: } else if ([object isKindOfClass:[NIMImageObject class]]){
        } else if ([object isKindOfClass:[NIMImageObject class]]){
            //: NIMImageObject *obj = (NIMImageObject *)object;
            NIMImageObject *obj = (NIMImageObject *)object;
            //: msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[图片]".nim_localized, obj.url];
            msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[图片]".textKey, obj.url];
        //: } else if ([object isKindOfClass:[NIMAudioObject class]]){
        } else if ([object isKindOfClass:[NIMAudioObject class]]){
            //: NIMAudioObject *obj = (NIMAudioObject *)object;
            NIMAudioObject *obj = (NIMAudioObject *)object;
            //: msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[语音]".nim_localized, obj.url];
            msg = [NSString stringWithFormat:@"%@:%@->%@",msg,@"[语音]".textKey, obj.url];
        }

    //: } else {
    } else {
        //: msg = [NSString stringWithFormat:@"%@:%@",msg,revocationMessage.text?:@""];
        msg = [NSString stringWithFormat:@"%@:%@",msg,revocationMessage.text?:@""];
    }

    //: message.text = msg;
    message.text = msg;

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.historyEnabled = YES;
    setting.historyEnabled = YES;
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: return message;
    return message;
}

//: + (NSString *)generateUUID {
+ (NSString *)coloredUuid {

    // 创建一个UUID
    //: CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
    CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
    // 转换为字符串
    //: NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuidObject);
    NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuidObject);
    // 释放UUID对象
    //: CFRelease(uuidObject);
    CFRelease(uuidObject);
    //: return uuidString;
    return uuidString;
}

//: @end
@end

Byte * SumRelationDataToCache(Byte *data) {
    int dry = data[0];
    int sizeSucceed = data[1];
    Byte sizeTai = data[2];
    int shouldPathFormat = data[3];
    if (!dry) return data + shouldPathFormat;
    for (int i = shouldPathFormat; i < shouldPathFormat + sizeSucceed; i++) {
        int value = data[i] + sizeTai;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[shouldPathFormat + sizeSucceed] = 0;
    return data + shouldPathFormat;
}

NSString *StringFromSumRelationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SumRelationDataToCache(data)];
}
