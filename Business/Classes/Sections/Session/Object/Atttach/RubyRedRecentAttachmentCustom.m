
#import <Foundation/Foundation.h>

NSString *StringFromSpeakData(Byte *data);


//: redPacketSendID
Byte kStr_pursueValue[] = {84, 15, 9, 93, 120, 132, 172, 215, 21, 68, 73, 100, 110, 101, 83, 116, 101, 107, 99, 97, 80, 100, 101, 114, 5};


//: redPacketId
Byte kStr_hateMessageValue[] = {26, 11, 9, 17, 208, 13, 227, 240, 193, 100, 73, 116, 101, 107, 99, 97, 80, 100, 101, 114, 230};


//: title
Byte kStr_gloryTitle[] = {62, 5, 5, 218, 36, 101, 108, 116, 105, 116, 94};


//: type
Byte kStr_respectContent[] = {76, 4, 10, 31, 176, 103, 136, 200, 221, 214, 101, 112, 121, 116, 199};


//: data
Byte kStr_tapNameVacationValue[] = {47, 4, 8, 118, 89, 128, 76, 168, 97, 116, 97, 100, 149};


//: content
Byte kStr_surgeBelieValue[] = {4, 7, 6, 78, 161, 215, 116, 110, 101, 116, 110, 111, 99, 6};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RubyRedRecentAttachmentCustom.m
//  NIM
//
//  Created by chris on 2017/7/14.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketAttachment.h"
#import "RubyRedRecentAttachmentCustom.h"

//: @implementation NTESRedPacketAttachment
@implementation RubyRedRecentAttachmentCustom

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"title" : self.title,
                                  StringFromSpeakData(kStr_gloryTitle) : self.title,
                                  //: @"content" : self.content,
                                  StringFromSpeakData(kStr_surgeBelieValue) : self.content,
                                  //: @"redPacketId" : self.redPacketId,
                                  StringFromSpeakData(kStr_hateMessageValue) : self.redPacketId,
                                  //: @"redPacketSendID" : self.sendID
                                  StringFromSpeakData(kStr_pursueValue) : self.sendID
                                 //: };
                                 };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacket), @"data": dictContent};
    NSDictionary *dict = @{StringFromSpeakData(kStr_respectContent): @(CustomMessageTypeRedPacket), StringFromSpeakData(kStr_tapNameVacationValue): dictContent};
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


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)dataPriority:(NIMMessage *)message numericalTotal:(CGFloat)width {
    //: return CGSizeMake(150, 165);
    return CGSizeMake(150, 165);
}


//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)max:(NIMMessage *)message {
    //: CGFloat bubblePaddingForImage = 3.f;
    CGFloat bubblePaddingForImage = 3.f;
    //: CGFloat bubbleArrowWidthForImage = 5.f;
    CGFloat bubbleArrowWidthForImage = 5.f;
    //: if (message.isOutgoingMsg) {
    if (message.isOutgoingMsg) {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
    //: }else{
    }else{
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage, bubblePaddingForImage,bubblePaddingForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage, bubblePaddingForImage,bubblePaddingForImage);
    }
}

//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)videoContent:(NIMMessage *)message{
   //: return @"NTESSessionRedPacketContentView";
   return @"ColourationView";
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

Byte * SpeakDataToCache(Byte *data) {
    int replacementModel = data[0];
    int leadingLast = data[1];
    int leasedFocus = data[2];
    if (!replacementModel) return data + leasedFocus;
    for (int i = 0; i < leadingLast / 2; i++) {
        int begin = leasedFocus + i;
        int end = leasedFocus + leadingLast - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[leasedFocus + leadingLast] = 0;
    return data + leasedFocus;
}

NSString *StringFromSpeakData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SpeakDataToCache(data)];
}  
