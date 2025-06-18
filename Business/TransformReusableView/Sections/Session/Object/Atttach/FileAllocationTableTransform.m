
#import <Foundation/Foundation.h>

NSString *StringFromPathData(Byte *data);        


//: url
Byte kStr_agueValue[] = {17, 3, 22, 11, 229, 103, 22, 252, 61, 164, 178, 95, 92, 86, 84};


//: HEIC
Byte kStr_selectedTenderRecordingData[] = {71, 4, 48, 12, 189, 36, 90, 238, 167, 38, 85, 5, 24, 21, 25, 19, 106};


//: session_snapchat_other_unread
Byte kStr_buyerValue[] = {64, 29, 63, 4, 52, 38, 52, 52, 42, 48, 47, 32, 52, 47, 34, 49, 36, 41, 34, 53, 32, 48, 53, 41, 38, 51, 32, 54, 47, 51, 38, 34, 37, 34};


//: session_snapchat_self_unread
Byte kStr_disableBudgeValue[] = {51, 28, 22, 9, 53, 66, 238, 8, 70, 93, 79, 93, 93, 83, 89, 88, 73, 93, 88, 75, 90, 77, 82, 75, 94, 73, 93, 79, 86, 80, 73, 95, 88, 92, 79, 75, 78, 144};


//: jpg
Byte kStr_itName[] = {72, 3, 96, 5, 206, 10, 16, 7, 76};


//: md5
Byte kStr_murderTitle[] = {46, 3, 7, 6, 69, 116, 102, 93, 46, 255};


//: fired
Byte kStr_stairValue[] = {62, 5, 92, 9, 209, 199, 59, 236, 56, 10, 13, 22, 9, 8, 97};


//: session_snapchat_self_readed
Byte kStr_climbItemContent[] = {6, 28, 49, 5, 176, 66, 52, 66, 66, 56, 62, 61, 46, 66, 61, 48, 63, 50, 55, 48, 67, 46, 66, 52, 59, 53, 46, 65, 52, 48, 51, 52, 51, 113};


//: type
Byte kStr_viewShowName[] = {81, 4, 52, 10, 225, 172, 141, 219, 47, 36, 64, 69, 60, 49, 189};


//: data
Byte kStr_mistakeTitle[] = {17, 4, 68, 12, 252, 24, 23, 214, 233, 176, 13, 20, 32, 29, 48, 29, 43};


//: session_snapchat_other_readed
Byte kStr_romanceCountellectualData[] = {87, 29, 18, 4, 97, 83, 97, 97, 87, 93, 92, 77, 97, 92, 79, 94, 81, 86, 79, 98, 77, 93, 98, 86, 83, 96, 77, 96, 83, 79, 82, 83, 82, 121};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SnapchatAttachment.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSnapchatAttachment.h"
#import "FileAllocationTableTransform.h"
//: #import "NTESFileLocationHelper.h"
#import "MessageSearchedHelper.h"
//: #import "NSData+NTES.h"
#import "NSData+Closes.h"
//: #import "NTESSessionUtil.h"
#import "ArrayUtil.h"

//: @interface NTESSnapchatAttachment()
@interface FileAllocationTableTransform()

//: @property (nonatomic,assign) BOOL isFromMe;
@property (nonatomic,assign) BOOL isFromMe;

//: @end
@end

//: @implementation NTESSnapchatAttachment
@implementation FileAllocationTableTransform

//: - (void)setImage:(UIImage *)image
- (void)setMessage:(UIImage *)image
{
    //: NSData *data = UIImageJPEGRepresentation(image, 0.3);
    NSData *data = UIImageJPEGRepresentation(image, 0.3);
    //: NSString *md5= [data MD5String];
    NSString *md5= [data subMessage];
    //: self.md5 = md5;
    self.md5 = md5;

    //: [data writeToFile:[self filepath]
    [data writeToFile:[self label]
           //: atomically:YES];
           atomically:YES];
}

//: - (void)setImageFilePath:(NSString *)path
- (void)setNameAllowVideo:(NSString *)path
{
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
        //: NSData *jpgData = nil;
        NSData *jpgData = nil;
        //: if ([path.pathExtension.uppercaseString isEqualToString:@"HEIC"]) {
        if ([path.pathExtension.uppercaseString isEqualToString:StringFromPathData(kStr_selectedTenderRecordingData)]) {
            //: CIImage *ciImage = [CIImage imageWithContentsOfURL:[NSURL fileURLWithPath:path]];
            CIImage *ciImage = [CIImage imageWithContentsOfURL:[NSURL fileURLWithPath:path]];
                                //: CIContext *context = [CIContext context];
                                CIContext *context = [CIContext context];
            //: jpgData = [context JPEGRepresentationOfImage:ciImage colorSpace:ciImage.colorSpace options:@{}];
            jpgData = [context JPEGRepresentationOfImage:ciImage colorSpace:ciImage.colorSpace options:@{}];
        //: } else {
        } else {
            //: jpgData = [NSData dataWithContentsOfFile:path];
            jpgData = [NSData dataWithContentsOfFile:path];
        }

        //: self.md5 = [jpgData MD5String];
        self.md5 = [jpgData subMessage];

        //: [jpgData writeToFile:[self filepath]
        [jpgData writeToFile:[self label]
               //: atomically:YES];
               atomically:YES];
     }
}

//: - (void)setIsFired:(BOOL)isFired{
- (void)setIsFired:(BOOL)isFired{
    //: if (_isFired != isFired) {
    if (_isFired != isFired) {
        //: _isFired = isFired;
        _isFired = isFired;
        //: [self updateCover];
        [self detailViewMessage];
    }
}


