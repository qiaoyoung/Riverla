// __DEBUG__
// __CLOSE_PRINT__
//
//  FasteningIndexButton.h
//  FULive
//
//  Created by 孙慕 on 2018/8/28.
//  Copyright © 2018年 L. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FUSquareButton : UIButton
@interface FasteningIndexButton : UIButton

//: - (instancetype)initWithFrame:(CGRect)frame interval:(float)interval;
- (instancetype)initWithPhaseOfTheMoon:(CGRect)frame titleHandleFloat:(float)interval;

//: @end
@end