//
//  FFFTeamMemberCardHeaderCell.m
// MyUserKit
//
//  Created by chris on 16/5/10.
//  Copyright © 2016年 NetEase. All rights reserved.
//

#import "FFFTeamMemberCardHeaderCell.h"
#import "FFFAvatarImageView.h"
#import "FFFUsrInfoData.h"
#import "FFFCommonTableData.h"
#import "MyUserKit.h"
#import "UIViewNimKit.h"
#import "FFFKitUtil.h"

@interface FFFTeamMemberCardHeaderCell()

@property (nonatomic,strong) FFFAvatarImageView *avatarView;

@property (nonatomic,strong) UILabel *nickLabel;

@end

@implementation FFFTeamMemberCardHeaderCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.avatarView];
        [self.contentView addSubview:self.nickLabel];
    }
    return self;
}

- (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;{
    FFFKitInfo *userInfo = rowData.extraInfo[@"user"];
    NSLog(@"userInfo===%@",userInfo);
    NSURL *avatarURL;
    if (userInfo.avatarUrlString.length) {
        avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
    }
    [self.avatarView nim_setImageWithURL:avatarURL placeholderImage:userInfo.avatarImage];
    self.nickLabel.text = userInfo.showName;
    [self.nickLabel sizeToFit]; 
    self.userInteractionEnabled = NO;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.avatarView.nim_top = 52.f;
    self.avatarView.nim_centerX = self.nim_width * .5f;
    self.nickLabel.nim_centerX = self.avatarView.nim_centerX;
    self.nickLabel.nim_top = self.avatarView.nim_bottom + 10;
}


- (FFFAvatarImageView *)avatarView
{
    if (!_avatarView) {
        _avatarView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
        _avatarView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    }
    return _avatarView;
}

- (UILabel *)nickLabel
{
    if (!_nickLabel) {
        _nickLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickLabel.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        _nickLabel.font = [UIFont systemFontOfSize:17];
        _nickLabel.textColor = [UIColor colorWithRed:51.0 / 255 green:51.0 / 255 blue:51.0 / 255 alpha:1.0];
    }
    return _nickLabel;
}


@end
