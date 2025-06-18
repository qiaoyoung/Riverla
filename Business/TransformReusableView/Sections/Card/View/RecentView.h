// __DEBUG__
// __CLOSE_PRINT__
//
//  RecentView.h
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
@protocol TransformDelegate <NSObject>

//: - (void)didTouchBlackButton;
- (void)quantityeractCenter;

//: @end
@end

//: @interface ZMONReportHisView : UIView
@interface RecentView : UIView

//: @property (nonatomic,weak) id<NTESReportHisNextDelegate> delegate;
@property (nonatomic,weak) id<TransformDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)with;

/** 动画关闭 */
//: - (void)animationClose;
- (void)textLanguage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END