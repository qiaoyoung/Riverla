
#import <Foundation/Foundation.h>

NSString *StringFromTingMessageData(Byte *data);


//: titleTextColor
Byte kStr_shouldHideRecordingData[] = {13, 14, 4, 90, 114, 111, 108, 111, 67, 116, 120, 101, 84, 101, 108, 116, 105, 116, 99};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisableManager.m
//
//  Created by 项林平 on 2019/9/25.
//

// __M_A_C_R_O__
//: #import "FUAlertManager.h"
#import "DisableManager.h"
//: #import "FUAlertController.h"
#import "TableViewController.h"

//: @implementation FUAlertManager
@implementation DisableManager

//: + (void)showAlertWithTitle:(NSString *)titleString
+ (void)evidence:(NSString *)titleString
                   //: message:(NSString *)messageString
                   table:(NSString *)messageString
                    //: cancel:(NSString *)cancelString
                    line:(NSString *)cancelString
                   //: confirm:(NSString *)confirmString
                   session:(NSString *)confirmString
              //: inController:(UIViewController *)viewController
              with:(UIViewController *)viewController
            //: confirmHandler:(void (^)(void))confirm
            imageRefreshHandler:(void (^)(void))confirm
             //: cancelHandler:(void (^)(void))cancel {
             disableHandler:(void (^)(void))cancel {
    //: if (!cancelString && !confirmString) {
    if (!cancelString && !confirmString) {
        //: return;
        return;
    }
    //: FUAlertModel *alertModel = [[FUAlertModel alloc] initWithTitle:titleString message:messageString style:UIAlertControllerStyleAlert];
    ShowSupport *alertModel = [[ShowSupport alloc] initWithStatuteNameMedia:titleString container:messageString pastControllerStyle:UIAlertControllerStyleAlert];
    //: __block UIViewController *currentViewController = viewController;
    __block UIViewController *currentViewController = viewController;
    //: [FUAlertController makeAlert:^(FUAlertController * _Nonnull controller) {
    [TableViewController buttonAlert:^(TableViewController * _Nonnull controller) {
        //: NSMutableArray *items = [[NSMutableArray alloc] init];
        NSMutableArray *items = [[NSMutableArray alloc] init];
        //: if (cancelString) {
        if (cancelString) {
            //: UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelString style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelString style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                //: if (cancel) {
                if (cancel) {
                    //: cancel();
                    cancel();
                }
            //: }];
            }];
            //设置Action文字颜色
            //: [cancelAction setValue:[UIColor colorWithRed:44/255.0 green:46/255.0 blue:48/255.0 alpha:1.0] forKey:@"titleTextColor"];
            [cancelAction setValue:[UIColor colorWithRed:44/255.0 green:46/255.0 blue:48/255.0 alpha:1.0] forKey:StringFromTingMessageData(kStr_shouldHideRecordingData)];
            //: [items addObject:cancelAction];
            [items addObject:cancelAction];
        }

        //: if (confirmString) {
        if (confirmString) {
            //: UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:confirmString style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
            UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:confirmString style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
                //: if (confirm) {
                if (confirm) {
                    //: confirm();
                    confirm();
                }
            //: }];
            }];
            //: [confirmAction setValue:[UIColor colorWithRed:94/255.0 green:199/255.0 blue:254/255.0 alpha:1.0] forKey:@"titleTextColor"];
            [confirmAction setValue:[UIColor colorWithRed:94/255.0 green:199/255.0 blue:254/255.0 alpha:1.0] forKey:StringFromTingMessageData(kStr_shouldHideRecordingData)];
            //: [items addObject:confirmAction];
            [items addObject:confirmAction];
        }
        //: if (!currentViewController) {
        if (!currentViewController) {
            //: currentViewController = [self topViewController];
            currentViewController = [self cover];
        }
        //: if (!currentViewController) {
        if (!currentViewController) {
            //: NSLog(@"FUAlert: viewController can not be nil!");
            //: return;
            return;
        }
        //: controller.actionItems(items).showAlert(currentViewController);
        controller.slightItems(items).alert(currentViewController);
    //: } alertModel:alertModel];
    } add:alertModel];
}
//: + (void)showActionSheetWithTitle:(NSString *)titleString
+ (void)item:(NSString *)titleString
                         //: message:(NSString *)messageString
                         minorityState:(NSString *)messageString
                          //: cancel:(NSString *)cancelString
                          bringHome:(NSString *)cancelString
                    //: inController:(UIViewController *)viewController
                    with:(UIViewController *)viewController
                      //: sourceView:(UIView *)sourceView
                      should_strong:(UIView *)sourceView
                         //: actions:(NSArray<NSString *> *)actions
                         noneInfo:(NSArray<NSString *> *)actions
                   //: actionHandler:(void (^)(NSInteger))actionHandler {
                   name:(void (^)(NSInteger))actionHandler {
    //: if (actions.count == 0) {
    if (actions.count == 0) {
        //: return;
        return;
    }
    //: FUAlertModel *alertModel = [[FUAlertModel alloc] initWithTitle:titleString message:messageString style:UIAlertControllerStyleActionSheet];
    ShowSupport *alertModel = [[ShowSupport alloc] initWithStatuteNameMedia:titleString container:messageString pastControllerStyle:UIAlertControllerStyleActionSheet];
    //: __block UIViewController *currentViewController = viewController;
    __block UIViewController *currentViewController = viewController;
    //: [FUAlertController makeAlert:^(FUAlertController * _Nonnull controller) {
    [TableViewController buttonAlert:^(TableViewController * _Nonnull controller) {
        //: NSMutableArray *items = [[NSMutableArray alloc] init];
        NSMutableArray *items = [[NSMutableArray alloc] init];
        //: if (cancelString) {
        if (cancelString) {
            //: UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelString style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelString style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }];
            }];
            //: [items addObject:cancelAction];
            [items addObject:cancelAction];
        }
        //: [actions enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [actions enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: UIAlertAction *alertAction = [UIAlertAction actionWithTitle:obj style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            UIAlertAction *alertAction = [UIAlertAction actionWithTitle:obj style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                //: if (actionHandler) {
                if (actionHandler) {
                    //: actionHandler(idx);
                    actionHandler(idx);
                }
            //: }];
            }];
            //: [items addObject:alertAction];
            [items addObject:alertAction];
        //: }];
        }];
        //: if (!currentViewController) {
        if (!currentViewController) {
            //: currentViewController = [self topViewController];
            currentViewController = [self cover];
        }
        //: if (!currentViewController) {
        if (!currentViewController) {
            //: NSLog(@"FUAlert: viewController can not be nil!");
            //: return;
            return;
        }
        //: controller.actionItems(items).sourceView(sourceView).showAlert(currentViewController);
        controller.slightItems(items).leafImage(sourceView).alert(currentViewController);
    //: } alertModel:alertModel];
    } add:alertModel];
}

