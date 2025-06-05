// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+IconTeamInfo.m
//  sohunews
//
//  Created by tianyulong on 2018/10/23.
//  Copyright © 2018 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIImage+SNCompress.h"
#import "UIImage+IconTeamInfo.h"

//: @implementation UIImage (SNCompress)
@implementation UIImage (IconTeamInfo)

//: - (NSData *)compressQualityWithMaxLength:(NSInteger)maxLength {
- (NSData *)page:(NSInteger)maxLength {
    //: CGFloat compression = 1;
    CGFloat compression = 1;
    //: NSData *data = UIImageJPEGRepresentation(self, compression);
    NSData *data = UIImageJPEGRepresentation(self, compression);
    //: if (data.length < maxLength) return data;
    if (data.length < maxLength) return data;
    //: CGFloat max = 1;
    CGFloat max = 1;
    //: CGFloat min = 0;
    CGFloat min = 0;
    //: for (int i = 0; i < 6; ++i) {
    for (int i = 0; i < 6; ++i) {
        //: compression = (max + min) / 2;
        compression = (max + min) / 2;
        //: data = UIImageJPEGRepresentation(self, compression);
        data = UIImageJPEGRepresentation(self, compression);
        //: if (data.length < maxLength * 0.9) {
        if (data.length < maxLength * 0.9) {
            //: min = compression;
            min = compression;
        //: } else if (data.length > maxLength) {
        } else if (data.length > maxLength) {
            //: max = compression;
            max = compression;
        //: } else {
        } else {
            //: break;
            break;
        }
    }
    //: return data;
    return data;
}

//: -(NSData *)compressWithMaxLength:(NSUInteger)maxLength{
-(NSData *)recent:(NSUInteger)maxLength{
    // Compress by quality
    //: CGFloat compression = 1;
    CGFloat compression = 1;
    //: NSData *data = UIImageJPEGRepresentation(self, compression);
    NSData *data = UIImageJPEGRepresentation(self, compression);

    //: if (data.length < maxLength) return data;
    if (data.length < maxLength) return data;

    //: CGFloat max = 1;
    CGFloat max = 1;
    //: CGFloat min = 0;
    CGFloat min = 0;
    //: for (int i = 0; i < 6; ++i) {
    for (int i = 0; i < 6; ++i) {
        //: compression = (max + min) / 2;
        compression = (max + min) / 2;
        //: data = UIImageJPEGRepresentation(self, compression);
        data = UIImageJPEGRepresentation(self, compression);
        //: if (data.length < maxLength * 0.9) {
        if (data.length < maxLength * 0.9) {
            //: min = compression;
            min = compression;
        //: } else if (data.length > maxLength) {
        } else if (data.length > maxLength) {
            //: max = compression;
            max = compression;
        //: } else {
        } else {
            //: break;
            break;
        }
    }

    //: if (data.length < maxLength) return data;
    if (data.length < maxLength) return data;
    //: UIImage *resultImage = [UIImage imageWithData:data];
    UIImage *resultImage = [UIImage imageWithData:data];
    // Compress by size
    //: NSUInteger lastDataLength = 0;
    NSUInteger lastDataLength = 0;
    //: while (data.length > maxLength && data.length != lastDataLength) {
    while (data.length > maxLength && data.length != lastDataLength) {
        //: lastDataLength = data.length;
        lastDataLength = data.length;
        //: CGFloat ratio = (CGFloat)maxLength / data.length;
        CGFloat ratio = (CGFloat)maxLength / data.length;
        //SNDebugLog(@"Ratio = %.1f", ratio);
        //: CGSize size = CGSizeMake((NSUInteger)(resultImage.size.width * sqrtf(ratio)),
        CGSize size = CGSizeMake((NSUInteger)(resultImage.size.width * sqrtf(ratio)),
                                 //: (NSUInteger)(resultImage.size.height * sqrtf(ratio))); 
                                 (NSUInteger)(resultImage.size.height * sqrtf(ratio))); // Use NSUInteger to prevent white blank
        //: UIGraphicsBeginImageContext(size);
        UIGraphicsBeginImageContext(size);
        //: [resultImage drawInRect:CGRectMake(0, 0, size.width, size.height)];
        [resultImage drawInRect:CGRectMake(0, 0, size.width, size.height)];
        //: resultImage = UIGraphicsGetImageFromCurrentImageContext();
        resultImage = UIGraphicsGetImageFromCurrentImageContext();
        //: UIGraphicsEndImageContext();
        UIGraphicsEndImageContext();
        //: data = UIImageJPEGRepresentation(resultImage, compression);
        data = UIImageJPEGRepresentation(resultImage, compression);
    }

    //: return data;
    return data;
}

//: - (NSData *)compressionQualityCompress {
- (NSData *)compressionMy {
    //进行图像的画面质量压缩
    //: NSData *data=UIImageJPEGRepresentation(self, 1.0);
    NSData *data=UIImageJPEGRepresentation(self, 1.0);
//    if (data.length>100*1024) {
//        if (data.length>1024*1024) {//1M以及以上
//            data=UIImageJPEGRepresentation(self, 0.9);
//        } else if (data.length>512*1024) {//0.5M-1M
//            data=UIImageJPEGRepresentation(self, 0.7);
//        } else if (data.length>200*1024) {
//            //0.25M-0.5M
//            data=UIImageJPEGRepresentation(self, 1);
//        }
//    }
    //: CGFloat compression = 1.0f;
    CGFloat compression = 1.0f;
    //: CGFloat minCompression = 0.001f;
    CGFloat minCompression = 0.001f;
    //: CGFloat maxSize = 1024*1024;
    CGFloat maxSize = 1024*1024;
    //每次减少的比例
    //: float scale = 0.1;
    float scale = 0.1;
    //循环条件：没到最小压缩比例，且没压缩到目标大小
    //: while ((compression > minCompression) && (data.length>maxSize)) {
    while ((compression > minCompression) && (data.length>maxSize)) {
        //: compression -= scale;
        compression -= scale;
        //: data = UIImageJPEGRepresentation(self,compression);
        data = UIImageJPEGRepresentation(self,compression);
    }

    //: return data;
    return data;
}

//: @end
@end