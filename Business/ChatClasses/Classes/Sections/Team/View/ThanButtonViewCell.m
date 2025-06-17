
#import <Foundation/Foundation.h>

NSString *StringFromSimulcastData(Byte *data);


//: Group_Me
Byte kStr_naturallyContent[] = {68, 8, 3, 101, 77, 95, 112, 117, 111, 114, 71, 145};


//: icon_avatar_del
Byte kStr_micaData[] = {59, 15, 7, 234, 250, 57, 30, 108, 101, 100, 95, 114, 97, 116, 97, 118, 97, 95, 110, 111, 99, 105, 175};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardHeaderCell.m
//  NIM
//
//  Created by chris on 15/3/7.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCardHeaderCell.h"
#import "ThanButtonViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "StatusWithControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "FFFTeamHelper.h"
#import "RandomHelper.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Afterwards.h"

//: @interface FFFCardHeaderCell()
@interface ThanButtonViewCell()

//: @property (nonatomic,strong) id<FFFKitCardHeaderData> data;
@property (nonatomic,strong) id<FFFKitCardHeaderData> data;

//: @end
@end

//: @implementation FFFCardHeaderCell
@implementation ThanButtonViewCell

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _imageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
        _imageView = [[StatusWithControl alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.font = [UIFont systemFontOfSize:13.f];
        _titleLabel.font = [UIFont systemFontOfSize:13.f];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_roleImageView];
        [self addSubview:_roleImageView];
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _removeBtn.hidden = YES;
        _removeBtn.hidden = YES;
        //: [_removeBtn setImage:[UIImage imageNamed:@"icon_avatar_del"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:StringFromSimulcastData(kStr_micaData)] forState:UIControlStateNormal];
        //: [_removeBtn sizeToFit];
        [_removeBtn sizeToFit];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(notTitle:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:_removeBtn];
        [self addSubview:_removeBtn];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(id<FFFKitCardHeaderData>)data{
- (void)aggregation:(id<FFFKitCardHeaderData>)data{
    //: self.data = data;
    self.data = data;
    //: NSURL *url = [NSURL URLWithString:data.imageUrl];
    NSURL *url = [NSURL URLWithString:data.imageUrl];
    //: [self.imageView nim_setImageWithURL:url placeholderImage:data.imageNormal];
    [self.imageView date:url enableImage:data.imageNormal];
    //: [self.imageView addTarget:self action:@selector(onSelected:) forControlEvents:UIControlEventTouchUpInside];
    [self.imageView addTarget:self action:@selector(withs:) forControlEvents:UIControlEventTouchUpInside];

    //: NSString *showName = data.title;
    NSString *showName = data.title;
    //: if ([data isMyUserId]) {
    if ([data isMyUserId]) {
        //: showName = [FFFLanguageManager getTextWithKey:@"Group_Me"];
        showName = [ItemManager sessionInformation:StringFromSimulcastData(kStr_naturallyContent)];//@"我".nim_localized;
    }
    //: self.titleLabel.text = showName;
    self.titleLabel.text = showName;
    //: self.roleImageView.image = [FFFTeamHelper imageWithMemberType:data.userType];
    self.roleImageView.image = [RandomHelper title:data.userType];
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
}

//: - (void)onSelected:(id)sender{
- (void)withs:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellDidSelected:)]) {
    if ([self.delegate respondsToSelector:@selector(upSelected:)]) {
        //: [self.delegate cellDidSelected:self];
        [self.delegate upSelected:self];
    }
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)notTitle:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(compartmenting:)]) {
        //: [self.delegate cellShouldBeRemoved:self];
        [self.delegate compartmenting:self];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.imageView.nim_centerX = self.nim_width * .5f;
    self.imageView.nim_centerX = self.nim_width * .5f;
    //: self.titleLabel.nim_width = self.nim_width + 10;
    self.titleLabel.nim_width = self.nim_width + 10;
    //: self.titleLabel.nim_bottom = self.nim_height;
    self.titleLabel.nim_bottom = self.nim_height;
    //: self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    //: [self.roleImageView sizeToFit];
    [self.roleImageView sizeToFit];
    //: self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    //: self.roleImageView.nim_right = self.imageView.nim_right;
    self.roleImageView.nim_right = self.imageView.nim_right;
    //: self.removeBtn.nim_right = self.nim_width;
    self.removeBtn.nim_right = self.nim_width;

}

//: @end
@end

Byte * SimulcastDataToCache(Byte *data) {
    int willText = data[0];
    int significancePaint = data[1];
    int additionLog = data[2];
    if (!willText) return data + additionLog;
    for (int i = 0; i < significancePaint / 2; i++) {
        int begin = additionLog + i;
        int end = additionLog + significancePaint - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[additionLog + significancePaint] = 0;
    return data + additionLog;
}

NSString *StringFromSimulcastData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SimulcastDataToCache(data)];
}  
