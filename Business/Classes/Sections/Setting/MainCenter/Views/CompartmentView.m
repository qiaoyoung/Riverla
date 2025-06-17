
#import <Foundation/Foundation.h>

NSString *StringFromLipstickData(Byte *data);


//: #F1F1F1
Byte kStr_factionHenceText[] = {62, 7, 18, 13, 72, 97, 156, 10, 138, 14, 97, 203, 225, 53, 88, 67, 88, 67, 88, 67, 202};


//: count
Byte kStr_intellectualTitle[] = {20, 5, 17, 6, 171, 209, 116, 128, 134, 127, 133, 165};


//: user_nickname
Byte kStr_textShouldData[] = {31, 13, 67, 5, 243, 184, 182, 168, 181, 162, 177, 172, 166, 174, 177, 164, 176, 168, 87};


//: nickname
Byte kStr_occasionallyTitle[] = {27, 8, 99, 12, 102, 48, 119, 74, 45, 62, 151, 91, 209, 204, 198, 206, 209, 196, 208, 200, 121};


//: #DF7055
Byte kStr_messageHerselfBlueText[] = {92, 7, 27, 14, 169, 194, 219, 159, 103, 94, 255, 179, 16, 93, 62, 95, 97, 82, 75, 80, 80, 71};


//: back_white
Byte kStr_bileImageTitle[] = {75, 10, 52, 7, 29, 35, 112, 150, 149, 151, 159, 147, 171, 156, 157, 168, 153, 142};


//: amount
Byte kStr_prominentTitle[] = {98, 6, 96, 10, 141, 136, 51, 63, 217, 238, 193, 205, 207, 213, 206, 212, 221};


//: user_redpackage_prise
Byte kStr_implicationValue[] = {47, 21, 18, 8, 117, 156, 237, 207, 135, 133, 119, 132, 113, 132, 119, 118, 130, 115, 117, 125, 115, 121, 119, 113, 130, 132, 123, 133, 119, 175};


//: avatar
Byte kStr_keySolelyText[] = {90, 6, 94, 14, 187, 60, 153, 149, 12, 22, 64, 197, 224, 159, 191, 212, 191, 210, 191, 208, 247};


//: words
Byte kStr_cellSizeData[] = {20, 5, 43, 13, 248, 32, 187, 55, 52, 104, 50, 143, 67, 162, 154, 157, 143, 158, 38};


//: icon_redpackage_top
Byte kStr_henceViewValue[] = {61, 19, 49, 12, 44, 195, 233, 125, 147, 150, 38, 120, 154, 148, 160, 159, 144, 163, 150, 149, 161, 146, 148, 156, 146, 152, 150, 144, 165, 160, 161, 220};


//: %@个红包，共%@元
Byte kStr_underlyingValue[] = {46, 22, 48, 13, 119, 171, 181, 25, 92, 207, 145, 75, 124, 85, 112, 20, 232, 218, 23, 234, 210, 21, 188, 181, 31, 236, 188, 21, 181, 225, 85, 112, 21, 181, 179, 140};


//: createtime
Byte kStr_conservativeText[] = {16, 10, 91, 11, 116, 186, 141, 35, 220, 218, 97, 190, 205, 192, 188, 207, 192, 207, 196, 200, 192, 105};


//: user_avatar
Byte kStr_railData[] = {32, 11, 24, 10, 139, 195, 255, 65, 225, 194, 141, 139, 125, 138, 119, 121, 142, 121, 140, 121, 138, 36};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/21.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedpackageDetailCell.h"
#import "CompartmentView.h"

//: @implementation NTESRedpackageDetailCell
@implementation CompartmentView

