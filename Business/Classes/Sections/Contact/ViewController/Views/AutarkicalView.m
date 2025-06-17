
#import <Foundation/Foundation.h>

NSString *StringFromMessageDirectionData(Byte *data);


//: avatar
Byte kStr_keyRemoteName[] = {16, 6, 53, 6, 162, 240, 150, 171, 150, 169, 150, 167, 144};


//: nickname
Byte kStr_onAddName[] = {5, 8, 99, 12, 151, 5, 48, 182, 251, 229, 246, 92, 209, 204, 198, 206, 209, 196, 208, 200, 96};


//: contact_user_default_header
Byte kStr_indexValue[] = {90, 27, 69, 13, 174, 198, 145, 241, 2, 100, 72, 121, 31, 168, 180, 179, 185, 166, 168, 185, 164, 186, 184, 170, 183, 164, 169, 170, 171, 166, 186, 177, 185, 164, 173, 170, 166, 169, 170, 183, 230};


//: #FAF8FD
Byte kStr_captureName[] = {19, 7, 87, 6, 95, 246, 122, 157, 152, 157, 143, 157, 155, 6};


//: Tamma Kirtner
Byte kStr_myImageText[] = {57, 13, 73, 11, 5, 181, 118, 25, 189, 144, 62, 157, 170, 182, 182, 170, 105, 148, 178, 187, 189, 183, 174, 187, 25};


//: ic_add_friend
Byte kStr_areaContent[] = {12, 13, 18, 14, 170, 156, 241, 130, 176, 16, 177, 20, 37, 205, 123, 117, 113, 115, 118, 118, 113, 120, 132, 123, 119, 128, 118, 73};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AutarkicalView.m
//  Riverla
//
//  Created by mac on 2025/4/7.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RecommendfriendTableViewCell.h"
#import "AutarkicalView.h"

//: @implementation RecommendfriendTableViewCell
@implementation AutarkicalView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        self.backgroundColor = [UIColor withMax:StringFromMessageDirectionData(kStr_captureName)];
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;

        //: [self initSubviews];
        [self initVisualCommunicationLoad];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews
- (void)initVisualCommunicationLoad
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
- (void)modelBubble:(NSDictionary *)userItem
{
    //: self.userId = [userItem newStringValueForKey:@"id"];
    self.userId = [userItem with:@"id"];
    //: NSString *avatar = [userItem newStringValueForKey:@"avatar"];
    NSString *avatar = [userItem with:StringFromMessageDirectionData(kStr_keyRemoteName)];
    //: NSString *nickname = [userItem newStringValueForKey:@"nickname"];
    NSString *nickname = [userItem with:StringFromMessageDirectionData(kStr_onAddName)];

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
        _labName.text = StringFromMessageDirectionData(kStr_myImageText);
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
        _avaterImg.image = [UIImage imageNamed:StringFromMessageDirectionData(kStr_indexValue)];
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
        [_btnAdd addTarget:self action:@selector(touchTitle) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnAdd setImage:[UIImage imageNamed:@"ic_add_friend"] forState:UIControlStateNormal];
        [_btnAdd setImage:[UIImage imageNamed:StringFromMessageDirectionData(kStr_areaContent)] forState:UIControlStateNormal];
    }
    //: return _btnAdd;
    return _btnAdd;
}

//: - (void)handleAdd{
- (void)touchTitle{
    //: if ([self.delegate respondsToSelector:@selector(didTouchAdddButton:)]) {
    if ([self.delegate respondsToSelector:@selector(pressedSession:)]) {
        //: [self.delegate didTouchAdddButton:self.userId];
        [self.delegate pressedSession:self.userId];
    }
}

//: @end
@end

Byte * MessageDirectionDataToCache(Byte *data) {
    int textTitleQueryed = data[0];
    int wandering = data[1];
    Byte shouldPin = data[2];
    int lowClass = data[3];
    if (!textTitleQueryed) return data + lowClass;
    for (int i = lowClass; i < lowClass + wandering; i++) {
        int value = data[i] - shouldPin;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[lowClass + wandering] = 0;
    return data + lowClass;
}

NSString *StringFromMessageDirectionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MessageDirectionDataToCache(data)];
}
