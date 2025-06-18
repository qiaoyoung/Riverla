// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableManager.h
//
//  Created by 项林平 on 2019/9/25.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FUAlertManager : NSObject
@interface DisableManager : NSObject

/// ButtonRecent
/// @param titleString title
/// @param messageString message
/// @param cancelString 取消
/// @param confirmString 确定
/// @param viewController 控制器
/// @param confirm 确定闭包
/// @param cancel 取消闭包
//: + (void)showAlertWithTitle:(nullable NSString *)titleString
+ (void)evidence:(nullable NSString *)titleString
                   //: message:(nullable NSString *)messageString
                   table:(nullable NSString *)messageString
                    //: cancel:(nullable NSString *)cancelString
                    line:(nullable NSString *)cancelString
                   //: confirm:(nullable NSString *)confirmString
                   session:(nullable NSString *)confirmString
              //: inController:(nullable UIViewController *)viewController
              with:(nullable UIViewController *)viewController
            //: confirmHandler:(nullable void (^)(void))confirm
            imageRefreshHandler:(nullable void (^)(void))confirm
             //: cancelHandler:(nullable void (^)(void))cancel;
             disableHandler:(nullable void (^)(void))cancel;

/// Photo
/// @param titleString title
/// @param messageString message
/// @param cancelString 取消
/// @param viewController 控制器
/// @param sourceView 设备为iPad时需要传入
/// @param actions 选项
/// @param actionHandler 选项闭包
//: + (void)showActionSheetWithTitle:(nullable NSString *)titleString
+ (void)item:(nullable NSString *)titleString
                         //: message:(nullable NSString *)messageString
                         minorityState:(nullable NSString *)messageString
                          //: cancel:(nullable NSString *)cancelString
                          bringHome:(nullable NSString *)cancelString
                    //: inController:(nullable UIViewController *)viewController
                    with:(nullable UIViewController *)viewController
                      //: sourceView:(nullable UIView *)sourceView
                      should_strong:(nullable UIView *)sourceView
                         //: actions:(NSArray<NSString *> *)actions
                         noneInfo:(NSArray<NSString *> *)actions
                   //: actionHandler:(nullable void (^)(NSInteger index))actionHandler;
                   name:(nullable void (^)(NSInteger index))actionHandler;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END