
#import <Foundation/Foundation.h>

NSString *StringFromDownData(Byte *data);


//: 领取了你的红包
Byte kStr_shoutData[] = {50, 21, 6, 252, 3, 106, 133, 140, 229, 162, 186, 231, 132, 154, 231, 160, 189, 228, 134, 186, 228, 150, 143, 229, 134, 162, 233, 120};


//: data
Byte kStr_pauseTitle[] = {99, 4, 9, 206, 77, 245, 83, 139, 209, 97, 116, 97, 100, 67};


//: 你领取了自己的红包，你的红包已被领完
Byte kStr_bubbleContributorValue[] = {21, 54, 9, 141, 194, 55, 151, 154, 13, 140, 174, 229, 134, 162, 233, 171, 162, 232, 178, 183, 229, 133, 140, 229, 162, 186, 231, 132, 154, 231, 160, 189, 228, 140, 188, 239, 133, 140, 229, 162, 186, 231, 132, 154, 231, 177, 183, 229, 170, 135, 232, 134, 186, 228, 150, 143, 229, 134, 162, 233, 160, 189, 228, 213};


//: openPacketId
Byte kStr_ironicallyValue[] = {10, 12, 4, 180, 100, 73, 116, 101, 107, 99, 97, 80, 110, 101, 112, 111, 28};


//: isGetDone
Byte kStr_aleBirdTubValue[] = {55, 9, 12, 175, 127, 232, 125, 11, 143, 198, 220, 175, 101, 110, 111, 68, 116, 101, 71, 115, 105, 112};


//: 领取了你的红包，你的红包已被领完
Byte kStr_ohoData[] = {66, 48, 3, 140, 174, 229, 134, 162, 233, 171, 162, 232, 178, 183, 229, 133, 140, 229, 162, 186, 231, 132, 154, 231, 160, 189, 228, 140, 188, 239, 133, 140, 229, 162, 186, 231, 132, 154, 231, 160, 189, 228, 134, 186, 228, 150, 143, 229, 134, 162, 233, 111};


//: 你领取了自己的红包
Byte kStr_composeValue[] = {6, 27, 8, 117, 130, 51, 115, 62, 133, 140, 229, 162, 186, 231, 132, 154, 231, 177, 183, 229, 170, 135, 232, 134, 186, 228, 150, 143, 229, 134, 162, 233, 160, 189, 228, 181};


//: 你领取了
Byte kStr_lemmaMessageValue[] = {4, 12, 8, 206, 152, 238, 230, 217, 134, 186, 228, 150, 143, 229, 134, 162, 233, 160, 189, 228, 131};


//: redPacketId
Byte kStr_presenceData[] = {31, 11, 13, 212, 80, 251, 68, 34, 172, 149, 179, 82, 140, 100, 73, 116, 101, 107, 99, 97, 80, 100, 101, 114, 210};


//: type
Byte kStr_commanderTitle[] = {59, 4, 12, 44, 206, 17, 228, 7, 66, 102, 148, 63, 101, 112, 121, 116, 77};


//: sendPacketId
Byte kStr_worriedTitle[] = {38, 12, 8, 197, 94, 249, 93, 200, 100, 73, 116, 101, 107, 99, 97, 80, 100, 110, 101, 115, 155};

// __DEBUG__
// __CLOSE_PRINT__
//
//  StyleAction.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketTipAttachment.h"
#import "StyleAction.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"
//: #import "M80AttributedLabel.h"
#import "PopScrollView.h"
//: #import "FFFKitInfoFetchOption.h"
#import "Option.h"

//: @interface NTESRedPacketTipAttachment()
@interface StyleAction()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;

//: @end
@end

