
#import <Foundation/Foundation.h>

NSString *StringFromRecordingData(Byte *data);


//: user_id
Byte kStr_bubbleName[] = {55, 7, 90, 12, 74, 151, 62, 193, 224, 183, 82, 9, 207, 205, 191, 204, 185, 195, 190, 68};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MatrixViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/28.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactGroupCell.h"
#import "MatrixViewCell.h"

//: @implementation NTESContactGroupCell
@implementation MatrixViewCell

//: - (void)initSubviews{
- (void)initHistoricalRecord{

    //: _iconImageView = [[UIImageView alloc] init];
    _iconImageView = [[UIImageView alloc] init];
    //: [self addSubview:_iconImageView];
    [self addSubview:_iconImageView];

    //: _avatar = [[FFFAvatarImageView alloc] init];
    _avatar = [[StatusWithControl alloc] init];
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
-(void)child:(NSDictionary *)information{
    //: NSString *user_id = [information newStringValueForKey:@"user_id"];
    NSString *user_id = [information with:StringFromRecordingData(kStr_bubbleName)];

    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:user_id option:nil];
    MarginThanInfo *info = [[Afterwards blue] put:user_id button:nil];

    //: [_avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatar placeholder:[NSURL URLWithString:info.avatarUrlString] beforeArea:info.avatarImage frameImageOptions:SDWebImageRetryFailed];

    //: _titleLabel.text = user.userInfo.nickName;
    _titleLabel.text = user.userInfo.nickName;


}

//: @end
@end

Byte * RecordingDataToCache(Byte *data) {
    int keyVideo = data[0];
    int text = data[1];
    Byte styleCreate = data[2];
    int tableColor = data[3];
    if (!keyVideo) return data + tableColor;
    for (int i = tableColor; i < tableColor + text; i++) {
        int value = data[i] - styleCreate;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[tableColor + text] = 0;
    return data + tableColor;
}

NSString *StringFromRecordingData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RecordingDataToCache(data)];
}
