//
//  NTESRedPacketTipAttachment.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

#import "NTESRedPacketTipAttachment.h"
#import "NTESSessionUtil.h"
#import "M80AttributedLabel.h"
#import "FFFKitInfoFetchOption.h"

@interface NTESRedPacketTipAttachment()

@property (nonatomic,weak) NIMMessage *message;

@end

@implementation NTESRedPacketTipAttachment

- (NSString *)encodeAttachment {
    
    NSDictionary *dictContent = @{
                                  CMRedPacketSendId  : self.sendPacketId,
                                  CMRedPacketOpenId  : self.openPacketId,
                                  CMRedPacketId      : self.packetId,
                                  CMRedPacketDone    : self.isGetDone,
                                  };
    NSDictionary *dict = @{CMType: @(CustomMessageTypeRedPacketTip), CMData: dictContent};
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                       options:0
                                                         error:nil];
    
    return [[NSString alloc] initWithData:jsonData
                                 encoding:NSUTF8StringEncoding];
}


- (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
    self.message = message;
    
    M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    label.font = [UIFont systemFontOfSize:Notification_Font_Size];
    
    CGFloat messageWidth  = width;
    
    [label appendText:self.formatedMessage];
    label.autoDetectLinks = NO;
    label.numberOfLines = 0;
    
    CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, CGFLOAT_MAX)];
    CGFloat cellPadding = 11.f;
    CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    return contentSize;
}


- (NSString *)formatedMessage{
    NSString * showContent;
    NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    // 领取别人的红包
    FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    option.message = self.message;
    
    if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    {
        if ([self.isGetDone boolValue])
        {
            showContent = @"你领取了自己的红包，你的红包已被领完".ntes_localized;
        }
        else
        {
            showContent = @"你领取了自己的红包".ntes_localized;
        }
    }
    else if ([currentUserId isEqualToString:self.openPacketId])
    {
        FFFKitInfo * sendUserInfo = [[MyUserKit sharedKit] infoByUser:self.sendPacketId option:option];
        NSString * name = sendUserInfo.showName;
        showContent = [NSString stringWithFormat:@"%@%@%@",
                       @"你领取了".ntes_localized,
                       name,
                       @"红包".ntes_localized];
    }
    
    // 他人领取你的红包
    else if ([currentUserId isEqualToString:self.sendPacketId])
    {
        FFFKitInfo * openUserInfo = [[MyUserKit sharedKit] infoByUser:self.openPacketId option:option];
        NSString * name = openUserInfo.showName;
        
        if ([self.isGetDone boolValue])
        {
            showContent = [NSString stringWithFormat:@"%@%@",
                           name,
                           @"领取了你的红包，你的红包已被领完".ntes_localized];
        }
        else
        {
            showContent = [NSString stringWithFormat:@"%@%@",
                           name,
                           @"领取了你的红包".ntes_localized];
        }
    }
    
    return [NSString stringWithFormat:@"  %@",showContent];
}

- (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
{
    return UIEdgeInsetsZero;
}

- (NSString *)cellContent:(NIMMessage *)message
{
    return @"NTESSessionRedPacketTipContentView";
}

- (BOOL)canBeForwarded
{
    return NO;
}

- (BOOL)canBeRevoked
{
    return NO;
}


@end
