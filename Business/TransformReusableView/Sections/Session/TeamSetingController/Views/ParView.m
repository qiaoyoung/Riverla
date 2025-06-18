
#import <Foundation/Foundation.h>
typedef struct {
    Byte velleity;
    Byte *max;
    unsigned int spectacles;
    bool valueView;
	int quickEraseRed;
} LengthData;

NSString *StringFromLengthData(LengthData *data);


//: #F6F6F6
LengthData kStr_findName = (LengthData){188, (Byte []){159, 250, 138, 250, 138, 250, 138, 51}, 7, false, 175};


//: 5D5F66
LengthData kStr_voiceLengthShowData = (LengthData){100, (Byte []){81, 32, 81, 34, 82, 82, 163}, 6, false, 194};


//: #000000
LengthData kStr_referButtonData = (LengthData){229, (Byte []){198, 213, 213, 213, 213, 213, 213, 232}, 7, false, 11};


//: group_mute
LengthData kStr_withMustData = (LengthData){79, (Byte []){40, 61, 32, 58, 63, 16, 34, 58, 59, 42, 25}, 10, false, 106};


//: group_remove
LengthData kStr_optionSelectValue = (LengthData){193, (Byte []){166, 179, 174, 180, 177, 158, 179, 164, 172, 174, 183, 164, 253}, 12, false, 96};


//: group_mute_no
LengthData kStr_willName = (LengthData){35, (Byte []){68, 81, 76, 86, 83, 124, 78, 86, 87, 70, 124, 77, 76, 247}, 13, false, 249};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ParView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFGroupMemberTableViewCell.h"
#import "ParView.h"
//: #import "FFFAvatarImageView.h"
#import "StatusWithControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "FFFTeamHelper.h"
#import "RandomHelper.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Afterwards.h"

//: @interface FFFGroupMemberTableViewCell()
@interface ParView()

//: @property (nonatomic,strong) id<FFFKitCardHeaderData> data;
@property (nonatomic,strong) id<FFFKitCardHeaderData> data;

//: @end
@end

//: @implementation FFFGroupMemberTableViewCell
@implementation ParView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

//        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.selectionStyle = UITableViewCellSelectionStyleGray;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;


        //: [self initSubviews];
        [self initTitleSubviews];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)behindMedia:(UITableView *)tableView
{
    //: static NSString *identifier = @"FFFGroupMemberTableViewCell";
    static NSString *identifier = @"ParView";
    //: FFFGroupMemberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    ParView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[FFFGroupMemberTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[ParView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //: cell.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
        cell.backgroundColor = [UIColor withMax:StringFromLengthData(&kStr_findName)];
        //: cell.layer.cornerRadius = 16;
        cell.layer.cornerRadius = 16;
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initTitleSubviews {

    //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.masksToBounds = YES;
    //: _roleImageView.layer.cornerRadius = 24;
    _roleImageView.layer.cornerRadius = 24;
    //: [self.contentView addSubview:_roleImageView];
    [self.contentView addSubview:_roleImageView];

    //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    _titleLabel.textColor = [UIColor withMax:StringFromLengthData(&kStr_referButtonData)];
    //: [self.contentView addSubview:_titleLabel];
    [self.contentView addSubview:_titleLabel];

    //: _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    //: _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: _subtitleLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
    _subtitleLabel.textColor = [UIColor withMax:StringFromLengthData(&kStr_voiceLengthShowData)];
    //: _subtitleLabel.textAlignment = NSTextAlignmentRight;
    _subtitleLabel.textAlignment = NSTextAlignmentRight;
    //: _subtitleLabel.hidden = YES;
    _subtitleLabel.hidden = YES;
    //: [self.contentView addSubview:_subtitleLabel];
    [self.contentView addSubview:_subtitleLabel];

    //: [self.contentView addSubview:self.muteBtn];
    [self.contentView addSubview:self.muteBtn];
    //: [self.contentView addSubview:self.removeBtn];
    [self.contentView addSubview:self.removeBtn];

}

//: - (void)reloadWithUserId:(NSString *)UserId
- (void)press:(NSString *)UserId
{
    //: self.userId = UserId;
    self.userId = UserId;
}

//: - (void)setUserInfo:(FFFKitInfo *)userInfo
- (void)setUserInfo:(MarginThanInfo *)userInfo
{
    //: self.userInfo = userInfo;
    self.userInfo = userInfo;
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)notTitle:(id)sender{

    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(compartmenting:)]) {
        //: [self.delegate cellShouldBeRemoved:self.userId];
        [self.delegate compartmenting:self.userId];
    }
}
//: - (void)onTouchMuteBtn:(id)sender{
- (void)transformLanguage:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(compartmenting:)]) {
        //: [self.delegate cellShouldBeMute:self.userId mute:YES];
        [self.delegate name:self.userId managerPin:YES];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    //: self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);
    self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);

}
//: - (UIButton *)removeBtn{
- (UIButton *)removeBtn{
    //: if (!_removeBtn) {
    if (!_removeBtn) {
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(notTitle:) forControlEvents:UIControlEventTouchUpInside];
        //: [_removeBtn setImage:[UIImage imageNamed:@"group_remove"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:StringFromLengthData(&kStr_optionSelectValue)] forState:UIControlStateNormal];

    }
    //: return _removeBtn;
    return _removeBtn;
}

//: - (UIButton *)muteBtn{
- (UIButton *)muteBtn{
    //: if (!_muteBtn) {
    if (!_muteBtn) {
        //: _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_muteBtn addTarget:self action:@selector(onTouchMuteBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_muteBtn addTarget:self action:@selector(transformLanguage:) forControlEvents:UIControlEventTouchUpInside];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute_no"] forState:UIControlStateNormal];
        [_muteBtn setImage:[UIImage imageNamed:StringFromLengthData(&kStr_willName)] forState:UIControlStateNormal];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute"] forState:UIControlStateSelected];
        [_muteBtn setImage:[UIImage imageNamed:StringFromLengthData(&kStr_withMustData)] forState:UIControlStateSelected];

    }
    //: return _muteBtn;
    return _muteBtn;
}


//: @end
@end

Byte *LengthDataToByte(LengthData *data) {
    if (data->valueView) return data->max;
    for (int i = 0; i < data->spectacles; i++) {
        data->max[i] ^= data->velleity;
    }
    data->max[data->spectacles] = 0;
    data->valueView = true;
	if (data->spectacles >= 1) {
		data->quickEraseRed = data->max[0];
	}
    return data->max;
}

NSString *StringFromLengthData(LengthData *data) {
    return [NSString stringWithUTF8String:(char *)LengthDataToByte(data)];
}
