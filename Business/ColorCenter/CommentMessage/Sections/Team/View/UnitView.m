
#import <Foundation/Foundation.h>

NSString *StringFromAfterData(Byte *data);


//: 创建于%@
Byte kStr_disturbingTitle[] = {60, 11, 4, 42, 64, 37, 142, 186, 228, 186, 187, 229, 155, 136, 229, 99};


//: 未知时间创建
Byte kStr_franchiseMootValue[] = {83, 18, 6, 213, 37, 34, 186, 187, 229, 155, 136, 229, 180, 151, 233, 182, 151, 230, 165, 159, 231, 170, 156, 230, 211};


//: yyyy/MM/dd
Byte kStr_blueTitleData[] = {47, 10, 7, 1, 174, 116, 138, 100, 100, 47, 77, 77, 47, 121, 121, 121, 121, 241};


//: head_default
Byte kStr_destructDishName[] = {2, 12, 7, 235, 31, 211, 140, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 6};

// __DEBUG__
// __CLOSE_PRINT__
//
//  UnitView.m
// Afterwards
//
//  Created by Netease on 2019/6/10.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamCardHeaderView.h"
#import "UnitView.h"
//: #import "FFFAvatarImageView.h"
#import "StatusWithControl.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"

//: @interface FFFTeamCardHeaderView ()
@interface UnitView ()

//: @property (nonatomic,strong) FFFAvatarImageView *avatar;
@property (nonatomic,strong) StatusWithControl *avatar;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *numberLabel;
@property (nonatomic,strong) UILabel *numberLabel;

//: @property (nonatomic,strong) UILabel *createTimeLabel;
@property (nonatomic,strong) UILabel *createTimeLabel;

//: @end
@end

//: @implementation FFFTeamCardHeaderView
@implementation UnitView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self addSubview:self.avatar];
        [self addSubview:self.avatar];
        //: [self addSubview:self.titleLabel];
        [self addSubview:self.titleLabel];
        //: [self addSubview:self.numberLabel];
        [self addSubview:self.numberLabel];
        //: [self addSubview:self.createTimeLabel];
        [self addSubview:self.createTimeLabel];
        //: self.backgroundColor = [UIColor colorWithRed:((float)((0xecf1f5 & 0xFF0000) >> 16))/255.0 green:((float)((0xecf1f5 & 0x00FF00) >> 8))/255.0 blue:((float)(0xecf1f5 & 0x0000FF))/255.0 alpha:1.0];
        self.backgroundColor = [UIColor colorWithRed:((float)((0xecf1f5 & 0xFF0000) >> 16))/255.0 green:((float)((0xecf1f5 & 0x00FF00) >> 8))/255.0 blue:((float)(0xecf1f5 & 0x0000FF))/255.0 alpha:1.0];
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: _titleLabel.nim_width = _titleLabel.nim_width > 200 ? 200 : self.titleLabel.nim_width;
    _titleLabel.nim_width = _titleLabel.nim_width > 200 ? 200 : self.titleLabel.nim_width;
    //: _avatar.nim_left = 20;
    _avatar.nim_left = 20;
    //: _avatar.nim_top = 25;
    _avatar.nim_top = 25;
    //: _titleLabel.nim_left = _avatar.nim_right + 10;
    _titleLabel.nim_left = _avatar.nim_right + 10;
    //: _titleLabel.nim_top = _avatar.nim_top;
    _titleLabel.nim_top = _avatar.nim_top;
    //: _numberLabel.nim_left = _titleLabel.nim_left;
    _numberLabel.nim_left = _titleLabel.nim_left;
    //: _numberLabel.nim_bottom = _avatar.nim_bottom;
    _numberLabel.nim_bottom = _avatar.nim_bottom;
    //: _createTimeLabel.nim_left = _numberLabel.nim_right + 10;
    _createTimeLabel.nim_left = _numberLabel.nim_right + 10;
    //: _createTimeLabel.nim_bottom = _numberLabel.nim_bottom;
    _createTimeLabel.nim_bottom = _numberLabel.nim_bottom;
}

//: - (CGSize)sizeThatFits:(CGSize)size {
- (CGSize)sizeThatFits:(CGSize)size {
    //: return CGSizeMake(size.width, 89);
    return CGSizeMake(size.width, 89);
}

