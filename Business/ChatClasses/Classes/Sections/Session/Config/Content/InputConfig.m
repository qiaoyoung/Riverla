
#import <Foundation/Foundation.h>
typedef struct {
    Byte minorPasse;
    Byte *faintFlood;
    unsigned int sagMortal;
    bool floorPlanning;
	int twist;
} ColoniaData;

NSString *StringFromColoniaData(ColoniaData *data);


//: message should be video
ColoniaData kStr_colorfulText = (ColoniaData){69, (Byte []){40, 32, 54, 54, 36, 34, 32, 101, 54, 45, 42, 48, 41, 33, 101, 39, 32, 101, 51, 44, 33, 32, 42, 221}, 23, false, 57};

// __DEBUG__
// __CLOSE_PRINT__
//
//  InputConfig.m
// Notice
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFVideoContentConfig.h"
#import "InputConfig.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "MyUserKit.h"
#import "Notice.h"

//: @implementation FFFVideoContentConfig
@implementation InputConfig
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)text:(CGFloat)cellWidth option:(NIMMessage *)message
{
    //: NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    //: NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], @"message should be video");
    NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], StringFromColoniaData(&kStr_colorfulText));

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
        contentSize = [UIImage should:videoObject.coverSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   blue:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
                                                   name:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
    }
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)result:(NIMMessage *)message
{
    //: return @"FFFSessionVideoContentView";
    return @"ChangeTitleView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)max:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Notice fullKit].config sizeGroupBar:message].contentInsets;
}

//: @end
@end

Byte *ColoniaDataToByte(ColoniaData *data) {
    if (data->floorPlanning) return data->faintFlood;
    for (int i = 0; i < data->sagMortal; i++) {
        data->faintFlood[i] ^= data->minorPasse;
    }
    data->faintFlood[data->sagMortal] = 0;
    data->floorPlanning = true;
	if (data->sagMortal >= 1) {
		data->twist = data->faintFlood[0];
	}
    return data->faintFlood;
}

NSString *StringFromColoniaData(ColoniaData *data) {
    return [NSString stringWithUTF8String:(char *)ColoniaDataToByte(data)];
}
