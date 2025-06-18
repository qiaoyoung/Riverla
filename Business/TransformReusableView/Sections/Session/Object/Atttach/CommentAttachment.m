
#import <Foundation/Foundation.h>

NSString *StringFromInstitutionalData(Byte *data);        


//: 领取了你的红包
Byte kStr_congressData[] = {3, 21, 24, 6, 232, 119, 209, 138, 110, 205, 119, 126, 204, 162, 110, 204, 165, 136, 207, 130, 108, 207, 162, 138, 205, 116, 109, 78};


//: 你领取了自己的红包
Byte kStr_includingData[] = {61, 27, 77, 4, 151, 112, 83, 156, 85, 57, 152, 66, 73, 151, 109, 57, 155, 58, 93, 152, 106, 100, 154, 77, 55, 154, 109, 85, 152, 63, 56, 48};


//: data
Byte kStr_remoteViewTitle[] = {10, 4, 80, 5, 139, 20, 17, 36, 17, 86};


//: sendPacketId
Byte kStr_friendshipFileName[] = {75, 12, 48, 5, 235, 67, 53, 62, 52, 32, 49, 51, 59, 53, 68, 25, 52, 26};


//: 你领取了自己的红包，你的红包已被领完
Byte kStr_withHalloElectronicsText[] = {39, 54, 55, 14, 175, 81, 79, 58, 172, 239, 248, 102, 196, 63, 173, 134, 105, 178, 107, 79, 174, 88, 95, 173, 131, 79, 177, 80, 115, 174, 128, 122, 176, 99, 77, 176, 131, 107, 174, 85, 78, 184, 133, 85, 173, 134, 105, 176, 99, 77, 176, 131, 107, 174, 85, 78, 174, 128, 123, 177, 107, 116, 178, 107, 79, 174, 119, 85, 41};


//: 领取了你的红包，你的红包已被领完
Byte kStr_ownContent[] = {88, 48, 47, 9, 145, 24, 20, 81, 193, 186, 115, 87, 182, 96, 103, 181, 139, 87, 181, 142, 113, 184, 107, 85, 184, 139, 115, 182, 93, 86, 192, 141, 93, 181, 142, 113, 184, 107, 85, 184, 139, 115, 182, 93, 86, 182, 136, 131, 185, 115, 124, 186, 115, 87, 182, 127, 93, 39};


//: openPacketId
Byte kStr_spectrumText[] = {52, 12, 61, 7, 129, 109, 3, 50, 51, 40, 49, 19, 36, 38, 46, 40, 55, 12, 39, 139};


//: 你领取了
Byte kStr_withInstitutionalData[] = {13, 12, 12, 6, 16, 241, 216, 177, 148, 221, 150, 122, 217, 131, 138, 216, 174, 122, 174};


//: type
Byte kStr_blueMakeupData[] = {92, 4, 58, 12, 237, 152, 250, 160, 140, 7, 179, 134, 58, 63, 54, 43, 197};


//: redPacketId
Byte kStr_railTitle[] = {39, 11, 13, 12, 52, 7, 124, 253, 153, 148, 77, 120, 101, 88, 87, 67, 84, 86, 94, 88, 103, 60, 87, 147};


//: isGetDone
Byte kStr_nagData[] = {17, 9, 71, 6, 189, 107, 34, 44, 0, 30, 45, 253, 40, 39, 30, 182};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentAttachment.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketTipAttachment.h"
#import "CommentAttachment.h"
//: #import "NTESSessionUtil.h"
#import "ArrayUtil.h"
//: #import "M80AttributedLabel.h"
#import "ShowTitleView.h"
//: #import "FFFKitInfoFetchOption.h"
#import "EmptyKey.h"

//: @interface NTESRedPacketTipAttachment()
@interface CommentAttachment()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;

//: @end
@end