//: @implementation NTESRedPacketTipAttachment
@implementation StyleAction

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"sendPacketId" : self.sendPacketId,
                                  StringFromDownData(kStr_worriedTitle) : self.sendPacketId,
                                  //: @"openPacketId" : self.openPacketId,
                                  StringFromDownData(kStr_ironicallyValue) : self.openPacketId,
                                  //: @"redPacketId" : self.packetId,
                                  StringFromDownData(kStr_presenceData) : self.packetId,
                                  //: @"isGetDone" : self.isGetDone,
                                  StringFromDownData(kStr_aleBirdTubValue) : self.isGetDone,
                                  //: };
                                  };
    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacketTip), @"data": dictContent};
    NSDictionary *dict = @{StringFromDownData(kStr_commanderTitle): @(CustomMessageTypeRedPacketTip), StringFromDownData(kStr_pauseTitle): dictContent};

    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];

    //: return [[NSString alloc] initWithData:jsonData
    return [[NSString alloc] initWithData:jsonData
                                 //: encoding:NSUTF8StringEncoding];
                                 encoding:NSUTF8StringEncoding];
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)dataPriority:(NIMMessage *)message numericalTotal:(CGFloat)width{
    //: self.message = message;
    self.message = message;

    //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    PopScrollView *label = [[PopScrollView alloc] initWithFrame:CGRectZero];
    //: label.font = [UIFont systemFontOfSize:10];
    label.font = [UIFont systemFontOfSize:10];

    //: CGFloat messageWidth = width;
    CGFloat messageWidth = width;

    //: [label appendText:self.formatedMessage];
    [label telegram:self.userMessage];
    //: label.autoDetectLinks = NO;
    label.autoDetectLinks = NO;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;

    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [Notice fullKit].config.enable;
    //: CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    //: CGFloat cellPadding = 11.f;
    CGFloat cellPadding = 11.f;
    //: CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)formatedMessage{
- (NSString *)userMessage{
    //: NSString * showContent;
    NSString * showContent;
    //: NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    // 领取别人的红包
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    Option *option = [[Option alloc] init];
    //: option.message = self.message;
    option.message = self.message;

    //: if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    {
        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = @"你领取了自己的红包，你的红包已被领完".ntes_localized;
            showContent = StringFromDownData(kStr_bubbleContributorValue).titleLocalized;
        }
        //: else
        else
        {
            //: showContent = @"你领取了自己的红包".ntes_localized;
            showContent = StringFromDownData(kStr_composeValue).titleLocalized;
        }
    }
    //: else if ([currentUserId isEqualToString:self.openPacketId])
    else if ([currentUserId isEqualToString:self.openPacketId])
    {
        //: FFFKitInfo * sendUserInfo = [[MyUserKit sharedKit] infoByUser:self.sendPacketId option:option];
        OriginBy * sendUserInfo = [[Notice fullKit] value:self.sendPacketId manager:option];
        //: NSString * name = sendUserInfo.showName;
        NSString * name = sendUserInfo.showName;
        //: showContent = [NSString stringWithFormat:@"%@%@%@",
        showContent = [NSString stringWithFormat:@"%@%@%@",
                       //: @"你领取了".ntes_localized,
                       StringFromDownData(kStr_lemmaMessageValue).titleLocalized,
                       //: name,
                       name,
                       //: @"红包".ntes_localized];
                       @"红包".titleLocalized];
    }

    // 他人领取你的红包
    //: else if ([currentUserId isEqualToString:self.sendPacketId])
    else if ([currentUserId isEqualToString:self.sendPacketId])
    {
        //: FFFKitInfo * openUserInfo = [[MyUserKit sharedKit] infoByUser:self.openPacketId option:option];
        OriginBy * openUserInfo = [[Notice fullKit] value:self.openPacketId manager:option];
        //: NSString * name = openUserInfo.showName;
        NSString * name = openUserInfo.showName;

        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包，你的红包已被领完".ntes_localized];
                           StringFromDownData(kStr_ohoData).titleLocalized];
        }
        //: else
        else
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包".ntes_localized];
                           StringFromDownData(kStr_shoutData).titleLocalized];
        }
    }

    //: return [NSString stringWithFormat:@"  %@",showContent];
    return [NSString stringWithFormat:@"  %@",showContent];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)max:(NIMMessage *)message
{
    //: return UIEdgeInsetsZero;
    return UIEdgeInsetsZero;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)videoContent:(NIMMessage *)message
{
    //: return @"NTESSessionRedPacketTipContentView";
    return @"MessagePopControl";
}

//: - (BOOL)canBeForwarded
- (BOOL)eliteRecord
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)sendItem
{
    //: return NO;
    return NO;
}


//: @end
@end

Byte * DownDataToCache(Byte *data) {
    int albumWeaken = data[0];
    int optionCell = data[1];
    int sagFill = data[2];
    if (!albumWeaken) return data + sagFill;
    for (int i = 0; i < optionCell / 2; i++) {
        int begin = sagFill + i;
        int end = sagFill + optionCell - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[sagFill + optionCell] = 0;
    return data + sagFill;
}

NSString *StringFromDownData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DownDataToCache(data)];
}  
