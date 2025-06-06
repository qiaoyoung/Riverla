// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+Notice.h
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (MyUserKit)
@interface UIImage (Notice)

//: + (UIImage *)nim_fetchChartlet:(NSString *)imageName chartletId:(NSString *)chartletId;
+ (UIImage *)image:(NSString *)imageName high:(NSString *)chartletId;

//: + (CGSize)nim_sizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)should:(CGSize)originSize
                              //: minSize:(CGSize)imageMinSize
                              blue:(CGSize)imageMinSize
                              //: maxSize:(CGSize)imageMaxSiz;
                              name:(CGSize)imageMaxSiz;


//: + (UIImage *)nim_emoticonInKit:(NSString *)imageName;
+ (UIImage *)disable:(NSString *)imageName;

//: - (UIImage *)nim_imageForAvatarUpload;
- (UIImage *)lengthIcon;

//: - (UIImage *)nim_fixOrientation;
- (UIImage *)cipher;

//: - (UIImage *)nim_cropedImageWithSize:(CGSize)size;
- (UIImage *)with:(CGSize)size;

//: @end
@end