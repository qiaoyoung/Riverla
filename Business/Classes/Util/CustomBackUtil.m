
#import <Foundation/Foundation.h>

NSString *StringFromPreferData(Byte *data);


//: 群消息单向撤回
Byte kStr_historyData[] = {50, 21, 49, 10, 112, 142, 28, 114, 158, 25, 24, 239, 213, 23, 231, 185, 23, 178, 224, 22, 190, 198, 22, 193, 194, 23, 195, 213, 22, 204, 207, 192};


//: 超大群消息撤回
Byte kStr_awarenessName[] = {17, 21, 28, 9, 252, 247, 193, 43, 67, 4, 210, 161, 1, 192, 195, 3, 218, 192, 2, 210, 164, 2, 157, 203, 2, 174, 192, 1, 183, 186, 229};


//: [系统通知][%@]
Byte kStr_evolveCruData[] = {45, 18, 85, 9, 249, 172, 29, 41, 10, 176, 60, 8, 16, 60, 16, 244, 62, 213, 239, 60, 244, 250, 178, 176, 122, 149, 178, 90};


//: 群消息撤回
Byte kStr_originValue[] = {12, 15, 91, 10, 254, 123, 148, 14, 178, 231, 66, 25, 255, 65, 17, 227, 65, 220, 10, 65, 237, 255, 64, 246, 249, 19};


//: 点对点消息撤回
Byte kStr_ragValue[] = {73, 21, 99, 9, 88, 59, 176, 43, 206, 74, 229, 28, 72, 18, 28, 74, 229, 28, 73, 25, 235, 73, 228, 18, 73, 245, 7, 72, 254, 1, 12};


//: 点对点消息单向撤回
Byte kStr_minorWhoeverName[] = {5, 27, 90, 13, 231, 115, 240, 11, 11, 156, 38, 176, 119, 65, 220, 19, 63, 9, 19, 65, 220, 19, 64, 16, 226, 64, 219, 9, 63, 231, 239, 63, 234, 235, 64, 236, 254, 63, 245, 248, 137};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomBackUtil.m
//  NIM
//
//  Created by Genning on 2020/8/27.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNoticationUtil.h"
#import "CustomBackUtil.h"
//: #import "ViewGlobalMacro.h"
#import "ViewGlobalMacro.h"

//: @implementation NTESNoticationUtil
@implementation CustomBackUtil

//: + (NSString *)revokeNoticationContent:(NIMRevokeMessageNotification *)note {
+ (NSString *)frameProgress:(NIMRevokeMessageNotification *)note {
    //: NSMutableString *ret = [NSMutableString stringWithFormat:@"[系统通知][%@]".nim_localized,
    NSMutableString *ret = [NSMutableString stringWithFormat:StringFromPreferData(kStr_evolveCruData).positionMenu,
                            //: [self revokeTypeContent:note.notificationType]];
                            [self pressedTo:note.notificationType]];
    //: return ret;
    return ret;
}

//: + (NSString *)revokeTypeContent:(NIMRevokeMessageNotificationType)type {
+ (NSString *)pressedTo:(NIMRevokeMessageNotificationType)type {
    //: NSString *ret = @"点对点消息撤回".nim_localized;
    NSString *ret = StringFromPreferData(kStr_ragValue).positionMenu;
    //: switch (type) {
    switch (type) {
        //: case NIMRevokeMessageNotificationTypeP2P:
        case NIMRevokeMessageNotificationTypeP2P:
        {
            //: ret = @"点对点消息撤回".nim_localized;
            ret = StringFromPreferData(kStr_ragValue).positionMenu;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeam:
        case NIMRevokeMessageNotificationTypeTeam:
        {
            //: ret = @"群消息撤回".nim_localized;
            ret = StringFromPreferData(kStr_originValue).positionMenu;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeSuperTeam:
        case NIMRevokeMessageNotificationTypeSuperTeam:
        {
            //: ret = @"超大群消息撤回".nim_localized;
            ret = StringFromPreferData(kStr_awarenessName).positionMenu;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeP2POneWay:
        case NIMRevokeMessageNotificationTypeP2POneWay:
        {
            //: ret = @"点对点消息单向撤回".nim_localized;
            ret = StringFromPreferData(kStr_minorWhoeverName).positionMenu;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeamOneWay:
        case NIMRevokeMessageNotificationTypeTeamOneWay:
        {
            //: ret = @"群消息单向撤回".nim_localized;
            ret = StringFromPreferData(kStr_historyData).positionMenu;
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

Byte * PreferDataToCache(Byte *data) {
    int history = data[0];
    int alleywayGreatly = data[1];
    Byte snare = data[2];
    int works = data[3];
    if (!history) return data + works;
    for (int i = works; i < works + alleywayGreatly; i++) {
        int value = data[i] - snare;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[works + alleywayGreatly] = 0;
    return data + works;
}

NSString *StringFromPreferData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PreferDataToCache(data)];
}
