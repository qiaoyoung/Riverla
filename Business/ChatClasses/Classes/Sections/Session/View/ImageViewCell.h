// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageViewCell.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFMessageCellProtocol.h"
#import "FFFMessageCellProtocol.h"
//: #import "FFFTimestampModel.h"
#import "ModelTimestampSupport.h"

//: @class FFFSessionMessageContentView;
@class CypherView;
//: @class FFFAvatarImageView;
@class StatusWithControl;
//: @class FFFBadgeView;
@class ToView;

//: @interface FFFMessageCell : UITableViewCell
@interface ImageViewCell : UITableViewCell

//: @property (nonatomic, strong) FFFAvatarImageView *headImageView;
@property (nonatomic, strong) StatusWithControl *headImageView;
//: @property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *nameLabel;//姓名
//: @property (nonatomic, strong) UIView *bubblesBackgroundView; 
@property (nonatomic, strong) UIView *bubblesBackgroundView; //气泡背景视图
//: @property (nonatomic, strong) FFFSessionMessageContentView *replyedBubbleView; 
@property (nonatomic, strong) CypherView *replyedBubbleView; //被回复内容区域

//: @property (nonatomic, strong) FFFSessionMessageContentView *bubbleView;
@property (nonatomic, strong) CypherView *bubbleView;//内容区域
//: @property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator; 
@property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator; //发送loading
//: @property (nonatomic, strong) UIButton *retryButton; 
@property (nonatomic, strong) UIButton *retryButton; //重试
//: @property (nonatomic, strong) FFFBadgeView *audioPlayedIcon; 
@property (nonatomic, strong) ToView *audioPlayedIcon; //语音未读红点
//: @property (nonatomic, strong) UIButton *readButton; 
@property (nonatomic, strong) UIButton *readButton; //已读
//: @property (nonatomic, strong) UIButton *selectButton; 
@property (nonatomic, strong) UIButton *selectButton; //选择
//: @property (nonatomic, strong) UIButton *selectButtonMask; 
@property (nonatomic, strong) UIButton *selectButtonMask; //选择遮罩

//: @property (nonatomic, readonly) FFFMessageModel *model;
@property (nonatomic, readonly) StochasticProcessTeam *model;

//: @property (nonatomic, weak) id<FFFMessageCellDelegate> delegate;
@property (nonatomic, weak) id<BubbleArray> delegate;

//: - (void)refreshData:(FFFMessageModel *)data;
- (void)key:(StochasticProcessTeam *)data;

//: @end
@end