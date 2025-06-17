// __DEBUG__
// __CLOSE_PRINT__
//
//  UIColor+Afterwards.h
// Afterwards
//
//  Created by He on 2020/4/15.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface UIColor (MyUserKit)
@interface UIColor (Afterwards)
//: + (instancetype)colorWithHex:(NSInteger)rgbValue alpha:(CGFloat)alphaValue;
+ (instancetype)colorful:(NSInteger)rgbValue sizeContent:(CGFloat)alphaValue;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END