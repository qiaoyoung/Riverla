// __DEBUG__
// __CLOSE_PRINT__
//
//  UIActionSheet+Hide.h
//  eim_iphone
//
//  Created by amao on 12-11-23.
//  Copyright (c) 2012年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef void (^ActionSheetBlock)(NSInteger);
typedef void (^ActionSheetBlock)(NSInteger);

//: @interface UIActionSheet (NTESBlock)<UIActionSheetDelegate>
@interface UIActionSheet (Hide)<UIActionSheetDelegate>
//: - (void)showInView: (UIView *)view completionHandler: (ActionSheetBlock)block;
- (void)with: (UIView *)view stochastic: (ActionSheetBlock)block;
//: - (void)clearActionBlock;
- (void)input;
//: @end
@end