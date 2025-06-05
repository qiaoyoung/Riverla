
#import <Foundation/Foundation.h>

NSString *StringFromKitData(Byte *data);


//: lang
Byte kStr_purchaseContent[] = {70, 4, 66, 7, 88, 14, 214, 174, 163, 176, 169, 12};


//: #F6F7FA
Byte kStr_inquiryNormOilValue[] = {31, 7, 9, 10, 156, 70, 101, 155, 113, 197, 44, 79, 63, 79, 64, 79, 74, 24};


//: #27303F
Byte kStr_hamColorData[] = {23, 7, 2, 9, 34, 102, 154, 46, 147, 37, 52, 57, 53, 50, 53, 72, 183};


//: #ffffff
Byte kStr_birdMemberValue[] = {93, 7, 37, 4, 72, 139, 139, 139, 139, 139, 139, 77};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESLanguageTableViewCell.h"
#import "MView.h"

//: @implementation NTESLanguageTableViewCell
@implementation MView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if ([self.reuseIdentifier isEqualToString:@"lang"]) {
    if ([self.reuseIdentifier isEqualToString:StringFromKitData(kStr_purchaseContent)]) {

        //: [self.contentView addSubview:self.countyImg];
        [self.contentView addSubview:self.countyImg];
        //: self.countyImg.frame = CGRectMake(20, 12, 32, 32);
        self.countyImg.frame = CGRectMake(20, 12, 32, 32);

        //: [self.contentView addSubview:self.labTitle];
        [self.contentView addSubview:self.labTitle];
        //: self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);
        self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);

        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor isView:StringFromKitData(kStr_birdMemberValue)];
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
        _labTitle.textColor = [UIColor isView:StringFromKitData(kStr_hamColorData)];
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
        _lineView.backgroundColor = [UIColor isView:StringFromKitData(kStr_inquiryNormOilValue)];
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

Byte * KitDataToCache(Byte *data) {
    int conk = data[0];
    int dominateShe = data[1];
    Byte hamKit = data[2];
    int poll = data[3];
    if (!conk) return data + poll;
    for (int i = poll; i < poll + dominateShe; i++) {
        int value = data[i] - hamKit;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[poll + dominateShe] = 0;
    return data + poll;
}

NSString *StringFromKitData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)KitDataToCache(data)];
}
