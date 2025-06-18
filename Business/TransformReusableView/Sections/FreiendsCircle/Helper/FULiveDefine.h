// __DEBUG__
// __CLOSE_PRINT__
//
//  FULiveDefine.h
//  FULive
//
//  Created by L on 2018/8/1.
//  Copyright © 2018年 L. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "UIColor+FU.h"
#import "UIColor+FU.h"
//: #import "FUSegmentBar.h"
#import "RangeView.h"
//: #import "FUSegmentedControl.h"
#import "PasskeyView.h"
//: #import "FUTipHUD.h"
#import "PopHud.h"
//: #import "FUInsetsLabel.h"
#import "ImageMaxLabel.h"
//: #import "FUSlider.h"
#import "HeaderSlider.h"
//: #import "FUItemsView.h"
#import "ItemsView.h"
//: #import "FUItemCell.h"
#import "CompartmentAgendaItemReusableView.h"
//: #import "FUSquareButton.h"
#import "FasteningIndexButton.h"
//: #import "FUAlertManager.h"
#import "DisableManager.h"
//: #pragma mark - 宏
#pragma mark - 宏
/// 状态栏高度
/// 弱引用对象
/// 强引用对象
//: #pragma mark - 枚举
#pragma mark - 枚举
/// 特效模块分组

// __M_A_C_R_O__

//: typedef NS_ENUM(NSUInteger, FUGroup) {
typedef NS_ENUM(NSUInteger, FUGroup) {
    //: FUGroupFace = 0,
    FUGroupFace = 0,
    //: FUGroupBody,
    FUGroupBody,
    //: FUGroupContentService
    FUGroupContentService
//: };
};

/// 特效模块
//: typedef NS_ENUM(NSUInteger, FUModule) {
typedef NS_ENUM(NSUInteger, FUModule) {
    //: FUModuleBeauty = 0,
    FUModuleBeauty = 0,
    //: FUModuleMakeup,
    FUModuleMakeup,
    //: FUModuleStyle,
    FUModuleStyle,
    //: FUModuleSticker,
    FUModuleSticker,
    //: FUModuleAnimoji,
    FUModuleAnimoji,
    //: FUModuleHairBeauty,
    FUModuleHairBeauty,
    //: FUModuleLightMakeup,
    FUModuleLightMakeup,
    //: FUModuleARMask,
    FUModuleARMask,
    //: FUModuleHilarious,
    FUModuleHilarious,
    //: FUModuleFaceFusion,
    FUModuleFaceFusion,
    //: FUModuleExpressionRecognition,
    FUModuleExpressionRecognition,
    //: FUModuleMusicFilter,
    FUModuleMusicFilter,
    //: FUModuleDistortingMirror,
    FUModuleDistortingMirror,
    //: FUModuleBodyBeauty,
    FUModuleBodyBeauty,
    //: FUModuleBodyAvatar,
    FUModuleBodyAvatar,
    //: FUModuleSegmentation,
    FUModuleSegmentation,
    //: FUModuleGestureRecognition,
    FUModuleGestureRecognition,
    //: FUModuleGreenScreen,
    FUModuleGreenScreen,
    //: FUModuleQualityTicker
    FUModuleQualityTicker
//: };
};

/// AI模型分类
//: typedef NS_OPTIONS(NSUInteger, FUAIModelType) {
typedef NS_OPTIONS(NSUInteger, FUAIModelType) {
    //: FUAIModelTypeFace = 1 << 0, 
    FUAIModelTypeFace = 1 << 0, // 人脸
    //: FUAIModelTypeHuman = 1 << 1, 
    FUAIModelTypeHuman = 1 << 1, // 人体
    //: FUAIModelTypeHand = 1 << 2 
    FUAIModelTypeHand = 1 << 2 // 手势
//: };
};

/// 跟踪部位
//: typedef NS_ENUM(NSInteger, FUDetectingParts) {
typedef NS_ENUM(NSInteger, FUDetectingParts) {
    //: FUDetectingPartsFace = 0, 
    FUDetectingPartsFace = 0, // 人脸
    //: FUDetectingPartsHuman, 
    FUDetectingPartsHuman, // 人体
    //: FUDetectingPartsHand, 
    FUDetectingPartsHand, // 手势
    //: FUDetectingPartsNone 
    FUDetectingPartsNone // 不需要跟踪
//: };
};

