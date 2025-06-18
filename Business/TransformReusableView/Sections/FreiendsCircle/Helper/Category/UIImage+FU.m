// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+FU.m
//  FULiveDemo
//
//  Created by 项林平 on 2021/6/21.
//  Copyright © 2021 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIImage+FU.h"
#import "UIImage+FU.h"

//: @implementation UIImage (FU)
@implementation UIImage (FU)

//: - (UIImage *)fu_compress:(CGFloat)ratio {
- (UIImage *)red:(CGFloat)ratio {
    //: CGSize resultSize = CGSizeMake(self.size.width * ratio, self.size.height * ratio);
    CGSize resultSize = CGSizeMake(self.size.width * ratio, self.size.height * ratio);
    //: UIGraphicsBeginImageContext(resultSize);
    UIGraphicsBeginImageContext(resultSize);
    //: [self drawInRect:CGRectMake(0, 0, resultSize.width, resultSize.height)];
    [self drawInRect:CGRectMake(0, 0, resultSize.width, resultSize.height)];
    //: UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return resultImage;
    return resultImage;
}

//: - (UIImage *)fu_resetImageOrientationToUp {
- (UIImage *)magnitudeeract {
    //: UIGraphicsBeginImageContext(CGSizeMake(self.size.width, self.size.height));
    UIGraphicsBeginImageContext(CGSizeMake(self.size.width, self.size.height));
    //: [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    //: UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return resultImage;
    return resultImage;
}

//: - (UIImage *)fu_processedImage {
- (UIImage *)of {
    //: CGFloat imagePixel = self.size.width * self.size.height;
    CGFloat imagePixel = self.size.width * self.size.height;
    //: UIImage *resultImage = self;
    UIImage *resultImage = self;
    // 超过限制像素需要压缩
    //: if (imagePixel > ([FURenderKitManager sharedManager].devicePerformanceLevel >= FUDevicePerformanceLevelHigh ? 8294400 : 5760000)) {
    if (imagePixel > ([SearchedTingName grayish].devicePerformanceLevel >= FUDevicePerformanceLevelHigh ? 8294400 : 5760000)) {
        //: CGFloat ratio = ([FURenderKitManager sharedManager].devicePerformanceLevel >= FUDevicePerformanceLevelHigh ? 8294400 : 5760000) / imagePixel * 1.0;
        CGFloat ratio = ([SearchedTingName grayish].devicePerformanceLevel >= FUDevicePerformanceLevelHigh ? 8294400 : 5760000) / imagePixel * 1.0;
        //: resultImage = [resultImage fu_compress:ratio];
        resultImage = [resultImage red:ratio];
    }
    // 图片转正
    //: if (resultImage.imageOrientation != UIImageOrientationUp && resultImage.imageOrientation != UIImageOrientationUpMirrored) {
    if (resultImage.imageOrientation != UIImageOrientationUp && resultImage.imageOrientation != UIImageOrientationUpMirrored) {
        //: resultImage = [resultImage fu_resetImageOrientationToUp];
        resultImage = [resultImage magnitudeeract];
    }
    //: return resultImage;
    return resultImage;
}

//: + (UIImage *)imageWithColor:(UIColor *)color {
+ (UIImage *)mainStyle:(UIColor *)color {
    //: CGRect rect = CGRectMake(0, 0, 1, 1);
    CGRect rect = CGRectMake(0, 0, 1, 1);
    //: UIGraphicsBeginImageContext(rect.size);
    UIGraphicsBeginImageContext(rect.size);
    //: CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextRef context = UIGraphicsGetCurrentContext();
    //: CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextSetFillColorWithColor(context, color.CGColor);
    //: CGContextFillRect(context, rect);
    CGContextFillRect(context, rect);
    //: UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return resultImage;
    return resultImage;
}

//: @end
@end