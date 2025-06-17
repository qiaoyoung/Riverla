// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxFrameView.h
//  MaxFrameView
//
//  Created by youyou on 16/12/5.
//  Copyright © 2016年 iceyouyou. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class UUMarqueeView;
@class MaxFrameView;

//: typedef NS_ENUM(NSUInteger, UUMarqueeViewDirection) {
typedef NS_ENUM(NSUInteger, UUMarqueeViewDirection) {
    //: UUMarqueeViewDirectionUpward, 
    UUMarqueeViewDirectionUpward, // scroll from bottom to top
    //: UUMarqueeViewDirectionLeftward 
    UUMarqueeViewDirectionLeftward // scroll from right to left
//: };
};

//: #pragma mark - UUMarqueeViewDelegate
#pragma mark - TitleDelegate
//: @protocol UUMarqueeViewDelegate <NSObject>
@protocol TitleDelegate <NSObject>
//: - (NSUInteger)numberOfDataForMarqueeView:(UUMarqueeView*)marqueeView;
- (NSUInteger)requestName:(MaxFrameView*)marqueeView;
//: - (void)createItemView:(UIView*)itemView forMarqueeView:(UUMarqueeView*)marqueeView;
- (void)performanceFull:(UIView*)itemView language:(MaxFrameView*)marqueeView;
//: - (void)updateItemView:(UIView*)itemView atIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView;
- (void)shade:(UIView*)itemView flush:(NSUInteger)index error:(MaxFrameView*)marqueeView;
//: @optional
@optional
//: - (NSUInteger)numberOfVisibleItemsForMarqueeView:(UUMarqueeView*)marqueeView; 
- (NSUInteger)imaged:(MaxFrameView*)marqueeView; // only for [UUMarqueeViewDirectionUpward]
//: - (CGFloat)itemViewWidthAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView; 
- (CGFloat)replacementStyle:(NSUInteger)index titleItem:(MaxFrameView*)marqueeView; // only for [UUMarqueeViewDirectionLeftward]
//: - (CGFloat)itemViewHeightAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView; 
- (CGFloat)team:(NSUInteger)index should:(MaxFrameView*)marqueeView; // only for [UUMarqueeViewDirectionUpward] and [useDynamicHeight = YES]
//: - (void)didTouchItemViewAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView;
- (void)beggarMyNeighborPolicyAt:(NSUInteger)index extra:(MaxFrameView*)marqueeView;
//: @end
@end

//: #pragma mark - UUMarqueeView
#pragma mark - MaxFrameView
//: @interface UUMarqueeView : UIView
@interface MaxFrameView : UIView
//: @property (nonatomic, weak) id<UUMarqueeViewDelegate> delegate;
@property (nonatomic, weak) id<TitleDelegate> delegate;
//: @property (nonatomic, assign) NSTimeInterval timeIntervalPerScroll;
@property (nonatomic, assign) NSTimeInterval timeIntervalPerScroll;
//: @property (nonatomic, assign) NSTimeInterval timeDurationPerScroll; 
@property (nonatomic, assign) NSTimeInterval timeDurationPerScroll; // only for [UUMarqueeViewDirectionUpward] and [useDynamicHeight = NO]
//: @property (nonatomic, assign) BOOL useDynamicHeight; 
@property (nonatomic, assign) BOOL useDynamicHeight; // only for [UUMarqueeViewDirectionUpward]
//: @property (nonatomic, assign) float scrollSpeed; 
@property (nonatomic, assign) float scrollSpeed; // only for [UUMarqueeViewDirectionLeftward] or [UUMarqueeViewDirectionUpward] with [useDynamicHeight = YES]
//: @property (nonatomic, assign) float itemSpacing; 
@property (nonatomic, assign) float itemSpacing; // only for [UUMarqueeViewDirectionLeftward]
//: @property (nonatomic, assign) BOOL stopWhenLessData; 
@property (nonatomic, assign) BOOL stopWhenLessData; // do not scroll when all data has been shown
//: @property (nonatomic, assign) BOOL clipsToBounds;
@property (nonatomic, assign) BOOL clipsToBounds;
//: @property (nonatomic, assign, getter=isTouchEnabled) BOOL touchEnabled;
@property (nonatomic, assign, getter=isTouchEnabled) BOOL touchEnabled;
//: @property (nonatomic, assign) UUMarqueeViewDirection direction;
@property (nonatomic, assign) UUMarqueeViewDirection direction;
//: - (instancetype)initWithDirection:(UUMarqueeViewDirection)direction;
- (instancetype)initWithWrittenMatter:(UUMarqueeViewDirection)direction;
//: - (instancetype)initWithFrame:(CGRect)frame direction:(UUMarqueeViewDirection)direction;
- (instancetype)initWithUserDirection:(CGRect)frame content:(UUMarqueeViewDirection)direction;
//: - (void)reloadData;
- (void)row;
//: - (void)start;
- (void)stateStart;
//: - (void)pause;
- (void)telecasting;
//: @end
@end

//: #pragma mark - UUMarqueeViewTouchResponder(Private)
#pragma mark - CountFitResponder(Private)
//: @protocol UUMarqueeViewTouchResponder <NSObject>
@protocol CountFitResponder <NSObject>
//: - (void)touchesBegan;
- (void)more;
//: - (void)touchesEndedAtPoint:(CGPoint)point;
- (void)viewPoint:(CGPoint)point;
//: - (void)touchesCancelled;
- (void)toTing;
//: @end
@end

//: #pragma mark - UUMarqueeViewTouchReceiver(Private)
#pragma mark - AmbitView(Private)
//: @interface UUMarqueeViewTouchReceiver : UIView
@interface AmbitView : UIView
//: @property (nonatomic, weak) id<UUMarqueeViewTouchResponder> touchDelegate;
@property (nonatomic, weak) id<CountFitResponder> touchDelegate;
//: @end
@end

//: #pragma mark - UUMarqueeItemView(Private)
#pragma mark - MarqueeIndexView(Private)
//: @interface UUMarqueeItemView : UIView 
@interface MarqueeIndexView : UIView // MarqueeIndexView's [tag] is the index of data source. if none data source then [tag] is -1
//: @property (nonatomic, assign) BOOL didFinishCreate;
@property (nonatomic, assign) BOOL didFinishCreate;
//: @property (nonatomic, assign) CGFloat width; 
@property (nonatomic, assign) CGFloat width; // cache the item width, only for [UUMarqueeViewDirectionLeftward]
//: @property (nonatomic, assign) CGFloat height; 
@property (nonatomic, assign) CGFloat height; // cache the item height, only for [UUMarqueeViewDirectionUpward]
//: - (void)clear;
- (void)tidingsItem;
//: @end
@end