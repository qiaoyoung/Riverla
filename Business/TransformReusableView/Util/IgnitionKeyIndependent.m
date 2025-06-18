
#import <Foundation/Foundation.h>

NSString *StringFromConfirmData(Byte *data);        


//: 点对点消息单向撤回
Byte kStr_selectedNimValue[] = {26, 27, 6, 6, 164, 45, 225, 124, 179, 223, 169, 179, 225, 124, 179, 224, 176, 130, 224, 123, 169, 223, 135, 143, 223, 138, 139, 224, 140, 158, 223, 149, 152, 253};


//: [系统通知][%@]
Byte kStr_cousinContent[] = {54, 18, 59, 10, 196, 181, 231, 44, 223, 136, 32, 172, 120, 128, 172, 128, 100, 174, 69, 95, 172, 100, 106, 34, 32, 234, 5, 34, 179};


//: 群消息撤回
Byte kStr_topControlConfirmName[] = {70, 15, 89, 5, 205, 142, 101, 75, 141, 93, 47, 141, 40, 86, 141, 57, 75, 140, 66, 69, 124};


//: 点对点消息撤回
Byte kStr_franchiseContent[] = {96, 21, 92, 12, 17, 36, 43, 40, 201, 104, 21, 15, 139, 38, 93, 137, 83, 93, 139, 38, 93, 138, 90, 44, 138, 37, 83, 138, 54, 72, 137, 63, 66, 37};


//: 超大群消息撤回
Byte kStr_involvedText[] = {76, 21, 65, 8, 230, 155, 249, 10, 167, 117, 68, 164, 99, 102, 166, 125, 99, 165, 117, 71, 165, 64, 110, 165, 81, 99, 164, 90, 93, 192};


//: 群消息单向撤回
Byte kStr_imagineMessageName[] = {84, 21, 13, 6, 108, 85, 218, 177, 151, 217, 169, 123, 217, 116, 162, 216, 128, 136, 216, 131, 132, 217, 133, 151, 216, 142, 145, 69};

// __DEBUG__
// __CLOSE_PRINT__
//
//  IgnitionKeyIndependent.m
//  NIM
//
//  Created by Genning on 2020/8/27.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNoticationUtil.h"
#import "IgnitionKeyIndependent.h"
//: #import "UserGlobalMacro.h"
#import "UserGlobalMacro.h"

//: @implementation NTESNoticationUtil
@implementation IgnitionKeyIndependent

//: + (NSString *)revokeNoticationContent:(NIMRevokeMessageNotification *)note {
+ (NSString *)text:(NIMRevokeMessageNotification *)note {
    //: NSMutableString *ret = [NSMutableString stringWithFormat:@"[系统通知][%@]".nim_localized,
    NSMutableString *ret = [NSMutableString stringWithFormat:StringFromConfirmData(kStr_cousinContent).textKey,
                            //: [self revokeTypeContent:note.notificationType]];
                            [self accumulation:note.notificationType]];
    //: return ret;
    return ret;
}

//: + (NSString *)revokeTypeContent:(NIMRevokeMessageNotificationType)type {
+ (NSString *)accumulation:(NIMRevokeMessageNotificationType)type {
    //: NSString *ret = @"点对点消息撤回".nim_localized;
    NSString *ret = StringFromConfirmData(kStr_franchiseContent).textKey;
    //: switch (type) {
    switch (type) {
        //: case NIMRevokeMessageNotificationTypeP2P:
        case NIMRevokeMessageNotificationTypeP2P:
        {
            //: ret = @"点对点消息撤回".nim_localized;
            ret = StringFromConfirmData(kStr_franchiseContent).textKey;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeam:
        case NIMRevokeMessageNotificationTypeTeam:
        {
            //: ret = @"群消息撤回".nim_localized;
            ret = StringFromConfirmData(kStr_topControlConfirmName).textKey;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeSuperTeam:
        case NIMRevokeMessageNotificationTypeSuperTeam:
        {
            //: ret = @"超大群消息撤回".nim_localized;
            ret = StringFromConfirmData(kStr_involvedText).textKey;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeP2POneWay:
        case NIMRevokeMessageNotificationTypeP2POneWay:
        {
            //: ret = @"点对点消息单向撤回".nim_localized;
            ret = StringFromConfirmData(kStr_selectedNimValue).textKey;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeamOneWay:
        case NIMRevokeMessageNotificationTypeTeamOneWay:
        {
            //: ret = @"群消息单向撤回".nim_localized;
            ret = StringFromConfirmData(kStr_imagineMessageName).textKey;
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return ret;
    return ret;
}

//: @end
@end

Byte * ConfirmDataToCache(Byte *data) {
    int heliogram = data[0];
    int equalDate = data[1];
    Byte buttonVoice = data[2];
    int logTorn = data[3];
    if (!heliogram) return data + logTorn;
    for (int i = logTorn; i < logTorn + equalDate; i++) {
        int value = data[i] + buttonVoice;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[logTorn + equalDate] = 0;
    return data + logTorn;
}

NSString *StringFromConfirmData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ConfirmDataToCache(data)];
}
