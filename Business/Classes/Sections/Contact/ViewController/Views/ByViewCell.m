
#import <Foundation/Foundation.h>

NSString *StringFromTvData(Byte *data);


//: #FAF8FD
Byte kStr_optionLinkName[] = {36, 7, 73, 7, 164, 108, 183, 108, 143, 138, 143, 129, 143, 141, 172};


//: avatar
Byte kStr_displayData[] = {69, 6, 47, 13, 250, 10, 156, 56, 182, 179, 204, 254, 4, 144, 165, 144, 163, 144, 161, 93};


//: nickname
Byte kStr_fileName[] = {82, 8, 4, 4, 114, 109, 103, 111, 114, 101, 113, 105, 224};


//: contact_user_default_header
Byte kStr_childValue[] = {40, 27, 9, 11, 45, 187, 149, 32, 199, 58, 207, 108, 120, 119, 125, 106, 108, 125, 104, 126, 124, 110, 123, 104, 109, 110, 111, 106, 126, 117, 125, 104, 113, 110, 106, 109, 110, 123, 230};


//: Tamma Kirtner
Byte kStr_redValue[] = {8, 13, 47, 13, 106, 98, 225, 14, 81, 166, 52, 226, 61, 131, 144, 156, 156, 144, 79, 122, 152, 161, 163, 157, 148, 161, 176};


//: ic_add_friend
Byte kStr_withTitle[] = {13, 13, 19, 7, 173, 213, 35, 124, 118, 114, 116, 119, 119, 114, 121, 133, 124, 120, 129, 119, 233};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ByViewCell.m
//  Riverla
//
//  Created by mac on 2025/4/7.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RecommendfriendTableViewCell.h"
#import "ByViewCell.h"

//: @implementation RecommendfriendTableViewCell
@implementation ByViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        self.backgroundColor = [UIColor isView:StringFromTvData(kStr_optionLinkName)];
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;

        //: [self initSubviews];
        [self initBackground];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews
- (void)initBackground
{
    //: [self.contentView addSubview:self.avaterImg];
    [self.contentView addSubview:self.avaterImg];
    //: self.avaterImg.frame = CGRectMake(15, 12, 48, 48);
    self.avaterImg.frame = CGRectMake(15, 12, 48, 48);

    //: [self.contentView addSubview:self.labName];
    [self.contentView addSubview:self.labName];
    //: self.labName.frame = CGRectMake(self.avaterImg.right+12, 12, [[UIScreen mainScreen] bounds].size.width-100, 48);
    self.labName.frame = CGRectMake(self.avaterImg.right+12, 12, [[UIScreen mainScreen] bounds].size.width-100, 48);

    //: [self.contentView addSubview:self.btnAdd];
    [self.contentView addSubview:self.btnAdd];
    //: self.btnAdd.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80, 20, 32, 32);
    self.btnAdd.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80, 20, 32, 32);
}

//: - (void)refreshWithModel:(NSDictionary *)userItem
- (void)along:(NSDictionary *)userItem
{
    //: self.userId = [userItem newStringValueForKey:@"id"];
    self.userId = [userItem speedy:@"id"];
    //: NSString *avatar = [userItem newStringValueForKey:@"avatar"];
    NSString *avatar = [userItem speedy:StringFromTvData(kStr_displayData)];
    //: NSString *nickname = [userItem newStringValueForKey:@"nickname"];
    NSString *nickname = [userItem speedy:StringFromTvData(kStr_fileName)];

    //: [self.avaterImg sd_setImageWithURL:[NSURL URLWithString:avatar]];
    [self.avaterImg sd_setImageWithURL:[NSURL URLWithString:avatar]];
    //: self.labName.text = nickname;
    self.labName.text = nickname;

}

//: - (UILabel *)labName {
- (UILabel *)labName {
    //: if (!_labName) {
    if (!_labName) {
        //: _labName = [[UILabel alloc] init];
        _labName = [[UILabel alloc] init];
        //: _labName.font = [UIFont systemFontOfSize:16.f];
        _labName.font = [UIFont systemFontOfSize:16.f];
        //: _labName.textColor = [UIColor blackColor];
        _labName.textColor = [UIColor blackColor];
        //: _labName.textAlignment = NSTextAlignmentLeft;
        _labName.textAlignment = NSTextAlignmentLeft;
        //: _labName.text = @"Tamma Kirtner";
        _labName.text = StringFromTvData(kStr_redValue);
    }
    //: return _labName;
    return _labName;
}

//: - (UIImageView *)avaterImg
- (UIImageView *)avaterImg
{
    //: if (!_avaterImg) {
    if (!_avaterImg) {
        //: _avaterImg = [[UIImageView alloc] init];
        _avaterImg = [[UIImageView alloc] init];
        //: _avaterImg.layer.cornerRadius = 24;
        _avaterImg.layer.cornerRadius = 24;
        //: _avaterImg.layer.masksToBounds = YES;
        _avaterImg.layer.masksToBounds = YES;
        //: _avaterImg.image = [UIImage imageNamed:@"contact_user_default_header"];
        _avaterImg.image = [UIImage imageNamed:StringFromTvData(kStr_childValue)];
    }
    //: return _avaterImg;
    return _avaterImg;
}

//: - (UIButton *)btnAdd
- (UIButton *)btnAdd
{
    //: if (!_btnAdd) {
    if (!_btnAdd) {
        //: _btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_btnAdd addTarget:self action:@selector(handleAdd) forControlEvents:UIControlEventTouchUpInside];
        [_btnAdd addTarget:self action:@selector(chemicalElementDisable) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnAdd setImage:[UIImage imageNamed:@"ic_add_friend"] forState:UIControlStateNormal];
        [_btnAdd setImage:[UIImage imageNamed:StringFromTvData(kStr_withTitle)] forState:UIControlStateNormal];
    }
    //: return _btnAdd;
    return _btnAdd;
}

//: - (void)handleAdd{
- (void)chemicalElementDisable{
    //: if ([self.delegate respondsToSelector:@selector(didTouchAdddButton:)]) {
    if ([self.delegate respondsToSelector:@selector(languaged:)]) {
        //: [self.delegate didTouchAdddButton:self.userId];
        [self.delegate languaged:self.userId];
    }
}

//: @end
@end

Byte * TvDataToCache(Byte *data) {
    int with = data[0];
    int fileInfo = data[1];
    Byte red = data[2];
    int query = data[3];
    if (!with) return data + query;
    for (int i = query; i < query + fileInfo; i++) {
        int value = data[i] - red;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[query + fileInfo] = 0;
    return data + query;
}

NSString *StringFromTvData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TvDataToCache(data)];
}
