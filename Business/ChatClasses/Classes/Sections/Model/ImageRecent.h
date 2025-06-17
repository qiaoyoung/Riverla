// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageRecent.h
// Afterwards
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FFFMediaItem : NSObject
@interface ImageRecent : NSObject

//: @property (nonatomic,assign) SEL selctor;
@property (nonatomic,assign) SEL selctor;

//: @property (nonatomic,strong) UIImage *normalImage;
@property (nonatomic,strong) UIImage *normalImage;

//: @property (nonatomic,strong) UIImage *selectedImage;
@property (nonatomic,strong) UIImage *selectedImage;

//: @property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *title;

//: + (FFFMediaItem *)item:(NSString *)selector
+ (ImageRecent *)bar:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           at:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         provider:(UIImage *)selectedImage
                 //: title:(NSString *)title;
                 share:(NSString *)title;
//: @end
@end