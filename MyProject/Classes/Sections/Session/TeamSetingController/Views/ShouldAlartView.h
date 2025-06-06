// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldAlartView.h
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^SpeiceBackBlock) (NSString *Name);
typedef void(^SpeiceBackBlock) (NSString *Name);

//: @interface ZMONAlartView : UIView
@interface ShouldAlartView : UIView

//: @property (nonatomic, copy) SpeiceBackBlock speiceBackBlock;
@property (nonatomic, copy) SpeiceBackBlock speiceBackBlock;

//: - (void)reloadWithTitlename:(NSString *)name;
- (void)at:(NSString *)name;

/** 动画显示 */
//: - (void)animationShow;
- (void)someFrame;

/** 动画关闭 */
//: - (void)animationClose;
- (void)randomShow;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END