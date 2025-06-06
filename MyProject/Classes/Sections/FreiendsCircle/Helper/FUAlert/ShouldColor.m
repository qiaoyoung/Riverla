
#import <Foundation/Foundation.h>

NSString *StringFromHazardData(Byte *data);        


//: titleTextColor
Byte kStr_entryTitle[] = {25, 14, 2, 11, 223, 197, 255, 199, 178, 190, 198, 114, 103, 114, 106, 99, 82, 99, 118, 114, 65, 109, 106, 109, 112, 64};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldColor.m
//
//  Created by 项林平 on 2019/9/25.
//

// __M_A_C_R_O__
//: #import "FUAlertManager.h"
#import "ShouldColor.h"
//: #import "FUAlertController.h"
#import "CaseViewController.h"

//: @implementation FUAlertManager
@implementation ShouldColor

//: + (void)showAlertWithTitle:(NSString *)titleString
+ (void)enable:(NSString *)titleString
                   //: message:(NSString *)messageString
                   top:(NSString *)messageString
                    //: cancel:(NSString *)cancelString
                    input:(NSString *)cancelString
                   //: confirm:(NSString *)confirmString
                   button:(NSString *)confirmString
              //: inController:(UIViewController *)viewController
              totalelligenceInformation:(UIViewController *)viewController
            //: confirmHandler:(void (^)(void))confirm
            max:(void (^)(void))confirm
             //: cancelHandler:(void (^)(void))cancel {
             label:(void (^)(void))cancel {
    //: if (!cancelString && !confirmString) {
    if (!cancelString && !confirmString) {
        //: return;
        return;
    }
    //: FUAlertModel *alertModel = [[FUAlertModel alloc] initWithTitle:titleString message:messageString style:UIAlertControllerStyleAlert];
    FlushModel *alertModel = [[FlushModel alloc] initWithScaleOf:titleString image:messageString should:UIAlertControllerStyleAlert];
    //: __block UIViewController *currentViewController = viewController;
    __block UIViewController *currentViewController = viewController;
    //: [FUAlertController makeAlert:^(FUAlertController * _Nonnull controller) {
    [CaseViewController dedication:^(CaseViewController * _Nonnull controller) {
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
            [cancelAction setValue:[UIColor colorWithRed:44/255.0 green:46/255.0 blue:48/255.0 alpha:1.0] forKey:StringFromHazardData(kStr_entryTitle)];
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
            [confirmAction setValue:[UIColor colorWithRed:94/255.0 green:199/255.0 blue:254/255.0 alpha:1.0] forKey:StringFromHazardData(kStr_entryTitle)];
            //: [items addObject:confirmAction];
            [items addObject:confirmAction];
        }
        //: if (!currentViewController) {
        if (!currentViewController) {
            //: currentViewController = [self topViewController];
            currentViewController = [self item];
        }
        //: if (!currentViewController) {
        if (!currentViewController) {
            //: NSLog(@"FUAlert: viewController can not be nil!");
            //: return;
            return;
        }
        //: controller.actionItems(items).showAlert(currentViewController);
        controller.subItems(items).outsideImage(currentViewController);
    //: } alertModel:alertModel];
    } sessionModel:alertModel];
}
//: + (void)showActionSheetWithTitle:(NSString *)titleString
+ (void)showInfoHandler:(NSString *)titleString
                         //: message:(NSString *)messageString
                         messageByStatus:(NSString *)messageString
                          //: cancel:(NSString *)cancelString
                          index:(NSString *)cancelString
                    //: inController:(UIViewController *)viewController
                    background:(UIViewController *)viewController
                      //: sourceView:(UIView *)sourceView
                      post:(UIView *)sourceView
                         //: actions:(NSArray<NSString *> *)actions
                         streetwise:(NSArray<NSString *> *)actions
                   //: actionHandler:(void (^)(NSInteger))actionHandler {
                   crop:(void (^)(NSInteger))actionHandler {
    //: if (actions.count == 0) {
    if (actions.count == 0) {
        //: return;
        return;
    }
    //: FUAlertModel *alertModel = [[FUAlertModel alloc] initWithTitle:titleString message:messageString style:UIAlertControllerStyleActionSheet];
    FlushModel *alertModel = [[FlushModel alloc] initWithScaleOf:titleString image:messageString should:UIAlertControllerStyleActionSheet];
    //: __block UIViewController *currentViewController = viewController;
    __block UIViewController *currentViewController = viewController;
    //: [FUAlertController makeAlert:^(FUAlertController * _Nonnull controller) {
    [CaseViewController dedication:^(CaseViewController * _Nonnull controller) {
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
            currentViewController = [self item];
        }
        //: if (!currentViewController) {
        if (!currentViewController) {
            //: NSLog(@"FUAlert: viewController can not be nil!");
            //: return;
            return;
        }
        //: controller.actionItems(items).sourceView(sourceView).showAlert(currentViewController);
        controller.subItems(items).option(sourceView).outsideImage(currentViewController);
    //: } alertModel:alertModel];
    } sessionModel:alertModel];
}

//: + (UIViewController *)topViewController {
+ (UIViewController *)item {
    //: UIViewController *root = [UIApplication sharedApplication].delegate.window.rootViewController;
    UIViewController *root = [UIApplication sharedApplication].delegate.window.rootViewController;
    //: if (!root) {
    if (!root) {
        //: root = [UIApplication sharedApplication].windows.firstObject.rootViewController;
        root = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    }
    //: return [self currentViewControllerWithRootViewController:root];
    return [self quantityerval:root];
}

//: + (UIViewController *)currentViewControllerWithRootViewController:(UIViewController *)viewController {
+ (UIViewController *)quantityerval:(UIViewController *)viewController {
    //: if (viewController.presentedViewController) {
    if (viewController.presentedViewController) {
        //: return [self currentViewControllerWithRootViewController:viewController.presentedViewController];
        return [self quantityerval:viewController.presentedViewController];
    //: } else if ([viewController isKindOfClass:[UINavigationController class]]) {
    } else if ([viewController isKindOfClass:[UINavigationController class]]) {
        //: UINavigationController *navigation = (UINavigationController *)viewController;
        UINavigationController *navigation = (UINavigationController *)viewController;
        //: return [self currentViewControllerWithRootViewController:navigation.visibleViewController];
        return [self quantityerval:navigation.visibleViewController];
    //: } else if ([viewController isKindOfClass:[UITabBarController class]]) {
    } else if ([viewController isKindOfClass:[UITabBarController class]]) {
        //: UITabBarController *tabBar = (UITabBarController *)viewController;
        UITabBarController *tabBar = (UITabBarController *)viewController;
        //: return [self currentViewControllerWithRootViewController:tabBar.selectedViewController];
        return [self quantityerval:tabBar.selectedViewController];
    //: } else {
    } else {
        //: return viewController;
        return viewController;
    }
}


//: @end
@end

Byte * HazardDataToCache(Byte *data) {
    int scare = data[0];
    int powder = data[1];
    Byte alley = data[2];
    int bindDate = data[3];
    if (!scare) return data + bindDate;
    for (int i = bindDate; i < bindDate + powder; i++) {
        int value = data[i] + alley;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[bindDate + powder] = 0;
    return data + bindDate;
}

NSString *StringFromHazardData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HazardDataToCache(data)];
}
