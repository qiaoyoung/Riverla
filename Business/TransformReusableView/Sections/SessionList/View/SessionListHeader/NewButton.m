
#import <Foundation/Foundation.h>

NSString *StringFromMobileData(Byte *data);


//: ic-waring
Byte kStr_captureText[] = {51, 9, 11, 72, 102, 230, 206, 212, 207, 13, 203, 103, 110, 105, 114, 97, 119, 45, 99, 105, 36};


//: #FF483D
Byte kStr_formatTitle[] = {43, 7, 9, 204, 236, 209, 254, 77, 181, 68, 51, 56, 52, 70, 70, 35, 134};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESNetStatusHeaderView.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTextHeaderView.h"
#import "NewButton.h"
//: #import "UIView+NTES.h"
#import "UIView+Closes.h"

//: @implementation NTESTextHeaderView
@implementation NewButton

//: - (instancetype) initWithFrame:(CGRect)frame{
- (instancetype) initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor colorWithHexString:@"#FF483D"];
        _label.textColor = [UIColor withMax:StringFromMobileData(kStr_formatTitle)];
        //: _label.font = [UIFont systemFontOfSize:12.f];
        _label.font = [UIFont systemFontOfSize:12.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-waring"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:StringFromMobileData(kStr_captureText)]];
        //: [self addSubview:_img];
        [self addSubview:_img];
    }
    //: return self;
    return self;
}

//: - (void)setContentText:(NSString *)content{
- (void)setMope:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + 10 * 2);
    return CGSizeMake(self.width, contentSize.height + 10 * 2);
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.img.centerY = self.height * .5f;
    self.img.centerY = self.height * .5f;
    //: self.img.right = self.label.left -10;
    self.img.right = self.label.left -10;
}

//: @end
@end

Byte * MobileDataToCache(Byte *data) {
    int infoTable = data[0];
    int showRemote = data[1];
    int marginOfError = data[2];
    if (!infoTable) return data + marginOfError;
    for (int i = 0; i < showRemote / 2; i++) {
        int begin = marginOfError + i;
        int end = marginOfError + showRemote - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[marginOfError + showRemote] = 0;
    return data + marginOfError;
}

NSString *StringFromMobileData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MobileDataToCache(data)];
}  
