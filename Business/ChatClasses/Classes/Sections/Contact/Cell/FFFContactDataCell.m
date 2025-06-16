//
//  NTESContactInfoCell.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "FFFContactDataCell.h"
#import "FFFAvatarImageView.h"
#import "UIViewNimKit.h"
#import "NeeyoKit.h"
#import "UIImage+NeeyoKit.h"

@interface FFFContactDataCell()

@end

@implementation FFFContactDataCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, SCREEN_WIDTH-30, 72)];
        bgView.backgroundColor = RGB_COLOR_String(@"f6f6f6");
        bgView.layer.cornerRadius = 16;
        [self.contentView addSubview:bgView];
        
        
        _avatarImageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        [_avatarImageView addTarget:self action:@selector(onPressAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [bgView addSubview:_avatarImageView];
        
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn.frame = CGRectMake(SCREEN_WIDTH-30-24-15, 24, 24, 24);
        [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_accessoryBtn sizeToFit];
        _accessoryBtn.hidden = YES;
        _accessoryBtn.userInteractionEnabled = NO;
        [bgView addSubview:_accessoryBtn];
        
        self.labName = [[UILabel alloc]initWithFrame:CGRectMake(_avatarImageView.right+15, 12, 250, 48)];
        self.labName.textColor = [UIColor blackColor];
        self.labName.font = [UIFont boldSystemFontOfSize:16];
        [bgView addSubview:self.labName];
        
        self.backgroundColor = [UIColor clearColor];
        self.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    return self;
}

- (void)refreshItem:(id<NIMGroupMemberProtocol>)member {
    [self refreshTitle:member.showName];
    self.memberId = member.memberId;
    NSURL *url = member.avatarUrlString ? [NSURL URLWithString:member.avatarUrlString] : nil;
    [_avatarImageView nim_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"] options:SDWebImageRetryFailed];
}

- (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
    [self refreshTitle:member.showName];
    self.memberId = [member memberId];
    FFFKitInfo *info = [[NeeyoKit sharedKit] infoByUser:self.memberId option:nil];
    [self refreshAvatar:info];
}

- (void)refreshTeam:(NIMTeam *)team; {
    [self refreshTitle:team.teamName];
    self.memberId = [team teamId];
    FFFKitInfo *info = [[NeeyoKit sharedKit] infoByTeam:self.memberId option:nil];
    [self refreshAvatar:info];
}

- (void)refreshTitle:(NSString *)title{
    self.labName.text = title;
}

- (void)refreshAvatar:(FFFKitInfo *)info{
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    [_avatarImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
}

- (void)onPressAvatar:(id)sender{
    if ([self.delegate respondsToSelector:@selector(onPressAvatar:)]) {
        [self.delegate onPressAvatar:self.memberId];
    }
}

- (void)addDelegate:(id)delegate{
    self.delegate = delegate;
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    [self.accessoryBtn setHighlighted:highlighted];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated{

}






@end
