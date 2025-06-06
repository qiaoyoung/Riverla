// __DEBUG__
// __CLOSE_PRINT__
//
//  PopCellViewController.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/4/20.
//  Copyright (c) 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMViewControllerDelegate;
@protocol WithDelegate;

//: @interface HMViewController : UIViewController <UIGestureRecognizerDelegate> {
@interface PopCellViewController : UIViewController <UIGestureRecognizerDelegate> {
    //: __weak id<HMViewControllerDelegate> _viewControllerDelegate;
    __weak id<WithDelegate> _viewControllerDelegate;
}
//: @property (nonatomic,weak) id<HMViewControllerDelegate> viewControllerDelegate;
@property (nonatomic,weak) id<WithDelegate> viewControllerDelegate;


//系统返回手势改装
//: - (void)enableFullScreenPopGesture:(BOOL)enable;
- (void)crimson:(BOOL)enable;

//: @end
@end




//: @protocol HMViewControllerDelegate <NSObject>
@protocol WithDelegate <NSObject>

//: @optional
@optional
//: - (void)viewController:(HMViewController *)viewController key:(NSString *)key infomation:(id)infomation;
- (void)exhibit:(PopCellViewController *)viewController icon:(NSString *)key send:(id)infomation;

//: @end
@end




//: @interface UIViewController (HM)
@interface UIViewController (HM)

//: - (void)showEmptyView;
- (void)withLanguage;
//: - (void)showEmptyViewWithMessage:(NSString *)message;
- (void)readout:(NSString *)message;
//: - (void)showEmptyViewWithImageName:(NSString *)imageName inView:(UIView *)inView;
- (void)rangeFilename:(NSString *)imageName info:(UIView *)inView;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView;
- (void)tingMust:(NSString *)message searched_strong:(UIView *)inView;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView imageName:(NSString *)imageName;
- (void)inwards:(NSString *)message inwardsScale:(UIView *)inView pop:(NSString *)imageName;
//: - (void)hideEmptyViewInView:(UIView *)view;
- (void)director:(UIView *)view;
//: - (void)hideEmptyView;
- (void)addTitle;


/**
 子类重写，无网络的处理
 重写这个方法：无网络时，弹出无网络页面，点击刷新数据
 不重写：不会弹出无网络页面
 */
//: - (BOOL)canShowNotNetView;
- (BOOL)frame;
//: - (void)refrushWithNotNet;
- (void)associateImage;



//: @end
@end