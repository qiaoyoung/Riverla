// __DEBUG__
// __CLOSE_PRINT__
//
//  WithRangeView.h
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
@protocol HeadingSum <NSObject>

//: - (void)didTouchTheBtnWith:(NSInteger )tag;
- (void)images:(NSInteger )tag;

//: @end
@end

//: @interface NSSetAvater : UIView
@interface WithRangeView : UIView

//: @property (nonatomic,weak) id<NTESCustomUIAlertDelegate> delegate;
@property (nonatomic,weak) id<HeadingSum> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)line;

/** 动画关闭 */
//: - (void)animationClose;
- (void)textLanguage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END