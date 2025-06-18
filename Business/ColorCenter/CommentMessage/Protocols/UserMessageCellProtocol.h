// __DEBUG__
// __CLOSE_PRINT__
//
//  UserMessageCellProtocol.h
// Afterwards
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "UserCellConfig.h"
#import "UserCellConfig.h"

// __M_A_C_R_O__

//: @class FFFMessageModel;
@class StochasticProcessTeam;
//: @class NIMMessage;
@class NIMMessage;
//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class FFFKitEvent;
@class KitOperation;
//: @class FFFTextView;
@class BubbleScrollView;

//: @protocol FFFMessageCellDelegate <NSObject>
@protocol BubbleArray <NSObject>

//: @optional
@optional

//: #pragma mark - cell 样式更改
#pragma mark - cell 样式更改

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)volition:(UITableView *)tableView numerosity:(UITableViewCell *)cell progress:(NSIndexPath *)indexPath;

//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message;
- (BOOL)statuteContent:(NIMMessage *)message;

//: #pragma mark - 点击事件
#pragma mark - 点击事件
//: - (BOOL)onTapCell:(FFFKitEvent *)event;
- (BOOL)totalled:(KitOperation *)event;

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)showWill:(NIMMessage *)message
                 //: inView:(UIView *)view;
                 range:(UIView *)view;

// 新长按代理方法
//: - (BOOL)onLongPressCell:(NIMMessage *)message;
- (BOOL)disabled:(NIMMessage *)message;
//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)compartment:(NIMMessage *)message light:(void(^)(id data))complete;

//: - (BOOL)onTapAvatar:(NIMMessage *)message;
- (BOOL)fulled:(NIMMessage *)message;

//: - (BOOL)onLongPressAvatar:(NIMMessage *)message;
- (BOOL)quicking:(NIMMessage *)message;

//: - (BOOL)onPressReadLabel:(NIMMessage *)message;
- (BOOL)voices:(NIMMessage *)message;

//: - (void)onRetryMessage:(NIMMessage *)message;
- (void)messages:(NIMMessage *)message;

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message;
- (void)menu:(BOOL)selected confirm:(NIMMessage *)message;

//: - (void)onClickReplyButton:(NIMMessage *)message;
- (void)selected:(NIMMessage *)message;

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)imageUser:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                month_strong:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected;
               should:(BOOL)isSelected;

//: @end
@end