//: - (void)initSubviews{
- (void)initHistoricalRecord{

    //: UIView *topview = [[UIView alloc] init];
    UIView *topview = [[UIView alloc] init];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#DF7055"];
    topview.backgroundColor = [UIColor withMax:StringFromLipstickData(kStr_messageHerselfBlueText)];
    //: [self addSubview:topview];
    [self addSubview:topview];
    //: [topview mas_makeConstraints:^(MASConstraintMaker *make) {
    [topview mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.height.mas_equalTo([UIDevice vg_statusBarHeight] + 10);
        make.height.mas_equalTo([UIDevice clear] + 10);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
    //: }];
    }];

    //: UIImageView *imageBack = [[UIImageView alloc] init];
    UIImageView *imageBack = [[UIImageView alloc] init];
    //: imageBack.userInteractionEnabled = YES;
    imageBack.userInteractionEnabled = YES;
    //: imageBack.image = [UIImage imageNamed:@"icon_redpackage_top"];
    imageBack.image = [UIImage imageNamed:StringFromLipstickData(kStr_henceViewValue)];
    //: [self addSubview:imageBack];
    [self addSubview:imageBack];
    //: [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice clear]);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width);
        make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width);
        //: make.height.mas_equalTo([[UIScreen mainScreen] bounds].size.width/1162*720);
        make.height.mas_equalTo([[UIScreen mainScreen] bounds].size.width/1162*720);
    //: }];
    }];

    //: _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_backButton setImage:[UIImage imageNamed:@"back_white"] forState:UIControlStateNormal];
    [_backButton setImage:[UIImage imageNamed:StringFromLipstickData(kStr_bileImageTitle)] forState:UIControlStateNormal];
    //: [self addSubview:_backButton];
    [self addSubview:_backButton];
    //: [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
    [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice clear]);
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.width.height.mas_equalTo(35);
        make.width.height.mas_equalTo(35);
    //: }];
    }];


    //: _nickNameLabel = [[UILabel alloc] init];
    _nickNameLabel = [[UILabel alloc] init];
    //: _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    //: _nickNameLabel.font = [UIFont systemFontOfSize:18];
    _nickNameLabel.font = [UIFont systemFontOfSize:18];
    //: _nickNameLabel.textColor = [UIColor blackColor];
    _nickNameLabel.textColor = [UIColor blackColor];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [imageBack addSubview:_nickNameLabel];
    [imageBack addSubview:_nickNameLabel];
    //: [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(imageBack).mas_offset(13);
        make.centerX.mas_equalTo(imageBack).mas_offset(13);
        //: make.centerY.mas_offset(10);
        make.centerY.mas_offset(10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];

    //: _headerImage = [[UIImageView alloc] init];
    _headerImage = [[UIImageView alloc] init];
    //: [imageBack addSubview:_headerImage];
    [imageBack addSubview:_headerImage];
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: _headerImage.layer.cornerRadius = 4.2;
    _headerImage.layer.cornerRadius = 4.2;
    //: [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_equalTo(_nickNameLabel.mas_left).mas_offset(-5);
        make.right.mas_equalTo(_nickNameLabel.mas_left).mas_offset(-5);
        //: make.centerY.mas_equalTo(_nickNameLabel);
        make.centerY.mas_equalTo(_nickNameLabel);
        //: make.width.height.mas_equalTo(25);
        make.width.height.mas_equalTo(25);
    //: }];
    }];


    //: _wordLabel = [[UILabel alloc] init];
    _wordLabel = [[UILabel alloc] init];
    //: _wordLabel.textAlignment = NSTextAlignmentCenter;
    _wordLabel.textAlignment = NSTextAlignmentCenter;
    //: _wordLabel.font = [UIFont systemFontOfSize:13];
    _wordLabel.font = [UIFont systemFontOfSize:13];
    //: _wordLabel.textColor = [UIColor lightGrayColor];
    _wordLabel.textColor = [UIColor lightGrayColor];
    //: [_wordLabel sizeToFit];
    [_wordLabel sizeToFit];
    //: [imageBack addSubview:_wordLabel];
    [imageBack addSubview:_wordLabel];
    //: [_wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(imageBack);
        make.centerX.mas_equalTo(imageBack);
        //: make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(7);
        make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(7);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];


    //: _contentLabel = [[UILabel alloc] init];
    _contentLabel = [[UILabel alloc] init];
    //: _contentLabel.textAlignment = NSTextAlignmentLeft;
    _contentLabel.textAlignment = NSTextAlignmentLeft;
    //: _contentLabel.font = [UIFont systemFontOfSize:13];
    _contentLabel.font = [UIFont systemFontOfSize:13];
    //: _contentLabel.textColor = [UIColor lightGrayColor];
    _contentLabel.textColor = [UIColor lightGrayColor];
    //: [imageBack addSubview:_contentLabel];
    [imageBack addSubview:_contentLabel];
    //: [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(5);
        make.left.mas_offset(5);
        //: make.bottom.mas_offset(-5);
        make.bottom.mas_offset(-5);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.right.mas_offset(-5);
        make.right.mas_offset(-5);
    //: }];
    }];

}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)child:(NSDictionary *)information{
    //: _nickNameLabel.text = [information newStringValueForKey:@"user_nickname"];
    _nickNameLabel.text = [information with:StringFromLipstickData(kStr_textShouldData)];
    //: _wordLabel.text = [information newStringValueForKey:@"words"];
    _wordLabel.text = [information with:StringFromLipstickData(kStr_cellSizeData)];
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"user_avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information with:StringFromLipstickData(kStr_railData)]]];

    //: NSString *count = [information newStringValueForKey:@"count"];
    NSString *count = [information with:StringFromLipstickData(kStr_intellectualTitle)];
    //: NSString *amount = [information newStringValueForKey:@"amount"];
    NSString *amount = [information with:StringFromLipstickData(kStr_prominentTitle)];
    //: _contentLabel.text = [NSString stringWithFormat:@"%@个红包，共%@元",count,amount];
    _contentLabel.text = [NSString stringWithFormat:StringFromLipstickData(kStr_underlyingValue),count,amount];

}

