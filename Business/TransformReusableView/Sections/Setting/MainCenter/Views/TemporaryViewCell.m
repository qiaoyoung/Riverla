
#import <Foundation/Foundation.h>

NSString *StringFromLimitedData(Byte *data);


//: #ffffff
Byte kStr_halloName[] = {18, 7, 84, 13, 43, 214, 12, 5, 99, 239, 8, 196, 222, 119, 186, 186, 186, 186, 186, 186, 182};


//: #F6F7FA
Byte kStr_implyMessageValue[] = {31, 7, 91, 5, 14, 126, 161, 145, 161, 146, 161, 156, 192};


//: lang
Byte kStr_climbName[] = {49, 4, 81, 6, 123, 175, 189, 178, 191, 184, 128};


//: #27303F
Byte kStr_makeupContentValue[] = {17, 7, 85, 10, 240, 223, 193, 102, 141, 255, 120, 135, 140, 136, 133, 136, 155, 82};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TemporaryViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESLanguageTableViewCell.h"
#import "TemporaryViewCell.h"

//: @implementation NTESLanguageTableViewCell
@implementation TemporaryViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if ([self.reuseIdentifier isEqualToString:@"lang"]) {
    if ([self.reuseIdentifier isEqualToString:StringFromLimitedData(kStr_climbName)]) {

        //: [self.contentView addSubview:self.countyImg];
        [self.contentView addSubview:self.countyImg];
        //: self.countyImg.frame = CGRectMake(20, 12, 32, 32);
        self.countyImg.frame = CGRectMake(20, 12, 32, 32);

        //: [self.contentView addSubview:self.labTitle];
        [self.contentView addSubview:self.labTitle];
        //: self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);
        self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);

        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor withMax:StringFromLimitedData(kStr_halloName)];
        //: self.layer.cornerRadius = 12;
        self.layer.cornerRadius = 12;
    }
    //: return self;
    return self;
}


//: - (UILabel *)labTitle {
- (UILabel *)labTitle {
    //: if (!_labTitle) {
    if (!_labTitle) {
        //: _labTitle = [[UILabel alloc] init];
        _labTitle = [[UILabel alloc] init];
        //: _labTitle.font = [UIFont systemFontOfSize:14.f];
        _labTitle.font = [UIFont systemFontOfSize:14.f];
        //: _labTitle.textColor = [UIColor colorWithHexString:@"#27303F"];
        _labTitle.textColor = [UIColor withMax:StringFromLimitedData(kStr_makeupContentValue)];
        //: _labTitle.textAlignment = NSTextAlignmentLeft;
        _labTitle.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labTitle;
    return _labTitle;
}

//: - (UIView *)lineView {
- (UIView *)lineView {
    //: if (!_lineView) {
    if (!_lineView) {
        //: _lineView = [[UIView alloc] init];
        _lineView = [[UIView alloc] init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _lineView.backgroundColor = [UIColor withMax:StringFromLimitedData(kStr_implyMessageValue)];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIImageView *)countyImg
- (UIImageView *)countyImg
{
    //: if (!_countyImg) {
    if (!_countyImg) {
        //: _countyImg = [[UIImageView alloc] init];
        _countyImg = [[UIImageView alloc] init];
    }
    //: return _countyImg;
    return _countyImg;
}

//: @end
@end

Byte * LimitedDataToCache(Byte *data) {
    int tingScaleKiller = data[0];
    int seventh = data[1];
    Byte nagStrain = data[2];
    int supporter = data[3];
    if (!tingScaleKiller) return data + supporter;
    for (int i = supporter; i < supporter + seventh; i++) {
        int value = data[i] - nagStrain;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[supporter + seventh] = 0;
    return data + supporter;
}

NSString *StringFromLimitedData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)LimitedDataToCache(data)];
}
