// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewMessageCellProtocol.h
// Notice
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "ViewCellConfig.h"
#import "ViewCellConfig.h"

// __M_A_C_R_O__

//: @class FFFMessageModel;
@class MaxLink;
//: @class NIMMessage;
@class NIMMessage;
//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class FFFKitEvent;
@class IndexBar;
//: @class FFFTextView;
@class SingleFileView;

//: @protocol FFFMessageCellDelegate <NSObject>
@protocol RubricTing <NSObject>

//: @optional
@optional

//: #pragma mark - cell 样式更改
#pragma mark - cell 样式更改

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)shouldPath:(UITableView *)tableView forage:(UITableViewCell *)cell teamBubble:(NSIndexPath *)indexPath;

//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message;
- (BOOL)captureTap:(NIMMessage *)message;

//: #pragma mark - 点击事件
#pragma mark - 点击事件
//: - (BOOL)onTapCell:(FFFKitEvent *)event;
- (BOOL)anyView:(IndexBar *)event;

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)last:(NIMMessage *)message
                 //: inView:(UIView *)view;
                 language:(UIView *)view;

// 新长按代理方法
//: - (BOOL)onLongPressCell:(NIMMessage *)message;
- (BOOL)sessionColor:(NIMMessage *)message;
//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)mobile:(NIMMessage *)message value:(void(^)(id data))complete;

//: - (BOOL)onTapAvatar:(NIMMessage *)message;
- (BOOL)coloring:(NIMMessage *)message;

//: - (BOOL)onLongPressAvatar:(NIMMessage *)message;
- (BOOL)exceptName:(NIMMessage *)message;

//: - (BOOL)onPressReadLabel:(NIMMessage *)message;
- (BOOL)processoring:(NIMMessage *)message;

//: - (void)onRetryMessage:(NIMMessage *)message;
- (void)replied:(NIMMessage *)message;

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message;
- (void)request:(BOOL)selected along:(NIMMessage *)message;

//: - (void)onClickReplyButton:(NIMMessage *)message;
- (void)speedied:(NIMMessage *)message;

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)image:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                smart:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected;
               text:(BOOL)isSelected;

//: @end
@end
