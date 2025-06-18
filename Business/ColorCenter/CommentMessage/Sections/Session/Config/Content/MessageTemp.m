
#import <Foundation/Foundation.h>

NSString *StringFromPanoramicViewData(Byte *data);


//: message should be video
Byte kStr_geneFlushMiddleData[] = {68, 23, 4, 14, 128, 137, 16, 59, 89, 178, 3, 222, 142, 26, 113, 105, 119, 119, 101, 107, 105, 36, 119, 108, 115, 121, 112, 104, 36, 102, 105, 36, 122, 109, 104, 105, 115, 2};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageTemp.m
// Afterwards
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFVideoContentConfig.h"
#import "MessageTemp.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @implementation FFFVideoContentConfig
@implementation MessageTemp
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)ting:(CGFloat)cellWidth record:(NIMMessage *)message
{
    //: NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    //: NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], @"message should be video");
    NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], StringFromPanoramicViewData(kStr_geneFlushMiddleData));

    //: CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    //: CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    //: CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    //: CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    //: CGSize contentSize = CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight);
    CGSize contentSize = CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight);


    //: if (!__CGSizeEqualToSize(videoObject.coverSize, CGSizeZero)) {
    if (!__CGSizeEqualToSize(videoObject.coverSize, CGSizeZero)) {
        //有封面就直接拿封面大小
        //: contentSize = [UIImage nim_sizeWithImageOriginSize:videoObject.coverSize
        contentSize = [UIImage up:videoObject.coverSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   with:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
                                                   size:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
    }
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)fire:(NIMMessage *)message
{
    //: return @"FFFSessionVideoContentView";
    return @"WithColorTextView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)maxIconManager:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Afterwards blue].config with:message].contentInsets;
}

//: @end
@end

Byte * PanoramicViewDataToCache(Byte *data) {
    int atMum = data[0];
    int language = data[1];
    Byte untilOptionContent = data[2];
    int reloadToneView = data[3];
    if (!atMum) return data + reloadToneView;
    for (int i = reloadToneView; i < reloadToneView + language; i++) {
        int value = data[i] - untilOptionContent;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[reloadToneView + language] = 0;
    return data + reloadToneView;
}

NSString *StringFromPanoramicViewData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PanoramicViewDataToCache(data)];
}
