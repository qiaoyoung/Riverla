
#import <Foundation/Foundation.h>

NSString *StringFromCorridorData(Byte *data);        


//: #ECECEC
Byte kStr_postValue[] = {16, 7, 78, 5, 229, 213, 247, 245, 247, 245, 247, 245, 23};


//: icon_me_arrow
Byte kStr_jackValue[] = {85, 13, 75, 13, 98, 119, 212, 40, 106, 100, 10, 77, 21, 30, 24, 36, 35, 20, 34, 26, 20, 22, 39, 39, 36, 44, 168};


//: #2C3042
Byte kStr_documentaryTitle[] = {54, 7, 95, 14, 9, 178, 104, 11, 32, 180, 137, 52, 60, 125, 196, 211, 228, 212, 209, 213, 211, 252};


//: #B391FF
Byte kStr_capabilityValue[] = {47, 7, 86, 6, 242, 16, 205, 236, 221, 227, 219, 240, 240, 156};

// __DEBUG__
// __CLOSE_PRINT__
//
//  GroupView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFGroupEditTableViewCell.h"
#import "GroupView.h"

//: @implementation FFFGroupEditTableViewCell
@implementation GroupView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        //: [self initSubviews];
        [self initAddDown];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews {
- (void)initAddDown {
    //: [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.iconImageView];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];
    //: [self.contentView addSubview:self.arrowsImageView];
    [self.contentView addSubview:self.arrowsImageView];
//    [self.contentView addSubview:self.contentLabel];
//    [self.contentView addSubview:self.lineView];

    //: self.iconImageView.frame = CGRectMake(15, 11, 28, 28);
    self.iconImageView.frame = CGRectMake(15, 11, 28, 28);
    //: self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 19, 12, 12);
    self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 19, 12, 12);
    //: self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 11, 250, 28);
    self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 11, 250, 28);
//    self.contentLabel.frame = CGRectMake(self.titleLabel.left+5, self.titleLabel.bottom+5, SCREEN_WIDTH-80, 15);
//    self.lineView.frame = CGRectMake(60, 49.5, SCREEN_WIDTH-90, 0.5);


}

//: - (UIView *)lineView
- (UIView *)lineView
{
    //: if(!_lineView){
    if(!_lineView){
        //: _lineView = [[UIView alloc]init];
        _lineView = [[UIView alloc]init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        _lineView.backgroundColor = [UIColor withMax:StringFromCorridorData(kStr_postValue)];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UIImageView *)arrowsImageView {
- (UIImageView *)arrowsImageView {
    //: if (!_arrowsImageView) {
    if (!_arrowsImageView) {
        //: _arrowsImageView = [[UIImageView alloc] init];
        _arrowsImageView = [[UIImageView alloc] init];
        //: _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        //: _arrowsImageView.image = [UIImage imageNamed:@"icon_me_arrow"];
        _arrowsImageView.image = [UIImage imageNamed:StringFromCorridorData(kStr_jackValue)];
    }
    //: return _arrowsImageView;
    return _arrowsImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14.f];
        _titleLabel.font = [UIFont systemFontOfSize:14.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor withMax:StringFromCorridorData(kStr_documentaryTitle)];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)contentLabel {
- (UILabel *)contentLabel {
    //: if (!_contentLabel) {
    if (!_contentLabel) {
        //: _contentLabel = [[UILabel alloc] init];
        _contentLabel = [[UILabel alloc] init];
        //: _contentLabel.font = [UIFont systemFontOfSize:12.f];
        _contentLabel.font = [UIFont systemFontOfSize:12.f];
        //: _contentLabel.textColor = [UIColor colorWithHexString:@"#B391FF"];
        _contentLabel.textColor = [UIColor withMax:StringFromCorridorData(kStr_capabilityValue)];
        //: _contentLabel.textAlignment = NSTextAlignmentLeft;
        _contentLabel.textAlignment = NSTextAlignmentLeft;
        //: _contentLabel.numberOfLines = 1;
        _contentLabel.numberOfLines = 1;
        //: _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _contentLabel;
    return _contentLabel;
}



//: @end
@end

Byte * CorridorDataToCache(Byte *data) {
    int topDelicateBroadcast = data[0];
    int balanceAmbassador = data[1];
    Byte astatine = data[2];
    int documentaryMare = data[3];
    if (!topDelicateBroadcast) return data + documentaryMare;
    for (int i = documentaryMare; i < documentaryMare + balanceAmbassador; i++) {
        int value = data[i] + astatine;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[documentaryMare + balanceAmbassador] = 0;
    return data + documentaryMare;
}

NSString *StringFromCorridorData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CorridorDataToCache(data)];
}