//: + (UIViewController *)topViewController {
+ (UIViewController *)cover {
    //: UIViewController *root = [UIApplication sharedApplication].delegate.window.rootViewController;
    UIViewController *root = [UIApplication sharedApplication].delegate.window.rootViewController;
    //: if (!root) {
    if (!root) {
        //: root = [UIApplication sharedApplication].windows.firstObject.rootViewController;
        root = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    }
    //: return [self currentViewControllerWithRootViewController:root];
    return [self centerPressController:root];
}

//: + (UIViewController *)currentViewControllerWithRootViewController:(UIViewController *)viewController {
+ (UIViewController *)centerPressController:(UIViewController *)viewController {
    //: if (viewController.presentedViewController) {
    if (viewController.presentedViewController) {
        //: return [self currentViewControllerWithRootViewController:viewController.presentedViewController];
        return [self centerPressController:viewController.presentedViewController];
    //: } else if ([viewController isKindOfClass:[UINavigationController class]]) {
    } else if ([viewController isKindOfClass:[UINavigationController class]]) {
        //: UINavigationController *navigation = (UINavigationController *)viewController;
        UINavigationController *navigation = (UINavigationController *)viewController;
        //: return [self currentViewControllerWithRootViewController:navigation.visibleViewController];
        return [self centerPressController:navigation.visibleViewController];
    //: } else if ([viewController isKindOfClass:[UITabBarController class]]) {
    } else if ([viewController isKindOfClass:[UITabBarController class]]) {
        //: UITabBarController *tabBar = (UITabBarController *)viewController;
        UITabBarController *tabBar = (UITabBarController *)viewController;
        //: return [self currentViewControllerWithRootViewController:tabBar.selectedViewController];
        return [self centerPressController:tabBar.selectedViewController];
    //: } else {
    } else {
        //: return viewController;
        return viewController;
    }
}


//: @end
@end

Byte * TingMessageDataToCache(Byte *data) {
    int textRecord = data[0];
    int contentScale = data[1];
    int mobileKey = data[2];
    if (!textRecord) return data + mobileKey;
    for (int i = 0; i < contentScale / 2; i++) {
        int begin = mobileKey + i;
        int end = mobileKey + contentScale - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[mobileKey + contentScale] = 0;
    return data + mobileKey;
}

NSString *StringFromTingMessageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TingMessageDataToCache(data)];
}  
