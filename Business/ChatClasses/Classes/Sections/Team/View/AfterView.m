
#import <Foundation/Foundation.h>

NSString *StringFromNovelFileData(Byte *data);


//: #B391FF
Byte kStr_hourBlueMythData[] = {7, 7, 4, 242, 70, 70, 49, 57, 51, 66, 35, 219};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamSwitchTableViewCell.m
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamSwitchTableViewCell.h"
#import "AfterView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @implementation FFFTeamSwitchTableViewCell
@implementation AfterView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#B391FF"];
        _switcher.onTintColor = [UIColor withMax:StringFromNovelFileData(kStr_hourBlueMythData)];
        //: [_switcher addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
        [_switcher addTarget:self action:@selector(itemmed:) forControlEvents:UIControlEventValueChanged];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}

//: - (void)valueChanged:(id)sender {
- (void)itemmed:(id)sender {
    //: if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(cell:onStateChanged:)])
    if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(italianRegion:south:)])
    {
        //: [_switchDelegate cell:self onStateChanged:_switcher.isOn];
        [_switchDelegate italianRegion:self south:_switcher.isOn];
    }
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat right = 20.f;
    CGFloat right = 20.f;
    //: self.switcher.nim_right = self.nim_width - right;
    self.switcher.nim_right = self.nim_width - right;
    //: self.switcher.nim_centerY = self.nim_height * .5;
    self.switcher.nim_centerY = self.nim_height * .5;
}


//: @end
@end

Byte * NovelFileDataToCache(Byte *data) {
    int mumBias = data[0];
    int protoOpencogene = data[1];
    int depressStatus = data[2];
    if (!mumBias) return data + depressStatus;
    for (int i = 0; i < protoOpencogene / 2; i++) {
        int begin = depressStatus + i;
        int end = depressStatus + protoOpencogene - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[depressStatus + protoOpencogene] = 0;
    return data + depressStatus;
}

NSString *StringFromNovelFileData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)NovelFileDataToCache(data)];
}  
