// __DEBUG__
// __CLOSE_PRINT__
//
//  SVProgressHUD+ZC.h
//  ZCAuctionCar
//
//  Created by 彭爽 on 2021/4/6.
//

// __M_A_C_R_O__
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface SVProgressHUD (ZC)
@interface SVProgressHUD (ZC)

//: + (void)showMessage:(NSString *)message;
+ (void)rangeMessage:(NSString *)message;

//: + (void)showCustomGif:(NSData *)gifData;
+ (void)quantity:(NSData *)gifData;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END