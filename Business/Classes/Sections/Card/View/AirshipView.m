
#import <Foundation/Foundation.h>

NSString *StringFromShouldSizeData(Byte *data);


//: icon_gender_male
Byte kStr_messageColorNewValue[] = {17, 16, 3, 101, 108, 97, 109, 95, 114, 101, 100, 110, 101, 103, 95, 110, 111, 99, 105, 91};


//: user_id
Byte kStr_keyContent[] = {87, 7, 9, 202, 57, 175, 237, 171, 184, 100, 105, 95, 114, 101, 115, 117, 239};


//: icon_gender_female
Byte kStr_tableFileData[] = {27, 18, 12, 93, 129, 175, 253, 42, 51, 96, 90, 90, 101, 108, 97, 109, 101, 102, 95, 114, 101, 100, 110, 101, 103, 95, 110, 111, 99, 105, 214};


//: register_avtivity_account
Byte kStr_providerName[] = {1, 25, 9, 116, 153, 17, 214, 104, 230, 116, 110, 117, 111, 99, 99, 97, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 114, 101, 116, 115, 105, 103, 101, 114, 122};


//: account
Byte kStr_rowText[] = {82, 7, 8, 202, 103, 77, 53, 115, 116, 110, 117, 111, 99, 99, 97, 114};


//: data
Byte kStr_bottomNumberervalValue[] = {40, 4, 6, 4, 109, 237, 97, 116, 97, 100, 147};


//: /user/detail
Byte kStr_messageContent[] = {59, 12, 8, 216, 153, 245, 156, 77, 108, 105, 97, 116, 101, 100, 47, 114, 101, 115, 117, 47, 236};


//: code
Byte kStr_atContent[] = {12, 4, 7, 43, 50, 54, 208, 101, 100, 111, 99, 171};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AirshipView.m
//  NIM
//
//  Created by chris on 15/9/28.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCardPortraitCell.h"
#import "AirshipView.h"
//: #import "FFFAvatarImageView.h"
#import "StatusWithControl.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIView+NTES.h"
#import "UIView+Closes.h"
//: #import "NTESSessionUtil.h"
#import "ArrayUtil.h"

//: @interface NTESCardPortraitCell()
@interface AirshipView()

//: @property (nonatomic,strong) FFFAvatarImageView *avatar;
@property (nonatomic,strong) StatusWithControl *avatar;

//: @property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *nameLabel;

//: @property (nonatomic,strong) UILabel *nickNameLabel;
@property (nonatomic,strong) UILabel *nickNameLabel;

//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;

//: @property (nonatomic,strong) UIImageView *genderIcon;
@property (nonatomic,strong) UIImageView *genderIcon;

//: @end
@end

