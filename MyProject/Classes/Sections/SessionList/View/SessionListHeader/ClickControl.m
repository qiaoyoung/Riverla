
#import <Foundation/Foundation.h>

NSString *StringFromCompartmentData(Byte *data);        


//: #FF483D
Byte kStr_dominateData[] = {74, 7, 62, 12, 206, 229, 68, 47, 114, 131, 80, 223, 229, 8, 8, 246, 250, 245, 6, 92};


//: ic-waring
Byte kStr_tunaSpokesmanName[] = {30, 9, 30, 4, 75, 69, 15, 89, 67, 84, 75, 80, 73, 241};

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
#import "ClickControl.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"

//: @implementation NTESTextHeaderView
@implementation ClickControl

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
        _label.textColor = [UIColor isView:StringFromCompartmentData(kStr_dominateData)];
        //: _label.font = [UIFont systemFontOfSize:12.f];
        _label.font = [UIFont systemFontOfSize:12.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-waring"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:StringFromCompartmentData(kStr_tunaSpokesmanName)]];
        //: [self addSubview:_img];
        [self addSubview:_img];
    }
    //: return self;
    return self;
}

//: - (void)setContentText:(NSString *)content{
- (void)setManager:(NSString *)content{
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

Byte * CompartmentDataToCache(Byte *data) {
    int hazardMessage = data[0];
    int balloonImage = data[1];
    Byte electric = data[2];
    int dire = data[3];
    if (!hazardMessage) return data + dire;
    for (int i = dire; i < dire + balloonImage; i++) {
        int value = data[i] + electric;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[dire + balloonImage] = 0;
    return data + dire;
}

NSString *StringFromCompartmentData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CompartmentDataToCache(data)];
}
