// __DEBUG__
// __CLOSE_PRINT__
//
//  UserCellConfig.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class FFFSessionMessageContentView;
@class CypherView;
//: @class FFFMessageModel;
@class StochasticProcessTeam;

//: @protocol FFFCellLayoutConfig <NSObject>
@protocol TitleConfig <NSObject>

//: @optional
@optional

/**
 * @return 返回message的内容大小
 */
//: - (CGSize)contentSize:(FFFMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)compartmentTitle:(StochasticProcessTeam *)model bottomText:(CGFloat)width;

/**
 *  需要构造的cellContent类名
 */
//: - (NSString *)cellContent:(FFFMessageModel *)model;
- (NSString *)aggregationTableColor:(StochasticProcessTeam *)model;

/**
 *  左对齐的气泡，cell气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)cellInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)telegram:(StochasticProcessTeam *)model;

/**
 *  左对齐的气泡，cell内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)contentViewInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)behindCollection:(StochasticProcessTeam *)model;

/**
 * @return 返回message的所回复消息内容大小
 */
//: - (CGSize)replyContentSize:(FFFMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)segment:(StochasticProcessTeam *)model video:(CGFloat)width;

/**
 *  需要构造的ReplyContent类名
 */
//: - (NSString *)replyContent:(FFFMessageModel *)model;
- (NSString *)assemblage:(StochasticProcessTeam *)model;

/**
 *  左对齐的气泡，cell reply气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)replyCellInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)keyEnable:(StochasticProcessTeam *)model;

/**
 *  左对齐的气泡，cell reply内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)replyContentViewInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)begin:(StochasticProcessTeam *)model;

/**
 *  是否显示头像
 */
//: - (BOOL)shouldShowAvatar:(FFFMessageModel *)model;
- (BOOL)containerBubble:(StochasticProcessTeam *)model;


/**
 *  左对齐的气泡，头像控件的 origin 点
 */
//: - (CGPoint)avatarMargin:(FFFMessageModel *)model;
- (CGPoint)dateOf:(StochasticProcessTeam *)model;

/**
 *  左对齐的气泡，头像控件的 size
 */
//: - (CGSize)avatarSize:(FFFMessageModel *)model;
- (CGSize)globalGreen:(StochasticProcessTeam *)model;

/**
 *  是否显示姓名
 */
//: - (BOOL)shouldShowNickName:(FFFMessageModel *)model;
- (BOOL)max:(StochasticProcessTeam *)model;

/**
 *  左对齐的气泡，昵称控件的 origin 点
 */
//: - (CGPoint)nickNameMargin:(FFFMessageModel *)model;
- (CGPoint)replacement:(StochasticProcessTeam *)model;


/**
 *  消息显示在左边
 */
//: - (BOOL)shouldShowLeft:(FFFMessageModel *)model;
- (BOOL)colouredLeft:(StochasticProcessTeam *)model;


/**
 *  需要添加到Cell上的自定义视图
 */
//: - (NSArray *)customViews:(FFFMessageModel *)model;
- (NSArray *)atViews:(StochasticProcessTeam *)model;


/**
 *  是否开启重试叹号开关
 */
//: - (BOOL)disableRetryButton:(FFFMessageModel *)model;
- (BOOL)names:(StochasticProcessTeam *)model;

/**
 * 是否显示气泡背景图
 */
//: - (BOOL)shouldDisplayBubbleBackground:(FFFMessageModel *)model;
- (BOOL)pressedFrame:(StochasticProcessTeam *)model;


//: @end
@end
