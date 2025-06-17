// __DEBUG__
// __CLOSE_PRINT__
//
//  UIScrollView+ToteUp.h
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESPullToRefreshView;
@class SizeView;

//: @interface UIScrollView (NTESPullToRefresh)
@interface UIScrollView (ToteUp)

//: typedef NS_ENUM(NSUInteger, NTESPullToRefreshPosition) {
typedef NS_ENUM(NSUInteger, NTESPullToRefreshPosition) {
    //: NTESPullToRefreshPositionTop = 0,
    NTESPullToRefreshPositionTop = 0,
    //: NTESPullToRefreshPositionBottom,
    NTESPullToRefreshPositionBottom,
//: };
};

//: - (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler;
- (void)menuMessage:(void (^)(void))actionHandler;
//: - (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler position:(NTESPullToRefreshPosition)position;
- (void)reloadScale:(void (^)(void))actionHandler pickEnable:(NTESPullToRefreshPosition)position;
//: - (void)triggerPullToRefresh;
- (void)atTrigger;

//: @property (nonatomic, strong, readonly) NTESPullToRefreshView *pullToRefreshView;
@property (nonatomic, strong, readonly) SizeView *pullToRefreshView;
//: @property (nonatomic, assign) BOOL showsPullToRefresh;
@property (nonatomic, assign) BOOL showsPullToRefresh;

//: @end
@end


//: typedef NS_ENUM(NSUInteger, NTESPullToRefreshState) {
typedef NS_ENUM(NSUInteger, NTESPullToRefreshState) {
    //: NTESPullToRefreshStateStopped = 0,
    NTESPullToRefreshStateStopped = 0,
    //: NTESPullToRefreshStateTriggered,
    NTESPullToRefreshStateTriggered,
    //: NTESPullToRefreshStateLoading,
    NTESPullToRefreshStateLoading,
    //: NTESPullToRefreshStateAll = 10
    NTESPullToRefreshStateAll = 10
//: };
};

//: @interface NTESPullToRefreshView : UIView
@interface SizeView : UIView

//: @property (nonatomic, strong) UIColor *arrowColor;
@property (nonatomic, strong) UIColor *arrowColor;
//: @property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIColor *textColor;
//: @property (nonatomic, strong, readonly) UILabel *titleLabel;
@property (nonatomic, strong, readonly) UILabel *titleLabel;
//: @property (nonatomic, strong, readonly) UILabel *subtitleLabel;
@property (nonatomic, strong, readonly) UILabel *subtitleLabel;
//: @property (nonatomic, strong, readwrite) UIColor *activityIndicatorViewColor;
@property (nonatomic, strong, readwrite) UIColor *activityIndicatorViewColor;
//: @property (nonatomic, readwrite) UIActivityIndicatorViewStyle activityIndicatorViewStyle;
@property (nonatomic, readwrite) UIActivityIndicatorViewStyle activityIndicatorViewStyle;

//: @property (nonatomic, readonly) NTESPullToRefreshState state;
@property (nonatomic, readonly) NTESPullToRefreshState state;
//: @property (nonatomic, readonly) NTESPullToRefreshPosition position;
@property (nonatomic, readonly) NTESPullToRefreshPosition position;

//: - (void)setTitle:(NSString *)title forState:(NTESPullToRefreshState)state;
- (void)outside:(NSString *)title sub:(NTESPullToRefreshState)state;
//: - (void)setSubtitle:(NSString *)subtitle forState:(NTESPullToRefreshState)state;
- (void)frontwards:(NSString *)subtitle showMagnitude:(NTESPullToRefreshState)state;
//: - (void)setCustomView:(UIView *)view forState:(NTESPullToRefreshState)state;
- (void)my:(UIView *)view weltanschauung:(NTESPullToRefreshState)state;

//: - (void)startAnimating;
- (void)must;
//: - (void)stopAnimating;
- (void)keyWith;


//: @end
@end