//: -(void)backButtonClick{
-(void)argumentClick{

}

//: @end
@end







//: @implementation NTESRedpackageDetailListCell
@implementation BubbleSizeViewCell

//: -(void)initSubviews{
-(void)initHistoricalRecord{

    //: UIView *line = [[UIView alloc] init];
    UIView *line = [[UIView alloc] init];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#F1F1F1"];
    line.backgroundColor = [UIColor withMax:StringFromLipstickData(kStr_factionHenceText)];
    //: [self addSubview:line];
    [self addSubview:line];
    //: [line mas_makeConstraints:^(MASConstraintMaker *make) {
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.height.mas_equalTo(0.8);
        make.height.mas_equalTo(0.8);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
    //: }];
    }];

    //: _headerImage = [[UIImageView alloc] init];
    _headerImage = [[UIImageView alloc] init];
    //: [self addSubview:_headerImage];
    [self addSubview:_headerImage];
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: _headerImage.layer.cornerRadius = 5.3;
    _headerImage.layer.cornerRadius = 5.3;
    //: [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.top.mas_offset(10);
        make.top.mas_offset(10);
        //: make.bottom.mas_offset(-10);
        make.bottom.mas_offset(-10);
        //: make.width.height.mas_equalTo(45);
        make.width.height.mas_equalTo(45);
    //: }];
    }];

    //: _nickNameLabel = [[UILabel alloc] init];
    _nickNameLabel = [[UILabel alloc] init];
    //: _nickNameLabel.textAlignment = NSTextAlignmentLeft;
    _nickNameLabel.textAlignment = NSTextAlignmentLeft;
    //: _nickNameLabel.font = [UIFont systemFontOfSize:15];
    _nickNameLabel.font = [UIFont systemFontOfSize:15];
    //: _nickNameLabel.textColor = [UIColor blackColor];
    _nickNameLabel.textColor = [UIColor blackColor];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [self addSubview:_nickNameLabel];
    [self addSubview:_nickNameLabel];
    //: [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(-10);
        make.centerY.mas_equalTo(_headerImage).mas_offset(-10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];

    //: _praiseImage = [[UIImageView alloc] init];
    _praiseImage = [[UIImageView alloc] init];
    //: _praiseImage.image = [UIImage imageNamed:@"user_redpackage_prise"];
    _praiseImage.image = [UIImage imageNamed:StringFromLipstickData(kStr_implicationValue)];
    //: [self addSubview:_praiseImage];
    [self addSubview:_praiseImage];
    //: [_praiseImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_praiseImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        //: make.centerY.mas_equalTo(_nickNameLabel).mas_offset(0);
        make.centerY.mas_equalTo(_nickNameLabel).mas_offset(0);
        //: make.width.height.mas_equalTo(20);
        make.width.height.mas_equalTo(20);
    //: }];
    }];


    //: _timeLabel = [[UILabel alloc] init];
    _timeLabel = [[UILabel alloc] init];
    //: _timeLabel.textAlignment = NSTextAlignmentLeft;
    _timeLabel.textAlignment = NSTextAlignmentLeft;
    //: _timeLabel.font = [UIFont systemFontOfSize:13];
    _timeLabel.font = [UIFont systemFontOfSize:13];
    //: _timeLabel.textColor = [UIColor lightGrayColor];
    _timeLabel.textColor = [UIColor lightGrayColor];
    //: [_timeLabel sizeToFit];
    [_timeLabel sizeToFit];
    //: [self addSubview:_timeLabel];
    [self addSubview:_timeLabel];
    //: [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(10);
        make.centerY.mas_equalTo(_headerImage).mas_offset(10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
    //: }];
    }];


    //: _redAmountLabel = [[UILabel alloc] init];
    _redAmountLabel = [[UILabel alloc] init];
    //: _redAmountLabel.textAlignment = NSTextAlignmentRight;
    _redAmountLabel.textAlignment = NSTextAlignmentRight;
    //: _redAmountLabel.font = [UIFont systemFontOfSize:18];
    _redAmountLabel.font = [UIFont systemFontOfSize:18];
    //: _redAmountLabel.textColor = [UIColor blackColor];
    _redAmountLabel.textColor = [UIColor blackColor];
    //: [_redAmountLabel sizeToFit];
    [_redAmountLabel sizeToFit];
    //: [self addSubview:_redAmountLabel];
    [self addSubview:_redAmountLabel];
    //: [_redAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_redAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_equalTo(-8);
        make.right.mas_equalTo(-8);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(0);
        make.centerY.mas_equalTo(_headerImage).mas_offset(0);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
    //: }];
    }];



}
//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)child:(NSDictionary *)information{
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information with:StringFromLipstickData(kStr_keySolelyText)]]];
    //: _nickNameLabel.text = [information newStringValueForKey:@"nickname"];
    _nickNameLabel.text = [information with:StringFromLipstickData(kStr_occasionallyTitle)];
    //: _timeLabel.text = [information newStringValueForKey:@"createtime"];
    _timeLabel.text = [information with:StringFromLipstickData(kStr_conservativeText)];
    //: _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information newStringValueForKey:@"amount"]];
    _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information with:StringFromLipstickData(kStr_prominentTitle)]];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
    [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
    //: }];
    }];

}

//: @end
@end

Byte * LipstickDataToCache(Byte *data) {
    int deputy = data[0];
    int beat = data[1];
    Byte totalellectual = data[2];
    int marginOfErrorFormat = data[3];
    if (!deputy) return data + marginOfErrorFormat;
    for (int i = marginOfErrorFormat; i < marginOfErrorFormat + beat; i++) {
        int value = data[i] - totalellectual;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[marginOfErrorFormat + beat] = 0;
    return data + marginOfErrorFormat;
}

NSString *StringFromLipstickData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)LipstickDataToCache(data)];
}
