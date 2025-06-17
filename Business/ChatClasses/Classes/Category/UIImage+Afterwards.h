// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+Afterwards.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (MyUserKit)
@interface UIImage (Afterwards)

//: + (UIImage *)nim_fetchChartlet:(NSString *)imageName chartletId:(NSString *)chartletId;
+ (UIImage *)chartlet:(NSString *)imageName read:(NSString *)chartletId;

//: + (CGSize)nim_sizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)up:(CGSize)originSize
                              //: minSize:(CGSize)imageMinSize
                              with:(CGSize)imageMinSize
                              //: maxSize:(CGSize)imageMaxSiz;
                              size:(CGSize)imageMaxSiz;


//: + (UIImage *)nim_emoticonInKit:(NSString *)imageName;
+ (UIImage *)light:(NSString *)imageName;

//: - (UIImage *)nim_imageForAvatarUpload;
- (UIImage *)forLabel;

//: - (UIImage *)nim_fixOrientation;
- (UIImage *)color;

//: - (UIImage *)nim_cropedImageWithSize:(CGSize)size;
- (UIImage *)enable:(CGSize)size;

//: @end
@end