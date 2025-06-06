// __DEBUG__
// __CLOSE_PRINT__
//
//  UIAlertView+RefreshFaceBlock.h
//  eim_iphone
//
//  Created by amao on 12-11-7.
//  Copyright (c) 2012年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef void (^AlertBlock)(NSInteger);
typedef void (^AlertBlock)(NSInteger);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN
//: @interface UIAlertView (NTESBlock)
@interface UIAlertView (RefreshFaceBlock)
//: - (void)showAlertWithCompletionHandler: (__nullable AlertBlock)block;
- (void)success: (__nullable AlertBlock)block;
//: - (void)clearActionBlock;
- (void)terraFirma;
//: @end
@end



//: @interface UIAlertController (NTESBlock)
@interface UIAlertController (RefreshFaceBlock)
//: - (UIAlertController *)addAction:(NSString *)title
- (UIAlertController *)firstMax:(NSString *)title
                           //: style:(UIAlertActionStyle)style
                           anthropomorphic:(UIAlertActionStyle)style
                         //: handler:(void (^ __nullable)(UIAlertAction *action))handler;
                         name:(void (^ __nullable)(UIAlertAction *action))handler;

//: - (void)show;
- (void)session;
//: @end
@end
//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END