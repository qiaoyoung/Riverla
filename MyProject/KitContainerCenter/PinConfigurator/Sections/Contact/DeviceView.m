
#import <Foundation/Foundation.h>

NSString *StringFromVersionData(Byte *data);


//: #EEEEEE
Byte kStr_grayWeakenName[] = {5, 7, 17, 11, 215, 207, 134, 108, 207, 95, 44, 52, 86, 86, 86, 86, 86, 86, 129};


//: #ffffff
Byte kStr_spireName[] = {49, 7, 35, 7, 134, 124, 254, 70, 137, 137, 137, 137, 137, 137, 133};


//: contact_tag_fragment_sure
Byte kStr_assistData[] = {42, 25, 90, 4, 189, 201, 200, 206, 187, 189, 206, 185, 206, 187, 193, 185, 192, 204, 187, 193, 199, 191, 200, 206, 185, 205, 207, 204, 191, 243};


//: icon_cell_blue_normal
Byte kStr_regardingData[] = {62, 21, 46, 7, 28, 163, 88, 151, 145, 157, 156, 141, 145, 147, 154, 154, 141, 144, 154, 163, 147, 141, 156, 157, 160, 155, 143, 154, 191};


//: #A148FF
Byte kStr_balloonText[] = {16, 7, 57, 6, 199, 218, 92, 122, 106, 109, 113, 127, 127, 115};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceView.m
// Notice
//
//  Created by chris on 15/9/15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectTabView.h"
#import "DeviceView.h"
//: #import "FFFContactPickedView.h"
#import "ContactView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "ViewGlobalMacro.h"
#import "ViewGlobalMacro.h"
//: #import "MyUserKit.h"
#import "Notice.h"

//: @implementation FFFContactSelectTabView
@implementation DeviceView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _pickedView = [[FFFContactPickedView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _pickedView = [[ContactView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [self addSubview:_pickedView];
        [self addSubview:_pickedView];

        //: _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: UIImage *doneButtonNormal = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonNormal = [UIImage serviceColor:StringFromVersionData(kStr_regardingData) key:[UIColor isView:StringFromVersionData(kStr_balloonText)]];
        //: UIImage *doneButtonHighlighted = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonHighlighted = [UIImage serviceColor:StringFromVersionData(kStr_regardingData) key:[UIColor isView:StringFromVersionData(kStr_balloonText)]];
        //: [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        //: [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        //: [_doneButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_doneButton setTitle:[TeamManager sizeKey:StringFromVersionData(kStr_assistData)] forState:UIControlStateNormal];
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
        self.backgroundColor = [UIColor isView:StringFromVersionData(kStr_spireName)];

        //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
        line.backgroundColor = [UIColor isView:StringFromVersionData(kStr_grayWeakenName)];
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

Byte * VersionDataToCache(Byte *data) {
    int excitedCustom = data[0];
    int consumeRed = data[1];
    Byte wisdom = data[2];
    int brandMember = data[3];
    if (!excitedCustom) return data + brandMember;
    for (int i = brandMember; i < brandMember + consumeRed; i++) {
        int value = data[i] - wisdom;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[brandMember + consumeRed] = 0;
    return data + brandMember;
}

NSString *StringFromVersionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)VersionDataToCache(data)];
}
