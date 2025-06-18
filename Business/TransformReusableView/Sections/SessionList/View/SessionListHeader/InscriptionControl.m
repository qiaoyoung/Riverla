
#import <Foundation/Foundation.h>

NSString *StringFromProviderData(Byte *data);


//: icon_muti_clients
Byte kStr_hideCanTitle[] = {36, 17, 7, 138, 201, 235, 143, 115, 116, 110, 101, 105, 108, 99, 95, 105, 116, 117, 109, 95, 110, 111, 99, 105, 203};


//: icon_arrow
Byte kStr_tableTingText[] = {5, 10, 3, 119, 111, 114, 114, 97, 95, 110, 111, 99, 105, 134};

// __DEBUG__
// __CLOSE_PRINT__
//
//  InscriptionControl.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMutiClientsHeaderView.h"
#import "InscriptionControl.h"
//: #import "UIView+NTES.h"
#import "UIView+Closes.h"

//: @interface NTESMutiClientsHeaderView()
@interface InscriptionControl()

//: @property (nonatomic,strong) UIImageView *icon;
@property (nonatomic,strong) UIImageView *icon;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @end
@end

//: @implementation NTESMutiClientsHeaderView
@implementation InscriptionControl

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_muti_clients"]];
        _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromProviderData(kStr_hideCanTitle)]];
        //: [self addSubview:_icon];
        [self addSubview:_icon];

        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor colorWithRed:((float)((0x888888 & 0xFF0000) >> 16))/255.0 green:((float)((0x888888 & 0x00FF00) >> 8))/255.0 blue:((float)(0x888888 & 0x0000FF))/255.0 alpha:1.0];
        _label.textColor = [UIColor colorWithRed:((float)((0x888888 & 0xFF0000) >> 16))/255.0 green:((float)((0x888888 & 0x00FF00) >> 8))/255.0 blue:((float)(0x888888 & 0x0000FF))/255.0 alpha:1.0];
        //: _label.font = [UIFont boldSystemFontOfSize:14.f];
        _label.font = [UIFont boldSystemFontOfSize:14.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_arrow"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:StringFromProviderData(kStr_tableTingText)] forState:UIControlStateNormal];
        //: [_accessoryBtn sizeToFit];
        [_accessoryBtn sizeToFit];
        //: [self addSubview:_accessoryBtn];
        [self addSubview:_accessoryBtn];
    }
    //: return self;
    return self;
}

//: CGFloat TextPadding = 17.f;
CGFloat kLet_kitData = 17.f;
//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + TextPadding * 2);
    return CGSizeMake(self.width, contentSize.height + kLet_kitData * 2);
}


//: #pragma mark - NTESSessionListHeaderView
#pragma mark - NTESSessionListHeaderView
//: - (void)setContentText:(NSString *)content{
- (void)setMope:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: CGFloat IconLeft = 10.f;
CGFloat kLet_labelData = 10.f;
//: CGFloat IconAndContentSpacing = 10.f;
CGFloat kLet_countOwnerTitle = 10.f;
//: CGFloat ArrowRight = 12.f;
CGFloat kLet_nameValue = 12.f;
//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.icon.left = IconLeft;
    self.icon.left = kLet_labelData;
    //: self.icon.centerY = self.height * .5f;
    self.icon.centerY = self.height * .5f;
    //: self.label.left = self.icon.right + IconAndContentSpacing;
    self.label.left = self.icon.right + kLet_countOwnerTitle;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.accessoryBtn.right = self.width - ArrowRight;
    self.accessoryBtn.right = self.width - kLet_nameValue;
    //: self.accessoryBtn.centerY = self.height * .5f;
    self.accessoryBtn.centerY = self.height * .5f;
}

//: @end
@end

Byte * ProviderDataToCache(Byte *data) {
    int imageCapture = data[0];
    int pathLayer = data[1];
    int totalerval = data[2];
    if (!imageCapture) return data + totalerval;
    for (int i = 0; i < pathLayer / 2; i++) {
        int begin = totalerval + i;
        int end = totalerval + pathLayer - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[totalerval + pathLayer] = 0;
    return data + totalerval;
}

NSString *StringFromProviderData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ProviderDataToCache(data)];
}  
