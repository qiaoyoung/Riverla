// __DEBUG__
// __CLOSE_PRINT__
//
//  PopHud.m
//  FULiveDemo
//
//  Created by 项林平 on 2021/4/12.
//  Copyright © 2021 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FUTipHUD.h"
#import "PopHud.h"
//: #import "FUInsetsLabel.h"
#import "ImageMaxLabel.h"

//: @implementation FUTipHUD
@implementation PopHud

//: + (void)showTips:(NSString *)tipsString {
+ (void)clickMessage:(NSString *)tipsString {
    //: [self showTips:tipsString dismissWithDelay:3];
    [self content:tipsString with:3];
}

//: + (void)showTips:(NSString *)tipsString dismissWithDelay:(NSTimeInterval)delay {
+ (void)content:(NSString *)tipsString with:(NSTimeInterval)delay {
    //: [self showTips:tipsString dismissWithDelay:delay position:FUTipHUDPositionTop];
    [self selectPosition:tipsString buildForOption:delay dismissPosition:FUTipHUDPositionTop];
}

//: + (void)showTips:(NSString *)tipsString dismissWithDelay:(NSTimeInterval)delay position:(FUTipHUDPosition)position {
+ (void)selectPosition:(NSString *)tipsString buildForOption:(NSTimeInterval)delay dismissPosition:(FUTipHUDPosition)position {
    //: UIWindow *window = [UIApplication sharedApplication].delegate.window;
    UIWindow *window = [UIApplication sharedApplication].delegate.window;
    //: if (!window) {
    if (!window) {
        //: window = [UIApplication sharedApplication].windows.firstObject;
        window = [UIApplication sharedApplication].windows.firstObject;
    }
    // 避免重复生成label
    //: NSArray<UIView *> *views = window.subviews;
    NSArray<UIView *> *views = window.subviews;
    //: [views enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [views enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if ([obj isMemberOfClass:[FUInsetsLabel class]]) {
        if ([obj isMemberOfClass:[ImageMaxLabel class]]) {
            //: [obj removeFromSuperview];
            [obj removeFromSuperview];
            //: obj = nil;
            obj = nil;
        }
    //: }];
    }];

    //: __block FUInsetsLabel *tipLabel = [[FUInsetsLabel alloc] initWithFrame:CGRectZero insets:UIEdgeInsetsMake(8, 20, 8, 20)];
    __block ImageMaxLabel *tipLabel = [[ImageMaxLabel alloc] initWithBar:CGRectZero style:UIEdgeInsetsMake(8, 20, 8, 20)];
    //: tipLabel.backgroundColor = [UIColor colorWithRed:5/255.0 green:15/255.0 blue:20/255.0 alpha:0.74];
    tipLabel.backgroundColor = [UIColor colorWithRed:5/255.0 green:15/255.0 blue:20/255.0 alpha:0.74];
    //: tipLabel.textColor = [UIColor whiteColor];
    tipLabel.textColor = [UIColor whiteColor];
    //: tipLabel.font = [UIFont systemFontOfSize:13];
    tipLabel.font = [UIFont systemFontOfSize:13];
    //: tipLabel.numberOfLines = 0;
    tipLabel.numberOfLines = 0;
    //: tipLabel.layer.masksToBounds = YES;
    tipLabel.layer.masksToBounds = YES;
    //: tipLabel.layer.cornerRadius = 4;
    tipLabel.layer.cornerRadius = 4;
    //: tipLabel.translatesAutoresizingMaskIntoConstraints = NO;
    tipLabel.translatesAutoresizingMaskIntoConstraints = NO;
    //: tipLabel.text = tipsString;
    tipLabel.text = tipsString;
    //: [window addSubview:tipLabel];
    [window addSubview:tipLabel];

    //: if (position == FUTipHUDPositionTop) {
    if (position == FUTipHUDPositionTop) {
        //: CGFloat topConstant = 0;
        CGFloat topConstant = 0;
        //: if (@available(iOS 11.0, *)) {
        if (@available(iOS 11.0, *)) {
            //: topConstant = window.safeAreaInsets.top;
            topConstant = window.safeAreaInsets.top;
        }
        //: NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:tipLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:window attribute:NSLayoutAttributeTop multiplier:1 constant:84 + topConstant];
        NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:tipLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:window attribute:NSLayoutAttributeTop multiplier:1 constant:84 + topConstant];
        //: [window addConstraint:topConstraint];
        [window addConstraint:topConstraint];
    //: } else {
    } else {
        //: NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:tipLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:window attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
        NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:tipLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:window attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
        //: [window addConstraint:centerYConstraint];
        [window addConstraint:centerYConstraint];
    }
    //: CGFloat windowWidth = CGRectGetWidth(window.bounds);
    CGFloat windowWidth = CGRectGetWidth(window.bounds);
    //: NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:tipLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationLessThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:windowWidth - 40];
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:tipLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationLessThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:windowWidth - 40];
    //: NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:tipLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:window attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:tipLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:window attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    //: [window addConstraint:centerXConstraint];
    [window addConstraint:centerXConstraint];
    //: [tipLabel addConstraint:widthConstraint];
    [tipLabel addConstraint:widthConstraint];

    //: dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: [UIView animateWithDuration:0.3 animations:^{
        [UIView animateWithDuration:0.3 animations:^{
            //: tipLabel.alpha = 0;
            tipLabel.alpha = 0;
        //: } completion:^(BOOL finished) {
        } completion:^(BOOL finished) {
            //: [tipLabel removeFromSuperview];
            [tipLabel removeFromSuperview];
            //: tipLabel = nil;
            tipLabel = nil;
        //: }];
        }];
    //: });
    });
}

//: @end
@end