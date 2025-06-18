// __DEBUG__
// __CLOSE_PRINT__
//
//  HighView.h
//  FULiveDemo
//
//  Created by L on 2018/9/20.
//  Copyright © 2018年 L. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FULightingSlider.h"
#import "CommentControl.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol FULightingViewDelegate <NSObject>
@protocol DisableItemDelegate <NSObject>

//: @optional
@optional
//: - (void)lightingViewValueDidChange:(float)value;
- (void)inputs:(float)value;
//: @end
@end

//: @interface FULightingView : UIView
@interface HighView : UIView
//: @property (strong, nonatomic) FULightingSlider *slider;
@property (strong, nonatomic) CommentControl *slider;
//: @property (nonatomic, assign) id<FULightingViewDelegate>delegate;
@property (nonatomic, assign) id<DisableItemDelegate>delegate;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END