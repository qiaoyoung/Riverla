// __DEBUG__
// __CLOSE_PRINT__
//
//  CommentViewController.h
//  ChineseTastes
//
//  Created by 刘 波 on 13-7-8.
//  Copyright (c) 2013年 beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "KIImageCropperView.h"
#import "CropperView.h"

//: @interface KIImageCropperViewController : UIViewController {
@interface CommentViewController : UIViewController {
    //: CGSize _cropSize;
    CGSize _cropSize;
    //: UIImage *_image;
    UIImage *_image;
    //: KIImageCropperView *_imageCropperView;
    CropperView *_imageCropperView;
    //: void(^_croppedImage)(UIImage *image);
    void(^_croppedImage)(UIImage *image);
}

//: - (id)initWithImage:(UIImage *)image cropSize:(CGSize)cropSize;
- (id)initWithContentUser:(UIImage *)image image:(CGSize)cropSize;

//: - (void)setCroppedImage:(void(^)(UIImage *image))block;
- (void)setScaleColor:(void(^)(UIImage *image))block;

//: @end
@end