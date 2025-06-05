//
//  UIImage+NeeyoKit.h
// NeeyoKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (NeeyoKit)

+ (UIImage *)nim_fetchChartlet:(NSString *)imageName chartletId:(NSString *)chartletId;

+ (CGSize)nim_sizeWithImageOriginSize:(CGSize)originSize
                              minSize:(CGSize)imageMinSize
                              maxSize:(CGSize)imageMaxSiz;


+ (UIImage *)nim_emoticonInKit:(NSString *)imageName;

- (UIImage *)nim_imageForAvatarUpload;

- (UIImage *)nim_fixOrientation;

- (UIImage *)nim_cropedImageWithSize:(CGSize)size;

@end
