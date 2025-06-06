
#import <Foundation/Foundation.h>

NSString *StringFromWithLiableData(Byte *data);


//: messageAbstract
Byte kStr_sireData[] = {26, 15, 59, 10, 166, 120, 129, 48, 127, 90, 168, 160, 174, 174, 156, 162, 160, 124, 157, 174, 175, 173, 156, 158, 175, 125};


//: personCardId
Byte kStr_harpUserHateData[] = {45, 12, 56, 13, 99, 141, 145, 20, 126, 77, 146, 160, 129, 168, 157, 170, 171, 167, 166, 123, 153, 170, 156, 129, 156, 47};


//: data
Byte kStr_surgeContent[] = {45, 4, 87, 14, 239, 249, 171, 117, 230, 125, 243, 200, 225, 6, 187, 184, 203, 184, 16};


//: password
Byte kStr_learnAnkleData[] = {45, 8, 34, 4, 146, 131, 149, 149, 153, 145, 148, 134, 234};


//: fired
Byte kStr_pursueTitle[] = {13, 5, 10, 9, 25, 223, 221, 192, 6, 112, 115, 124, 111, 110, 189};


//: url
Byte kStr_patronTitle[] = {36, 3, 17, 8, 197, 112, 128, 163, 134, 131, 125, 109};


//: value
Byte kStr_weakenContent[] = {80, 5, 47, 6, 156, 212, 165, 144, 155, 164, 148, 177};


//: fileName
Byte kStr_operativeText[] = {72, 8, 69, 7, 244, 33, 20, 171, 174, 177, 170, 147, 166, 178, 170, 213};


//: title
Byte kStr_containerContent[] = {36, 5, 36, 7, 181, 17, 209, 152, 141, 152, 144, 137, 125};


//: sessionId
Byte kStr_routineCounternationalValue[] = {67, 9, 13, 10, 15, 139, 145, 64, 255, 12, 128, 114, 128, 128, 118, 124, 123, 86, 113, 136};


//: redPacketId
Byte kStr_strangeValue[] = {73, 11, 28, 10, 215, 58, 96, 224, 34, 23, 142, 129, 128, 108, 125, 127, 135, 129, 144, 101, 128, 230};


//: openPacketId
Byte kStr_spireOnProductivityValue[] = {89, 12, 98, 4, 209, 210, 199, 208, 178, 195, 197, 205, 199, 214, 171, 198, 3};


//: encrypted
Byte kStr_spireData[] = {82, 9, 18, 12, 165, 149, 237, 184, 26, 137, 192, 159, 119, 128, 117, 132, 139, 130, 134, 119, 118, 229};


//: compressed
Byte kStr_passengerData[] = {23, 10, 72, 4, 171, 183, 181, 184, 186, 173, 187, 187, 173, 172, 233};


//: content
Byte kStr_badlyData[] = {23, 7, 24, 6, 48, 49, 123, 135, 134, 140, 125, 134, 140, 100};


//: sendPacketId
Byte kStr_excitedData[] = {21, 12, 67, 4, 182, 168, 177, 167, 147, 164, 166, 174, 168, 183, 140, 167, 111};


//: isGetDone
Byte kStr_fenceBrokenTitle[] = {84, 9, 26, 5, 232, 131, 141, 97, 127, 142, 94, 137, 136, 127, 197};


//: md5
Byte kStr_vesselFileTitle[] = {93, 3, 93, 14, 87, 246, 49, 190, 192, 212, 185, 74, 113, 252, 202, 193, 146, 42};


//: type
Byte kStr_colorfulInfoChapterData[] = {96, 4, 50, 12, 164, 170, 34, 51, 47, 148, 162, 223, 166, 171, 162, 151, 33};


//: sessionName
Byte kStr_frameImposeValue[] = {18, 11, 71, 11, 214, 230, 201, 66, 29, 113, 128, 186, 172, 186, 186, 176, 182, 181, 149, 168, 180, 172, 111};


//: redPacketSendID
Byte kStr_exceptionName[] = {93, 15, 53, 9, 109, 10, 6, 13, 35, 167, 154, 153, 133, 150, 152, 160, 154, 169, 136, 154, 163, 153, 126, 121, 233};


//: flag
Byte kStr_actressData[] = {29, 4, 52, 8, 17, 140, 124, 133, 154, 160, 149, 155, 64};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PopStyleDecoder.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomAttachmentDecoder.h"
#import "PopStyleDecoder.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
//: #import "NTESJanKenPonAttachment.h"
#import "ChangeScale.h"
//: #import "NTESSnapchatAttachment.h"
#import "PresentAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "PastAttachment.h"
//: #import "NTESRedPacketAttachment.h"
#import "RubyRedRecentAttachmentCustom.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "StyleAction.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ConstituentAttachment.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Enable.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"
//: #import "NTESShareCardAttachment.h"
#import "ChildApp.h"

