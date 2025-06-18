// __DEBUG__
// __CLOSE_PRINT__
//
//  AtView.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFPageView;
@class AtView;

//: @protocol FFFPageViewDataSource <NSObject>
@protocol ViewSource <NSObject>
//: - (NSInteger)numberOfPages: (FFFPageView *)pageView;
- (NSInteger)teammed: (AtView *)pageView;
//: - (UIView *)pageView: (FFFPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)time: (AtView *)pageView index: (NSInteger)index;
//: @end
@end

//: @protocol FFFPageViewDelegate <NSObject>
@protocol ViewTransform <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (FFFPageView *)pageView
- (void)chance: (AtView *)pageView
             //: currentIndex: (NSInteger)index
             lightImage: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               date: (NSInteger)pages;

//: - (void)pageViewDidScroll: (FFFPageView *)pageView;
- (void)presses: (AtView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)deviceAnd;
//: @end
@end


//: @interface FFFPageView : UIView<UIScrollViewDelegate>
@interface AtView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<FFFPageViewDataSource> dataSource;
@property (nonatomic,weak) id<ViewSource> dataSource;
//: @property (nonatomic,weak) id<FFFPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<ViewTransform> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)spreadAnalogDigitalConverterInputPage: (NSInteger)pages;
//: - (void)reloadData;
- (void)location;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)repay: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)extraPage;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)bubble:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                table:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)color:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         red:(NSTimeInterval)duration;
//: @end
@end