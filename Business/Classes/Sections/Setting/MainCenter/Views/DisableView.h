// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/5.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESDeactivateAccountDelegate <NSObject>
@protocol ReplyDelegate <NSObject>

//: - (void)didTouchNextButton;
- (void)inputLeft;
//: - (void)didTouchProtocolButton;
- (void)puncherBar;

//: @end
@end

//: @interface ZMONDeactivateAccountView : UIView
@interface DisableView : UIView

//: @property (nonatomic,weak) id<NTESDeactivateAccountDelegate> delegate;
@property (nonatomic,weak) id<ReplyDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)cleanName;

/** 动画关闭 */
//: - (void)animationClose;
- (void)textLanguage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END