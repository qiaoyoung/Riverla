// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeActionVideo.h
//  FULiveDemo
//
//  Created by 项林平 on 2021/4/12.
//  Copyright © 2021 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSUInteger, FUTipHUDPosition) {
typedef NS_ENUM(NSUInteger, FUTipHUDPosition) {
    //: FUTipHUDPositionTop,
    FUTipHUDPositionTop,
    //: FUTipHUDPositionCenter
    FUTipHUDPositionCenter
//: };
};

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FUTipHUD : NSObject
@interface ChangeActionVideo : NSObject

/// 文字提示（默认3秒后自动消失）
/// @param tipsString 文字
//: + (void)showTips:(NSString *)tipsString;
+ (void)pull:(NSString *)tipsString;

/// 文字提示
/// @param tipsString 文字
/// @param delay 自动消失时间，单位: 秒
//: + (void)showTips:(NSString *)tipsString dismissWithDelay:(NSTimeInterval)delay;
+ (void)image:(NSString *)tipsString notice:(NSTimeInterval)delay;

/// 文字提示
/// @param tipsString 文字
/// @param delay 自动消失时间，单位: 秒
/// @param position 显示位置，默认为FUTipHUDPositionTop
//: + (void)showTips:(NSString *)tipsString dismissWithDelay:(NSTimeInterval)delay position:(FUTipHUDPosition)position;
+ (void)replyCell:(NSString *)tipsString info:(NSTimeInterval)delay delay:(FUTipHUDPosition)position;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END