// __DEBUG__
// __CLOSE_PRINT__
//
//  SenseView.h
//  天天网
//
//  Created by zhaoweibing on 14-4-25.
//  Copyright (c) 2014年 Ios. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface ShowNotice : UIView
@interface SenseView : UIView

//: + (ShowNotice *)showNoticeTo:(UIView *)view animated:(BOOL)animated;
+ (SenseView *)lipRead:(UIView *)view bubbleShow:(BOOL)animated;

//: - (void)hideNoticeAnimated:(BOOL)animated;
- (void)addAcross:(BOOL)animated;


//: @end
@end