//
//  FFFMessageCell.h
// MyUserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FFFMessageCellProtocol.h"
#import "FFFTimestampModel.h"

@class FFFSessionMessageContentView;
@class FFFAvatarImageView;
@class FFFBadgeView;

@interface FFFMessageCell : UITableViewCell

@property (nonatomic, strong) FFFAvatarImageView *headImageView;
@property (nonatomic, strong) UILabel *nameLabel;//姓名
@property (nonatomic, strong) UIView *bubblesBackgroundView;  //气泡背景视图
@property (nonatomic, strong) FFFSessionMessageContentView *replyedBubbleView;    //被回复内容区域

@property (nonatomic, strong) FFFSessionMessageContentView *bubbleView;//内容区域
@property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator;  //发送loading
@property (nonatomic, strong) UIButton *retryButton;                              //重试
@property (nonatomic, strong) FFFBadgeView *audioPlayedIcon;                      //语音未读红点
@property (nonatomic, strong) UIButton *readButton;                               //已读
@property (nonatomic, strong) UIButton *selectButton;                             //选择
@property (nonatomic, strong) UIButton *selectButtonMask;                         //选择遮罩

@property (nonatomic, readonly) FFFMessageModel *model;

@property (nonatomic, weak)   id<FFFMessageCellDelegate> delegate;

- (void)refreshData:(FFFMessageModel *)data;

@end
