
#import <Foundation/Foundation.h>

NSString *StringFromMistakeData(Byte *data);


//: mine_btn_right
Byte kStr_drySinName[] = {90, 14, 1, 12, 91, 165, 66, 18, 251, 222, 175, 162, 110, 106, 111, 102, 96, 99, 117, 111, 96, 115, 106, 104, 105, 117, 227};


//: head_default
Byte kStr_attackHerebyText[] = {9, 12, 40, 5, 236, 144, 141, 137, 140, 135, 140, 141, 142, 137, 157, 148, 156, 138};


//: eeeeee
Byte kStr_ragingShouldData[] = {16, 6, 75, 4, 176, 176, 176, 176, 176, 176, 93};


//: #3F3F3F
Byte kStr_agedData[] = {15, 7, 68, 14, 1, 254, 146, 111, 64, 25, 167, 23, 124, 228, 103, 119, 138, 119, 138, 119, 138, 115};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ThanViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/7.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRegistCustomCell.h"
#import "ThanViewCell.h"

//: @implementation NTESRegistCustomCell
@implementation ThanViewCell

//: - (void)initSubviews{
- (void)initHistoricalRecord{


    //: CGFloat scale = 1.f;
    CGFloat scale = 1.f;

    //: if ((([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) && [[UIScreen mainScreen] bounds].size.height <= 568.0)){
    if ((([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) && [[UIScreen mainScreen] bounds].size.height <= 568.0)){
        //: scale = [[UIScreen mainScreen] bounds].size.height / 667.f;
        scale = [[UIScreen mainScreen] bounds].size.height / 667.f;
    }

    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.font = [UIFont systemFontOfSize:16];
    _titleLabel.font = [UIFont systemFontOfSize:16];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#3F3F3F"];
    _titleLabel.textColor = [UIColor withMax:StringFromMistakeData(kStr_agedData)];
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];
    //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(20*scale);
        make.top.mas_offset(20*scale);
        //: make.bottom.mas_offset(-20*scale);
        make.bottom.mas_offset(-20*scale);
        //: make.left.mas_offset(25);
        make.left.mas_offset(25);
        //: make.width.mas_equalTo(100*scale);
        make.width.mas_equalTo(100*scale);
        //: make.height.mas_equalTo(20*scale);
        make.height.mas_equalTo(20*scale);
    //: }];
    }];

    //: _arrowImageView = [[UIImageView alloc] init];
    _arrowImageView = [[UIImageView alloc] init];
    //: _arrowImageView.image = [UIImage imageNamed:@"mine_btn_right"];
    _arrowImageView.image = [UIImage imageNamed:StringFromMistakeData(kStr_drySinName)];
    //: [self addSubview:_arrowImageView];
    [self addSubview:_arrowImageView];
    //: [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-10);
        make.right.mas_offset(-10);
        //: make.width.mas_equalTo(12);
        make.width.mas_equalTo(12);
        //: make.height.mas_equalTo(12);
        make.height.mas_equalTo(12);
    //: }];
    }];


    //: _contentTextField = [[UITextField alloc] init];
    _contentTextField = [[UITextField alloc] init];
    //: _contentTextField.textAlignment = NSTextAlignmentRight;
    _contentTextField.textAlignment = NSTextAlignmentRight;
    //: _contentTextField.userInteractionEnabled = NO;
    _contentTextField.userInteractionEnabled = NO;
    //: [self addSubview:_contentTextField];
    [self addSubview:_contentTextField];
    //: [_contentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
    [_contentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-50);
        make.right.mas_offset(-50);
        //: make.width.mas_equalTo(180*scale);
        make.width.mas_equalTo(180*scale);
        //: make.height.mas_equalTo(20*scale);
        make.height.mas_equalTo(20*scale);
    //: }];
    }];


    //: _headerImageView = [[UIImageView alloc] init];
    _headerImageView = [[UIImageView alloc] init];
    //: _headerImageView.image = [UIImage imageNamed:@"head_default"];
    _headerImageView.image = [UIImage imageNamed:StringFromMistakeData(kStr_attackHerebyText)];
    //: _headerImageView.backgroundColor = [UIColor clearColor];
    _headerImageView.backgroundColor = [UIColor clearColor];
    //: [self addSubview:_headerImageView];
    [self addSubview:_headerImageView];
    //: _headerImageView.layer.masksToBounds = YES;
    _headerImageView.layer.masksToBounds = YES;
    //: _headerImageView.layer.cornerRadius = 23*scale;
    _headerImageView.layer.cornerRadius = 23*scale;
    //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-50*scale);
        make.right.mas_offset(-50*scale);
        //: make.width.mas_equalTo(46*scale);
        make.width.mas_equalTo(46*scale);
        //: make.height.mas_equalTo(46*scale);
        make.height.mas_equalTo(46*scale);
    //: }];
    }];



    //: UIView *lineView = [[UIView alloc] init];
    UIView *lineView = [[UIView alloc] init];
    //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
    lineView.backgroundColor = [UIColor withMax:StringFromMistakeData(kStr_ragingShouldData)];
    //: [self addSubview:lineView];
    [self addSubview:lineView];
    //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(25);
        make.left.mas_offset(25);
        //: make.right.mas_offset(-25);
        make.right.mas_offset(-25);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.height.mas_equalTo(1);
        make.height.mas_equalTo(1);
    //: }];
    }];
}

//: @end
@end

Byte * MistakeDataToCache(Byte *data) {
    int unfortunate = data[0];
    int henceOwn = data[1];
    Byte patient = data[2];
    int previous = data[3];
    if (!unfortunate) return data + previous;
    for (int i = previous; i < previous + henceOwn; i++) {
        int value = data[i] - patient;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[previous + henceOwn] = 0;
    return data + previous;
}

NSString *StringFromMistakeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MistakeDataToCache(data)];
}
