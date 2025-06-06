
#import <Foundation/Foundation.h>

NSString *StringFromLungData(Byte *data);


//: useClearBar
Byte kStr_respectTitle[] = {75, 11, 13, 8, 139, 147, 183, 72, 130, 128, 114, 80, 121, 114, 110, 127, 79, 110, 127, 135};


//: back_white
Byte kStr_historicallyTitle[] = {48, 10, 49, 8, 181, 41, 48, 208, 147, 146, 148, 156, 144, 168, 153, 154, 165, 150, 112};

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIViewController+MessageInput.m
//  NIM
//
//  Created by chris on 15/6/15.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIViewController+Swizzling.h"
#import "UIViewController+MessageInput.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "SwizzlingDefine.h"
#import "SwizzlingDefine.h"
//: #import "UIResponder+NTESFirstResponder.h"
#import "UIResponder+FirstMHuman.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "UIImage+NTESColor.h"
#import "UIImage+Background.h"

//: @implementation UIViewController (Swizzling)
@implementation UIViewController (MessageInput)

//: + (void)load{
+ (void)load{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: swizzling_exchangeMethod([UIViewController class] ,@selector(viewWillAppear:), @selector(swizzling_viewWillAppear:));
        swizzling_exchangeMethod([UIViewController class] ,@selector(viewWillAppear:), @selector(tinkling:));
        //: swizzling_exchangeMethod([UIViewController class] ,@selector(viewDidAppear:), @selector(swizzling_viewDidAppear:));
        swizzling_exchangeMethod([UIViewController class] ,@selector(viewDidAppear:), @selector(ofs:));
        //: swizzling_exchangeMethod([UIViewController class] ,@selector(viewWillDisappear:), @selector(swizzling_viewWillDisappear:));
        swizzling_exchangeMethod([UIViewController class] ,@selector(viewWillDisappear:), @selector(viewBy:));
        //: swizzling_exchangeMethod([UIViewController class] ,@selector(viewDidLoad), @selector(swizzling_viewDidLoad));
        swizzling_exchangeMethod([UIViewController class] ,@selector(viewDidLoad), @selector(spaceString));
        //: swizzling_exchangeMethod([UIViewController class], @selector(initWithNibName:bundle:), @selector(swizzling_initWithNibName:bundle:));
        swizzling_exchangeMethod([UIViewController class], @selector(initWithNibName:bundle:), @selector(total:custom:));
    //: });
    });
}

//: #pragma mark - ViewDidLoad
#pragma mark - ViewDidLoad
//: - (void)swizzling_viewDidLoad{
- (void)spaceString{
    //: if (self.navigationController) {
    if (self.navigationController) {
        //: UIImage *buttonNormal = [[UIImage imageNamed:@"back_white"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UIImage *buttonNormal = [[UIImage imageNamed:StringFromLungData(kStr_historicallyTitle)] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //: [self.navigationController.navigationBar setBackIndicatorImage:buttonNormal];
        [self.navigationController.navigationBar setBackIndicatorImage:buttonNormal];
        //: [self.navigationController.navigationBar setBackIndicatorTransitionMaskImage:buttonNormal];
        [self.navigationController.navigationBar setBackIndicatorTransitionMaskImage:buttonNormal];
        //: UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
        //: self.navigationItem.backBarButtonItem = backItem;
        self.navigationItem.backBarButtonItem = backItem;
    }
    //: self.modalPresentationStyle = UIModalPresentationFullScreen;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self swizzling_viewDidLoad];
    [self spaceString];
}


//: #pragma mark - InitWithNibName:bundle:
#pragma mark - InitWithNibName:bundle:
//如果希望vchidesBottomBarWhenPushed为NO的话，请在vc init方法之后调用vc.hidesBottomBarWhenPushed = NO;
//: - (instancetype)swizzling_initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
- (instancetype)total:(NSString *)nibNameOrNil custom:(NSBundle *)nibBundleOrNil{
    //: id instance = [self swizzling_initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    id instance = [self total:nibNameOrNil custom:nibBundleOrNil];
    //: if (instance) {
    if (instance) {
        //: if ([self isKindOfClass:NSClassFromString(@"NTESSessionListViewController")] ||
        if ([self isKindOfClass:NSClassFromString(@"LatchkeyViewController")] ||
            //: [self isKindOfClass:NSClassFromString(@"CCCContactsViewController")] ||
            [self isKindOfClass:NSClassFromString(@"InputViewController")] ||
            //: [self isKindOfClass:NSClassFromString(@"NTESMainCenterViewController")] ){
            [self isKindOfClass:NSClassFromString(@"MainViewController")] ){
//            UITabBar *tabbar = [UITabBar appearance];
//            tabbar.hidden = NO;
//            tabbar.top = SCREEN_HEIGHT - tabbar.height;
        //: } else {
        } else {
            //: self.hidesBottomBarWhenPushed = YES;
            self.hidesBottomBarWhenPushed = YES;
//            UITabBar *tabbar = [UITabBar appearance];
//            tabbar.hidden = YES;
//            tabbar.top = SCREEN_HEIGHT;
        }
    }
    //: return instance;
    return instance;
}

