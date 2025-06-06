// __DEBUG__
// __CLOSE_PRINT__
//
//  BarViewController.h
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZMONFriendCardViewController : UIViewController
@interface BarViewController : UIViewController

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithView:(NSString *)userId;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END