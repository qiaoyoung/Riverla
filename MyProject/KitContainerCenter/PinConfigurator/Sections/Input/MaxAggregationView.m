
#import <Foundation/Foundation.h>
typedef struct {
    Byte chymeLure;
    Byte *appreciate;
    unsigned int secondLink;
    bool quantityegrated;
	int colorLeap;
} UsefulAllianceData;

NSString *StringFromUsefulAllianceData(UsefulAllianceData *data);


//: icon_reply_close
UsefulAllianceData kStr_cornerName = (UsefulAllianceData){123, (Byte []){18, 24, 20, 21, 36, 9, 30, 11, 23, 2, 36, 24, 23, 20, 8, 30, 178}, 16, false, 223};


//: B391FF
UsefulAllianceData kStr_meanValue = (UsefulAllianceData){229, (Byte []){167, 214, 220, 212, 163, 163, 99}, 6, false, 205};


//: #2B2F36
UsefulAllianceData kStr_rodWisdomData = (UsefulAllianceData){53, (Byte []){22, 7, 119, 7, 115, 6, 3, 27}, 7, false, 211};


//: #ffffff
UsefulAllianceData kStr_demandValue = (UsefulAllianceData){6, (Byte []){37, 96, 96, 96, 96, 96, 96, 196}, 7, false, 4};


//: F6F7FA
UsefulAllianceData kStr_shedName = (UsefulAllianceData){8, (Byte []){78, 62, 78, 63, 78, 73, 11}, 6, false, 76};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxAggregationView.m
// Notice
//
//  Created by He on 2020/4/3.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFReplyContentView.h"
#import "MaxAggregationView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+Notice.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"

//: @interface FFFReplyContentView ()
@interface MaxAggregationView ()

//: @end
@end

//: @implementation FFFReplyContentView
@implementation MaxAggregationView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor isView:StringFromUsefulAllianceData(&kStr_demandValue)];

        //: UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        //: bg.backgroundColor = [UIColor colorWithHexString:@"F6F7FA"];
        bg.backgroundColor = [UIColor isView:StringFromUsefulAllianceData(&kStr_shedName)];
        //: bg.layer.cornerRadius = 8;
        bg.layer.cornerRadius = 8;
        //: [self addSubview:bg];
        [self addSubview:bg];

        //: _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        //: _picView.layer.cornerRadius = 4;
        _picView.layer.cornerRadius = 4;
        //: _picView.layer.masksToBounds = YES;
        _picView.layer.masksToBounds = YES;
        //: [bg addSubview:_picView];
        [bg addSubview:_picView];
        //: _picView.hidden = YES;
        _picView.hidden = YES;

        //: _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        //: _fromUser.textColor = [UIColor colorWithHexString:@"B391FF"];
        _fromUser.textColor = [UIColor isView:StringFromUsefulAllianceData(&kStr_meanValue)];
        //: _fromUser.font = [UIFont systemFontOfSize:12];
        _fromUser.font = [UIFont systemFontOfSize:12];
        //: [bg addSubview:_fromUser];
        [bg addSubview:_fromUser];

        //: _label = [[UILabel alloc] init];
        _label = [[UILabel alloc] init];
        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
        //: _label.textAlignment = NSTextAlignmentLeft;
        _label.textAlignment = NSTextAlignmentLeft;
        //: _label.lineBreakMode = NSLineBreakByTruncatingTail;
        _label.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _label.font = [UIFont systemFontOfSize:12];
        _label.font = [UIFont systemFontOfSize:12];
        //: _label.textColor = [UIColor colorWithHexString:@"#2B2F36"];
        _label.textColor = [UIColor isView:StringFromUsefulAllianceData(&kStr_rodWisdomData)];
        //: [bg addSubview:_label];
        [bg addSubview:_label];

        //: _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        //: [_closeButton setImage:[UIImage imageNamed:@"icon_reply_close"]
        [_closeButton setImage:[UIImage imageNamed:StringFromUsefulAllianceData(&kStr_cornerName)]
                      //: forState:UIControlStateNormal];
                      forState:UIControlStateNormal];
        //: [_closeButton addTarget:self action:@selector(onClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_closeButton addTarget:self action:@selector(inputDown:) forControlEvents:UIControlEventTouchUpInside];
        //: [bg addSubview:_closeButton];
        [bg addSubview:_closeButton];

//        _divider = [[UIView alloc] initWithFrame:CGRectMake(15, self.height-1, SCREEN_WIDTH-30, 1)];
//        _divider.backgroundColor = [UIColor colorWithWhite:1 alpha:0.1];
//        [self addSubview:_divider];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
//    self.closeButton.nim_size = CGSizeMake(self.nim_height, self.nim_height);
//    
//    self.divider.nim_left = self.closeButton.nim_right + 2;
//    
//    self.label.nim_height = self.label.intrinsicContentSize.height + 5;
//    self.label.nim_width = self.nim_width - self.closeButton.nim_right;
//    self.label.nim_left = self.divider.nim_right + 2;
//    self.label.nim_centerY = self.nim_height * 0.5;
//    
//    self.divider.nim_height = self.label.nim_height;
//    self.divider.nim_centerY = self.nim_height * .5f;
}

//: - (void)dismiss
- (void)shouldByDismiss
{
    //: [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
}


//: - (void)onClicked:(id)sender
- (void)inputDown:(id)sender
{
    //: self.hidden = YES;
    self.hidden = YES;
    //: if ([self.delegate respondsToSelector:@selector(onClearReplyContent:)])
    if ([self.delegate respondsToSelector:@selector(hadithText:)])
    {
        //: [self.delegate onClearReplyContent:sender];
        [self.delegate hadithText:sender];
    }
}

//: @end
@end

Byte *UsefulAllianceDataToByte(UsefulAllianceData *data) {
    if (data->quantityegrated) return data->appreciate;
    for (int i = 0; i < data->secondLink; i++) {
        data->appreciate[i] ^= data->chymeLure;
    }
    data->appreciate[data->secondLink] = 0;
    data->quantityegrated = true;
	if (data->secondLink >= 1) {
		data->colorLeap = data->appreciate[0];
	}
    return data->appreciate;
}

NSString *StringFromUsefulAllianceData(UsefulAllianceData *data) {
    return [NSString stringWithUTF8String:(char *)UsefulAllianceDataToByte(data)];
}
