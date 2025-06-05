
#import <Foundation/Foundation.h>
typedef struct {
    Byte overAgain;
    Byte *drink;
    unsigned int basically;
    bool toStrengthen;
	int cottaColor;
} TotalernalAngleData;

NSString *StringFromTotalernalAngleData(TotalernalAngleData *data);


//: data
TotalernalAngleData kStr_strangeName = (TotalernalAngleData){45, (Byte []){73, 76, 89, 76, 41}, 4, false, 222};


//: url
TotalernalAngleData kStr_effectivenessStareValue = (TotalernalAngleData){60, (Byte []){73, 78, 80, 132}, 3, false, 136};


//: type
TotalernalAngleData kStr_assistantName = (TotalernalAngleData){26, (Byte []){110, 99, 106, 127, 83}, 4, false, 89};


//: session_snapchat_other_unread
TotalernalAngleData kStr_inquiryBirdValue = (TotalernalAngleData){8, (Byte []){123, 109, 123, 123, 97, 103, 102, 87, 123, 102, 105, 120, 107, 96, 105, 124, 87, 103, 124, 96, 109, 122, 87, 125, 102, 122, 109, 105, 108, 68}, 29, false, 69};


//: fired
TotalernalAngleData kStr_gainName = (TotalernalAngleData){36, (Byte []){66, 77, 86, 65, 64, 237}, 5, false, 216};


//: jpg
TotalernalAngleData kStr_likeShowValue = (TotalernalAngleData){255, (Byte []){149, 143, 152, 175}, 3, false, 97};


//: md5
TotalernalAngleData kStr_opponentName = (TotalernalAngleData){140, (Byte []){225, 232, 185, 232}, 3, false, 15};


//: session_snapchat_other_readed
TotalernalAngleData kStr_possessionData = (TotalernalAngleData){178, (Byte []){193, 215, 193, 193, 219, 221, 220, 237, 193, 220, 211, 194, 209, 218, 211, 198, 237, 221, 198, 218, 215, 192, 237, 192, 215, 211, 214, 215, 214, 137}, 29, false, 118};


//: HEIC
TotalernalAngleData kStr_approvalContent = (TotalernalAngleData){199, (Byte []){143, 130, 142, 132, 63}, 4, false, 244};


//: session_snapchat_self_unread
TotalernalAngleData kStr_announcementValue = (TotalernalAngleData){214, (Byte []){165, 179, 165, 165, 191, 185, 184, 137, 165, 184, 183, 166, 181, 190, 183, 162, 137, 165, 179, 186, 176, 137, 163, 184, 164, 179, 183, 178, 26}, 28, false, 183};


//: session_snapchat_self_readed
TotalernalAngleData kStr_addTactTitle = (TotalernalAngleData){85, (Byte []){38, 48, 38, 38, 60, 58, 59, 10, 38, 59, 52, 37, 54, 61, 52, 33, 10, 38, 48, 57, 51, 10, 39, 48, 52, 49, 48, 49, 242}, 28, false, 113};

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
#import "PresentAttachment.h"
//: #import "NTESFileLocationHelper.h"
#import "TrademarkByScaleHelper.h"
//: #import "NSData+NTES.h"
#import "NSData+InfoByMargin.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"

//: @interface NTESSnapchatAttachment()
@interface PresentAttachment()

//: @property (nonatomic,assign) BOOL isFromMe;
@property (nonatomic,assign) BOOL isFromMe;

//: @end
@end

//: @implementation NTESSnapchatAttachment
@implementation PresentAttachment

//: - (void)setImage:(UIImage *)image
- (void)setGreenShould:(UIImage *)image
{
    //: NSData *data = UIImageJPEGRepresentation(image, 0.3);
    NSData *data = UIImageJPEGRepresentation(image, 0.3);
    //: NSString *md5= [data MD5String];
    NSString *md5= [data sound];
    //: self.md5 = md5;
    self.md5 = md5;

    //: [data writeToFile:[self filepath]
    [data writeToFile:[self session]
           //: atomically:YES];
           atomically:YES];
}

//: - (void)setImageFilePath:(NSString *)path
- (void)setNotice:(NSString *)path
{
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
        //: NSData *jpgData = nil;
        NSData *jpgData = nil;
        //: if ([path.pathExtension.uppercaseString isEqualToString:@"HEIC"]) {
        if ([path.pathExtension.uppercaseString isEqualToString:StringFromTotalernalAngleData(&kStr_approvalContent)]) {
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
        self.md5 = [jpgData sound];

        //: [jpgData writeToFile:[self filepath]
        [jpgData writeToFile:[self session]
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
        [self info];
    }
}


//: - (NSString *)filepath
- (NSString *)session
{
    //: NSString *filename = [_md5 stringByAppendingFormat:@".%@",(@"jpg")];
    NSString *filename = [_md5 stringByAppendingFormat:@".%@",(StringFromTotalernalAngleData(&kStr_likeShowValue))];
    //: return [NTESFileLocationHelper filepathForImage:filename];
    return [TrademarkByScaleHelper gammaHydroxybutyrate:filename];
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)videoContent:(NIMMessage *)message{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: return @"NTESSessionSnapchatContentView";
    return @"ShutConferenceControl";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)dataPriority:(NIMMessage *)message numericalTotal:(CGFloat)width{
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
- (UIEdgeInsets)max:(NIMMessage *)message
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
        [self info];
    }
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
    [dict setObject:@(CustomMessageTypeSnapchat) forKey:StringFromTotalernalAngleData(&kStr_assistantName)];
    //: [data setObject:_md5?_md5:@"" forKey:@"md5"];
    [data setObject:_md5?_md5:@"" forKey:StringFromTotalernalAngleData(&kStr_opponentName)];
    //: [data setObject:@(_isFired) forKey:@"fired"];
    [data setObject:@(_isFired) forKey:StringFromTotalernalAngleData(&kStr_gainName)];
    //: if ([_url length])
    if ([_url length])
    {
        //: [data setObject:_url forKey:@"url"];
        [data setObject:_url forKey:StringFromTotalernalAngleData(&kStr_effectivenessStareValue)];
    }
    //: [dict setObject:data forKey:@"data"];
    [dict setObject:data forKey:StringFromTotalernalAngleData(&kStr_strangeName)];

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
    return [self session];
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
- (void)info{
    //: UIImage *image;
    UIImage *image;
    //: if (!self.isFromMe) {
    if (!self.isFromMe) {
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_other_readed"];
            image = [UIImage imageNamed:StringFromTotalernalAngleData(&kStr_possessionData)];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_other_unread"];
            image = [UIImage imageNamed:StringFromTotalernalAngleData(&kStr_inquiryBirdValue)];
        }
    //: }else{
    }else{
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_self_readed"];
            image = [UIImage imageNamed:StringFromTotalernalAngleData(&kStr_addTactTitle)];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_self_unread"];
            image = [UIImage imageNamed:StringFromTotalernalAngleData(&kStr_announcementValue)];
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
        [self info];
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

Byte *TotalernalAngleDataToByte(TotalernalAngleData *data) {
    if (data->toStrengthen) return data->drink;
    for (int i = 0; i < data->basically; i++) {
        data->drink[i] ^= data->overAgain;
    }
    data->drink[data->basically] = 0;
    data->toStrengthen = true;
	if (data->basically >= 1) {
		data->cottaColor = data->drink[0];
	}
    return data->drink;
}

NSString *StringFromTotalernalAngleData(TotalernalAngleData *data) {
    return [NSString stringWithUTF8String:(char *)TotalernalAngleDataToByte(data)];
}