//: @implementation NTESCustomAttachmentDecoder
@implementation PopStyleDecoder
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
            NSInteger type = [dict bubble:StringFromWithLiableData(kStr_colorfulInfoChapterData)];
            //: NSDictionary *data = [dict jsonDict:@"data"];
            NSDictionary *data = [dict empty:StringFromWithLiableData(kStr_surgeContent)];
            //: switch (type) {
            switch (type) {
                //: case CustomMessageTypeJanKenPon:
                case CustomMessageTypeJanKenPon:
                {
                    //: attachment = [[NTESJanKenPonAttachment alloc] init];
                    attachment = [[ChangeScale alloc] init];
                    //: ((NTESJanKenPonAttachment *)attachment).value = [data jsonInteger:@"value"];
                    ((ChangeScale *)attachment).value = [data bubble:StringFromWithLiableData(kStr_weakenContent)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeSnapchat:
                case CustomMessageTypeSnapchat:
                {
                    //: attachment = [[NTESSnapchatAttachment alloc] init];
                    attachment = [[PresentAttachment alloc] init];
                    //: ((NTESSnapchatAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((PresentAttachment *)attachment).md5 = [data provider:StringFromWithLiableData(kStr_vesselFileTitle)];
                    //: ((NTESSnapchatAttachment *)attachment).url = [data jsonString:@"url"];
                    ((PresentAttachment *)attachment).url = [data provider:StringFromWithLiableData(kStr_patronTitle)];
                    //: ((NTESSnapchatAttachment *)attachment).isFired = [data jsonBool:@"fired"];
                    ((PresentAttachment *)attachment).isFired = [data alongFrame:StringFromWithLiableData(kStr_pursueTitle)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeWhiteboard:
                case CustomMessageTypeWhiteboard:
                {
                    //: attachment = [[NTESWhiteboardAttachment alloc] init];
                    attachment = [[PastAttachment alloc] init];
                    //: ((NTESWhiteboardAttachment *)attachment).flag = [data jsonInteger:@"flag"];
                    ((PastAttachment *)attachment).flag = [data bubble:StringFromWithLiableData(kStr_actressData)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacket:
                case CustomMessageTypeRedPacket:
                {
                    //: attachment = [[NTESRedPacketAttachment alloc] init];
                    attachment = [[RubyRedRecentAttachmentCustom alloc] init];
                    //: ((NTESRedPacketAttachment *)attachment).title = [data jsonString:@"title"];
                    ((RubyRedRecentAttachmentCustom *)attachment).title = [data provider:StringFromWithLiableData(kStr_containerContent)];
                    //: ((NTESRedPacketAttachment *)attachment).content = [data jsonString:@"content"];
                    ((RubyRedRecentAttachmentCustom *)attachment).content = [data provider:StringFromWithLiableData(kStr_badlyData)];
                    //: ((NTESRedPacketAttachment *)attachment).redPacketId = [data jsonString:@"redPacketId"];
                    ((RubyRedRecentAttachmentCustom *)attachment).redPacketId = [data provider:StringFromWithLiableData(kStr_strangeValue)];
                    //: ((NTESRedPacketAttachment *)attachment).sendID = [data jsonString:@"redPacketSendID"];
                    ((RubyRedRecentAttachmentCustom *)attachment).sendID = [data provider:StringFromWithLiableData(kStr_exceptionName)];

                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacketTip:
                case CustomMessageTypeRedPacketTip:
                {
                    //: attachment = [[NTESRedPacketTipAttachment alloc] init];
                    attachment = [[StyleAction alloc] init];
                    //: ((NTESRedPacketTipAttachment *)attachment).sendPacketId = [data jsonString:@"sendPacketId"];
                    ((StyleAction *)attachment).sendPacketId = [data provider:StringFromWithLiableData(kStr_excitedData)];
                    //: ((NTESRedPacketTipAttachment *)attachment).packetId = [data jsonString:@"redPacketId"];
                    ((StyleAction *)attachment).packetId = [data provider:StringFromWithLiableData(kStr_strangeValue)];
                    //: ((NTESRedPacketTipAttachment *)attachment).isGetDone = [data jsonString:@"isGetDone"];
                    ((StyleAction *)attachment).isGetDone = [data provider:StringFromWithLiableData(kStr_fenceBrokenTitle)];
                    //: ((NTESRedPacketTipAttachment *)attachment).openPacketId = [data jsonString:@"openPacketId"];
                    ((StyleAction *)attachment).openPacketId = [data provider:StringFromWithLiableData(kStr_spireOnProductivityValue)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeMultiRetweet:
                case CustomMessageTypeMultiRetweet:
                {
                    //: attachment = [[NTESMultiRetweetAttachment alloc] init];
                    attachment = [[ConstituentAttachment alloc] init];
                    //: ((NTESMultiRetweetAttachment *)attachment).url = [data jsonString:@"url"];
                    ((ConstituentAttachment *)attachment).url = [data provider:StringFromWithLiableData(kStr_patronTitle)];
                    //: ((NTESMultiRetweetAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((ConstituentAttachment *)attachment).md5 = [data provider:StringFromWithLiableData(kStr_vesselFileTitle)];
                    //: ((NTESMultiRetweetAttachment *)attachment).fileName = [data jsonString:@"fileName"];
                    ((ConstituentAttachment *)attachment).fileName = [data provider:StringFromWithLiableData(kStr_operativeText)];
                    //: ((NTESMultiRetweetAttachment *)attachment).compressed = [data jsonBool:@"compressed"];
                    ((ConstituentAttachment *)attachment).compressed = [data alongFrame:StringFromWithLiableData(kStr_passengerData)];
                    //: ((NTESMultiRetweetAttachment *)attachment).encrypted = [data jsonBool:@"encrypted"];
                    ((ConstituentAttachment *)attachment).encrypted = [data alongFrame:StringFromWithLiableData(kStr_spireData)];
                    //: ((NTESMultiRetweetAttachment *)attachment).password = [data jsonString:@"password"];
                    ((ConstituentAttachment *)attachment).password = [data provider:StringFromWithLiableData(kStr_learnAnkleData)];
                    //: ((NTESMultiRetweetAttachment *)attachment).messageAbstract = [data jsonArray:@"messageAbstract"];
                    ((ConstituentAttachment *)attachment).messageAbstract = [data message:StringFromWithLiableData(kStr_sireData)];
                    //: ((NTESMultiRetweetAttachment *)attachment).sessionName = [data jsonString:@"sessionName"];
                    ((ConstituentAttachment *)attachment).sessionName = [data provider:StringFromWithLiableData(kStr_frameImposeValue)];
                    //: ((NTESMultiRetweetAttachment *)attachment).sessionId = [data jsonString:@"sessionId"];
                    ((ConstituentAttachment *)attachment).sessionId = [data provider:StringFromWithLiableData(kStr_routineCounternationalValue)];
                }
                    //: break;
                    break;

                //: case CustomMessageTypeCard:
                case CustomMessageTypeCard:
                {
                    //: attachment = [[NTESShareCardAttachment alloc] init];
                    attachment = [[ChildApp alloc] init];
                    //: ((NTESShareCardAttachment *)attachment).title = [data jsonString:@"title"];
                    ((ChildApp *)attachment).title = [data provider:StringFromWithLiableData(kStr_containerContent)];
                    //: ((NTESShareCardAttachment *)attachment).type = [data jsonString:@"type"];
                    ((ChildApp *)attachment).type = [data provider:StringFromWithLiableData(kStr_colorfulInfoChapterData)];
                    //: ((NTESShareCardAttachment *)attachment).content = [data jsonString:@"content"];
                    ((ChildApp *)attachment).content = [data provider:StringFromWithLiableData(kStr_badlyData)];
                    //: ((NTESShareCardAttachment *)attachment).personCardId = [data jsonString:@"personCardId"];
                    ((ChildApp *)attachment).personCardId = [data provider:StringFromWithLiableData(kStr_harpUserHateData)];
                }
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: attachment = [self checkAttachment:attachment] ? attachment : nil;
            attachment = [self alongTable:attachment] ? attachment : nil;
        }
    }
    //: return attachment;
    return attachment;
}


//: - (BOOL)checkAttachment:(id<NIMCustomAttachment>)attachment{
- (BOOL)alongTable:(id<NIMCustomAttachment>)attachment{
    //: BOOL check = NO;
    BOOL check = NO;
    //: if ([attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    if ([attachment isKindOfClass:[ChangeScale class]])
    {
        //: NSInteger value = [((NTESJanKenPonAttachment *)attachment) value];
        NSInteger value = [((ChangeScale *)attachment) value];
        //: check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
        check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
    }
    //: else if ([attachment isKindOfClass:[NTESSnapchatAttachment class]])
    else if ([attachment isKindOfClass:[PresentAttachment class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([attachment isKindOfClass:[ChildApp class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([attachment isKindOfClass:[PastAttachment class]])
    {
        //: NSInteger flag = [((NTESWhiteboardAttachment *)attachment) flag];
        NSInteger flag = [((PastAttachment *)attachment) flag];
        //: check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
        check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
    }
    //: else if([attachment isKindOfClass:[NTESRedPacketAttachment class]] || [attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if([attachment isKindOfClass:[RubyRedRecentAttachmentCustom class]] || [attachment isKindOfClass:[StyleAction class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([attachment isKindOfClass:[ConstituentAttachment class]])
    {
        //: NTESMultiRetweetAttachment *target = (NTESMultiRetweetAttachment *)attachment;
        ConstituentAttachment *target = (ConstituentAttachment *)attachment;
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

Byte * WithLiableDataToCache(Byte *data) {
    int pettyOfficer = data[0];
    int inheritNeighboring = data[1];
    Byte roadGasoline = data[2];
    int lift = data[3];
    if (!pettyOfficer) return data + lift;
    for (int i = lift; i < lift + inheritNeighboring; i++) {
        int value = data[i] - roadGasoline;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[lift + inheritNeighboring] = 0;
    return data + lift;
}

NSString *StringFromWithLiableData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WithLiableDataToCache(data)];
}