/// 子妆容类型
//: typedef NS_ENUM(NSUInteger, FUSingleMakeupType) {
typedef NS_ENUM(NSUInteger, FUSingleMakeupType) {
    //: FUSingleMakeupTypeFoundation, 
    FUSingleMakeupTypeFoundation, // 粉底
    //: FUSingleMakeupTypeLip, 
    FUSingleMakeupTypeLip, // 口红
    //: FUSingleMakeupTypeBlusher, 
    FUSingleMakeupTypeBlusher, // 腮红
    //: FUSingleMakeupTypeEyebrow, 
    FUSingleMakeupTypeEyebrow, // 眉毛
    //: FUSingleMakeupTypeEyeshadow, 
    FUSingleMakeupTypeEyeshadow, // 眼影
    //: FUSingleMakeupTypeEyeliner, 
    FUSingleMakeupTypeEyeliner, // 眼线
    //: FUSingleMakeupTypeEyelash, 
    FUSingleMakeupTypeEyelash, // 睫毛
    //: FUSingleMakeupTypeHighlight, 
    FUSingleMakeupTypeHighlight, // 高光
    //: FUSingleMakeupTypeShadow, 
    FUSingleMakeupTypeShadow, // 阴影
    //: FUSingleMakeupTypePupil 
    FUSingleMakeupTypePupil // 美瞳
//: };
};

//: #pragma mark - 内联函数
#pragma mark - 内联函数

//: static inline UIWindow * FUKeyWindow(void) {
static inline UIWindow * FUKeyWindow(void) {
    //: UIWindow *keyWindow = [UIApplication sharedApplication].delegate.window;
    UIWindow *keyWindow = [UIApplication sharedApplication].delegate.window;
    //: if (!keyWindow) {
    if (!keyWindow) {
        //: keyWindow = [UIApplication sharedApplication].windows.firstObject;
        keyWindow = [UIApplication sharedApplication].windows.firstObject;
    }
    //: return keyWindow;
    return keyWindow;
}

//: static inline BOOL FUDeviceIsiPhoneXStyle(void) {
static inline BOOL FUDeviceIsiPhoneXStyle(void) {
    //: UIWindow *keyWindow = FUKeyWindow();
    UIWindow *keyWindow = FUKeyWindow();
    //: if (@available(iOS 11.0, *)) {
    if (@available(iOS 11.0, *)) {
        //: CGFloat bottomInsets = keyWindow.safeAreaInsets.bottom;
        CGFloat bottomInsets = keyWindow.safeAreaInsets.bottom;
        //: if (bottomInsets > 0) {
        if (bottomInsets > 0) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: static inline CGFloat FUHeightIncludeBottomSafeArea(CGFloat height) {
static inline CGFloat FUHeightIncludeBottomSafeArea(CGFloat height) {
    //: if (@available(iOS 11.0, *)) {
    if (@available(iOS 11.0, *)) {
        //: height += FUKeyWindow().safeAreaInsets.bottom;
        height += FUKeyWindow().safeAreaInsets.bottom;
    }
    //: return height;
    return height;
}

//: static inline CGFloat FUHeightIncludeTopSafeArea(CGFloat height) {
static inline CGFloat FUHeightIncludeTopSafeArea(CGFloat height) {
    //: if (@available(iOS 11.0, *)) {
    if (@available(iOS 11.0, *)) {
        //: height += FUKeyWindow().safeAreaInsets.top;
        height += FUKeyWindow().safeAreaInsets.top;
    }
    //: return height;
    return height;
}

//: static inline NSString * FUCurrentDateString(void) {
static inline NSString * FUCurrentDateString(void) {
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: formatter.dateFormat = @"YYYYMMddhhmmssSS";
    formatter.dateFormat = @"YYYYMMddhhmmssSS";
    //: NSDate *date = [NSDate date];
    NSDate *date = [NSDate date];
    //: NSString *dateString = [formatter stringFromDate:date];
    NSString *dateString = [formatter stringFromDate:date];
    //: return dateString;
    return dateString;
}