//
//  FFFMessageCellProtocol.h
// MyUserKit
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FFFCellConfig.h"


@class FFFMessageModel;
@class NIMMessage;
@class NIMQuickComment;
@class FFFKitEvent;
@class FFFTextView;

@protocol FFFMessageCellDelegate <NSObject>

@optional

#pragma mark - cell 样式更改

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;

- (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message;

#pragma mark - 点击事件
- (BOOL)onTapCell:(FFFKitEvent *)event;

- (BOOL)onLongPressCell:(NIMMessage *)message
                 inView:(UIView *)view;

// 新长按代理方法
- (BOOL)onLongPressCell:(NIMMessage *)message;
- (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete;

- (BOOL)onTapAvatar:(NIMMessage *)message;

- (BOOL)onLongPressAvatar:(NIMMessage *)message;

- (BOOL)onPressReadLabel:(NIMMessage *)message;

- (void)onRetryMessage:(NIMMessage *)message;

- (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message;

- (void)onClickReplyButton:(NIMMessage *)message;

- (void)onClickEmoticon:(NIMMessage *)message
                comment:(NIMQuickComment *)comment
               selected:(BOOL)isSelected;

@end
