//
//  NTESBlackListTableViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

#import "NTESBlackListTableViewCell.h"
#import "FFFAvatarImageView.h"
#import "UIView+NTES.h"
#import "NTESContactDataMember.h"
#import "NTESSessionUtil.h"

@implementation NTESBlackListTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.accessoryType = UITableViewCellAccessoryNone;
        
//        self.backgroundColor = RGB_COLOR_String(@"#F6F6F6");
//        self.layer.cornerRadius = 16;
//        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        self.layer.shadowOffset = CGSizeMake(0,3);
//        self.layer.shadowOpacity = 1;
//        self.layer.shadowRadius = 0;
        
        [self initSubviews];
    }
    return self;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *identifier = @"NTESBlackListTableViewCell";
    NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell)
    {
        cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        cell.backgroundColor = [UIColor colorWithRed:247/255.0 green:249/255.0 blue:250/255.0 alpha:1.0];
//        cell.layer.cornerRadius = 12;
//        cell.backgroundColor = [UIColor whiteColor];
        
    }
    return cell;
}

- (void)initSubviews {

    UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, SCREEN_WIDTH-30, 72)];
    bodyView.backgroundColor = RGB_COLOR_String(@"#F6F6F6");
    bodyView.layer.cornerRadius = 16;
    [self.contentView addSubview:bodyView];
    
    _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _avatarImageView.layer.cornerRadius = 24;
    _avatarImageView.layer.masksToBounds = YES;
    [bodyView addSubview:_avatarImageView];
//    UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTouchAvatar:)];
//    [_avatarImageView addGestureRecognizer:panGesture];

    
    _cancleBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    _cancleBtn.frame = CGRectMake(SCREEN_WIDTH-30-84-15, 20, 84, 32);
//         _cancleBtn.titleLabel.textAlignment = NSTextAlignmentRight;
    _cancleBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [_cancleBtn setTitle:LangKey(@"black_list_item_remove") forState:(UIControlStateNormal)];//移除
    [_cancleBtn addTarget:self action:@selector(onTouchButton) forControlEvents:(UIControlEventTouchUpInside)];
    [_cancleBtn setTitleColor:RGB_COLOR_String(@"#5D5F66") forState:(UIControlStateNormal)];
    _cancleBtn.layer.cornerRadius = 16;
    _cancleBtn.layer.borderWidth = 1;
    _cancleBtn.layer.borderColor = RGB_COLOR_String(@"#EEEEEE").CGColor;
    _cancleBtn.layer.masksToBounds = YES;
    [bodyView addSubview:_cancleBtn];
    
    
    [bodyView addSubview:self.labName];
    self.labName.frame = CGRectMake(15+40+15, 16, self.width-140, 40);
}

- (void)refreshWithMember:(NTESContactDataMember *)member{
    self.member = member;
    self.labName.text = [NTESSessionUtil showNick:member.info.infoId inSession:nil];
//    [self.textLabel sizeToFit];
    NSURL *url;
    if (member.info.avatarUrlString.length) {
        url = [NSURL URLWithString:member.info.avatarUrlString];
    }
    [_avatarImageView sd_setImageWithURL:url placeholderImage:member.info.avatarImage];
}

- (void)refreshData:(NIMTeamMember *)data
{
    self.data = data;
    self.isteam = YES;
//    userId
//    [_avatarImageView sd_setImageWithURL:[NSURL URLWithString:data.imageUrl] placeholderImage:nil];
//    self.labName.text = data.nickname;
    
    FFFKitInfo *info = [[NeeyoKit sharedKit] infoByUser:data.userId option:nil];
    self.labName.text = info.showName;
    [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
}


- (void)onTouchButton {
    if ([self.delegate respondsToSelector:@selector(didTouchCancleButton:)] || [self.delegate respondsToSelector:@selector(didTouchTeamCancleButton:)]) {
        
        if (self.isteam) {
            [self.delegate didTouchTeamCancleButton:self.data];
        }else{
            [self.delegate didTouchCancleButton:self.member];
        }
       
    }
}


- (void)addSubview:(UIView *)view
{
    if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
        [super addSubview:view];
}


- (UILabel *)labName {
    if (!_labName) {
        _labName = [[UILabel alloc] init];
        _labName.font = [UIFont systemFontOfSize:16.f];
        _labName.textColor = TextColor_4;
        _labName.textAlignment = NSTextAlignmentLeft;
    }
    return _labName;
}





@end
