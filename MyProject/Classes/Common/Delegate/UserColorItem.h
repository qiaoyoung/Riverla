// __DEBUG__
// __CLOSE_PRINT__
//
//  UserColorItem.h
//  NIM
//
//  Created by chris on 16/1/28.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESNavigationHandler : NSObject<UINavigationControllerDelegate>
@interface UserColorItem : NSObject<UINavigationControllerDelegate>

//: @property (nonatomic,strong,readonly) UIPanGestureRecognizer *recognizer;
@property (nonatomic,strong,readonly) UIPanGestureRecognizer *recognizer;

//: - (instancetype)initWithNavigationController:(UINavigationController *)navigationController;
- (instancetype)initWithTapMyController:(UINavigationController *)navigationController;

//: @end
@end