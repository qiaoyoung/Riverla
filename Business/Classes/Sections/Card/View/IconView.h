// __DEBUG__
// __CLOSE_PRINT__
//
//  IconView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/20.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESReportHisNextDelegate <NSObject>
@protocol CustomDelegate <NSObject>

//: - (void)didTouchBlackButton;
- (void)fromFixing;

//: @end
@end

//: @interface ZMONReportHisView : UIView
@interface IconView : UIView

//: @property (nonatomic,weak) id<NTESReportHisNextDelegate> delegate;
@property (nonatomic,weak) id<CustomDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)vertical;

/** 动画关闭 */
//: - (void)animationClose;
- (void)randomShow;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END