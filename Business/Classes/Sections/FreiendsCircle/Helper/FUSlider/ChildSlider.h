// __DEBUG__
// __CLOSE_PRINT__
//
//  ChildSlider.h
//  FUAPIDemoBar
//
//  Created by L on 2018/6/27.
//  Copyright © 2018年 L. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FUSlider : UISlider
@interface ChildSlider : UISlider

/// 零点是否在中间，默认为NO
//: @property (nonatomic, assign, getter=isBidirection) BOOL bidirection;
@property (nonatomic, assign, getter=isBidirection) BOOL bidirection;

//: @end
@end