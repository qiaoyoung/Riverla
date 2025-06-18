
#import <Foundation/Foundation.h>

NSString *StringFromCanData(Byte *data);


//: #5D5F66
Byte kStr_approachValue[] = {10, 7, 9, 213, 159, 167, 33, 73, 14, 54, 54, 70, 53, 68, 53, 35, 54};


//: #F6F6F6
Byte kStr_timeBubbleDumpValue[] = {67, 7, 7, 204, 24, 47, 129, 54, 70, 54, 70, 54, 70, 35, 198};


//: black_list_item_remove
Byte kStr_rateValue[] = {26, 22, 3, 101, 118, 111, 109, 101, 114, 95, 109, 101, 116, 105, 95, 116, 115, 105, 108, 95, 107, 99, 97, 108, 98, 102};


//: #EEEEEE
Byte kStr_timeName[] = {71, 7, 4, 137, 69, 69, 69, 69, 69, 69, 35, 159};


//: #333333
Byte kStr_involvementValue[] = {32, 7, 12, 48, 48, 133, 202, 88, 13, 110, 244, 29, 51, 51, 51, 51, 51, 51, 35, 200};


//: _UITableViewCellSeparatorView
Byte kStr_stairTitleData[] = {59, 29, 12, 206, 152, 65, 219, 134, 104, 58, 250, 187, 119, 101, 105, 86, 114, 111, 116, 97, 114, 97, 112, 101, 83, 108, 108, 101, 67, 119, 101, 105, 86, 101, 108, 98, 97, 84, 73, 85, 95, 168};


//: head_default
Byte kStr_prominentData[] = {58, 12, 4, 154, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 244};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SearchedViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESBlackListTableViewCell.h"
#import "SearchedViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "StatusWithControl.h"
//: #import "UIView+NTES.h"
#import "UIView+Closes.h"
//: #import "NTESContactDataMember.h"
#import "SupportMember.h"
//: #import "NTESSessionUtil.h"
#import "ArrayUtil.h"

//: @implementation NTESBlackListTableViewCell
@implementation SearchedViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

//        self.backgroundColor = RGB_COLOR_String(@"#F6F6F6");
//        self.layer.cornerRadius = 16;
//        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        self.layer.shadowOffset = CGSizeMake(0,3);
//        self.layer.shadowOpacity = 1;
//        self.layer.shadowRadius = 0;

        //: [self initSubviews];
        [self initStyleCustomSubviews];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)beyondView:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESBlackListTableViewCell";
    static NSString *identifier = @"SearchedViewCell";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    SearchedViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[SearchedViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        cell.backgroundColor = [UIColor colorWithRed:247/255.0 green:249/255.0 blue:250/255.0 alpha:1.0];
//        cell.layer.cornerRadius = 12;
//        cell.backgroundColor = [UIColor whiteColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initStyleCustomSubviews {

    //: UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    //: bodyView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    bodyView.backgroundColor = [UIColor withMax:StringFromCanData(kStr_timeBubbleDumpValue)];
    //: bodyView.layer.cornerRadius = 16;
    bodyView.layer.cornerRadius = 16;
    //: [self.contentView addSubview:bodyView];
    [self.contentView addSubview:bodyView];

    //: _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _avatarImageView.layer.cornerRadius = 24;
    _avatarImageView.layer.cornerRadius = 24;
    //: _avatarImageView.layer.masksToBounds = YES;
    _avatarImageView.layer.masksToBounds = YES;
    //: [bodyView addSubview:_avatarImageView];
    [bodyView addSubview:_avatarImageView];
//    UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTouchAvatar:)];
//    [_avatarImageView addGestureRecognizer:panGesture];


    //: _cancleBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    _cancleBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: _cancleBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-84-15, 20, 84, 32);
    _cancleBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-84-15, 20, 84, 32);
