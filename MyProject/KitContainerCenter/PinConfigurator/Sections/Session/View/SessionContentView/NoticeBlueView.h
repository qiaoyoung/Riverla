// __DEBUG__
// __CLOSE_PRINT__
//
//  NoticeBlueView.h
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFKitEvent.h"
#import "IndexBar.h"

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
@protocol BroadcastDelegate <NSObject>

//: - (void)onCatchEvent:(FFFKitEvent *)event;
- (void)marginned:(IndexBar *)event;

//: - (void)disableLongPress:(BOOL)disable;
- (void)titleMessage:(BOOL)disable;

//: @optional
@optional
// 长按复制
//: - (BOOL)onLongTap:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)victualler:(NIMMessage *)message media:(void(^)(id data))complete;
//: - (BOOL)onLongTap:(NIMMessage *)message;
- (BOOL)cropDown:(NIMMessage *)message;


//: @end
@end

//: @class FFFMessageModel;
@class MaxLink;

//: @interface FFFSessionMessageContentView : UIControl
@interface NoticeBlueView : UIControl

//: @property (nonatomic,strong,readonly) FFFMessageModel *model;
@property (nonatomic,strong,readonly) MaxLink *model;

//: @property (nonatomic,strong) UIImageView * bubbleImageView;
@property (nonatomic,strong) UIImageView * bubbleImageView;

//: @property (nonatomic,assign) FFFSessionMessageContentViewLayout layoutStyle;
@property (nonatomic,assign) FFFSessionMessageContentViewLayout layoutStyle;

//: @property (nonatomic,weak) id<NIMMessageContentViewDelegate> delegate;
@property (nonatomic,weak) id<BroadcastDelegate> delegate;

/**
 *  contentView初始化方法
 *
 *  @return content实例
 */
//: - (instancetype)initSessionMessageContentView;
- (instancetype)initInput;

/**
 *  刷新方法
 *
 *  @param data 刷新数据
 *
 */
//: - (void)refresh:(FFFMessageModel*)data;
- (void)key:(MaxLink*)data;


/**
 *  手指从contentView内部抬起
 */
//: - (void)onTouchUpInside:(id)sender;
- (void)duringRemote:(id)sender;


/**
 *  手指从contentView外部抬起
 */
//: - (void)onTouchUpOutside:(id)sender;
- (void)celled:(id)sender;

/**
 *  手指按下contentView
 */
//: - (void)onTouchDown:(id)sender;
- (void)aggregations:(id)sender;


/**
 *  聊天气泡图
 *
 *  @param state    目前的按压状态
 *  @param outgoing 是否是发出去的消息
 *
 */
//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing;
- (UIImage *)sure:(UIControlState)state red:(BOOL)outgoing;

//: @end
@end