//: - (NSString *)filepath
- (NSString *)label
{
    //: NSString *filename = [_md5 stringByAppendingFormat:@".%@",(@"jpg")];
    NSString *filename = [_md5 stringByAppendingFormat:@".%@",(StringFromPathData(kStr_itName))];
    //: return [NTESFileLocationHelper filepathForImage:filename];
    return [MessageSearchedHelper system:filename];
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)compartment:(NIMMessage *)message{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: return @"NTESSessionSnapchatContentView";
    return @"ObstructContentView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)with:(NIMMessage *)message viewPerimeter:(CGFloat)width{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: CGSize size = self.showCoverImage.size;
    CGSize size = self.showCoverImage.size;
    //: CGFloat customSnapMessageImageRightToText = 5;
    CGFloat customSnapMessageImageRightToText = 5;
    //: return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
    return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)assemblageTitleInsets:(NIMMessage *)message
{
    //: CGFloat bubblePaddingForImage = 3.f;
    CGFloat bubblePaddingForImage = 3.f;
    //: CGFloat bubbleArrowWidthForImage = -4.f;
    CGFloat bubbleArrowWidthForImage = -4.f;
    //: if (message.isOutgoingMsg) {
    if (message.isOutgoingMsg) {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
    //: } else {
    } else {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage + 4, bubblePaddingForImage,bubblePaddingForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage + 4, bubblePaddingForImage,bubblePaddingForImage);
    }
}

//: - (void)setIsFromMe:(BOOL)isFromMe{
- (void)setIsFromMe:(BOOL)isFromMe{
    //: if (_isFromMe != isFromMe) {
    if (_isFromMe != isFromMe) {
        //: _isFromMe = isFromMe;
        _isFromMe = isFromMe;
        //: [self updateCover];
        [self detailViewMessage];
    }
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
    //: return YES;
    return YES;
}



//: #pragma NIMCustomAttachment
#pragma NIMCustomAttachment
//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *data = [NSMutableDictionary dictionary];
    NSMutableDictionary *data = [NSMutableDictionary dictionary];
    //: [dict setObject:@(CustomMessageTypeSnapchat) forKey:@"type"];
    [dict setObject:@(CustomMessageTypeSnapchat) forKey:StringFromPathData(kStr_viewShowName)];
    //: [data setObject:_md5?_md5:@"" forKey:@"md5"];
    [data setObject:_md5?_md5:@"" forKey:StringFromPathData(kStr_murderTitle)];
    //: [data setObject:@(_isFired) forKey:@"fired"];
    [data setObject:@(_isFired) forKey:StringFromPathData(kStr_stairValue)];
    //: if ([_url length])
    if ([_url length])
    {
        //: [data setObject:_url forKey:@"url"];
        [data setObject:_url forKey:StringFromPathData(kStr_agueValue)];
    }
    //: [dict setObject:data forKey:@"data"];
    [dict setObject:data forKey:StringFromPathData(kStr_mistakeTitle)];

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


//: #pragma mark - 实现文件上传需要接口
#pragma mark - 实现文件上传需要接口
//: - (BOOL)attachmentNeedsUpload
- (BOOL)attachmentNeedsUpload
{
    //: return [_url length] == 0;
    return [_url length] == 0;
}

//: - (NSString *)attachmentPathForUploading
- (NSString *)attachmentPathForUploading
{
    //: return [self filepath];
    return [self label];
}

//: - (void)updateAttachmentURL:(NSString *)urlString
- (void)updateAttachmentURL:(NSString *)urlString
{
    //: self.url = urlString;
    self.url = urlString;
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)updateCover{
- (void)detailViewMessage{
    //: UIImage *image;
    UIImage *image;
    //: if (!self.isFromMe) {
    if (!self.isFromMe) {
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_other_readed"];
            image = [UIImage imageNamed:StringFromPathData(kStr_romanceCountellectualData)];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_other_unread"];
            image = [UIImage imageNamed:StringFromPathData(kStr_buyerValue)];
        }
    //: }else{
    }else{
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_self_readed"];
            image = [UIImage imageNamed:StringFromPathData(kStr_climbItemContent)];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_self_unread"];
            image = [UIImage imageNamed:StringFromPathData(kStr_disableBudgeValue)];
        }
    }
    //: self.showCoverImage = image;
    self.showCoverImage = image;
}

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: [self updateCover];
        [self detailViewMessage];
    }
    //: return _showCoverImage;
    return _showCoverImage;
}

//: #pragma mark - https
#pragma mark - https
//: - (NSString *)url
- (NSString *)url
{
    //: return [_url length] ?
    return [_url length] ?
    //: [[[NIMSDK sharedSDK] resourceManager] normalizeURLString:_url] : nil;
    [[[NIMSDK sharedSDK] resourceManager] normalizeURLString:_url] : nil;
}

//: @end
@end

Byte * PathDataToCache(Byte *data) {
    int surgeryShow = data[0];
    int personal = data[1];
    Byte rotationalLatency = data[2];
    int electronicsStyle = data[3];
    if (!surgeryShow) return data + electronicsStyle;
    for (int i = electronicsStyle; i < electronicsStyle + personal; i++) {
        int value = data[i] + rotationalLatency;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[electronicsStyle + personal] = 0;
    return data + electronicsStyle;
}

NSString *StringFromPathData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PathDataToCache(data)];
}
