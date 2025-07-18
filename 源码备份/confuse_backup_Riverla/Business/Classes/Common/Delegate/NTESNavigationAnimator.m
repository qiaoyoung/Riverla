//
//  NTESNavigationAnimator.m
//  NIM
//
//  Created by chris on 16/1/31.
//  Copyright © 2016年 Netease. All rights reserved.
//

#import "NTESNavigationAnimator.h"
#import "UIView+NTES.h"
#import "NTESMainTabController.h"
#import <objc/runtime.h>

@implementation NTESNavigationAnimator
CG_INLINE BOOL
OverrideImplementation(Class targetClass, SEL targetSelector, id (^implementationBlock)(Class originClass, SEL originCMD, IMP originIMP)) {
    Method originMethod = class_getInstanceMethod(targetClass, targetSelector);
    if (!originMethod) {
        return NO;
    }
    IMP originIMP = method_getImplementation(originMethod);
    method_setImplementation(originMethod, imp_implementationWithBlock(implementationBlock(targetClass, targetSelector, originIMP)));
    return YES;
}

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (@available(iOS 12.1, *)) { // 解决12.1 的UITabbar 位置显示异常
            OverrideImplementation(NSClassFromString(@"UITabBarButton"), @selector(setFrame:), ^id(__unsafe_unretained Class originClass, SEL originCMD, IMP originIMP) {
                return ^(UIView *selfObject, CGRect firstArgv) {
                    
                    if ([selfObject isKindOfClass:originClass]) {
                        if (!CGRectIsEmpty(selfObject.frame) && CGRectIsEmpty(firstArgv)) {
                            return;
                        }
                    }
                    
                    void (*originSelectorIMP)(id, SEL, CGRect);
                    originSelectorIMP = (void (*)(id, SEL, CGRect))originIMP;
                    originSelectorIMP(selfObject, originCMD, firstArgv);
                };
            });
        }
    });
}

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController
{
    self = [super init];
    if (self) {
        _navigationController = navigationController;
    }
    return self;
}

- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext
{
    return 0.35;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    
    switch (self.currentOpearation) {
        case UINavigationControllerOperationPop:
            [self popAnimation:transitionContext];
            break;
        case UINavigationControllerOperationPush:
            [self pushAnimation:transitionContext];
            break;
        default:
            break;
    }
}


- (void)pushAnimation:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    UIView *containerView = [transitionContext containerView];
    UINavigationController *navigationController = fromViewController.navigationController;
    UITabBarController *tabbarController = fromViewController.tabBarController;
    //使用xib可能会出现view的size不对的情况
    CGRect frame = fromViewController.view.frame;
    if ((toViewController.edgesForExtendedLayout & UIRectEdgeTop) == 0)
    {
        frame = CGRectOffset(navigationController.view.frame, 0, navigationController.navigationBar.bottom);
    }
    if ((toViewController.edgesForExtendedLayout & UIRectEdgeBottom) == 0) {
        CGRect slice     = CGRectZero;
        CGRect remainder = CGRectZero;
        CGRectDivide(frame, &slice, &remainder, tabbarController.tabBar.height, CGRectMaxYEdge);
        frame = remainder;
    }
    toViewController.view.frame = frame;
    
    [containerView addSubview:fromViewController.view];
    [containerView addSubview:toViewController.view];
    
    
    CGFloat width  = containerView.width;
    toViewController.view.left = width;
    
    [self callAnimationWillStart];
    CGFloat duration = 0.35;
    
    [UIView animateWithDuration:duration animations:^{
        fromViewController.view.right = width * 0.5;
        toViewController.view.right  = width;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        [self callAnimationDidEnd];
    }];
}



- (void)popAnimation:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    CGFloat snapshootHeight = [UIDevice vg_statusBarHeight] + fromViewController.navigationController.navigationBar.height;

    UIView          *fakeBar = [fromViewController.navigationController.view
                                resizableSnapshotViewFromRect:CGRectMake(0, 0,fromViewController.view.width, snapshootHeight) afterScreenUpdates:NO withCapInsets:UIEdgeInsetsZero];
    UINavigationBar *tureBar = toViewController.navigationController.navigationBar;
    
    BOOL hidesBottomBar = toViewController.hidesBottomBarWhenPushed && self.navigationController.viewControllers.firstObject != toViewController;
    
    UITabBar *tabbar = [NTESMainTabController instance].tabBar;
    UIView *containerView = [transitionContext containerView];
    
    [containerView addSubview:toViewController.view];
    if (!hidesBottomBar) {
        [containerView addSubview:tabbar];
    }
    if (self.animationType == NTESNavigationAnimationTypeCross) {
        [containerView addSubview:tureBar];
        [fromViewController.view addSubview:fakeBar];
    }
    [containerView addSubview:fromViewController.view];
    
    
    CGFloat width  = containerView.width;
    
    toViewController.view.right = 0.f;
    tabbar.right = 0.f;
    
    [self callAnimationWillStart];
    CGFloat duration = 0.35;
    [UIView animateWithDuration:duration animations:^{
        fromViewController.view.left = width;
        toViewController.view.right  = width;
        tabbar.right = width;
        fakeBar.alpha = 0.0;
    } completion:^(BOOL finished) {
        [[NTESMainTabController instance].view addSubview:tabbar];
        [toViewController.navigationController.view addSubview:tureBar];
        [fakeBar removeFromSuperview];
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        [self callAnimationDidEnd];
    }];
}

- (void)callAnimationWillStart
{
    if ([self.delegate respondsToSelector:@selector(animationWillStart:)]) {
        [self.delegate animationWillStart:self];
    }
}

- (void)callAnimationDidEnd
{
    if ([self.delegate respondsToSelector:@selector(animationDidEnd:)]) {
        [self.delegate animationDidEnd:self];
    }
}

@end
