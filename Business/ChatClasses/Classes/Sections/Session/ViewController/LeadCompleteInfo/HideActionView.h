// __DEBUG__
// __CLOSE_PRINT__
//
//  HideActionView.h
//  sohunews
//
//  Created by tianyulong on 2020/4/20.
//  Copyright © 2020 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "UUMarqueeView.h"
#import "MaxFrameView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef enum : NSUInteger {
typedef enum : NSUInteger {
    //: CompletingUserInfoType_headicon = 1,
    CompletingUserInfoType_headicon = 1,
//: } CompletingUserInfoType;
} CompletingUserInfoType;

//: @interface SNLeadCompleteInfo : UIView
@interface HideActionView : UIView

//: @property (nonatomic, strong) UUMarqueeView *leftwardMarqueeView;
@property (nonatomic, strong) MaxFrameView *leftwardMarqueeView;

//: @property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *title;
//: @property (nonatomic, copy) NSString *actionTitle;
@property (nonatomic, copy) NSString *actionTitle;
//: @property (nonatomic, assign) CompletingUserInfoType completeType;
@property (nonatomic, assign) CompletingUserInfoType completeType;

//: @property (nonatomic, copy) void (^completion)(void);
@property (nonatomic, copy) void (^completion)(void);
//: @property (nonatomic, copy) void (^cancleCompletion)(void);
@property (nonatomic, copy) void (^cancleCompletion)(void);

/// 引导用户完善资料，显示提示框
//: + (instancetype)showTipViewForCompletingUserInfolWithDelay:(float)delay
+ (instancetype)search:(float)delay
                                                 //: superView:(UIView *)superView
                                                 frame:(UIView *)superView
                                    //: CompletingUserInfoType:(CompletingUserInfoType)type
                                    bunker:(CompletingUserInfoType)type
                                               //: withMessage:(NSString *)msg
                                               sessionComment:(NSString *)msg
                                                 //: trueBlock:(void (^)(void))trueBlock
                                                 showMail:(void (^)(void))trueBlock
                                               //: cancleBlock:(void (^)(void))callback;
                                               forefront:(void (^)(void))callback;

//: - (void)p_updateInTransaction:(void (^)(SNLeadCompleteInfo *tipView))transactionBlock;
- (void)restore:(void (^)(HideActionView *tipView))transactionBlock;

//: - (void)p_showOnView:(UIView *)superView;
- (void)view:(UIView *)superView;

//: - (void)p_dismiss;
- (void)value;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END