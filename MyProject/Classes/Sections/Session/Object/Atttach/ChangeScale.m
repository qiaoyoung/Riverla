
#import <Foundation/Foundation.h>
typedef struct {
    Byte container;
    Byte *ofCru;
    unsigned int fillUp;
    bool hate;
	int gainExcited;
	int alliance;
	int bubbleBreathing;
} PoliticianData;

NSString *StringFromPoliticianData(PoliticianData *data);


//: custom_msg_pon
PoliticianData kStr_ankleName = (PoliticianData){128, (Byte []){227, 245, 243, 244, 239, 237, 223, 237, 243, 231, 223, 240, 239, 238, 174}, 14, false, 172, 54, 151};


//: custom_msg_ken
PoliticianData kStr_displayContent = (PoliticianData){66, (Byte []){33, 55, 49, 54, 45, 47, 29, 47, 49, 37, 29, 41, 39, 44, 139}, 14, false, 136, 161, 126};


//: type
PoliticianData kStr_monthlyValue = (PoliticianData){201, (Byte []){189, 176, 185, 172, 42}, 4, false, 2, 39, 140};


//: custom_msg_jan
PoliticianData kStr_supplierData = (PoliticianData){95, (Byte []){60, 42, 44, 43, 48, 50, 0, 50, 44, 56, 0, 53, 62, 49, 90}, 14, false, 65, 133, 16};


//: data
PoliticianData kStr_comedyValue = (PoliticianData){87, (Byte []){51, 54, 35, 54, 194}, 4, false, 159, 229, 3};


//: value
PoliticianData kStr_toughValue = (PoliticianData){95, (Byte []){41, 62, 51, 42, 58, 238}, 5, false, 137, 145, 210};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeScale.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESJanKenPonAttachment.h"
#import "ChangeScale.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"

//: @implementation NTESJanKenPonAttachment
@implementation ChangeScale

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeJanKenPon),
    NSDictionary *dict = @{StringFromPoliticianData(&kStr_monthlyValue) : @(CustomMessageTypeJanKenPon),
                           //: @"data" : @{@"value":@(self.value)}};
                           StringFromPoliticianData(&kStr_comedyValue) : @{StringFromPoliticianData(&kStr_toughValue):@(self.value)}};
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
- (NSString *)videoContent:(NIMMessage *)message{
    //: return @"NTESSessionJankenponContentView";
    return @"BackgroundIconTextView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)dataPriority:(NIMMessage *)message numericalTotal:(CGFloat)width{

    //: return self.showCoverImage.size;
    return self.showCoverImage.size;
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)max:(NIMMessage *)message
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
                image = [UIImage imageNamed:StringFromPoliticianData(&kStr_supplierData)];
                //: break;
                break;
            //: case CustomJanKenPonValueKen:
            case CustomJanKenPonValueKen:
                //: image = [UIImage imageNamed:@"custom_msg_ken"];
                image = [UIImage imageNamed:StringFromPoliticianData(&kStr_displayContent)];
                //: break;
                break;
            //: case CustomJanKenPonValuePon:
            case CustomJanKenPonValuePon:
                //: image = [UIImage imageNamed:@"custom_msg_pon"];
                image = [UIImage imageNamed:StringFromPoliticianData(&kStr_ankleName)];
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
- (BOOL)sendItem
{
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded
- (BOOL)eliteRecord
{
    //: return YES;
    return YES;
}

//: - (BOOL)canDisplayBubbleBackground:(NIMMessage *)message
- (BOOL)shoulded:(NIMMessage *)message
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

Byte *PoliticianDataToByte(PoliticianData *data) {
    if (data->hate) return data->ofCru;
    for (int i = 0; i < data->fillUp; i++) {
        data->ofCru[i] ^= data->container;
    }
    data->ofCru[data->fillUp] = 0;
    data->hate = true;
	if (data->fillUp >= 3) {
		data->gainExcited = data->ofCru[0];
		data->alliance = data->ofCru[1];
		data->bubbleBreathing = data->ofCru[2];
	}
    return data->ofCru;
}

NSString *StringFromPoliticianData(PoliticianData *data) {
    return [NSString stringWithUTF8String:(char *)PoliticianDataToByte(data)];
}