//: #pragma mark - ViewWillAppear
#pragma mark - ViewWillAppear
//: static char UIFirstResponderViewAddress;
static char let_greenValue;

//: - (void)swizzling_viewWillAppear:(BOOL)animated{
- (void)tinkling:(BOOL)animated{
    //: [self swizzling_viewWillAppear:animated];
    [self tinkling:animated];


    // 设置导航条背景图
//    UIImage *bgImg = [MessageTitleHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionLevel];
    //: if (@available(iOS 15.0, *)) {
    if (@available(iOS 15.0, *)) {
        //: UINavigationBarAppearance *appearance = [[UINavigationBarAppearance alloc] init];
        UINavigationBarAppearance *appearance = [[UINavigationBarAppearance alloc] init];
//        [appearance configureWithOpaqueBackground];
//        appearance.backgroundImage = bgImg;
        //: appearance.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1];
        appearance.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1];
        //: appearance.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]};
        appearance.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]};

        //: self.navigationController.navigationBar.standardAppearance = appearance;
        self.navigationController.navigationBar.standardAppearance = appearance;
        //: self.navigationController.navigationBar.scrollEdgeAppearance = appearance;
        self.navigationController.navigationBar.scrollEdgeAppearance = appearance;
    //: }else{
    }else{
        //: self.navigationController.navigationBar.titleTextAttributes =
        self.navigationController.navigationBar.titleTextAttributes =
        //: @{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]};
        @{NSForegroundColorAttributeName:[UIColor blackColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]};
    }

    //: [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    //: self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    //: self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.translucent = YES;
//



    //: self.navigationItem.leftBarButtonItem.tintColor = [UIColor blackColor];
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor blackColor];
    //: self.navigationItem.backBarButtonItem.tintColor = [UIColor blackColor];
    self.navigationItem.backBarButtonItem.tintColor = [UIColor blackColor];
    //: self.navigationItem.rightBarButtonItem.tintColor = [UIColor blackColor];
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor blackColor];
}

//: #pragma mark - ViewDidAppear
#pragma mark - ViewDidAppear
//: - (void)swizzling_viewDidAppear:(BOOL)animated{
- (void)ofs:(BOOL)animated{
    //: [self swizzling_viewDidAppear:animated];
    [self ofs:animated];
    //: UIView *view = objc_getAssociatedObject(self, &UIFirstResponderViewAddress);
    UIView *view = objc_getAssociatedObject(self, &let_greenValue);
    //: [view becomeFirstResponder];
    [view becomeFirstResponder];
}


//: #pragma mark - ViewWillDisappear
#pragma mark - ViewWillDisappear

//: - (void)swizzling_viewWillDisappear:(BOOL)animated{
- (void)viewBy:(BOOL)animated{
    //: [self swizzling_viewWillDisappear:animated];
    [self viewBy:animated];
    //: UIView *view = (UIView *)[UIResponder currentFirstResponder];
    UIView *view = (UIView *)[UIResponder past];
    //: if ([view isKindOfClass:[UIView class]] && view.viewController == self) {
    if ([view isKindOfClass:[UIView class]] && view.perspective == self) {
        //: objc_setAssociatedObject(self, &UIFirstResponderViewAddress, view, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        objc_setAssociatedObject(self, &let_greenValue, view, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        //: [view resignFirstResponder];
        [view resignFirstResponder];
    //: }else{
    }else{
        //: objc_setAssociatedObject(self, &UIFirstResponderViewAddress, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        objc_setAssociatedObject(self, &let_greenValue, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

//: #pragma mark - Private
#pragma mark - Private
//: - (BOOL)swizzling_isUseClearBar
- (BOOL)bringHome
{
    //: SEL sel = NSSelectorFromString(@"useClearBar");
    SEL sel = NSSelectorFromString(StringFromLungData(kStr_respectTitle));
    //: BOOL use = NO;
    BOOL use = NO;
    //: if ([self respondsToSelector:sel]) {
    if ([self respondsToSelector:sel]) {
        //: SuppressPerformSelectorLeakWarning(use = (BOOL)[self performSelector:sel]);
        SuppressPerformSelectorLeakWarning(use = (BOOL)[self performSelector:sel]);
    }
    //: return use;
    return use;
}


//: @end
@end

Byte * LungDataToCache(Byte *data) {
    int poneMoth = data[0];
    int restrengthen = data[1];
    Byte dissimilar = data[2];
    int whip = data[3];
    if (!poneMoth) return data + whip;
    for (int i = whip; i < whip + restrengthen; i++) {
        int value = data[i] - dissimilar;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[whip + restrengthen] = 0;
    return data + whip;
}

NSString *StringFromLungData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)LungDataToCache(data)];
}
