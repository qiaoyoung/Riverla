
#import <Foundation/Foundation.h>
typedef struct {
    Byte abetNeutral;
    Byte *electronicTitle;
    unsigned int powerfulness;
    bool confess;
	int fame;
	int insideInformation;
	int successConviction;
} GuarData;

NSString *StringFromGuarData(GuarData *data);


//: #B391FF
GuarData kStr_exploreData = (GuarData){99, (Byte []){64, 33, 80, 90, 82, 37, 37, 249}, 7, false, 80, 84, 95};

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
#import "IndependentViewCell.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @implementation FFFTeamSwitchTableViewCell
@implementation IndependentViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#B391FF"];
        _switcher.onTintColor = [UIColor isView:StringFromGuarData(&kStr_exploreData)];
        //: [_switcher addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
        [_switcher addTarget:self action:@selector(tabled:) forControlEvents:UIControlEventValueChanged];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}

//: - (void)valueChanged:(id)sender {
- (void)tabled:(id)sender {
    //: if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(cell:onStateChanged:)])
    if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(account:oval:)])
    {
        //: [_switchDelegate cell:self onStateChanged:_switcher.isOn];
        [_switchDelegate account:self oval:_switcher.isOn];
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

Byte *GuarDataToByte(GuarData *data) {
    if (data->confess) return data->electronicTitle;
    for (int i = 0; i < data->powerfulness; i++) {
        data->electronicTitle[i] ^= data->abetNeutral;
    }
    data->electronicTitle[data->powerfulness] = 0;
    data->confess = true;
	if (data->powerfulness >= 3) {
		data->fame = data->electronicTitle[0];
		data->insideInformation = data->electronicTitle[1];
		data->successConviction = data->electronicTitle[2];
	}
    return data->electronicTitle;
}

NSString *StringFromGuarData(GuarData *data) {
    return [NSString stringWithUTF8String:(char *)GuarDataToByte(data)];
}
