// __DEBUG__
// __CLOSE_PRINT__
//
//  DetailViewController.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/4/20.
//  Copyright (c) 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMViewControllerDelegate;
@protocol ErgodicDelegate;

//: @interface HMViewController : UIViewController <UIGestureRecognizerDelegate> {
@interface DetailViewController : UIViewController <UIGestureRecognizerDelegate> {
    //: __weak id<HMViewControllerDelegate> _viewControllerDelegate;
    __weak id<ErgodicDelegate> _viewControllerDelegate;
}
//: @property (nonatomic,weak) id<HMViewControllerDelegate> viewControllerDelegate;
@property (nonatomic,weak) id<ErgodicDelegate> viewControllerDelegate;


//系统返回手势改装
//: - (void)enableFullScreenPopGesture:(BOOL)enable;
- (void)textGesture:(BOOL)enable;

//: @end
@end




//: @protocol HMViewControllerDelegate <NSObject>
@protocol ErgodicDelegate <NSObject>

//: @optional
@optional
//: - (void)viewController:(HMViewController *)viewController key:(NSString *)key infomation:(id)infomation;
- (void)successEnd:(DetailViewController *)viewController model:(NSString *)key count:(id)infomation;

//: @end
@end




//: @interface UIViewController (HM)
@interface UIViewController (HM)

//: - (void)showEmptyView;
- (void)nameOpen;
//: - (void)showEmptyViewWithMessage:(NSString *)message;
- (void)display:(NSString *)message;
//: - (void)showEmptyViewWithImageName:(NSString *)imageName inView:(UIView *)inView;
- (void)itemView:(NSString *)imageName underOf:(UIView *)inView;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView;
- (void)fruitage:(NSString *)message at:(UIView *)inView;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView imageName:(NSString *)imageName;
- (void)userWith:(NSString *)message ting:(UIView *)inView specification:(NSString *)imageName;
//: - (void)hideEmptyViewInView:(UIView *)view;
- (void)addEmpty:(UIView *)view;
//: - (void)hideEmptyView;
- (void)popTitle;


/**
 子类重写，无网络的处理
 重写这个方法：无网络时，弹出无网络页面，点击刷新数据
 不重写：不会弹出无网络页面
 */
//: - (BOOL)canShowNotNetView;
- (BOOL)makeLimit;
//: - (void)refrushWithNotNet;
- (void)ting;



//: @end
@end