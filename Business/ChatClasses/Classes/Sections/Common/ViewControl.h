// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewControl.h
// Notice
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "ViewKitDependency.h"
#import "ViewKitDependency.h"

//: @interface FFFAvatarImageView : UIControl
@interface ViewControl : UIControl
//: @property (nonatomic,strong) UIImage *image;
@property (nonatomic,strong) UIImage *image;
//: @property (nonatomic,assign) CGFloat cornerRadius;
@property (nonatomic,assign) CGFloat cornerRadius;

//: - (void)setAvatarBySession:(NIMSession *)session;
- (void)setBarTitleAdd:(NIMSession *)session;
//: - (void)setAvatarByMessage:(NIMMessage *)message;
- (void)setUp:(NIMMessage *)message;

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;
- (void)eigenvalueImage:(NSURL *)url index:(UIImage *)placeholder;
//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options;
- (void)disableTime:(NSURL *)url min:(UIImage *)placeholder pathImageOptions:(SDWebImageOptions)options;

//: @end
@end
