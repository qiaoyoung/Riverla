// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFCellConfig.h
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class FFFSessionMessageContentView;
@class NoticeBlueView;
//: @class FFFMessageModel;
@class MaxLink;

//: @protocol FFFCellLayoutConfig <NSObject>
@protocol KeyChange <NSObject>

//: @optional
@optional

/**
 * @return 返回message的内容大小
 */
//: - (CGSize)contentSize:(FFFMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)accumulationCompartmentCountFrame:(MaxLink *)model achromaticColorFloat:(CGFloat)width;

/**
 *  需要构造的cellContent类名
 */
//: - (NSString *)cellContent:(FFFMessageModel *)model;
- (NSString *)data:(MaxLink *)model;

/**
 *  左对齐的气泡，cell气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)cellInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)add:(MaxLink *)model;

/**
 *  左对齐的气泡，cell内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)contentViewInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)userMain:(MaxLink *)model;

/**
 * @return 返回message的所回复消息内容大小
 */
//: - (CGSize)replyContentSize:(FFFMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)size:(MaxLink *)model disableWidth:(CGFloat)width;

/**
 *  需要构造的ReplyContent类名
 */
//: - (NSString *)replyContent:(FFFMessageModel *)model;
- (NSString *)content:(MaxLink *)model;

/**
 *  左对齐的气泡，cell reply气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)replyCellInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)markInsets:(MaxLink *)model;

/**
 *  左对齐的气泡，cell reply内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)replyContentViewInsets:(FFFMessageModel *)model;
- (UIEdgeInsets)than:(MaxLink *)model;

/**
 *  是否显示头像
 */
//: - (BOOL)shouldShowAvatar:(FFFMessageModel *)model;
- (BOOL)passePartout:(MaxLink *)model;


/**
 *  左对齐的气泡，头像控件的 origin 点
 */
//: - (CGPoint)avatarMargin:(FFFMessageModel *)model;
- (CGPoint)recordMargin:(MaxLink *)model;

/**
 *  左对齐的气泡，头像控件的 size
 */
//: - (CGSize)avatarSize:(FFFMessageModel *)model;
- (CGSize)system:(MaxLink *)model;

/**
 *  是否显示姓名
 */
//: - (BOOL)shouldShowNickName:(FFFMessageModel *)model;
- (BOOL)atomicQuantity85Disable:(MaxLink *)model;

/**
 *  左对齐的气泡，昵称控件的 origin 点
 */
//: - (CGPoint)nickNameMargin:(FFFMessageModel *)model;
- (CGPoint)lip:(MaxLink *)model;


/**
 *  消息显示在左边
 */
//: - (BOOL)shouldShowLeft:(FFFMessageModel *)model;
- (BOOL)coverHolder:(MaxLink *)model;


/**
 *  需要添加到Cell上的自定义视图
 */
//: - (NSArray *)customViews:(FFFMessageModel *)model;
- (NSArray *)bottom:(MaxLink *)model;


/**
 *  是否开启重试叹号开关
 */
//: - (BOOL)disableRetryButton:(FFFMessageModel *)model;
- (BOOL)timed:(MaxLink *)model;

/**
 * 是否显示气泡背景图
 */
//: - (BOOL)shouldDisplayBubbleBackground:(FFFMessageModel *)model;
- (BOOL)foam:(MaxLink *)model;


//: @end
@end