//: #pragma mark - Public
#pragma mark - Public
//: - (void)setTeam:(NIMTeam *)team {
- (void)setTeam:(NIMTeam *)team {
    //: _team = team;
    _team = team;

    //avatar
    //: NSURL *avatarUrl = team.avatarUrl.length? [NSURL URLWithString:team.avatarUrl] : nil;
    NSURL *avatarUrl = team.avatarUrl.length? [NSURL URLWithString:team.avatarUrl] : nil;
    //: [_avatar nim_setImageWithURL:avatarUrl placeholderImage:[UIImage imageNamed:@"head_default"]];
    [_avatar date:avatarUrl enableImage:[UIImage imageNamed:StringFromAfterData(kStr_destructDishName)]];

    //title
    //: _titleLabel.text = team.teamName;
    _titleLabel.text = team.teamName;
    //: [_titleLabel sizeToFit];
    [_titleLabel sizeToFit];

    //teamId
    //: _numberLabel.text = team.teamId;
    _numberLabel.text = team.teamId;
    //: [_numberLabel sizeToFit];
    [_numberLabel sizeToFit];

    //create time
    //: _createTimeLabel.text = [self formatTime:team.createTime];
    _createTimeLabel.text = [self nameKey:team.createTime];
    //: [_createTimeLabel sizeToFit];
    [_createTimeLabel sizeToFit];

    //: [self layoutIfNeeded];
    [self layoutIfNeeded];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (NSString*)formatTime:(NSTimeInterval)time {
- (NSString*)nameKey:(NSTimeInterval)time {
    //: NSTimeInterval timestamp = time;
    NSTimeInterval timestamp = time;
    //: NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //: [dateFormatter setDateFormat:@"yyyy/MM/dd"];
    [dateFormatter setDateFormat:StringFromAfterData(kStr_blueTitleData)];
    //: NSString *dateString = [dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSince1970:timestamp]];
    NSString *dateString = [dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSince1970:timestamp]];
    //: if (!dateString.length) {
    if (!dateString.length) {
        //: return @"未知时间创建".nim_localized;
        return StringFromAfterData(kStr_franchiseMootValue).textKey;
    }
    //: return [NSString stringWithFormat:@"创建于%@".nim_localized,dateString];
    return [NSString stringWithFormat:StringFromAfterData(kStr_disturbingTitle).textKey,dateString];
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)onTouchAvatar:(id)sender
- (void)doing:(id)sender
{
    //: if (_delegate && [_delegate respondsToSelector:@selector(onTouchAvatar:)]) {
    if (_delegate && [_delegate respondsToSelector:@selector(doing:)]) {
        //: [_delegate onTouchAvatar:sender];
        [_delegate doing:sender];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (FFFAvatarImageView *)avatar {
- (StatusWithControl *)avatar {
    //: if (!_avatar) {
    if (!_avatar) {
        //: _avatar = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _avatar = [[StatusWithControl alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [_avatar addTarget:self
        [_avatar addTarget:self
                    //: action:@selector(onTouchAvatar:)
                    action:@selector(doing:)
          //: forControlEvents:UIControlEventTouchUpInside];
          forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _avatar;
    return _avatar;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.font = [UIFont systemFontOfSize:17.f];
        _titleLabel.font = [UIFont systemFontOfSize:17.f];
        //: _titleLabel.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
        _titleLabel.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)numberLabel {
- (UILabel *)numberLabel {
    //: if (!_numberLabel) {
    if (!_numberLabel) {
        //: _numberLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _numberLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        //: _numberLabel.backgroundColor = [UIColor clearColor];
        _numberLabel.backgroundColor = [UIColor clearColor];
        //: _numberLabel.font = [UIFont systemFontOfSize:14.f];
        _numberLabel.font = [UIFont systemFontOfSize:14.f];
        //: _numberLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
        _numberLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
    }
    //: return _numberLabel;
    return _numberLabel;
}

//: - (UILabel *)createTimeLabel {
- (UILabel *)createTimeLabel {
    //: if (!_createTimeLabel) {
    if (!_createTimeLabel) {
        //: _createTimeLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _createTimeLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        //: _createTimeLabel.backgroundColor = [UIColor clearColor];
        _createTimeLabel.backgroundColor = [UIColor clearColor];
        //: _createTimeLabel.font = [UIFont systemFontOfSize:14.f];
        _createTimeLabel.font = [UIFont systemFontOfSize:14.f];
        //: _createTimeLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
        _createTimeLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
    }
    //: return _createTimeLabel;
    return _createTimeLabel;
}

//: @end
@end

Byte * AfterDataToCache(Byte *data) {
    int controlTo = data[0];
    int saveMentallyTing = data[1];
    int suspectVert = data[2];
    if (!controlTo) return data + suspectVert;
    for (int i = 0; i < saveMentallyTing / 2; i++) {
        int begin = suspectVert + i;
        int end = suspectVert + saveMentallyTing - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[suspectVert + saveMentallyTing] = 0;
    return data + suspectVert;
}

NSString *StringFromAfterData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AfterDataToCache(data)];
}  
