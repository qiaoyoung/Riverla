// __DEBUG__
// __CLOSE_PRINT__
//
//  UIButton+FU.h
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/10.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface UIButton (FU)
@interface UIButton (FU)

/// 延迟点击方法
/// @param delay 延迟时间
/// @param handler 回调
//: - (void)addCommonActionWithDelay:(NSTimeInterval)delay actionHandler:(void (^)(void))handler;
- (void)color:(NSTimeInterval)delay delay:(void (^)(void))handler;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END