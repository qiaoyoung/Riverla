// __DEBUG__
// __CLOSE_PRINT__
//
//  YasicGestureRecognizer.h
//  DynamicClipImage
//
//  Created by yasic on 2017/11/29.
//  Copyright © 2017年 yasic. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface YasicPanGestureRecognizer : UIPanGestureRecognizer
@interface YasicGestureRecognizer : UIPanGestureRecognizer

//: @property(assign, nonatomic) CGPoint beginPoint;
@property(assign, nonatomic) CGPoint beginPoint;
//: @property(assign, nonatomic) CGPoint movePoint;
@property(assign, nonatomic) CGPoint movePoint;

//: -(instancetype)initWithTarget:(id)target action:(SEL)action inview:(UIView*)view;
-(instancetype)initWithPerformance:(id)target lineInview:(SEL)action name:(UIView*)view;


//: @end
@end