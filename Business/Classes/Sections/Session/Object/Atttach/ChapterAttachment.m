
#import <Foundation/Foundation.h>

NSString *StringFromViewNervousData(Byte *data);


//: custom_msg_ken
Byte kStr_happilyText[] = {72, 14, 13, 13, 33, 131, 96, 227, 31, 57, 141, 189, 31, 112, 130, 128, 129, 124, 122, 108, 122, 128, 116, 108, 120, 114, 123, 66};


//: custom_msg_jan
Byte kStr_tacticTableText[] = {38, 14, 28, 6, 249, 128, 127, 145, 143, 144, 139, 137, 123, 137, 143, 131, 123, 134, 125, 138, 28};


//: data
Byte kStr_egoElectronicsData[] = {74, 4, 49, 10, 184, 30, 210, 82, 135, 23, 149, 146, 165, 146, 38};


//: custom_msg_pon
Byte kStr_integrationText[] = {11, 14, 46, 14, 35, 188, 77, 218, 41, 148, 126, 108, 151, 204, 145, 163, 161, 162, 157, 155, 141, 155, 161, 149, 141, 158, 157, 156, 229};


//: type
Byte kStr_happyText[] = {88, 4, 82, 4, 198, 203, 194, 183, 84};


//: value
Byte kStr_peakContent[] = {74, 5, 38, 13, 102, 101, 239, 129, 135, 246, 24, 60, 97, 156, 135, 146, 155, 139, 35};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChapterAttachment.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESJanKenPonAttachment.h"
#import "ChapterAttachment.h"
//: #import "NTESSessionUtil.h"
#import "ArrayUtil.h"

//: @implementation NTESJanKenPonAttachment
@implementation ChapterAttachment

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeJanKenPon),
    NSDictionary *dict = @{StringFromViewNervousData(kStr_happyText) : @(CustomMessageTypeJanKenPon),
                           //: @"data" : @{@"value":@(self.value)}};
                           StringFromViewNervousData(kStr_egoElectronicsData) : @{StringFromViewNervousData(kStr_peakContent):@(self.value)}};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }
    //: return content;
    return content;
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)compartment:(NIMMessage *)message{
    //: return @"NTESSessionJankenponContentView";
    return @"VanguardIndexControl";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)with:(NIMMessage *)message viewPerimeter:(CGFloat)width{

    //: return self.showCoverImage.size;
    return self.showCoverImage.size;
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)assemblageTitleInsets:(NIMMessage *)message
{
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: CGFloat bubbleMarginTopForImage = 15.f;
        CGFloat bubbleMarginTopForImage = 15.f;
        //: CGFloat bubbleMarginLeftForImage = 12.f;
        CGFloat bubbleMarginLeftForImage = 12.f;
        //: return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
        return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
    }
    //: else
    else
    {
        //: CGFloat bubbleMarginForImage = 3.f;
        CGFloat bubbleMarginForImage = 3.f;
        //: CGFloat bubbleArrowWidthForImage = 5.f;
        CGFloat bubbleArrowWidthForImage = 5.f;
        //: if (message.isOutgoingMsg) {
        if (message.isOutgoingMsg) {
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
        //: }else{
        }else{
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
        }
    }
}

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: UIImage *image;
        UIImage *image;
        //: switch (self.value) {
        switch (self.value) {
            //: case CustomJanKenPonValueJan:
            case CustomJanKenPonValueJan:
                //: image = [UIImage imageNamed:@"custom_msg_jan"];
                image = [UIImage imageNamed:StringFromViewNervousData(kStr_tacticTableText)];
                //: break;
                break;
            //: case CustomJanKenPonValueKen:
            case CustomJanKenPonValueKen:
                //: image = [UIImage imageNamed:@"custom_msg_ken"];
                image = [UIImage imageNamed:StringFromViewNervousData(kStr_happilyText)];
                //: break;
                break;
            //: case CustomJanKenPonValuePon:
            case CustomJanKenPonValuePon:
                //: image = [UIImage imageNamed:@"custom_msg_pon"];
                image = [UIImage imageNamed:StringFromViewNervousData(kStr_integrationText)];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
        //: _showCoverImage = image;
        _showCoverImage = image;
    }
    //: return _showCoverImage;
    return _showCoverImage;
}

//: - (BOOL)canBeRevoked
- (BOOL)circleRevoked
{
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded
- (BOOL)color
{
    //: return YES;
    return YES;
}

//: - (BOOL)canDisplayBubbleBackground:(NIMMessage *)message
- (BOOL)removeBackground:(NIMMessage *)message
{
    //: NIMSession *session = message.session;
    NIMSession *session = message.session;
    //: if (session.sessionType == NIMSessionTypeChatroom)
    if (session.sessionType == NIMSessionTypeChatroom)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: @end
@end

Byte * ViewNervousDataToCache(Byte *data) {
    int gala = data[0];
    int galaBriefly = data[1];
    Byte day = data[2];
    int mixtureAgue = data[3];
    if (!gala) return data + mixtureAgue;
    for (int i = mixtureAgue; i < mixtureAgue + galaBriefly; i++) {
        int value = data[i] - day;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[mixtureAgue + galaBriefly] = 0;
    return data + mixtureAgue;
}

NSString *StringFromViewNervousData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ViewNervousDataToCache(data)];
}
