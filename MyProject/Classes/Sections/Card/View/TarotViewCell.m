
#import <Foundation/Foundation.h>
typedef struct {
    Byte securityCell;
    Byte *showMessage;
    unsigned int imageInfo;
    bool pinDisplay;
	int to;
} BubbleData;

NSString *StringFromBubbleData(BubbleData *data);


//: register_avtivity_account
BubbleData kStr_makeImageData = (BubbleData){109, (Byte []){31, 8, 10, 4, 30, 25, 8, 31, 50, 12, 27, 25, 4, 27, 4, 25, 20, 50, 12, 14, 14, 2, 24, 3, 25, 228}, 25, false, 114};


//: /user/detail
BubbleData kStr_pinValue = (BubbleData){10, (Byte []){37, 127, 121, 111, 120, 37, 110, 111, 126, 107, 99, 102, 118}, 12, false, 149};


//: account
BubbleData kStr_textName = (BubbleData){25, (Byte []){120, 122, 122, 118, 108, 119, 109, 67}, 7, false, 186};


//: icon_gender_female
BubbleData kStr_tingName = (BubbleData){134, (Byte []){239, 229, 233, 232, 217, 225, 227, 232, 226, 227, 244, 217, 224, 227, 235, 231, 234, 227, 154}, 18, false, 182};


//: icon_gender_male
BubbleData kStr_normalData = (BubbleData){32, (Byte []){73, 67, 79, 78, 127, 71, 69, 78, 68, 69, 82, 127, 77, 65, 76, 69, 184}, 16, false, 35};


//: user_id
BubbleData kStr_tapText = (BubbleData){178, (Byte []){199, 193, 215, 192, 237, 219, 214, 177}, 7, false, 231};


//: code
BubbleData kStr_replacementValue = (BubbleData){167, (Byte []){196, 200, 195, 194, 71}, 4, false, 28};


//: data
BubbleData kStr_partShadowBarTitle = (BubbleData){230, (Byte []){130, 135, 146, 135, 92}, 4, false, 58};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TarotViewCell.m
//  NIM
//
//  Created by chris on 15/9/28.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCardPortraitCell.h"
#import "TarotViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "ViewControl.h"
//: #import "ViewCommonTableData.h"
#import "ViewCommonTableData.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"

//: @interface NTESCardPortraitCell()
@interface TarotViewCell()

//: @property (nonatomic,strong) FFFAvatarImageView *avatar;
@property (nonatomic,strong) ViewControl *avatar;

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
@implementation TarotViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: CGFloat avatarWidth = 55.f;
        CGFloat avatarWidth = 55.f;
        //: _avatar = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        _avatar = [[ViewControl alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
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
- (void)elite:(BuildRow *)rowData past:(UITableView *)tableView{

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
        OriginBy *info = [[Notice fullKit] value:uid manager:nil];
        //: self.nameLabel.text = info.showName ;
        self.nameLabel.text = info.showName ;
        //: NSString *register_avtivity_account = [FFFLanguageManager getTextWithKey:@"register_avtivity_account"];
        NSString *register_avtivity_account = [TeamManager sizeKey:StringFromBubbleData(&kStr_makeImageData)];
        //: self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        //: [self.accountLabel sizeToFit];
        [self.accountLabel sizeToFit];
        //: [self.avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
        [self.avatar disableTime:[NSURL URLWithString:info.avatarUrlString] min:info.avatarImage pathImageOptions:SDWebImageRetryFailed];
        //: if (user.userInfo.gender == NIMUserGenderMale) {
        if (user.userInfo.gender == NIMUserGenderMale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_male"];
            _genderIcon.image = [UIImage imageNamed:StringFromBubbleData(&kStr_normalData)];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else if(user.userInfo.gender == NIMUserGenderFemale) {
        else if(user.userInfo.gender == NIMUserGenderFemale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_female"];
            _genderIcon.image = [UIImage imageNamed:StringFromBubbleData(&kStr_tingName)];
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
    [self image:rowData success:@""];

}

//: -(void)refreshData:(NIMCommonTableRow *)rowData account:(NSString *)account{
-(void)image:(BuildRow *)rowData success:(NSString *)account{

    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = uid;
    dict[StringFromBubbleData(&kStr_tapText)] = uid;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:YES success:^(id responseObject) {
    [InfoManager enable:[NSString stringWithFormat:StringFromBubbleData(&kStr_pinValue)] sub:dict record:YES tapGetFailed:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict speedy:StringFromBubbleData(&kStr_replacementValue)];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict straddle:StringFromBubbleData(&kStr_partShadowBarTitle)];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data speedy:StringFromBubbleData(&kStr_textName)];
            //: self.accountLabel.hidden = NO;
            self.accountLabel.hidden = NO;
            //: NSString *register_avtivity_account = [FFFLanguageManager getTextWithKey:@"register_avtivity_account"];
            NSString *register_avtivity_account = [TeamManager sizeKey:StringFromBubbleData(&kStr_makeImageData)];

            //: self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            //: [self.accountLabel sizeToFit];
            [self.accountLabel sizeToFit];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } failedSmartOccurrentSelectShowGet:^(id responseObject, NSError *error) {

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

Byte *BubbleDataToByte(BubbleData *data) {
    if (data->pinDisplay) return data->showMessage;
    for (int i = 0; i < data->imageInfo; i++) {
        data->showMessage[i] ^= data->securityCell;
    }
    data->showMessage[data->imageInfo] = 0;
    data->pinDisplay = true;
	if (data->imageInfo >= 1) {
		data->to = data->showMessage[0];
	}
    return data->showMessage;
}

NSString *StringFromBubbleData(BubbleData *data) {
    return [NSString stringWithUTF8String:(char *)BubbleDataToByte(data)];
}
