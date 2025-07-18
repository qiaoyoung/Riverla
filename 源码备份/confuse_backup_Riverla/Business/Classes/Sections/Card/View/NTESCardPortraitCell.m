//
//  NTESCardPortraitCell.m
//  NIM
//
//  Created by chris on 15/9/28.
//  Copyright © 2015年 Netease. All rights reserved.
//

#import "NTESCardPortraitCell.h"
#import "FFFAvatarImageView.h"
#import "FFFCommonTableData.h"
#import "UIView+NTES.h"
#import "NTESSessionUtil.h"


@interface NTESCardPortraitCell()

@property (nonatomic,strong) FFFAvatarImageView *avatar;

@property (nonatomic,strong) UILabel *nameLabel;

@property (nonatomic,strong) UILabel *nickNameLabel;

@property (nonatomic,strong) UILabel *accountLabel;

@property (nonatomic,strong) UIImageView *genderIcon;

@end

@implementation NTESCardPortraitCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGFloat avatarWidth = 55.f;
        _avatar = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        [self.contentView addSubview:_avatar];
        _nameLabel      = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel.font = [UIFont systemFontOfSize:18.f];
        [self.contentView addSubview:_nameLabel];
        _nickNameLabel  = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickNameLabel.font = [UIFont systemFontOfSize:13.f];
        _nickNameLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:_nickNameLabel];
        _accountLabel   = [[UILabel alloc] initWithFrame:CGRectZero];
        _accountLabel.font = [UIFont systemFontOfSize:13.f];
        _accountLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:_accountLabel];
        _genderIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        [self.contentView addSubview:_genderIcon];
    }
    return self;
}

- (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
    
    self.textLabel.text       = rowData.title;
    self.detailTextLabel.text = rowData.detailTitle;
    NSString *uid = rowData.extraInfo;
    if ([uid isKindOfClass:[NSString class]]) {
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:uid];
        FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:uid option:nil];
        self.nameLabel.text   = info.showName ;
        NSString *register_avtivity_account = LangKey(@"register_avtivity_account");
        self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        [self.accountLabel sizeToFit];
        [self.avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
        if (user.userInfo.gender == NIMUserGenderMale) {
            _genderIcon.image = [UIImage imageNamed:@"icon_gender_male"];
            _genderIcon.hidden = NO;
        }
        else if(user.userInfo.gender == NIMUserGenderFemale) {
            _genderIcon.image = [UIImage imageNamed:@"icon_gender_female"];
            _genderIcon.hidden = NO;
        }
        else {
            _genderIcon.hidden = YES;
        }
        NSString *nickName  = user.userInfo.nickName ? user.userInfo.nickName : @"";
        _nickNameLabel.hidden = !user.alias.length;

        _nickNameLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, nickName];
        [_nickNameLabel sizeToFit];
    }
    self.accountLabel.hidden = YES;
    [self refreshData:rowData account:@""];

}

-(void)refreshData:(NIMCommonTableRow *)rowData account:(NSString *)account{
    
    NSString *uid = rowData.extraInfo;
    NSMutableDictionary *dict = @{}.mutableCopy;
    dict[@"user_id"] = uid;
    [ZCHttpManager getWithUrl:Server_user_detail params:dict isShow:YES success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue <= 0) {
            NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSString *account = [data newStringValueForKey:@"account"];
            self.accountLabel.hidden = NO;
            NSString *register_avtivity_account = LangKey(@"register_avtivity_account");

            self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            [self.accountLabel sizeToFit];
        }

    } failed:^(id responseObject, NSError *error) {

    }];

}


#define AvatarLeft 30
#define TitleAndAvatarSpacing 12
#define TitleTop 22
#define AccountBottom 22
#define GenderIconAndTitleSpacing 12

- (void)layoutSubviews{
    [super layoutSubviews];
    self.avatar.left    = AvatarLeft;
    self.avatar.centerY = self.height * .5f;
    
    CGFloat scale = self.width / 320;
    CGFloat maxTextLabelWidth = 180 * scale;
    [self.nameLabel sizeToFit];
    self.nameLabel.width = MIN(self.nameLabel.width, maxTextLabelWidth);
    self.nameLabel.left = self.avatar.right + TitleAndAvatarSpacing;
    self.nameLabel.top  = TitleTop;
    
    if (self.nickNameLabel.hidden) {
        self.accountLabel.left    = self.nameLabel.left;
        self.accountLabel.bottom  = self.height - AccountBottom;
    }else{
        self.nickNameLabel.left    = self.nameLabel.left;
        self.nickNameLabel.bottom  = self.height - AccountBottom;
        self.accountLabel.left     = self.nameLabel.left;
        self.accountLabel.centerY  = (self.nickNameLabel.top + self.nameLabel.bottom) * .5f;
    }

    self.genderIcon.left    = self.nameLabel.right + GenderIconAndTitleSpacing;
    self.genderIcon.centerY = self.nameLabel.centerY;
}

@end
