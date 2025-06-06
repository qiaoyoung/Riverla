
#import <Foundation/Foundation.h>

NSString *StringFromTaleData(Byte *data);        


//: value
Byte kStr_ecologicalData[] = {18, 5, 69, 5, 44, 49, 28, 39, 48, 32, 23};


//: apns-collapse-id
Byte kStr_poPerName[] = {4, 16, 46, 12, 233, 87, 60, 205, 127, 19, 30, 18, 51, 66, 64, 69, 255, 53, 65, 62, 62, 51, 66, 69, 55, 255, 59, 54, 82};


//: 发来了一段视频
Byte kStr_marginMadAmidText[] = {84, 21, 44, 11, 229, 61, 153, 225, 5, 71, 53, 185, 99, 101, 186, 113, 121, 184, 142, 90, 184, 140, 84, 186, 130, 137, 188, 123, 90, 189, 118, 101, 11};


//: init_manager_nim_status_bar_image_message
Byte kStr_gloryText[] = {78, 41, 68, 12, 150, 121, 255, 208, 60, 76, 19, 17, 37, 42, 37, 48, 27, 41, 29, 42, 29, 35, 33, 46, 27, 42, 37, 41, 27, 47, 48, 29, 48, 49, 47, 27, 30, 29, 46, 27, 37, 41, 29, 35, 33, 27, 41, 33, 47, 47, 29, 35, 33, 205};


//: nim_test_msg_env
Byte kStr_internationalMakeShowData[] = {34, 16, 60, 7, 201, 238, 90, 50, 45, 49, 35, 56, 41, 55, 56, 35, 49, 55, 43, 35, 41, 50, 58, 131};


//: 你收到了一条快捷评论
Byte kStr_rapVasValue[] = {72, 30, 44, 10, 203, 5, 68, 194, 51, 71, 184, 145, 116, 186, 104, 138, 185, 92, 132, 184, 142, 90, 184, 140, 84, 186, 113, 117, 185, 147, 127, 186, 97, 139, 188, 131, 88, 188, 130, 142, 79};


//: key
Byte kStr_explanationLayoffValue[] = {94, 3, 18, 9, 214, 187, 141, 218, 33, 89, 83, 103, 75};


//: 发来了一段语音
Byte kStr_devoteBallMortalTitle[] = {29, 21, 15, 12, 107, 125, 228, 28, 186, 56, 233, 69, 214, 128, 130, 215, 142, 150, 213, 171, 119, 213, 169, 113, 215, 159, 166, 217, 160, 158, 218, 144, 164, 92};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageMaker.m
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageMaker.h"
#import "ElectronicImageLength.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Notice.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "FFFInputAtCache.h"
#import "AtEvaluate.h"

