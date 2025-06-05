//
//  FFFGroupMemberTableViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

#import "FFFGroupMemberTableViewCell.h"
#import "FFFAvatarImageView.h"
#import "UIViewNimKit.h"
#import "UIImage+MyUserKit.h"
#import "FFFTeamHelper.h"
#import "NSString+MyUserKit.h"


@interface FFFGroupMemberTableViewCell()

@property (nonatomic,strong) id<FFFKitCardHeaderData> data;

@end

@implementation FFFGroupMemberTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
//        self.backgroundColor = [UIColor whiteColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.selectionStyle = UITableViewCellSelectionStyleGray;
        self.accessoryType = UITableViewCellAccessoryNone;

        
        [self initSubviews];
    }
    return self;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *identifier = @"FFFGroupMemberTableViewCell";
    FFFGroupMemberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell)
    {
        cell = [[FFFGroupMemberTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.backgroundColor = RGB_COLOR_String(@"#F6F6F6");
        cell.layer.cornerRadius = 16;
//        cell.backgroundColor = [UIColor clearColor];
        
    }
    return cell;
}

- (void)initSubviews {
    
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.cornerRadius = 24;
    [self.contentView addSubview:_roleImageView];
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    _titleLabel.textColor = TextColor_0;
    [self.contentView addSubview:_titleLabel];
    
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-45-100, 12, 100, 48)];
    _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    _subtitleLabel.textColor = RGB_COLOR_String(@"5D5F66");
    _subtitleLabel.textAlignment = NSTextAlignmentRight;
    _subtitleLabel.hidden = YES;
    [self.contentView addSubview:_subtitleLabel];
    
    [self.contentView addSubview:self.muteBtn];
    [self.contentView addSubview:self.removeBtn];
  
}

- (void)reloadWithUserId:(NSString *)UserId
{
    self.userId = UserId;
}

- (void)setUserInfo:(FFFKitInfo *)userInfo
{
    self.userInfo = userInfo;
}

- (void)onTouchRemoveBtn:(id)sender{
    
    if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
        [self.delegate cellShouldBeRemoved:self.userId];
    }
}
- (void)onTouchMuteBtn:(id)sender{
    if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
        [self.delegate cellShouldBeMute:self.userId mute:YES];
    }
}

- (void)layoutSubviews{
    [super layoutSubviews];

    self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);
    
}
- (UIButton *)removeBtn{
    if (!_removeBtn) {
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn setImage:[UIImage imageNamed:@"group_remove"] forState:UIControlStateNormal];
        
    }
    return _removeBtn;
}

- (UIButton *)muteBtn{
    if (!_muteBtn) {
        _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_muteBtn addTarget:self action:@selector(onTouchMuteBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_muteBtn setImage:[UIImage imageNamed:@"group_mute_no"] forState:UIControlStateNormal];
        [_muteBtn setImage:[UIImage imageNamed:@"group_mute"] forState:UIControlStateSelected];
        
    }
    return _muteBtn;
}


@end
