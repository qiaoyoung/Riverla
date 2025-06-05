// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentViewCell.m
//  NIM
//
//  Created by chris on 15/7/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//font

// __M_A_C_R_O__
//: #import "NTESSearchMessageContentCell.h"
#import "ContentViewCell.h"
//: #import "NTESSearchLocalHistoryObject.h"
#import "BarBy.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "FFFAvatarImageView.h"
#import "ViewControl.h"

//: CGFloat SearchCellTitleFontSize = 13.f;
CGFloat let_assetMakeValue = 13.f;
//: CGFloat SearchCellContentFontSize = 12.f;
CGFloat let_optionContent = 12.f;
//: CGFloat SearchCellTimeFontSize = 12.f;
CGFloat let_windowValue = 12.f;

//layout
//: CGFloat SearchCellAvatarLeft = 15.f;
CGFloat let_cellValue = 15.f;
//: CGFloat SearchCellAvatarAndTitleSpacing = 10.f;
CGFloat let_turnButtonName = 10.f;
//: CGFloat SearchCellTitleTop = 10.f;
CGFloat let_contentMainName = 10.f;
//: CGFloat SearchCellTimeRight = 15.f;
CGFloat let_cellData = 15.f;
//: CGFloat SearchCellTimeTop = 10.f;
CGFloat let_pushValue = 10.f;
//: CGFloat SearchCellContentTop = 30.f;
CGFloat let_labelLineContent = 30.f;
//: CGFloat SearchCellContentBottom = 8.f;
CGFloat let_networkName = 8.f;
//: CGFloat SearchCellContentMaxWidth = 260.f;
CGFloat let_messageFirstName = 260.f;
//: CGFloat SearchCellContentMinHeight = 15.f; 
CGFloat let_contentData = 15.f; //cell的高度是由文本高度决定的。防止没有文本的情况，导致cell的高度过小。

//: @interface NTESSearchMessageContentCell()
@interface ContentViewCell()

//: @property (nonatomic,strong) FFFAvatarImageView *avatar;
@property (nonatomic,strong) ViewControl *avatar;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *contentLabel;
@property (nonatomic,strong) UILabel *contentLabel;

//: @property (nonatomic,strong) UILabel *timeLabel;
@property (nonatomic,strong) UILabel *timeLabel;

//: @property (nonatomic,strong) NTESSearchLocalHistoryObject *object;
@property (nonatomic,strong) BarBy *object;

//: @end
@end

//: @implementation NTESSearchMessageContentCell
@implementation ContentViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _avatar = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        _avatar = [[ViewControl alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        //: [self.contentView addSubview:_avatar];
        [self.contentView addSubview:_avatar];
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.font = [UIFont systemFontOfSize:13.f];
        _titleLabel.font = [UIFont systemFontOfSize:13.f];
        //: [self.contentView addSubview:_titleLabel];
        [self.contentView addSubview:_titleLabel];
        //: _contentLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _contentLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _contentLabel.font = [UIFont systemFontOfSize:12.f];
        _contentLabel.font = [UIFont systemFontOfSize:12.f];
        //: _contentLabel.textColor = [UIColor grayColor];
        _contentLabel.textColor = [UIColor grayColor];
        //: _contentLabel.numberOfLines = 0;
        _contentLabel.numberOfLines = 0;
        //: [self.contentView addSubview:_contentLabel];
        [self.contentView addSubview:_contentLabel];
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.font = [UIFont systemFontOfSize:12.f];
        _timeLabel.font = [UIFont systemFontOfSize:12.f];
        //: [self.contentView addSubview:_timeLabel];
        [self.contentView addSubview:_timeLabel];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(NTESSearchLocalHistoryObject *)object{
- (void)the:(BarBy *)object{
    //: self.object = object;
    self.object = object;
    //: NIMMessage *message = object.message;
    NIMMessage *message = object.message;
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:message.from option:nil];
    OriginBy *info = [[Notice fullKit] value:message.from manager:nil];
    //: NSURL *avatarURL;
    NSURL *avatarURL;
    //: if (info.avatarUrlString.length) {
    if (info.avatarUrlString.length) {
        //: avatarURL = [NSURL URLWithString:info.avatarUrlString];
        avatarURL = [NSURL URLWithString:info.avatarUrlString];
    }
    //: [self.avatar nim_setImageWithURL:avatarURL placeholderImage:info.avatarImage];
    [self.avatar eigenvalueImage:avatarURL index:info.avatarImage];
    //: self.titleLabel.text = info.showName;
    self.titleLabel.text = info.showName;
    //: self.contentLabel.text = message.text;
    self.contentLabel.text = message.text;
    //: self.timeLabel.text = [NTESSessionUtil showTime:message.timestamp showDetail:YES];
    self.timeLabel.text = [LinkUtil ofPresent:message.timestamp clip:YES];
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
    //: self.contentLabel.size = [self.contentLabel sizeThatFits:CGSizeMake(SearchCellContentMaxWidth * [UIScreen mainScreen].bounds.size.width / 320, 1.7976931348623157e+308)];
    self.contentLabel.size = [self.contentLabel sizeThatFits:CGSizeMake(let_messageFirstName * [UIScreen mainScreen].bounds.size.width / 320, 1.7976931348623157e+308)];
    //: self.contentLabel.height = ((SearchCellContentMinHeight) > (self.contentLabel.height) ? (SearchCellContentMinHeight) : (self.contentLabel.height));
    self.contentLabel.height = ((let_contentData) > (self.contentLabel.height) ? (let_contentData) : (self.contentLabel.height));
    //: [self.timeLabel sizeToFit];
    [self.timeLabel sizeToFit];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatar.top = SearchCellTitleTop;
    self.avatar.top = let_contentMainName;
    //: self.avatar.left = SearchCellAvatarLeft;
    self.avatar.left = let_cellValue;
    //: self.titleLabel.left = self.avatar.right + SearchCellAvatarAndTitleSpacing;
    self.titleLabel.left = self.avatar.right + let_turnButtonName;
    //: self.contentLabel.left = self.titleLabel.left;
    self.contentLabel.left = self.titleLabel.left;
    //: self.titleLabel.top = SearchCellTitleTop;
    self.titleLabel.top = let_contentMainName;
    //: self.contentLabel.bottom = self.height - SearchCellContentBottom;
    self.contentLabel.bottom = self.height - let_networkName;
    //: self.timeLabel.right = self.width - SearchCellTimeRight;
    self.timeLabel.right = self.width - let_cellData;
    //: self.timeLabel.top = SearchCellTimeTop;
    self.timeLabel.top = let_pushValue;
}


//: @end
@end