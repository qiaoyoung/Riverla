// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESReportNextDelegate <NSObject>
@protocol DisableReplyDelegate <NSObject>

//: - (void)didTouchBlackButton;
- (void)quantityeractCenter;
//: - (void)didTouchDeleteButton;
- (void)netKey;

//: @end
@end

//: @interface ZMONReportNextView : UIView
@interface TitleView : UIView

//: @property (nonatomic,weak) id<NTESReportNextDelegate> delegate;
@property (nonatomic,weak) id<DisableReplyDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)recordingShow;

/** 动画关闭 */
//: - (void)animationClose;
- (void)textLanguage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END