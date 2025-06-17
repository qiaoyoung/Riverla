// __DEBUG__
// __CLOSE_PRINT__
//
//  ActionDisableKey.h
//  NIM
//
//  Created by chris on 16/1/31.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSInteger, NTESNavigationAnimationType) {
typedef NS_ENUM(NSInteger, NTESNavigationAnimationType) {
    //: NTESNavigationAnimationTypeNormal,
    NTESNavigationAnimationTypeNormal,
    //: NTESNavigationAnimationTypeCross,
    NTESNavigationAnimationTypeCross,
//: };
};

//: @class NTESNavigationAnimator;
@class ActionDisableKey;

//: @protocol NTESNavigationAnimatorDelegate <NSObject>
@protocol NavigationRecentDelegate <NSObject>

//: - (void)animationWillStart:(NTESNavigationAnimator *)animator;
- (void)sessions:(ActionDisableKey *)animator;

//: - (void)animationDidEnd:(NTESNavigationAnimator *)animator;
- (void)addTeam:(ActionDisableKey *)animator;

//: @end
@end


//: @interface NTESNavigationAnimator : NSObject <UIViewControllerAnimatedTransitioning>
@interface ActionDisableKey : NSObject <UIViewControllerAnimatedTransitioning>

//: @property (nonatomic,weak) UINavigationController *navigationController;
@property (nonatomic,weak) UINavigationController *navigationController;

//: @property (nonatomic,assign) UINavigationControllerOperation currentOpearation;
@property (nonatomic,assign) UINavigationControllerOperation currentOpearation;

//: @property (nonatomic,assign) NTESNavigationAnimationType animationType;
@property (nonatomic,assign) NTESNavigationAnimationType animationType;

//: @property (nonatomic,weak) id<NTESNavigationAnimatorDelegate> delegate;
@property (nonatomic,weak) id<NavigationRecentDelegate> delegate;

//: - (instancetype)initWithNavigationController:(UINavigationController *)navigationController;
- (instancetype)initWithNavigation:(UINavigationController *)navigationController;

//: @end
@end