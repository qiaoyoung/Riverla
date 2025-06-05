// __DEBUG__
// __CLOSE_PRINT__
//
//  OriginView.h
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol NTESCustomUIAlertDelegate <NSObject>
@protocol ColorWith <NSObject>

//: - (void)didTouchTheBtnWith:(NSInteger )tag;
- (void)need:(NSInteger )tag;

//: @end
@end

//: @interface NSSetAvater : UIView
@interface OriginView : UIView

//: @property (nonatomic,weak) id<NTESCustomUIAlertDelegate> delegate;
@property (nonatomic,weak) id<ColorWith> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)tingBy;

/** 动画关闭 */
//: - (void)animationClose;
- (void)randomShow;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END