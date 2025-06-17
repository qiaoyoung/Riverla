
#import <Foundation/Foundation.h>

NSString *StringFromViewHugeData(Byte *data);


//: #ffffff
Byte kStr_ernNecessaryTitle[] = {63, 7, 97, 14, 196, 117, 16, 201, 3, 174, 191, 37, 30, 9, 132, 199, 199, 199, 199, 199, 199, 124};


//: #EEEEEE
Byte kStr_micaName[] = {93, 7, 40, 10, 223, 1, 102, 64, 228, 162, 75, 109, 109, 109, 109, 109, 109, 105};


//: contact_tag_fragment_sure
Byte kStr_stereoTitleText[] = {40, 25, 53, 13, 129, 212, 35, 127, 109, 86, 51, 118, 51, 152, 164, 163, 169, 150, 152, 169, 148, 169, 150, 156, 148, 155, 167, 150, 156, 162, 154, 163, 169, 148, 168, 170, 167, 154, 213};


//: #A148FF
Byte kStr_barImageData[] = {35, 7, 97, 13, 83, 187, 184, 16, 149, 207, 149, 249, 146, 132, 162, 146, 149, 153, 167, 167, 166};


//: icon_cell_blue_normal
Byte kStr_withinTitle[] = {45, 21, 15, 5, 92, 120, 114, 126, 125, 110, 114, 116, 123, 123, 110, 113, 123, 132, 116, 110, 125, 126, 129, 124, 112, 123, 43};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageTotaleractionView.m
// Afterwards
//
//  Created by chris on 15/9/15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectTabView.h"
#import "ImageTotaleractionView.h"
//: #import "FFFContactPickedView.h"
#import "RadiogramView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @implementation FFFContactSelectTabView
@implementation ImageTotaleractionView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _pickedView = [[FFFContactPickedView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _pickedView = [[RadiogramView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [self addSubview:_pickedView];
        [self addSubview:_pickedView];

        //: _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: UIImage *doneButtonNormal = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonNormal = [UIImage option:StringFromViewHugeData(kStr_withinTitle) greenish_strong:[UIColor withMax:StringFromViewHugeData(kStr_barImageData)]];
        //: UIImage *doneButtonHighlighted = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonHighlighted = [UIImage option:StringFromViewHugeData(kStr_withinTitle) greenish_strong:[UIColor withMax:StringFromViewHugeData(kStr_barImageData)]];
        //: [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        //: [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        //: [_doneButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_doneButton setTitle:[ItemManager sessionInformation:StringFromViewHugeData(kStr_stereoTitleText)] forState:UIControlStateNormal];
        //: [_doneButton sizeToFit];
        [_doneButton sizeToFit];
        //: _doneButton.nim_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.nim_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.nim_width + 12.0)),
        _doneButton.nim_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.nim_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.nim_width + 12.0)),
                                          //: doneButtonNormal.size.height);
                                          doneButtonNormal.size.height);
        //: [self addSubview:_doneButton];
        [self addSubview:_doneButton];
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"contact_bg"]];
        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor withMax:StringFromViewHugeData(kStr_ernNecessaryTitle)];

        //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
        line.backgroundColor = [UIColor withMax:StringFromViewHugeData(kStr_micaName)];
        //: [self addSubview:line];
        [self addSubview:line];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat spacing = 15.f;
    CGFloat spacing = 15.f;
    //: _pickedView.nim_height = self.nim_height;
    _pickedView.nim_height = self.nim_height;
    //: _pickedView.nim_width = self.nim_width - _doneButton.nim_width - spacing;
    _pickedView.nim_width = self.nim_width - _doneButton.nim_width - spacing;
    //: CGFloat doneButtonRight = 15.f;
    CGFloat doneButtonRight = 15.f;
    //: _doneButton.nim_right = self.nim_width - doneButtonRight;
    _doneButton.nim_right = self.nim_width - doneButtonRight;
    //: _doneButton.nim_centerY = self.nim_height * .5f;
    _doneButton.nim_centerY = self.nim_height * .5f;
}

//: @end
@end

Byte * ViewHugeDataToCache(Byte *data) {
    int publicSquare = data[0];
    int keyUntil = data[1];
    Byte changeHero = data[2];
    int dancingEntitle = data[3];
    if (!publicSquare) return data + dancingEntitle;
    for (int i = dancingEntitle; i < dancingEntitle + keyUntil; i++) {
        int value = data[i] - changeHero;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[dancingEntitle + keyUntil] = 0;
    return data + dancingEntitle;
}

NSString *StringFromViewHugeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ViewHugeDataToCache(data)];
}
