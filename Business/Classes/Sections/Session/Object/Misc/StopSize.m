
#import <Foundation/Foundation.h>

NSString *StringFromMyBudgeData(Byte *data);


//: compressed
Byte kStr_poleContent[] = {35, 10, 65, 4, 164, 176, 174, 177, 179, 166, 180, 180, 166, 165, 109};


//: fileName
Byte kStr_keyCellText[] = {75, 8, 77, 12, 235, 203, 133, 204, 183, 71, 96, 116, 179, 182, 185, 178, 155, 174, 186, 178, 238};


//: redPacketSendID
Byte kStr_taiNabData[] = {7, 15, 38, 7, 83, 56, 58, 152, 139, 138, 118, 135, 137, 145, 139, 154, 121, 139, 148, 138, 111, 106, 202};


//: messageAbstract
Byte kStr_poleNeitherValue[] = {50, 15, 69, 14, 3, 188, 173, 137, 48, 217, 194, 29, 32, 112, 178, 170, 184, 184, 166, 172, 170, 134, 167, 184, 185, 183, 166, 168, 185, 71};


//: sendPacketId
Byte kStr_succeedDarknessValue[] = {76, 12, 49, 11, 230, 7, 46, 77, 94, 112, 84, 164, 150, 159, 149, 129, 146, 148, 156, 150, 165, 122, 149, 25};


//: sessionName
Byte kStr_yardContent[] = {11, 11, 68, 10, 214, 201, 3, 38, 14, 66, 183, 169, 183, 183, 173, 179, 178, 146, 165, 177, 169, 215};


//: title
Byte kStr_mortalityTitle[] = {98, 5, 30, 7, 30, 233, 180, 146, 135, 146, 138, 131, 193};


//: value
Byte kStr_cellIdentificationName[] = {60, 5, 20, 12, 196, 12, 38, 254, 208, 150, 36, 100, 138, 117, 128, 137, 121, 24};


//: data
Byte kStr_textAngelData[] = {50, 4, 60, 7, 194, 102, 252, 160, 157, 176, 157, 103};


//: openPacketId
Byte kStr_surgeryMessageValue[] = {89, 12, 26, 4, 137, 138, 127, 136, 106, 123, 125, 133, 127, 142, 99, 126, 60};


//: personCardId
Byte kStr_presidentName[] = {80, 12, 67, 8, 244, 10, 216, 186, 179, 168, 181, 182, 178, 177, 134, 164, 181, 167, 140, 167, 217};


//: encrypted
Byte kStr_includingName[] = {70, 9, 92, 12, 172, 188, 172, 57, 166, 99, 165, 49, 193, 202, 191, 206, 213, 204, 208, 193, 192, 1};


//: type
Byte kStr_solelyData[] = {73, 4, 14, 13, 44, 122, 253, 58, 59, 62, 17, 193, 236, 130, 135, 126, 115, 254};


//: md5
Byte kStr_itLiquidTitle[] = {22, 3, 6, 7, 118, 212, 70, 115, 106, 59, 171};


//: content
Byte kStr_bubbleHerebyName[] = {26, 7, 74, 5, 244, 173, 185, 184, 190, 175, 184, 190, 197};


//: isGetDone
Byte kStr_imageMessageContent[] = {87, 9, 37, 10, 206, 4, 31, 212, 170, 85, 142, 152, 108, 138, 153, 105, 148, 147, 138, 57};


//: flag
Byte kStr_includingForgeValue[] = {47, 4, 28, 5, 211, 130, 136, 125, 131, 186};


//: fired
Byte kStr_bileTitle[] = {89, 5, 93, 7, 17, 89, 162, 195, 198, 207, 194, 193, 76};


//: url
Byte kStr_styleCaptureTitle[] = {9, 3, 88, 6, 137, 167, 205, 202, 196, 19};


//: sessionId
Byte kStr_crawLimitedViewName[] = {12, 9, 10, 7, 214, 21, 121, 125, 111, 125, 125, 115, 121, 120, 83, 110, 211};


