
#import <Foundation/Foundation.h>

NSString *StringFromLinkData(Byte *data);        


//: user_id
Byte kStr_ofName[] = {41, 7, 99, 11, 122, 10, 202, 70, 151, 147, 200, 18, 16, 2, 15, 252, 6, 1, 161};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SeeView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/28.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactGroupCell.h"
#import "SeeView.h"

//: @implementation NTESContactGroupCell
@implementation SeeView

//: - (void)initSubviews{
- (void)initExhibitTap{

    //: _iconImageView = [[UIImageView alloc] init];
    _iconImageView = [[UIImageView alloc] init];
    //: [self addSubview:_iconImageView];
    [self addSubview:_iconImageView];

    //: _avatar = [[FFFAvatarImageView alloc] init];
    _avatar = [[ViewControl alloc] init];
    //: [self addSubview:_avatar];
    [self addSubview:_avatar];
    //: [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
    [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_equalTo(10);
        make.left.mas_equalTo(10);
        //: make.width.mas_equalTo(40);
        make.width.mas_equalTo(40);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.textColor = [UIColor blackColor];
    _titleLabel.textColor = [UIColor blackColor];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];
    //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_offset(60);
        make.left.mas_offset(60);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];

}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)doingTeam:(NSDictionary *)information{
    //: NSString *user_id = [information newStringValueForKey:@"user_id"];
    NSString *user_id = [information speedy:StringFromLinkData(kStr_ofName)];

    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:user_id option:nil];
    OriginBy *info = [[Notice fullKit] value:user_id manager:nil];

    //: [_avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatar disableTime:[NSURL URLWithString:info.avatarUrlString] min:info.avatarImage pathImageOptions:SDWebImageRetryFailed];

    //: _titleLabel.text = user.userInfo.nickName;
    _titleLabel.text = user.userInfo.nickName;


}

//: @end
@end

Byte * LinkDataToCache(Byte *data) {
    int addTo = data[0];
    int invest = data[1];
    Byte kitInfo = data[2];
    int on = data[3];
    if (!addTo) return data + on;
    for (int i = on; i < on + invest; i++) {
        int value = data[i] + kitInfo;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[on + invest] = 0;
    return data + on;
}

NSString *StringFromLinkData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)LinkDataToCache(data)];
}
