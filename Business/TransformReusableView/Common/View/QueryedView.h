// __DEBUG__
// __CLOSE_PRINT__
//
//  QueryedView.h
//  NIM
//
//  Created by chris on 15/12/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESPageView;
@class QueryedView;

//: @protocol NTESPageViewDataSource <NSObject>
@protocol TingFrame <NSObject>
//: - (NSInteger)numberOfPages: (NTESPageView *)pageView;
- (NSInteger)teammed: (QueryedView *)pageView;
//: - (UIView *)pageView: (NTESPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)time: (QueryedView *)pageView index: (NSInteger)index;
//: @end
@end

//: @protocol NTESPageViewDelegate <NSObject>
@protocol RangeTo <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (NTESPageView *)pageView
- (void)chance: (QueryedView *)pageView
             //: currentIndex: (NSInteger)index
             lightImage: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               date: (NSInteger)pages;

//: - (void)pageViewDidScroll: (NTESPageView *)pageView;
- (void)presses: (QueryedView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)deviceAnd;
//: @end
@end


//: @interface NTESPageView : UIView<UIScrollViewDelegate>
@interface QueryedView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<NTESPageViewDataSource> dataSource;
@property (nonatomic,weak) id<TingFrame> dataSource;
//: @property (nonatomic,weak) id<NTESPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<RangeTo> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)color: (NSInteger)pages;
//: - (void)reloadData;
- (void)modify;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)infoOpen: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)eigenvalueOfAMatrix;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)humanArray:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                performance:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)off:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         view:(NSTimeInterval)duration;
//: @end
@end