//
//  FFFPageView.h
// MyUserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FFFPageView;

@protocol FFFPageViewDataSource <NSObject>
- (NSInteger)numberOfPages: (FFFPageView *)pageView;
- (UIView *)pageView: (FFFPageView *)pageView viewInPage: (NSInteger)index;
@end

@protocol FFFPageViewDelegate <NSObject>
@optional
- (void)pageViewScrollEnd: (FFFPageView *)pageView
             currentIndex: (NSInteger)index
               totolPages: (NSInteger)pages;

- (void)pageViewDidScroll: (FFFPageView *)pageView;
- (BOOL)needScrollAnimation;
@end


@interface FFFPageView : UIView<UIScrollViewDelegate>
@property (nonatomic,strong)    UIScrollView   *scrollView;
@property (nonatomic,weak)    id<FFFPageViewDataSource>  dataSource;
@property (nonatomic,weak)    id<FFFPageViewDelegate>    pageViewDelegate;
- (void)scrollToPage: (NSInteger)pages;
- (void)reloadData;
- (UIView *)viewAtIndex: (NSInteger)index;
- (NSInteger)currentPage;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                                duration:(NSTimeInterval)duration;

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                                         duration:(NSTimeInterval)duration;
@end
