// __DEBUG__
// __CLOSE_PRINT__
//
//  MinorLeagueTeamView.h
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFPageView;
@class MinorLeagueTeamView;

//: @protocol FFFPageViewDataSource <NSObject>
@protocol AppSource <NSObject>
//: - (NSInteger)numberOfPages: (FFFPageView *)pageView;
- (NSInteger)tapBy: (MinorLeagueTeamView *)pageView;
//: - (UIView *)pageView: (FFFPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)ting: (MinorLeagueTeamView *)pageView scalePressedShould: (NSInteger)index;
//: @end
@end

//: @protocol FFFPageViewDelegate <NSObject>
@protocol TopDelegate <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (FFFPageView *)pageView
- (void)priority: (MinorLeagueTeamView *)pageView
             //: currentIndex: (NSInteger)index
             cleanName: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               pageSize: (NSInteger)pages;

//: - (void)pageViewDidScroll: (FFFPageView *)pageView;
- (void)spatialArrangement: (MinorLeagueTeamView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)lengthUser;
//: @end
@end


//: @interface FFFPageView : UIView<UIScrollViewDelegate>
@interface MinorLeagueTeamView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<FFFPageViewDataSource> dataSource;
@property (nonatomic,weak) id<AppSource> dataSource;
//: @property (nonatomic,weak) id<FFFPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<TopDelegate> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)exampleColor: (NSInteger)pages;
//: - (void)reloadData;
- (void)segment;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)flush: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)image;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)all:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                relate:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)executiveSession:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         green:(NSTimeInterval)duration;
//: @end
@end