//: NSString * generateUUID(void) {
NSString * generateUUID(void) {
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

//: @implementation FFFMessageMaker
@implementation ElectronicImageLength

//: + (NIMMessage*)msgWithText:(NSString*)text
+ (NIMMessage*)installment:(NSString*)text
{
    //: NIMMessage *textMessage = [[NIMMessage alloc] init];
    NIMMessage *textMessage = [[NIMMessage alloc] init];
    //: textMessage.text = text;
    textMessage.text = text;
    //: [self setupMessage:textMessage];
    [self cypher:textMessage];
    //: return textMessage;
    return textMessage;
}

//: + (NIMMessage*)msgWithAudio:(NSString*)filePath
+ (NIMMessage*)withAudio:(NSString*)filePath
{
    //: NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = audioObject;
    message.messageObject = audioObject;
    //: message.text = @"发来了一段语音".nim_localized;
    message.text = StringFromTaleData(kStr_devoteBallMortalTitle).positionMenu;
    //: [self setupMessage:message];
    [self cypher:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithVideo:(NSString*)filePath
+ (NIMMessage*)actionVideo:(NSString*)filePath
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    //: videoObject.displayName = generateUUID();
    videoObject.displayName = generateUUID();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = videoObject;
    message.messageObject = videoObject;
    //: message.apnsContent = @"发来了一段视频".nim_localized;
    message.apnsContent = StringFromTaleData(kStr_marginMadAmidText).positionMenu;
    //: [self setupMessage:message];
    [self cypher:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithImage:(UIImage*)image
+ (NIMMessage*)ofGreen:(UIImage*)image
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    //: NIMImageOption *option = [[NIMImageOption alloc] init];
    NIMImageOption *option = [[NIMImageOption alloc] init];
    //: option.compressQuality = 0.7;
    option.compressQuality = 0.7;
    //: imageObject.option = option;
    imageObject.option = option;
    //: return [FFFMessageMaker generateImageMessage:imageObject];
    return [ElectronicImageLength vocalizationMessage:imageObject];
}

//: + (NIMMessage *)msgWithImagePath:(NSString*)path
+ (NIMMessage *)ignore:(NSString*)path
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    //: return [FFFMessageMaker generateImageMessage:imageObject];
    return [ElectronicImageLength vocalizationMessage:imageObject];
}

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension
+ (NIMMessage *)deleteModel:(NSData *)data show:(NSString *)extension
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    //: return [FFFMessageMaker generateImageMessage:imageObject];
    return [ElectronicImageLength vocalizationMessage:imageObject];
}

//: + (NIMMessage *)generateImageMessage:(NIMImageObject *)imageObject
+ (NIMMessage *)vocalizationMessage:(NIMImageObject *)imageObject
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: imageObject.displayName = generateUUID();
    imageObject.displayName = generateUUID();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = imageObject;
    message.messageObject = imageObject;
    //: message.apnsContent = [FFFLanguageManager getTextWithKey:@"init_manager_nim_status_bar_image_message"];
    message.apnsContent = [TeamManager sizeKey:StringFromTaleData(kStr_gloryText)];
    //: [self setupMessage:message];
    [self cypher:message];
    //: return message;
    return message;
}



//: + (void)setupMessage:(NIMMessage *)message
+ (void)cypher:(NIMMessage *)message
{
    //: message.apnsPayload = @{
    message.apnsPayload = @{
        //: @"apns-collapse-id": message.messageId,
        StringFromTaleData(kStr_poPerName): message.messageId,
    //: };
    };

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_msg_env"];
    message.env = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromTaleData(kStr_internationalMakeShowData)];
}


//: @end
@end


//: @implementation NIMCommentMaker
@implementation OriginVideo

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)colorRange:(int64_t)type
                             //: content:(NSString *)content
                             key:(NSString *)content
                                 //: ext:(NSString *)ext
                                 view_strong:(NSString *)ext
{
    //: NIMQuickComment *comment = [[NIMQuickComment alloc] init];
    NIMQuickComment *comment = [[NIMQuickComment alloc] init];
    //: comment.ext = ext;
    comment.ext = ext;
    //: NIMQuickCommentSetting *setting = [[NIMQuickCommentSetting alloc] init];
    NIMQuickCommentSetting *setting = [[NIMQuickCommentSetting alloc] init];
    //: setting.needPush = YES;
    setting.needPush = YES;
    //: setting.needBadge = YES;
    setting.needBadge = YES;
    //: setting.pushTitle = @"你收到了一条快捷评论";
    setting.pushTitle = StringFromTaleData(kStr_rapVasValue);
    //: setting.pushContent = content;
    setting.pushContent = content;
    //: setting.pushPayload = @{
    setting.pushPayload = @{
        //: @"key" : @"value"
        StringFromTaleData(kStr_explanationLayoffValue) : StringFromTaleData(kStr_ecologicalData)
    //: };
    };
    //: comment.setting = setting;
    comment.setting = setting;
    //: comment.replyType = type;
    comment.replyType = type;
    //: return comment;
    return comment;
}

//: @end
@end

Byte * TaleDataToCache(Byte *data) {
    int authorizeTitle = data[0];
    int nolPros = data[1];
    Byte tradeText = data[2];
    int warTerritory = data[3];
    if (!authorizeTitle) return data + warTerritory;
    for (int i = warTerritory; i < warTerritory + nolPros; i++) {
        int value = data[i] + tradeText;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[warTerritory + nolPros] = 0;
    return data + warTerritory;
}

NSString *StringFromTaleData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TaleDataToCache(data)];
}
