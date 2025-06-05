// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeMax.h
// Notice
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FFFMediaItem : NSObject
@interface ChangeMax : NSObject

//: @property (nonatomic,assign) SEL selctor;
@property (nonatomic,assign) SEL selctor;

//: @property (nonatomic,strong) UIImage *normalImage;
@property (nonatomic,strong) UIImage *normalImage;

//: @property (nonatomic,strong) UIImage *selectedImage;
@property (nonatomic,strong) UIImage *selectedImage;

//: @property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *title;

//: + (FFFMediaItem *)item:(NSString *)selector
+ (ChangeMax *)show:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           that:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         from:(UIImage *)selectedImage
                 //: title:(NSString *)title;
                 tillTing:(NSString *)title;
//: @end
@end