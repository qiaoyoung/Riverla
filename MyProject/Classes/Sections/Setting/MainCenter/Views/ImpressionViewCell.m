
#import <Foundation/Foundation.h>

NSString *StringFromBrokenData(Byte *data);


//: black_list_item_remove
Byte kStr_pinTitle[] = {24, 22, 75, 11, 237, 163, 115, 15, 88, 82, 155, 173, 183, 172, 174, 182, 170, 183, 180, 190, 191, 170, 180, 191, 176, 184, 170, 189, 176, 184, 186, 193, 176, 101};


//: head_default
Byte kStr_meteTheoryTitle[] = {9, 12, 72, 4, 176, 173, 169, 172, 167, 172, 173, 174, 169, 189, 180, 188, 222};


//: #EEEEEE
Byte kStr_warReverseText[] = {64, 7, 22, 5, 225, 57, 91, 91, 91, 91, 91, 91, 215};


//: #F6F6F6
Byte kStr_oakValue[] = {82, 7, 1, 13, 74, 207, 143, 176, 168, 98, 24, 200, 18, 36, 71, 55, 71, 55, 71, 55, 130};


//: _UITableViewCellSeparatorView
Byte kStr_sentenceContent[] = {72, 29, 29, 8, 83, 1, 81, 204, 124, 114, 102, 113, 126, 127, 137, 130, 115, 134, 130, 148, 96, 130, 137, 137, 112, 130, 141, 126, 143, 126, 145, 140, 143, 115, 134, 130, 148, 211};


//: #333333
Byte kStr_keyContent[] = {21, 7, 20, 5, 148, 55, 71, 71, 71, 71, 71, 71, 210};


//: #5D5F66
Byte kStr_colorVatTitle[] = {96, 7, 72, 7, 228, 136, 90, 107, 125, 140, 125, 142, 126, 126, 233};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImpressionViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESBlackListTableViewCell.h"
#import "ImpressionViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "ViewControl.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "NTESContactDataMember.h"
#import "InfoClick.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"

//: @implementation NTESBlackListTableViewCell
@implementation ImpressionViewCell

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
        [self initMessage];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)textView:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESBlackListTableViewCell";
    static NSString *identifier = @"ImpressionViewCell";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    ImpressionViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[ImpressionViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        cell.backgroundColor = [UIColor colorWithRed:247/255.0 green:249/255.0 blue:250/255.0 alpha:1.0];
//        cell.layer.cornerRadius = 12;
//        cell.backgroundColor = [UIColor whiteColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initMessage {

    //: UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    //: bodyView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    bodyView.backgroundColor = [UIColor isView:StringFromBrokenData(kStr_oakValue)];
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
    [_cancleBtn setTitle:[TeamManager sizeKey:StringFromBrokenData(kStr_pinTitle)] forState:(UIControlStateNormal)];//移除
    //: [_cancleBtn addTarget:self action:@selector(onTouchButton) forControlEvents:(UIControlEventTouchUpInside)];
    [_cancleBtn addTarget:self action:@selector(replyTool) forControlEvents:(UIControlEventTouchUpInside)];
    //: [_cancleBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitleColor:[UIColor isView:StringFromBrokenData(kStr_colorVatTitle)] forState:(UIControlStateNormal)];
    //: _cancleBtn.layer.cornerRadius = 16;
    _cancleBtn.layer.cornerRadius = 16;
    //: _cancleBtn.layer.borderWidth = 1;
    _cancleBtn.layer.borderWidth = 1;
    //: _cancleBtn.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
    _cancleBtn.layer.borderColor = [UIColor isView:StringFromBrokenData(kStr_warReverseText)].CGColor;
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
- (void)screen:(InfoClick *)member{
    //: self.member = member;
    self.member = member;
    //: self.labName.text = [NTESSessionUtil showNick:member.info.infoId inSession:nil];
    self.labName.text = [LinkUtil exhibitSizeSession:member.info.infoId inward:nil];
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
- (void)metadata:(NIMTeamMember *)data
{
    //: self.data = data;
    self.data = data;
    //: self.isteam = YES;
    self.isteam = YES;
//    userId
//    [_avatarImageView sd_setImageWithURL:[NSURL URLWithString:data.imageUrl] placeholderImage:nil];
//    self.labName.text = data.nickname;

    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:data.userId option:nil];
    OriginBy *info = [[Notice fullKit] value:data.userId manager:nil];
    //: self.labName.text = info.showName;
    self.labName.text = info.showName;
    //: [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:StringFromBrokenData(kStr_meteTheoryTitle)]];
}


//: - (void)onTouchButton {
- (void)replyTool {
    //: if ([self.delegate respondsToSelector:@selector(didTouchCancleButton:)] || [self.delegate respondsToSelector:@selector(didTouchTeamCancleButton:)]) {
    if ([self.delegate respondsToSelector:@selector(values:)] || [self.delegate respondsToSelector:@selector(beyondImage:)]) {

        //: if (self.isteam) {
        if (self.isteam) {
            //: [self.delegate didTouchTeamCancleButton:self.data];
            [self.delegate beyondImage:self.data];
        //: }else{
        }else{
            //: [self.delegate didTouchCancleButton:self.member];
            [self.delegate values:self.member];
        }

    }
}


//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString(StringFromBrokenData(kStr_sentenceContent)) class]] && view)
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
        _labName.textColor = [UIColor isView:StringFromBrokenData(kStr_keyContent)];
        //: _labName.textAlignment = NSTextAlignmentLeft;
        _labName.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labName;
    return _labName;
}





//: @end
@end

Byte * BrokenDataToCache(Byte *data) {
    int balloonOpponent = data[0];
    int displayShould = data[1];
    Byte pinCheek = data[2];
    int securityScreen = data[3];
    if (!balloonOpponent) return data + securityScreen;
    for (int i = securityScreen; i < securityScreen + displayShould; i++) {
        int value = data[i] - pinCheek;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[securityScreen + displayShould] = 0;
    return data + securityScreen;
}

NSString *StringFromBrokenData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BrokenDataToCache(data)];
}
