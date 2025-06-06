// __DEBUG__
// __CLOSE_PRINT__
//
//  ByRecentView.h
//  Riverla
//
//  Created by mac on 2025/5/16.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESDeleteAccountTIPDelegate <NSObject>
@protocol CornerSaveTipdelegate <NSObject>

//: - (void)didTouchDeleteSureButton;
- (void)streetSmart;

//: @end
@end

//: @interface DeleteAccountTipView : UIView
@interface ByRecentView : UIView

//: @property (nonatomic,weak) id<NTESDeleteAccountTIPDelegate> delegate;
@property (nonatomic,weak) id<CornerSaveTipdelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)nimShow;

/** 动画关闭 */
//: - (void)animationClose;
- (void)randomShow;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END