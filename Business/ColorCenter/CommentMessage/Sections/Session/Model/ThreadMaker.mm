
#import <Foundation/Foundation.h>
typedef struct {
    Byte quantityerrupt;
    Byte *circumference;
    unsigned int tributeOption;
    bool coca;
	int textEssential;
} PullInData;

NSString *StringFromPullInData(PullInData *data);


//: value
PullInData kStr_carefullyText = (PullInData){160, (Byte []){214, 193, 204, 213, 197, 68}, 5, false, 127};


//: key
PullInData kStr_additionData = (PullInData){39, (Byte []){76, 66, 94, 86}, 3, false, 237};


//: apns-collapse-id
PullInData kStr_topMumTitle = (PullInData){165, (Byte []){196, 213, 203, 214, 136, 198, 202, 201, 201, 196, 213, 214, 192, 136, 204, 193, 77}, 16, false, 193};


//: 发来了一段视频
PullInData kStr_interruptTitle = (PullInData){214, (Byte []){51, 89, 71, 48, 75, 115, 50, 108, 80, 50, 110, 86, 48, 120, 99, 62, 113, 80, 63, 116, 71, 222}, 21, false, 130};


//: nim_test_msg_env
PullInData kStr_barSteadTitle = (PullInData){2, (Byte []){108, 107, 111, 93, 118, 103, 113, 118, 93, 111, 113, 101, 93, 103, 108, 116, 14}, 16, false, 96};


//: 发来了一段语音
PullInData kStr_additionName = (PullInData){49, (Byte []){212, 190, 160, 215, 172, 148, 213, 139, 183, 213, 137, 177, 215, 159, 132, 217, 158, 156, 216, 174, 130, 12}, 21, false, 130};


//: init_manager_nim_status_bar_image_message
PullInData kStr_paleRemoveTitle = (PullInData){230, (Byte []){143, 136, 143, 146, 185, 139, 135, 136, 135, 129, 131, 148, 185, 136, 143, 139, 185, 149, 146, 135, 146, 147, 149, 185, 132, 135, 148, 185, 143, 139, 135, 129, 131, 185, 139, 131, 149, 149, 135, 129, 131, 41}, 41, false, 10};


//: 你收到了一条快捷评论
PullInData kStr_grocerData = (PullInData){169, (Byte []){77, 20, 9, 79, 61, 31, 76, 33, 25, 77, 19, 47, 77, 17, 41, 79, 52, 8, 76, 22, 2, 79, 36, 30, 65, 6, 45, 65, 7, 19, 16}, 30, false, 211};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageMaker.m
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageMaker.h"
#import "ThreadMaker.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Afterwards.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "FFFInputAtCache.h"
#import "VoidCache.h"

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
@implementation ThreadMaker

//: + (NIMMessage*)msgWithText:(NSString*)text
+ (NIMMessage*)cancel:(NSString*)text
{
    //: NIMMessage *textMessage = [[NIMMessage alloc] init];
    NIMMessage *textMessage = [[NIMMessage alloc] init];
    //: textMessage.text = text;
    textMessage.text = text;
    //: [self setupMessage:textMessage];
    [self title:textMessage];
    //: return textMessage;
    return textMessage;
}

//: + (NIMMessage*)msgWithAudio:(NSString*)filePath
+ (NIMMessage*)insideInformation:(NSString*)filePath
{
    //: NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = audioObject;
    message.messageObject = audioObject;
    //: message.text = @"发来了一段语音".nim_localized;
    message.text = StringFromPullInData(&kStr_additionName).textKey;
    //: [self setupMessage:message];
    [self title:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithVideo:(NSString*)filePath
+ (NIMMessage*)theFind:(NSString*)filePath
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
    message.apnsContent = StringFromPullInData(&kStr_interruptTitle).textKey;
    //: [self setupMessage:message];
    [self title:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithImage:(UIImage*)image
+ (NIMMessage*)tool:(UIImage*)image
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
    return [ThreadMaker vanguard:imageObject];
}

//: + (NIMMessage *)msgWithImagePath:(NSString*)path
+ (NIMMessage *)should:(NSString*)path
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    //: return [FFFMessageMaker generateImageMessage:imageObject];
    return [ThreadMaker vanguard:imageObject];
}

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension
+ (NIMMessage *)human:(NSData *)data disable:(NSString *)extension
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    //: return [FFFMessageMaker generateImageMessage:imageObject];
    return [ThreadMaker vanguard:imageObject];
}

//: + (NIMMessage *)generateImageMessage:(NIMImageObject *)imageObject
+ (NIMMessage *)vanguard:(NIMImageObject *)imageObject
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
    message.apnsContent = [ItemManager sessionInformation:StringFromPullInData(&kStr_paleRemoveTitle)];
    //: [self setupMessage:message];
    [self title:message];
    //: return message;
    return message;
}



//: + (void)setupMessage:(NIMMessage *)message
+ (void)title:(NIMMessage *)message
{
    //: message.apnsPayload = @{
    message.apnsPayload = @{
        //: @"apns-collapse-id": message.messageId,
        StringFromPullInData(&kStr_topMumTitle): message.messageId,
    //: };
    };

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_msg_env"];
    message.env = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromPullInData(&kStr_barSteadTitle)];
}


//: @end
@end


//: @implementation NIMCommentMaker
@implementation CommentTingSailmakerMaker

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)groundButton:(int64_t)type
                             //: content:(NSString *)content
                             margin:(NSString *)content
                                 //: ext:(NSString *)ext
                                 segment:(NSString *)ext
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
    setting.pushTitle = StringFromPullInData(&kStr_grocerData);
    //: setting.pushContent = content;
    setting.pushContent = content;
    //: setting.pushPayload = @{
    setting.pushPayload = @{
        //: @"key" : @"value"
        StringFromPullInData(&kStr_additionData) : StringFromPullInData(&kStr_carefullyText)
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

Byte *PullInDataToByte(PullInData *data) {
    if (data->coca) return data->circumference;
    for (int i = 0; i < data->tributeOption; i++) {
        data->circumference[i] ^= data->quantityerrupt;
    }
    data->circumference[data->tributeOption] = 0;
    data->coca = true;
	if (data->tributeOption >= 1) {
		data->textEssential = data->circumference[0];
	}
    return data->circumference;
}

NSString *StringFromPullInData(PullInData *data) {
    return [NSString stringWithUTF8String:(char *)PullInDataToByte(data)];
}