//         _cancleBtn.titleLabel.textAlignment = NSTextAlignmentRight;
    //: _cancleBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _cancleBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_cancleBtn setTitle:[FFFLanguageManager getTextWithKey:@"black_list_item_remove"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitle:[ItemManager sessionInformation:StringFromCanData(kStr_rateValue)] forState:(UIControlStateNormal)];//移除
    //: [_cancleBtn addTarget:self action:@selector(onTouchButton) forControlEvents:(UIControlEventTouchUpInside)];
    [_cancleBtn addTarget:self action:@selector(messageMain) forControlEvents:(UIControlEventTouchUpInside)];
    //: [_cancleBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitleColor:[UIColor withMax:StringFromCanData(kStr_approachValue)] forState:(UIControlStateNormal)];
    //: _cancleBtn.layer.cornerRadius = 16;
    _cancleBtn.layer.cornerRadius = 16;
    //: _cancleBtn.layer.borderWidth = 1;
    _cancleBtn.layer.borderWidth = 1;
    //: _cancleBtn.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
    _cancleBtn.layer.borderColor = [UIColor withMax:StringFromCanData(kStr_timeName)].CGColor;
    //: _cancleBtn.layer.masksToBounds = YES;
    _cancleBtn.layer.masksToBounds = YES;
    //: [bodyView addSubview:_cancleBtn];
    [bodyView addSubview:_cancleBtn];


    //: [bodyView addSubview:self.labName];
    [bodyView addSubview:self.labName];
    //: self.labName.frame = CGRectMake(15+40+15, 16, self.width-140, 40);
    self.labName.frame = CGRectMake(15+40+15, 16, self.width-140, 40);
}

//: - (void)refreshWithMember:(NTESContactDataMember *)member{
- (void)whenOrHuddler:(SupportMember *)member{
    //: self.member = member;
    self.member = member;
    //: self.labName.text = [NTESSessionUtil showNick:member.info.infoId inSession:nil];
    self.labName.text = [ArrayUtil bringHome:member.info.infoId imageSession:nil];
//    [self.textLabel sizeToFit];
    //: NSURL *url;
    NSURL *url;
    //: if (member.info.avatarUrlString.length) {
    if (member.info.avatarUrlString.length) {
        //: url = [NSURL URLWithString:member.info.avatarUrlString];
        url = [NSURL URLWithString:member.info.avatarUrlString];
    }
    //: [_avatarImageView sd_setImageWithURL:url placeholderImage:member.info.avatarImage];
    [_avatarImageView sd_setImageWithURL:url placeholderImage:member.info.avatarImage];
}

//: - (void)refreshData:(NIMTeamMember *)data
- (void)title:(NIMTeamMember *)data
{
    //: self.data = data;
    self.data = data;
    //: self.isteam = YES;
    self.isteam = YES;
//    userId
//    [_avatarImageView sd_setImageWithURL:[NSURL URLWithString:data.imageUrl] placeholderImage:nil];
//    self.labName.text = data.nickname;

    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:data.userId option:nil];
    MarginThanInfo *info = [[Afterwards blue] put:data.userId button:nil];
    //: self.labName.text = info.showName;
    self.labName.text = info.showName;
    //: [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:StringFromCanData(kStr_prominentData)]];
}


//: - (void)onTouchButton {
- (void)messageMain {
    //: if ([self.delegate respondsToSelector:@selector(didTouchCancleButton:)] || [self.delegate respondsToSelector:@selector(didTouchTeamCancleButton:)]) {
    if ([self.delegate respondsToSelector:@selector(addTitle:)] || [self.delegate respondsToSelector:@selector(cardinalled:)]) {

        //: if (self.isteam) {
        if (self.isteam) {
            //: [self.delegate didTouchTeamCancleButton:self.data];
            [self.delegate cardinalled:self.data];
        //: }else{
        }else{
            //: [self.delegate didTouchCancleButton:self.member];
            [self.delegate addTitle:self.member];
        }

    }
}


//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString(StringFromCanData(kStr_stairTitleData)) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}


//: - (UILabel *)labName {
- (UILabel *)labName {
    //: if (!_labName) {
    if (!_labName) {
        //: _labName = [[UILabel alloc] init];
        _labName = [[UILabel alloc] init];
        //: _labName.font = [UIFont systemFontOfSize:16.f];
        _labName.font = [UIFont systemFontOfSize:16.f];
        //: _labName.textColor = [UIColor colorWithHexString:@"#333333"];
        _labName.textColor = [UIColor withMax:StringFromCanData(kStr_involvementValue)];
        //: _labName.textAlignment = NSTextAlignmentLeft;
        _labName.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labName;
    return _labName;
}





//: @end
@end

Byte * CanDataToCache(Byte *data) {
    int neitherTitle = data[0];
    int blueish = data[1];
    int rail = data[2];
    if (!neitherTitle) return data + rail;
    for (int i = 0; i < blueish / 2; i++) {
        int begin = rail + i;
        int end = rail + blueish - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[rail + blueish] = 0;
    return data + rail;
}

NSString *StringFromCanData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CanDataToCache(data)];
}  
