
#import <Foundation/Foundation.h>

NSString *StringFromIreData(Byte *data);


//: message should be image
Byte kStr_userLogName[] = {50, 23, 50, 5, 13, 159, 151, 165, 165, 147, 153, 151, 82, 165, 154, 161, 167, 158, 150, 82, 148, 151, 82, 155, 159, 147, 153, 151, 31};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageClear.m
// Afterwards
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFImageContentConfig.h"
#import "ImageClear.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @implementation FFFImageContentConfig
@implementation ImageClear
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)ting:(CGFloat)cellWidth record:(NIMMessage *)message
{
    //: NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    //: NSAssert([imageObject isKindOfClass:[NIMImageObject class]], @"message should be image");
    NSAssert([imageObject isKindOfClass:[NIMImageObject class]], StringFromIreData(kStr_userLogName));

    //: CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    //: CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    //: CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    //: CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    CGFloat attachmentImageMaxHeight = (cellWidth - 184);


    //: CGSize imageSize;
    CGSize imageSize;
    //: if (!__CGSizeEqualToSize(imageObject.size, CGSizeZero)) {
    if (!__CGSizeEqualToSize(imageObject.size, CGSizeZero)) {
        //: imageSize = imageObject.size;
        imageSize = imageObject.size;
        //: if(__CGSizeEqualToSize(imageSize, CGSizeMake(200, 200)) || __CGSizeEqualToSize(imageSize, CGSizeMake(300, 300))){
        if(__CGSizeEqualToSize(imageSize, CGSizeMake(200, 200)) || __CGSizeEqualToSize(imageSize, CGSizeMake(300, 300))){
            //: imageSize = CGSizeMake(80, 80);
            imageSize = CGSizeMake(80, 80);
        }
    }
    //: else
    else
    {
        //: UIImage *image = [UIImage imageWithContentsOfFile:imageObject.thumbPath];
        UIImage *image = [UIImage imageWithContentsOfFile:imageObject.thumbPath];
        //: imageSize = image ? image.size : CGSizeZero;
        imageSize = image ? image.size : CGSizeZero;
    }
    //: CGSize contentSize = [UIImage nim_sizeWithImageOriginSize:imageSize
    CGSize contentSize = [UIImage up:imageSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   with:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
                                                   size:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)fire:(NIMMessage *)message
{
    //: return @"FFFSessionImageContentView";
    return @"MaxView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)maxIconManager:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Afterwards blue].config with:message].contentInsets;
}



//: @end
@end

Byte * IreDataToCache(Byte *data) {
    int comedyPrim = data[0];
    int destructOption = data[1];
    Byte mysteryNovel = data[2];
    int ernEnd = data[3];
    if (!comedyPrim) return data + ernEnd;
    for (int i = ernEnd; i < ernEnd + destructOption; i++) {
        int value = data[i] - mysteryNovel;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[ernEnd + destructOption] = 0;
    return data + ernEnd;
}

NSString *StringFromIreData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)IreDataToCache(data)];
}
