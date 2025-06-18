// __DEBUG__
// __CLOSE_PRINT__
//
//  CypherView.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFKitEvent.h"
#import "KitOperation.h"

//: typedef NS_ENUM (NSInteger, FFFSessionMessageContentViewLayout){
typedef NS_ENUM (NSInteger, FFFSessionMessageContentViewLayout){
    //: FFFSessionMessageContentViewLayoutAuto = 0, 
    FFFSessionMessageContentViewLayoutAuto = 0, //根据消息自动布局
    //: FFFSessionMessageContentViewLayoutLeft, 
    FFFSessionMessageContentViewLayoutLeft, //左边布局
    //: FFFSessionMessageContentViewLayoutRight, 
    FFFSessionMessageContentViewLayoutRight, //右边布局
//: };
};

//: @class NIMKitBubbleStyleObject;
@class NIMKitBubbleStyleObject;

//: @protocol NIMMessageContentViewDelegate <NSObject>
@protocol FitBubbleSearched <NSObject>

//: - (void)onCatchEvent:(FFFKitEvent *)event;
- (void)bluePosition:(KitOperation *)event;

//: - (void)disableLongPress:(BOOL)disable;
- (void)ated:(BOOL)disable;

//: @optional
@optional
// 长按复制
//: - (BOOL)onLongTap:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)title:(NIMMessage *)message withMargin:(void(^)(id data))complete;
//: - (BOOL)onLongTap:(NIMMessage *)message;
- (BOOL)texts:(NIMMessage *)message;


//: @end
@end

//: @class FFFMessageModel;
@class StochasticProcessTeam;

//: @interface FFFSessionMessageContentView : UIControl
@interface CypherView : UIControl

//: @property (nonatomic,strong,readonly) FFFMessageModel *model;
@property (nonatomic,strong,readonly) StochasticProcessTeam *model;

//: @property (nonatomic,strong) UIImageView * bubbleImageView;
@property (nonatomic,strong) UIImageView * bubbleImageView;

//: @property (nonatomic,assign) FFFSessionMessageContentViewLayout layoutStyle;
@property (nonatomic,assign) FFFSessionMessageContentViewLayout layoutStyle;

//: @property (nonatomic,weak) id<NIMMessageContentViewDelegate> delegate;
@property (nonatomic,weak) id<FitBubbleSearched> delegate;

/**
 *  contentView初始化方法
 *
 *  @return content实例
 */
//: - (instancetype)initSessionMessageContentView;
- (instancetype)initShowDown;

/**
 *  刷新方法
 *
 *  @param data 刷新数据
 *
 */
//: - (void)refresh:(FFFMessageModel*)data;
- (void)scale:(StochasticProcessTeam*)data;


/**
 *  手指从contentView内部抬起
 */
//: - (void)onTouchUpInside:(id)sender;
- (void)ons:(id)sender;


/**
 *  手指从contentView外部抬起
 */
//: - (void)onTouchUpOutside:(id)sender;
- (void)aboveBlack:(id)sender;

/**
 *  手指按下contentView
 */
//: - (void)onTouchDown:(id)sender;
- (void)arrayed:(id)sender;


/**
 *  聊天气泡图
 *
 *  @param state    目前的按压状态
 *  @param outgoing 是否是发出去的消息
 *
 */
//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing;
- (UIImage *)lab:(UIControlState)state preface:(BOOL)outgoing;

//: @end
@end