//: @implementation NTESCardPortraitCell
@implementation AirshipView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: CGFloat avatarWidth = 55.f;
        CGFloat avatarWidth = 55.f;
        //: _avatar = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        _avatar = [[StatusWithControl alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        //: [self.contentView addSubview:_avatar];
        [self.contentView addSubview:_avatar];
        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.font = [UIFont systemFontOfSize:18.f];
        _nameLabel.font = [UIFont systemFontOfSize:18.f];
        //: [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_nameLabel];
        //: _nickNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nickNameLabel.font = [UIFont systemFontOfSize:13.f];
        _nickNameLabel.font = [UIFont systemFontOfSize:13.f];
        //: _nickNameLabel.textColor = [UIColor grayColor];
        _nickNameLabel.textColor = [UIColor grayColor];
        //: [self.contentView addSubview:_nickNameLabel];
        [self.contentView addSubview:_nickNameLabel];
        //: _accountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _accountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _accountLabel.font = [UIFont systemFontOfSize:13.f];
        _accountLabel.font = [UIFont systemFontOfSize:13.f];
        //: _accountLabel.textColor = [UIColor grayColor];
        _accountLabel.textColor = [UIColor grayColor];
        //: [self.contentView addSubview:_accountLabel];
        [self.contentView addSubview:_accountLabel];
        //: _genderIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        _genderIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        //: [self.contentView addSubview:_genderIcon];
        [self.contentView addSubview:_genderIcon];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)view:(ColorContentRow *)rowData title:(UITableView *)tableView{

    //: self.textLabel.text = rowData.title;
    self.textLabel.text = rowData.title;
    //: self.detailTextLabel.text = rowData.detailTitle;
    self.detailTextLabel.text = rowData.detailTitle;
    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: if ([uid isKindOfClass:[NSString class]]) {
    if ([uid isKindOfClass:[NSString class]]) {
        //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:uid];
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:uid];
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:uid option:nil];
        MarginThanInfo *info = [[Afterwards blue] put:uid button:nil];
        //: self.nameLabel.text = info.showName ;
        self.nameLabel.text = info.showName ;
        //: NSString *register_avtivity_account = [FFFLanguageManager getTextWithKey:@"register_avtivity_account"];
        NSString *register_avtivity_account = [ItemManager sessionInformation:StringFromShouldSizeData(kStr_providerName)];
        //: self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        //: [self.accountLabel sizeToFit];
        [self.accountLabel sizeToFit];
        //: [self.avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
        [self.avatar placeholder:[NSURL URLWithString:info.avatarUrlString] beforeArea:info.avatarImage frameImageOptions:SDWebImageRetryFailed];
        //: if (user.userInfo.gender == NIMUserGenderMale) {
        if (user.userInfo.gender == NIMUserGenderMale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_male"];
            _genderIcon.image = [UIImage imageNamed:StringFromShouldSizeData(kStr_messageColorNewValue)];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else if(user.userInfo.gender == NIMUserGenderFemale) {
        else if(user.userInfo.gender == NIMUserGenderFemale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_female"];
            _genderIcon.image = [UIImage imageNamed:StringFromShouldSizeData(kStr_tableFileData)];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else {
        else {
            //: _genderIcon.hidden = YES;
            _genderIcon.hidden = YES;
        }
        //: NSString *nickName = user.userInfo.nickName ? user.userInfo.nickName : @"";
        NSString *nickName = user.userInfo.nickName ? user.userInfo.nickName : @"";
        //: _nickNameLabel.hidden = !user.alias.length;
        _nickNameLabel.hidden = !user.alias.length;

        //: _nickNameLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, nickName];
        _nickNameLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, nickName];
        //: [_nickNameLabel sizeToFit];
        [_nickNameLabel sizeToFit];
    }
    //: self.accountLabel.hidden = YES;
    self.accountLabel.hidden = YES;
    //: [self refreshData:rowData account:@""];
    [self version:rowData restore:@""];

}

//: -(void)refreshData:(NIMCommonTableRow *)rowData account:(NSString *)account{
-(void)version:(ColorContentRow *)rowData restore:(NSString *)account{

    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = uid;
    dict[StringFromShouldSizeData(kStr_keyContent)] = uid;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:YES success:^(id responseObject) {
    [PhotoManager towardExtra:[NSString stringWithFormat:StringFromShouldSizeData(kStr_messageContent)] tool:dict examine:YES titleResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict with:StringFromShouldSizeData(kStr_atContent)];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict view:StringFromShouldSizeData(kStr_bottomNumberervalValue)];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data with:StringFromShouldSizeData(kStr_rowText)];
            //: self.accountLabel.hidden = NO;
            self.accountLabel.hidden = NO;
            //: NSString *register_avtivity_account = [FFFLanguageManager getTextWithKey:@"register_avtivity_account"];
            NSString *register_avtivity_account = [ItemManager sessionInformation:StringFromShouldSizeData(kStr_providerName)];

            //: self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            //: [self.accountLabel sizeToFit];
            [self.accountLabel sizeToFit];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } exhibitClick:^(id responseObject, NSError *error) {

    //: }];
    }];

}
//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatar.left = 30;
    self.avatar.left = 30;
    //: self.avatar.centerY = self.height * .5f;
    self.avatar.centerY = self.height * .5f;

    //: CGFloat scale = self.width / 320;
    CGFloat scale = self.width / 320;
    //: CGFloat maxTextLabelWidth = 180 * scale;
    CGFloat maxTextLabelWidth = 180 * scale;
    //: [self.nameLabel sizeToFit];
    [self.nameLabel sizeToFit];
    //: self.nameLabel.width = ((self.nameLabel.width) < (maxTextLabelWidth) ? (self.nameLabel.width) : (maxTextLabelWidth));
    self.nameLabel.width = ((self.nameLabel.width) < (maxTextLabelWidth) ? (self.nameLabel.width) : (maxTextLabelWidth));
    //: self.nameLabel.left = self.avatar.right + 12;
    self.nameLabel.left = self.avatar.right + 12;
    //: self.nameLabel.top = 22;
    self.nameLabel.top = 22;

    //: if (self.nickNameLabel.hidden) {
    if (self.nickNameLabel.hidden) {
        //: self.accountLabel.left = self.nameLabel.left;
        self.accountLabel.left = self.nameLabel.left;
        //: self.accountLabel.bottom = self.height - 22;
        self.accountLabel.bottom = self.height - 22;
    //: }else{
    }else{
        //: self.nickNameLabel.left = self.nameLabel.left;
        self.nickNameLabel.left = self.nameLabel.left;
        //: self.nickNameLabel.bottom = self.height - 22;
        self.nickNameLabel.bottom = self.height - 22;
        //: self.accountLabel.left = self.nameLabel.left;
        self.accountLabel.left = self.nameLabel.left;
        //: self.accountLabel.centerY = (self.nickNameLabel.top + self.nameLabel.bottom) * .5f;
        self.accountLabel.centerY = (self.nickNameLabel.top + self.nameLabel.bottom) * .5f;
    }

    //: self.genderIcon.left = self.nameLabel.right + 12;
    self.genderIcon.left = self.nameLabel.right + 12;
    //: self.genderIcon.centerY = self.nameLabel.centerY;
    self.genderIcon.centerY = self.nameLabel.centerY;
}

//: @end
@end

Byte * ShouldSizeDataToCache(Byte *data) {
    int pathHandle = data[0];
    int videoDisable = data[1];
    int doing = data[2];
    if (!pathHandle) return data + doing;
    for (int i = 0; i < videoDisable / 2; i++) {
        int begin = doing + i;
        int end = doing + videoDisable - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[doing + videoDisable] = 0;
    return data + doing;
}

NSString *StringFromShouldSizeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ShouldSizeDataToCache(data)];
}  
