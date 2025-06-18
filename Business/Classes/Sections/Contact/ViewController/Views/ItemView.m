
#import <Foundation/Foundation.h>

NSString *StringFromColorData(Byte *data);


//: f6f6f6
Byte kStr_bubbleValue[] = {71, 6, 10, 239, 157, 47, 225, 46, 119, 118, 54, 102, 54, 102, 54, 102, 213};


//: head_default_group
Byte kStr_sessionWithData[] = {41, 18, 5, 69, 243, 112, 117, 111, 114, 103, 95, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 144};


//: _UITableViewCellSeparatorView
Byte kStr_collectionMyName[] = {8, 29, 8, 225, 69, 117, 207, 25, 119, 101, 105, 86, 114, 111, 116, 97, 114, 97, 112, 101, 83, 108, 108, 101, 67, 119, 101, 105, 86, 101, 108, 98, 97, 84, 73, 85, 95, 33};


//: head_default
Byte kStr_imageContent[] = {74, 12, 10, 45, 82, 121, 28, 229, 241, 201, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 163};


//: btn_video
Byte kStr_tingTitle[] = {64, 9, 12, 125, 246, 94, 105, 103, 15, 148, 139, 200, 111, 101, 100, 105, 118, 95, 110, 116, 98, 126};


//: btn_message
Byte kStr_changeData[] = {95, 11, 10, 90, 177, 93, 136, 158, 106, 218, 101, 103, 97, 115, 115, 101, 109, 95, 110, 116, 98, 46};


//: #2C3042
Byte kStr_showContent[] = {57, 7, 7, 12, 42, 90, 106, 50, 52, 48, 51, 67, 50, 35, 58};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFriendListTableViewCell.h"
#import "ItemView.h"
//: #import "NTESSessionUtil.h"
#import "ArrayUtil.h"
//: #import "FFFAvatarImageView.h"
#import "StatusWithControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"

//: @implementation NTESFriendListTableViewCell
@implementation ItemView


//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

        //: [self initSubviews];
        [self initAssemblage];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)with:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESFriendListTableViewCell";
    static NSString *identifier = @"ItemView";
    //: NTESFriendListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    ItemView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESFriendListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[ItemView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initAssemblage {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
    bgView.backgroundColor = [UIColor withMax:StringFromColorData(kStr_bubbleValue)];
    //: bgView.layer.cornerRadius = 12;
    bgView.layer.cornerRadius = 12;
    //: [self.contentView addSubview:bgView];
    [self.contentView addSubview:bgView];

    //: [bgView addSubview:self.iconImageView];
    [bgView addSubview:self.iconImageView];
    //: [bgView addSubview:self.titleLabel];
    [bgView addSubview:self.titleLabel];

    //: self.iconImageView.frame = CGRectMake(15, 8, 40, 40);
    self.iconImageView.frame = CGRectMake(15, 8, 40, 40);
    //: self.titleLabel.frame = CGRectMake(70, 0, 230, 56);
    self.titleLabel.frame = CGRectMake(70, 0, 230, 56);

//    self.messageBtn.frame = CGRectMake(SCREEN_WIDTH-15-24, 16, 24, 24);
//    self.videoBtn.frame = CGRectMake(SCREEN_WIDTH-15-24, 16, 24, 24);

}


//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)asDomainImage:(id<TingProtocol>)member{
    //: self.titleLabel.text = member.showName;
    self.titleLabel.text = member.showName;
    //: self.memberId = [member memberId];
    self.memberId = [member memberId];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    MarginThanInfo *info = [[Afterwards blue] put:self.memberId button:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;

//    [self.iconImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:StringFromColorData(kStr_imageContent)]];
}

//: - (void)refreshTeam:(NIMTeam *)team {
- (void)color:(NIMTeam *)team {

    //: self.titleLabel.text = team.teamName;
    self.titleLabel.text = team.teamName;
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    MarginThanInfo *info = [[Afterwards blue] communication:self.memberId bar:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default_group"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:StringFromColorData(kStr_sessionWithData)]];
}


//: - (void)reloadUserItem:(NIMUser *)user
- (void)kit:(NIMUser *)user
{
    //: self.titleLabel.text = user.userInfo.nickName;
    self.titleLabel.text = user.userInfo.nickName;
    //: [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
}

//: + (CGFloat)getCellHeight:(NSDictionary *)information {
+ (CGFloat)glom:(NSDictionary *)information {
    //: return 72.f;
    return 72.f;
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString(StringFromColorData(kStr_collectionMyName)) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}

//: - (void)onTouchmessageButton {
- (void)presentData {
    //: if ([self.delegate respondsToSelector:@selector(didTouchMessageButton:)]) {
    if ([self.delegate respondsToSelector:@selector(showTotal:)]) {
        //: [self.delegate didTouchMessageButton:self.memberId];
        [self.delegate showTotal:self.memberId];
    }
}


//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.layer.masksToBounds = YES;
        _iconImageView.layer.masksToBounds = YES;
        //: _iconImageView.layer.cornerRadius = 20;
        _iconImageView.layer.cornerRadius = 20;
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:15.f];
        _titleLabel.font = [UIFont systemFontOfSize:15.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor withMax:StringFromColorData(kStr_showContent)];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIButton *)messageBtn {
- (UIButton *)messageBtn {
    //: if (!_messageBtn) {
    if (!_messageBtn) {
        //: _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_messageBtn addTarget:self action:@selector(onTouchmessageButton) forControlEvents:UIControlEventTouchUpInside];
        [_messageBtn addTarget:self action:@selector(presentData) forControlEvents:UIControlEventTouchUpInside];
        //: [_messageBtn setImage:[UIImage imageNamed:@"btn_message"] forState:UIControlStateNormal];
        [_messageBtn setImage:[UIImage imageNamed:StringFromColorData(kStr_changeData)] forState:UIControlStateNormal];
    }
    //: return _messageBtn;
    return _messageBtn;
}

//: - (UIButton *)videoBtn {
- (UIButton *)videoBtn {
    //: if (!_videoBtn) {
    if (!_videoBtn) {
        //: _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_videoBtn setImage:[UIImage imageNamed:@"btn_video"] forState:UIControlStateNormal];
        [_videoBtn setImage:[UIImage imageNamed:StringFromColorData(kStr_tingTitle)] forState:UIControlStateNormal];
//        [_videoBtn addTarget:self action:@selector(onTouchVideoButton) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _videoBtn;
    return _videoBtn;
}


//: @end
@end

Byte * ColorDataToCache(Byte *data) {
    int sole = data[0];
    int styleWith = data[1];
    int device = data[2];
    if (!sole) return data + device;
    for (int i = 0; i < styleWith / 2; i++) {
        int begin = device + i;
        int end = device + styleWith - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[device + styleWith] = 0;
    return data + device;
}

NSString *StringFromColorData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ColorDataToCache(data)];
}  
