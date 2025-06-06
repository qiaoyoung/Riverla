
#import <Foundation/Foundation.h>

NSString *StringFromTwinLastData(Byte *data);


//: type
Byte kStr_expectationTrailDominateValue[] = {8, 4, 9, 132, 117, 216, 16, 139, 215, 101, 112, 121, 116, 253};


//: content
Byte kStr_lungData[] = {15, 7, 10, 172, 132, 155, 182, 194, 239, 226, 116, 110, 101, 116, 110, 111, 99, 189};


//: data
Byte kStr_willLimitData[] = {68, 4, 11, 182, 5, 140, 26, 158, 63, 193, 57, 97, 116, 97, 100, 176};


//: personCardId
Byte kStr_dramaticData[] = {77, 12, 9, 119, 127, 68, 176, 6, 168, 100, 73, 100, 114, 97, 67, 110, 111, 115, 114, 101, 112, 155};


//: title
Byte kStr_hateValue[] = {91, 5, 9, 155, 107, 54, 17, 198, 31, 101, 108, 116, 105, 116, 186};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChildApp.m
//  NIM
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESShareCardAttachment.h"
#import "ChildApp.h"

//: @implementation NTESShareCardAttachment
@implementation ChildApp

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
        //: @"title" : self.title?:@"",
        StringFromTwinLastData(kStr_hateValue) : self.title?:@"",
        //: @"content" : self.content?:@"",
        StringFromTwinLastData(kStr_lungData) : self.content?:@"",
        //: @"personCardId" : self.personCardId?:@"",
        StringFromTwinLastData(kStr_dramaticData) : self.personCardId?:@"",
        //: @"type" : self.type?:@"0",
        StringFromTwinLastData(kStr_expectationTrailDominateValue) : self.type?:@"0",
    //: };
    };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeCard), @"data": dictContent};
    NSDictionary *dict = @{StringFromTwinLastData(kStr_expectationTrailDominateValue): @(CustomMessageTypeCard), StringFromTwinLastData(kStr_willLimitData): dictContent};
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


//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)nameRecordMail:(CGFloat)cellWidth message:(NIMMessage *)message
{
//    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];

    //: CGSize contentSize = CGSizeMake(170, 36);
    CGSize contentSize = CGSizeMake(170, 36);
    //: return contentSize;
    return contentSize;
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)dataPriority:(NIMMessage *)message numericalTotal:(CGFloat)width {
    //: return CGSizeMake(170, 36);
    return CGSizeMake(170, 36);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)videoContent:(NIMMessage *)message
{
    //: return @"FFFSessionShareCardContentView";
    return @"RestoreControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)max:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Notice fullKit].config sizeGroupBar:message].contentInsets;
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

Byte * TwinLastDataToCache(Byte *data) {
    int assault = data[0];
    int expectation = data[1];
    int venture = data[2];
    if (!assault) return data + venture;
    for (int i = 0; i < expectation / 2; i++) {
        int begin = venture + i;
        int end = venture + expectation - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[venture + expectation] = 0;
    return data + venture;
}

NSString *StringFromTwinLastData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TwinLastDataToCache(data)];
}  
