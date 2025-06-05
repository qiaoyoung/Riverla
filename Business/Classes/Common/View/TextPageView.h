// __DEBUG__
// __CLOSE_PRINT__
//
//  TextPageView.h
//  NIM
//
//  Created by chris on 15/12/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESPageView;
@class TextPageView;

//: @protocol NTESPageViewDataSource <NSObject>
@protocol MShowSource <NSObject>
//: - (NSInteger)numberOfPages: (NTESPageView *)pageView;
- (NSInteger)tapBy: (TextPageView *)pageView;
//: - (UIView *)pageView: (NTESPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)ting: (TextPageView *)pageView scalePressedShould: (NSInteger)index;
//: @end
@end

//: @protocol NTESPageViewDelegate <NSObject>
@protocol PinDelegate <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (NTESPageView *)pageView
- (void)priority: (TextPageView *)pageView
             //: currentIndex: (NSInteger)index
             cleanName: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               pageSize: (NSInteger)pages;

//: - (void)pageViewDidScroll: (NTESPageView *)pageView;
- (void)spatialArrangement: (TextPageView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)lengthUser;
//: @end
@end


//: @interface NTESPageView : UIView<UIScrollViewDelegate>
@interface TextPageView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<NTESPageViewDataSource> dataSource;
@property (nonatomic,weak) id<MShowSource> dataSource;
//: @property (nonatomic,weak) id<NTESPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<PinDelegate> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)pageIn: (NSInteger)pages;
//: - (void)reloadData;
- (void)complete;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)with: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)bottomImage;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)forward:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                orientation:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)with:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         toKey:(NSTimeInterval)duration;
//: @end
@end