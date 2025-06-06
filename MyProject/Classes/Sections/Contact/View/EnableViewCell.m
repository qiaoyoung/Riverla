// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableViewCell.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESUserListCell.h"
#import "EnableViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "ViewControl.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "NTESContactDataMember.h"
#import "InfoClick.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"

//: @interface NTESUserListCell()
@interface EnableViewCell()

//: @property (nonatomic,strong) NTESContactDataMember *member;
@property (nonatomic,strong) InfoClick *member;

//: @property (nonatomic,strong) UIView *sep;
@property (nonatomic,strong) UIView *sep;

//: @end
@end

//: @implementation NTESUserListCell
@implementation EnableViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _avatarImageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        _avatarImageView = [[ViewControl alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        //: [_avatarImageView addTarget:self action:@selector(onTouchAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [_avatarImageView addTarget:self action:@selector(baring:) forControlEvents:UIControlEventTouchUpInside];
        //: [self.contentView addSubview:_avatarImageView];
        [self.contentView addSubview:_avatarImageView];
        //: _sep = [[UIView alloc] initWithFrame:CGRectZero];
        _sep = [[UIView alloc] initWithFrame:CGRectZero];
        //: _sep.backgroundColor = [UIColor lightGrayColor];
        _sep.backgroundColor = [UIColor lightGrayColor];
        //: _sep.height = .5f;
        _sep.height = .5f;
        //: [self.contentView addSubview:_sep];
        [self.contentView addSubview:_sep];
    }
    //: return self;
    return self;
}


//: - (void)refreshWithMember:(NTESContactDataMember *)member{
- (void)screenBy:(InfoClick *)member{
    //: self.member = member;
    self.member = member;
    //: self.textLabel.text = [NTESSessionUtil showNick:member.info.infoId inSession:nil];
    self.textLabel.text = [LinkUtil exhibitSizeSession:member.info.infoId inward:nil];
    //: [self.textLabel sizeToFit];
    [self.textLabel sizeToFit];
    //: NSURL *url;
    NSURL *url;
    //: if (member.info.avatarUrlString.length) {
    if (member.info.avatarUrlString.length) {
        //: url = [NSURL URLWithString:member.info.avatarUrlString];
        url = [NSURL URLWithString:member.info.avatarUrlString];
    }
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:member.info.avatarImage options:SDWebImageRetryFailed];
    [_avatarImageView disableTime:url min:member.info.avatarImage pathImageOptions:SDWebImageRetryFailed];
}


//: - (void)onTouchAvatar:(id)sender{
- (void)baring:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(didTouchUserListAvatar:)]) {
    if ([self.delegate respondsToSelector:@selector(dates:)]) {
        //: [self.delegate didTouchUserListAvatar:self.member.info.infoId];
        [self.delegate dates:self.member.info.infoId];
    }
}


//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{

}

//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{

}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat scale = self.width / 320;
    CGFloat scale = self.width / 320;
    //: CGFloat maxTextLabelWidth = 210 * scale;
    CGFloat maxTextLabelWidth = 210 * scale;
    //: self.textLabel.width = ((self.textLabel.width) < (maxTextLabelWidth) ? (self.textLabel.width) : (maxTextLabelWidth));
    self.textLabel.width = ((self.textLabel.width) < (maxTextLabelWidth) ? (self.textLabel.width) : (maxTextLabelWidth));

    //: static const NSInteger NTESContactAccessoryLeft = 10;
    static const NSInteger NTESContactAccessoryLeft = 10;//选择框到左边的距离
    //: static const NSInteger NTESContactAvatarAndTitleSpacing = 20;
    static const NSInteger NTESContactAvatarAndTitleSpacing = 20;//头像和文字之间的间距

    //: CGFloat avatarLeft = 15.f;
    CGFloat avatarLeft = 15.f;
    //: self.avatarImageView.left = avatarLeft;
    self.avatarImageView.left = avatarLeft;
    //: self.avatarImageView.centerY = self.height * .5f;
    self.avatarImageView.centerY = self.height * .5f;
    //: self.textLabel.left = self.avatarImageView.right + NTESContactAvatarAndTitleSpacing;
    self.textLabel.left = self.avatarImageView.right + NTESContactAvatarAndTitleSpacing;
    //: self.sep.width = self.width - avatarLeft - self.avatarImageView.width - NTESContactAvatarAndTitleSpacing;
    self.sep.width = self.width - avatarLeft - self.avatarImageView.width - NTESContactAvatarAndTitleSpacing;
    //: self.sep.left = avatarLeft + NTESContactAccessoryLeft + self.avatarImageView.width;
    self.sep.left = avatarLeft + NTESContactAccessoryLeft + self.avatarImageView.width;
    //: self.sep.bottom = self.height - self.sep.height;
    self.sep.bottom = self.height - self.sep.height;
}

//: @end
@end