//: @implementation NTESRedPacketTipAttachment
@implementation CommentAttachment

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"sendPacketId" : self.sendPacketId,
                                  StringFromInstitutionalData(kStr_friendshipFileName) : self.sendPacketId,
                                  //: @"openPacketId" : self.openPacketId,
                                  StringFromInstitutionalData(kStr_spectrumText) : self.openPacketId,
                                  //: @"redPacketId" : self.packetId,
                                  StringFromInstitutionalData(kStr_railTitle) : self.packetId,
                                  //: @"isGetDone" : self.isGetDone,
                                  StringFromInstitutionalData(kStr_nagData) : self.isGetDone,
                                  //: };
                                  };
    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacketTip), @"data": dictContent};
    NSDictionary *dict = @{StringFromInstitutionalData(kStr_blueMakeupData): @(CustomMessageTypeRedPacketTip), StringFromInstitutionalData(kStr_remoteViewTitle): dictContent};

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
- (CGSize)with:(NIMMessage *)message viewPerimeter:(CGFloat)width{
    //: self.message = message;
    self.message = message;

    //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    ShowTitleView *label = [[ShowTitleView alloc] initWithFrame:CGRectZero];
    //: label.font = [UIFont systemFontOfSize:10];
    label.font = [UIFont systemFontOfSize:10];

    //: CGFloat messageWidth = width;
    CGFloat messageWidth = width;

    //: [label appendText:self.formatedMessage];
    [label cell:self.closeBar];
    //: label.autoDetectLinks = NO;
    label.autoDetectLinks = NO;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;

    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [Afterwards blue].config.easyLay;
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
- (NSString *)closeBar{
    //: NSString * showContent;
    NSString * showContent;
    //: NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    // 领取别人的红包
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    EmptyKey *option = [[EmptyKey alloc] init];
    //: option.message = self.message;
    option.message = self.message;

    //: if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    {
        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = @"你领取了自己的红包，你的红包已被领完".ntes_localized;
            showContent = StringFromInstitutionalData(kStr_withHalloElectronicsText).aboveMagnitude;
        }
        //: else
        else
        {
            //: showContent = @"你领取了自己的红包".ntes_localized;
            showContent = StringFromInstitutionalData(kStr_includingData).aboveMagnitude;
        }
    }
    //: else if ([currentUserId isEqualToString:self.openPacketId])
    else if ([currentUserId isEqualToString:self.openPacketId])
    {
        //: FFFKitInfo * sendUserInfo = [[MyUserKit sharedKit] infoByUser:self.sendPacketId option:option];
        MarginThanInfo * sendUserInfo = [[Afterwards blue] put:self.sendPacketId button:option];
        //: NSString * name = sendUserInfo.showName;
        NSString * name = sendUserInfo.showName;
        //: showContent = [NSString stringWithFormat:@"%@%@%@",
        showContent = [NSString stringWithFormat:@"%@%@%@",
                       //: @"你领取了".ntes_localized,
                       StringFromInstitutionalData(kStr_withInstitutionalData).aboveMagnitude,
                       //: name,
                       name,
                       //: @"红包".ntes_localized];
                       @"红包".aboveMagnitude];
    }

    // 他人领取你的红包
    //: else if ([currentUserId isEqualToString:self.sendPacketId])
    else if ([currentUserId isEqualToString:self.sendPacketId])
    {
        //: FFFKitInfo * openUserInfo = [[MyUserKit sharedKit] infoByUser:self.openPacketId option:option];
        MarginThanInfo * openUserInfo = [[Afterwards blue] put:self.openPacketId button:option];
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
                           StringFromInstitutionalData(kStr_ownContent).aboveMagnitude];
        }
        //: else
        else
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包".ntes_localized];
                           StringFromInstitutionalData(kStr_congressData).aboveMagnitude];
        }
    }

    //: return [NSString stringWithFormat:@"  %@",showContent];
    return [NSString stringWithFormat:@"  %@",showContent];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)assemblageTitleInsets:(NIMMessage *)message
{
    //: return UIEdgeInsetsZero;
    return UIEdgeInsetsZero;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)compartment:(NIMMessage *)message
{
    //: return @"NTESSessionRedPacketTipContentView";
    return @"MessageNameView";
}

//: - (BOOL)canBeForwarded
- (BOOL)color
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)circleRevoked
{
    //: return NO;
    return NO;
}


//: @end
@end

Byte * InstitutionalDataToCache(Byte *data) {
    int cryMy = data[0];
    int congress = data[1];
    Byte visualization = data[2];
    int rational = data[3];
    if (!cryMy) return data + rational;
    for (int i = rational; i < rational + congress; i++) {
        int value = data[i] + visualization;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[rational + congress] = 0;
    return data + rational;
}

NSString *StringFromInstitutionalData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)InstitutionalDataToCache(data)];
}
