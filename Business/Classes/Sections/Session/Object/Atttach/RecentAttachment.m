
#import <Foundation/Foundation.h>

NSString *StringFromNeitherTableData(Byte *data);


//: data
Byte kStr_recordingVideoName[] = {77, 4, 13, 180, 221, 65, 161, 87, 141, 75, 221, 21, 102, 97, 116, 97, 100, 234};


//: redPacketSendID
Byte kStr_cottaText[] = {2, 15, 6, 186, 88, 21, 68, 73, 100, 110, 101, 83, 116, 101, 107, 99, 97, 80, 100, 101, 114, 95};


//: redPacketId
Byte kStr_complexImageFactionValue[] = {32, 11, 6, 7, 147, 150, 100, 73, 116, 101, 107, 99, 97, 80, 100, 101, 114, 32};


//: title
Byte kStr_sessionParkTaiValue[] = {77, 5, 6, 87, 61, 43, 101, 108, 116, 105, 116, 157};


//: content
Byte kStr_climbSeventhName[] = {93, 7, 11, 124, 221, 126, 46, 241, 226, 93, 139, 116, 110, 101, 116, 110, 111, 99, 156};


//: type
Byte kStr_angelJourneyContent[] = {31, 4, 13, 70, 36, 117, 61, 75, 117, 90, 137, 241, 90, 101, 112, 121, 116, 22};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RecentAttachment.m
//  NIM
//
//  Created by chris on 2017/7/14.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketAttachment.h"
#import "RecentAttachment.h"

//: @implementation NTESRedPacketAttachment
@implementation RecentAttachment

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"title" : self.title,
                                  StringFromNeitherTableData(kStr_sessionParkTaiValue) : self.title,
                                  //: @"content" : self.content,
                                  StringFromNeitherTableData(kStr_climbSeventhName) : self.content,
                                  //: @"redPacketId" : self.redPacketId,
                                  StringFromNeitherTableData(kStr_complexImageFactionValue) : self.redPacketId,
                                  //: @"redPacketSendID" : self.sendID
                                  StringFromNeitherTableData(kStr_cottaText) : self.sendID
                                 //: };
                                 };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacket), @"data": dictContent};
    NSDictionary *dict = @{StringFromNeitherTableData(kStr_angelJourneyContent): @(CustomMessageTypeRedPacket), StringFromNeitherTableData(kStr_recordingVideoName): dictContent};
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
- (CGSize)with:(NIMMessage *)message viewPerimeter:(CGFloat)width {
    //: return CGSizeMake(150, 165);
    return CGSizeMake(150, 165);
}


//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)assemblageTitleInsets:(NIMMessage *)message {
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
- (NSString *)compartment:(NIMMessage *)message{
   //: return @"NTESSessionRedPacketContentView";
   return @"MessageControl";
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

Byte * NeitherTableDataToCache(Byte *data) {
    int reciprocality = data[0];
    int cry = data[1];
    int shrinkView = data[2];
    if (!reciprocality) return data + shrinkView;
    for (int i = 0; i < cry / 2; i++) {
        int begin = shrinkView + i;
        int end = shrinkView + cry - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[shrinkView + cry] = 0;
    return data + shrinkView;
}

NSString *StringFromNeitherTableData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)NeitherTableDataToCache(data)];
}  
