// __DEBUG__
// __CLOSE_PRINT__
//
//  StatusWithControl.h
// Afterwards
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"

//: @interface FFFAvatarImageView : UIControl
@interface StatusWithControl : UIControl
//: @property (nonatomic,strong) UIImage *image;
@property (nonatomic,strong) UIImage *image;
//: @property (nonatomic,assign) CGFloat cornerRadius;
@property (nonatomic,assign) CGFloat cornerRadius;

//: - (void)setAvatarBySession:(NIMSession *)session;
- (void)setStep:(NIMSession *)session;
//: - (void)setAvatarByMessage:(NIMMessage *)message;
- (void)setInfoFlip:(NIMMessage *)message;

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;
- (void)date:(NSURL *)url enableImage:(UIImage *)placeholder;
//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options;
- (void)placeholder:(NSURL *)url beforeArea:(UIImage *)placeholder frameImageOptions:(SDWebImageOptions)options;

//: @end
@end