//: redPacketId
Byte kStr_enableMurderName[] = {89, 11, 71, 8, 82, 56, 156, 169, 185, 172, 171, 151, 168, 170, 178, 172, 187, 144, 171, 145};


//: password
Byte kStr_buyerData[] = {69, 8, 74, 4, 186, 171, 189, 189, 193, 185, 188, 174, 216};

// __DEBUG__
// __CLOSE_PRINT__
//
//  StopSize.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomAttachmentDecoder.h"
#import "StopSize.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
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
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+After.h"
//: #import "NTESSessionUtil.h"
#import "ArrayUtil.h"
//: #import "NTESShareCardAttachment.h"
#import "TableFit.h"

//: @implementation NTESCustomAttachmentDecoder
@implementation StopSize
//: - (id<NIMCustomAttachment>)decodeAttachment:(NSString *)content
- (id<NIMCustomAttachment>)decodeAttachment:(NSString *)content
{
    //: id<NIMCustomAttachment> attachment = nil;
    id<NIMCustomAttachment> attachment = nil;

    //: NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (data) {
    if (data) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [dict jsonInteger:@"type"];
            NSInteger type = [dict session:StringFromMyBudgeData(kStr_solelyData)];
            //: NSDictionary *data = [dict jsonDict:@"data"];
            NSDictionary *data = [dict delay:StringFromMyBudgeData(kStr_textAngelData)];
            //: switch (type) {
            switch (type) {
                //: case CustomMessageTypeJanKenPon:
                case CustomMessageTypeJanKenPon:
                {
                    //: attachment = [[NTESJanKenPonAttachment alloc] init];
                    attachment = [[ChapterAttachment alloc] init];
                    //: ((NTESJanKenPonAttachment *)attachment).value = [data jsonInteger:@"value"];
                    ((ChapterAttachment *)attachment).value = [data session:StringFromMyBudgeData(kStr_cellIdentificationName)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeSnapchat:
                case CustomMessageTypeSnapchat:
                {
                    //: attachment = [[NTESSnapchatAttachment alloc] init];
                    attachment = [[FileAllocationTableTransform alloc] init];
                    //: ((NTESSnapchatAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((FileAllocationTableTransform *)attachment).md5 = [data of:StringFromMyBudgeData(kStr_itLiquidTitle)];
                    //: ((NTESSnapchatAttachment *)attachment).url = [data jsonString:@"url"];
                    ((FileAllocationTableTransform *)attachment).url = [data of:StringFromMyBudgeData(kStr_styleCaptureTitle)];
                    //: ((NTESSnapchatAttachment *)attachment).isFired = [data jsonBool:@"fired"];
                    ((FileAllocationTableTransform *)attachment).isFired = [data language:StringFromMyBudgeData(kStr_bileTitle)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeWhiteboard:
                case CustomMessageTypeWhiteboard:
                {
                    //: attachment = [[NTESWhiteboardAttachment alloc] init];
                    attachment = [[ButtonSupport alloc] init];
                    //: ((NTESWhiteboardAttachment *)attachment).flag = [data jsonInteger:@"flag"];
                    ((ButtonSupport *)attachment).flag = [data session:StringFromMyBudgeData(kStr_includingForgeValue)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacket:
                case CustomMessageTypeRedPacket:
                {
                    //: attachment = [[NTESRedPacketAttachment alloc] init];
                    attachment = [[RecentAttachment alloc] init];
                    //: ((NTESRedPacketAttachment *)attachment).title = [data jsonString:@"title"];
                    ((RecentAttachment *)attachment).title = [data of:StringFromMyBudgeData(kStr_mortalityTitle)];
                    //: ((NTESRedPacketAttachment *)attachment).content = [data jsonString:@"content"];
                    ((RecentAttachment *)attachment).content = [data of:StringFromMyBudgeData(kStr_bubbleHerebyName)];
                    //: ((NTESRedPacketAttachment *)attachment).redPacketId = [data jsonString:@"redPacketId"];
                    ((RecentAttachment *)attachment).redPacketId = [data of:StringFromMyBudgeData(kStr_enableMurderName)];
                    //: ((NTESRedPacketAttachment *)attachment).sendID = [data jsonString:@"redPacketSendID"];
                    ((RecentAttachment *)attachment).sendID = [data of:StringFromMyBudgeData(kStr_taiNabData)];

                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacketTip:
                case CustomMessageTypeRedPacketTip:
                {
                    //: attachment = [[NTESRedPacketTipAttachment alloc] init];
                    attachment = [[CommentAttachment alloc] init];
                    //: ((NTESRedPacketTipAttachment *)attachment).sendPacketId = [data jsonString:@"sendPacketId"];
                    ((CommentAttachment *)attachment).sendPacketId = [data of:StringFromMyBudgeData(kStr_succeedDarknessValue)];
                    //: ((NTESRedPacketTipAttachment *)attachment).packetId = [data jsonString:@"redPacketId"];
                    ((CommentAttachment *)attachment).packetId = [data of:StringFromMyBudgeData(kStr_enableMurderName)];
                    //: ((NTESRedPacketTipAttachment *)attachment).isGetDone = [data jsonString:@"isGetDone"];
                    ((CommentAttachment *)attachment).isGetDone = [data of:StringFromMyBudgeData(kStr_imageMessageContent)];
                    //: ((NTESRedPacketTipAttachment *)attachment).openPacketId = [data jsonString:@"openPacketId"];
                    ((CommentAttachment *)attachment).openPacketId = [data of:StringFromMyBudgeData(kStr_surgeryMessageValue)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeMultiRetweet:
                case CustomMessageTypeMultiRetweet:
                {
                    //: attachment = [[NTESMultiRetweetAttachment alloc] init];
                    attachment = [[StopOperationAttachment alloc] init];
                    //: ((NTESMultiRetweetAttachment *)attachment).url = [data jsonString:@"url"];
                    ((StopOperationAttachment *)attachment).url = [data of:StringFromMyBudgeData(kStr_styleCaptureTitle)];
                    //: ((NTESMultiRetweetAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((StopOperationAttachment *)attachment).md5 = [data of:StringFromMyBudgeData(kStr_itLiquidTitle)];
                    //: ((NTESMultiRetweetAttachment *)attachment).fileName = [data jsonString:@"fileName"];
                    ((StopOperationAttachment *)attachment).fileName = [data of:StringFromMyBudgeData(kStr_keyCellText)];
                    //: ((NTESMultiRetweetAttachment *)attachment).compressed = [data jsonBool:@"compressed"];
                    ((StopOperationAttachment *)attachment).compressed = [data language:StringFromMyBudgeData(kStr_poleContent)];
                    //: ((NTESMultiRetweetAttachment *)attachment).encrypted = [data jsonBool:@"encrypted"];
                    ((StopOperationAttachment *)attachment).encrypted = [data language:StringFromMyBudgeData(kStr_includingName)];
                    //: ((NTESMultiRetweetAttachment *)attachment).password = [data jsonString:@"password"];
                    ((StopOperationAttachment *)attachment).password = [data of:StringFromMyBudgeData(kStr_buyerData)];
                    //: ((NTESMultiRetweetAttachment *)attachment).messageAbstract = [data jsonArray:@"messageAbstract"];
                    ((StopOperationAttachment *)attachment).messageAbstract = [data fromImage:StringFromMyBudgeData(kStr_poleNeitherValue)];
                    //: ((NTESMultiRetweetAttachment *)attachment).sessionName = [data jsonString:@"sessionName"];
                    ((StopOperationAttachment *)attachment).sessionName = [data of:StringFromMyBudgeData(kStr_yardContent)];
                    //: ((NTESMultiRetweetAttachment *)attachment).sessionId = [data jsonString:@"sessionId"];
                    ((StopOperationAttachment *)attachment).sessionId = [data of:StringFromMyBudgeData(kStr_crawLimitedViewName)];
                }
                    //: break;
                    break;

                //: case CustomMessageTypeCard:
                case CustomMessageTypeCard:
                {
                    //: attachment = [[NTESShareCardAttachment alloc] init];
                    attachment = [[TableFit alloc] init];
                    //: ((NTESShareCardAttachment *)attachment).title = [data jsonString:@"title"];
                    ((TableFit *)attachment).title = [data of:StringFromMyBudgeData(kStr_mortalityTitle)];
                    //: ((NTESShareCardAttachment *)attachment).type = [data jsonString:@"type"];
                    ((TableFit *)attachment).type = [data of:StringFromMyBudgeData(kStr_solelyData)];
                    //: ((NTESShareCardAttachment *)attachment).content = [data jsonString:@"content"];
                    ((TableFit *)attachment).content = [data of:StringFromMyBudgeData(kStr_bubbleHerebyName)];
                    //: ((NTESShareCardAttachment *)attachment).personCardId = [data jsonString:@"personCardId"];
                    ((TableFit *)attachment).personCardId = [data of:StringFromMyBudgeData(kStr_presidentName)];
                }
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: attachment = [self checkAttachment:attachment] ? attachment : nil;
            attachment = [self forefrontAttachment:attachment] ? attachment : nil;
        }
    }
    //: return attachment;
    return attachment;
}


//: - (BOOL)checkAttachment:(id<NIMCustomAttachment>)attachment{
- (BOOL)forefrontAttachment:(id<NIMCustomAttachment>)attachment{
    //: BOOL check = NO;
    BOOL check = NO;
    //: if ([attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    if ([attachment isKindOfClass:[ChapterAttachment class]])
    {
        //: NSInteger value = [((NTESJanKenPonAttachment *)attachment) value];
        NSInteger value = [((ChapterAttachment *)attachment) value];
        //: check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
        check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
    }
    //: else if ([attachment isKindOfClass:[NTESSnapchatAttachment class]])
    else if ([attachment isKindOfClass:[FileAllocationTableTransform class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([attachment isKindOfClass:[TableFit class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([attachment isKindOfClass:[ButtonSupport class]])
    {
        //: NSInteger flag = [((NTESWhiteboardAttachment *)attachment) flag];
        NSInteger flag = [((ButtonSupport *)attachment) flag];
        //: check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
        check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
    }
    //: else if([attachment isKindOfClass:[NTESRedPacketAttachment class]] || [attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if([attachment isKindOfClass:[RecentAttachment class]] || [attachment isKindOfClass:[CommentAttachment class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([attachment isKindOfClass:[StopOperationAttachment class]])
    {
        //: NTESMultiRetweetAttachment *target = (NTESMultiRetweetAttachment *)attachment;
        StopOperationAttachment *target = (StopOperationAttachment *)attachment;
        //: if (target.messageAbstract.count == 0) {
        if (target.messageAbstract.count == 0) {
            //: check = NO;
            check = NO;
        //: } else if (target.encrypted && target.password.length == 0) {
        } else if (target.encrypted && target.password.length == 0) {
            //: check = NO;
            check = NO;
        //: } else {
        } else {
            //: check = YES;
            check = YES;
        }
    }
    //: return check;
    return check;
}
//: @end
@end

Byte * MyBudgeDataToCache(Byte *data) {
    int chainAtQuantityegration = data[0];
    int etic = data[1];
    Byte process = data[2];
    int canJourney = data[3];
    if (!chainAtQuantityegration) return data + canJourney;
    for (int i = canJourney; i < canJourney + etic; i++) {
        int value = data[i] - process;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[canJourney + etic] = 0;
    return data + canJourney;
}

NSString *StringFromMyBudgeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MyBudgeDataToCache(data)];
}
