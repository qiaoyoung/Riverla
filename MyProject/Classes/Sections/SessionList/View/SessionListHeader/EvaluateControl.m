
#import <Foundation/Foundation.h>
typedef struct {
    Byte fieldEvent;
    Byte *hazard;
    unsigned int sagPo;
    bool maxLivingRefugee;
	int bubbleLeased;
	int shaver;
} UnpleasantWomanData;

NSString *StringFromUnpleasantWomanData(UnpleasantWomanData *data);


//: icon_muti_clients
UnpleasantWomanData kStr_gladValue = (UnpleasantWomanData){253, (Byte []){148, 158, 146, 147, 162, 144, 136, 137, 148, 162, 158, 145, 148, 152, 147, 137, 142, 234}, 17, false, 18, 49};


//: icon_arrow
UnpleasantWomanData kStr_vacationSpendName = (UnpleasantWomanData){221, (Byte []){180, 190, 178, 179, 130, 188, 175, 175, 178, 170, 10}, 10, false, 89, 70};

// __DEBUG__
// __CLOSE_PRINT__
//
//  EvaluateControl.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMutiClientsHeaderView.h"
#import "EvaluateControl.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"

//: @interface NTESMutiClientsHeaderView()
@interface EvaluateControl()

//: @property (nonatomic,strong) UIImageView *icon;
@property (nonatomic,strong) UIImageView *icon;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @end
@end

//: @implementation NTESMutiClientsHeaderView
@implementation EvaluateControl

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_muti_clients"]];
        _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromUnpleasantWomanData(&kStr_gladValue)]];
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
        [_accessoryBtn setImage:[UIImage imageNamed:StringFromUnpleasantWomanData(&kStr_vacationSpendName)] forState:UIControlStateNormal];
        //: [_accessoryBtn sizeToFit];
        [_accessoryBtn sizeToFit];
        //: [self addSubview:_accessoryBtn];
        [self addSubview:_accessoryBtn];
    }
    //: return self;
    return self;
}

//: CGFloat TextPadding = 17.f;
CGFloat let_directionValue = 17.f;
//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + TextPadding * 2);
    return CGSizeMake(self.width, contentSize.height + let_directionValue * 2);
}


//: #pragma mark - NTESSessionListHeaderView
#pragma mark - NTESSessionListHeaderView
//: - (void)setContentText:(NSString *)content{
- (void)setManager:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: CGFloat IconLeft = 10.f;
CGFloat let_viewData = 10.f;
//: CGFloat IconAndContentSpacing = 10.f;
CGFloat let_joinName = 10.f;
//: CGFloat ArrowRight = 12.f;
CGFloat let_errorOptionData = 12.f;
//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.icon.left = IconLeft;
    self.icon.left = let_viewData;
    //: self.icon.centerY = self.height * .5f;
    self.icon.centerY = self.height * .5f;
    //: self.label.left = self.icon.right + IconAndContentSpacing;
    self.label.left = self.icon.right + let_joinName;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.accessoryBtn.right = self.width - ArrowRight;
    self.accessoryBtn.right = self.width - let_errorOptionData;
    //: self.accessoryBtn.centerY = self.height * .5f;
    self.accessoryBtn.centerY = self.height * .5f;
}

//: @end
@end

Byte *UnpleasantWomanDataToByte(UnpleasantWomanData *data) {
    if (data->maxLivingRefugee) return data->hazard;
    for (int i = 0; i < data->sagPo; i++) {
        data->hazard[i] ^= data->fieldEvent;
    }
    data->hazard[data->sagPo] = 0;
    data->maxLivingRefugee = true;
	if (data->sagPo >= 2) {
		data->bubbleLeased = data->hazard[0];
		data->shaver = data->hazard[1];
	}
    return data->hazard;
}

NSString *StringFromUnpleasantWomanData(UnpleasantWomanData *data) {
    return [NSString stringWithUTF8String:(char *)UnpleasantWomanDataToByte(data)];
}
