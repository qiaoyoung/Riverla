//
//  NTESFriendListTableViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

#import "NTESFriendListTableViewCell.h"
#import "NTESSessionUtil.h"
#import "FFFAvatarImageView.h"
#import "UIViewNimKit.h"
#import "NeeyoKit.h"
#import "UIImage+NeeyoKit.h"

@implementation NTESFriendListTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.accessoryType = UITableViewCellAccessoryNone;
        
        [self initSubviews];
    }
    return self;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *identifier = @"NTESFriendListTableViewCell";
    NTESFriendListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell)
    {
        cell = [[NTESFriendListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//
//        cell.backgroundColor = [UIColor clearColor];
        
    }
    return cell;
}

- (void)initSubviews {
    
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, SCREEN_WIDTH-30, 56)];
    bgView.backgroundColor = RGB_COLOR_String(@"f6f6f6");
    bgView.layer.cornerRadius = 12;
    [self.contentView addSubview:bgView];
    
    [bgView addSubview:self.iconImageView];
    [bgView addSubview:self.titleLabel];
    
    self.iconImageView.frame = CGRectMake(15, 8, 40, 40);
    self.titleLabel.frame = CGRectMake(70, 0, 230, 56);

//    self.messageBtn.frame = CGRectMake(SCREEN_WIDTH-15-24, 16, 24, 24);
//    self.videoBtn.frame = CGRectMake(SCREEN_WIDTH-15-24, 16, 24, 24);
    
}


- (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
    self.titleLabel.text = member.showName;
    self.memberId = [member memberId];
    FFFKitInfo *info = [[NeeyoKit sharedKit] infoByUser:self.memberId option:nil];
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    
//    [self.iconImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"]];
}

- (void)refreshTeam:(NIMTeam *)team {
    
    self.titleLabel.text = team.teamName;
    self.memberId = [team teamId];
    FFFKitInfo *info = [[NeeyoKit sharedKit] infoByTeam:self.memberId option:nil];
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default_group"]];
}


- (void)reloadUserItem:(NIMUser *)user
{
    self.titleLabel.text = user.userInfo.nickName;
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
}

+ (CGFloat)getCellHeight:(NSDictionary *)information {
    return 72.f;
}

- (void)addSubview:(UIView *)view
{
    if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
        [super addSubview:view];
}

- (void)onTouchmessageButton {
    if ([self.delegate respondsToSelector:@selector(didTouchMessageButton:)]) {
        [self.delegate didTouchMessageButton:self.memberId];
    }
}


- (UIImageView *)iconImageView {
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc] init];
        _iconImageView.layer.masksToBounds = YES;
        _iconImageView.layer.cornerRadius = 20;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    return _iconImageView;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:15.f];
        _titleLabel.textColor = kTextColor_2c3042;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.numberOfLines = 1;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    return _titleLabel;
}

- (UIButton *)messageBtn {
    if (!_messageBtn) {
        _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_messageBtn addTarget:self action:@selector(onTouchmessageButton) forControlEvents:UIControlEventTouchUpInside];
        [_messageBtn setImage:[UIImage imageNamed:@"btn_message"] forState:UIControlStateNormal];
    }
    return _messageBtn;
}

- (UIButton *)videoBtn {
    if (!_videoBtn) {
        _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_videoBtn setImage:[UIImage imageNamed:@"btn_video"] forState:UIControlStateNormal];
//        [_videoBtn addTarget:self action:@selector(onTouchVideoButton) forControlEvents:UIControlEventTouchUpInside];
    }
    return _videoBtn;
}


@end
