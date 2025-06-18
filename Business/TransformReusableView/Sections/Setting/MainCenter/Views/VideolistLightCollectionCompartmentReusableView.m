
#import <Foundation/Foundation.h>
typedef struct {
    Byte colorTime;
    Byte *makeup;
    unsigned int budgeIdentification;
    bool liquid;
	int bubbleTenderRegime;
	int canPrisoner;
	int cake;
} DeputyNagData;

NSString *StringFromDeputyNagData(DeputyNagData *data);


//: 来一个摇滚表演
DeputyNagData kStr_equateName = (DeputyNagData){255, (Byte []){25, 98, 90, 27, 71, 127, 27, 71, 85, 25, 110, 120, 25, 68, 101, 23, 94, 87, 25, 67, 107, 69}, 21, false, 105, 76, 226};


//: login_logo
DeputyNagData kStr_liquidData = (DeputyNagData){71, (Byte []){43, 40, 32, 46, 41, 24, 43, 40, 32, 40, 110}, 10, false, 251, 209, 158};


//: 中东小王子
DeputyNagData kStr_darknessValue = (DeputyNagData){255, (Byte []){27, 71, 82, 27, 71, 99, 26, 79, 112, 24, 113, 116, 26, 82, 111, 87}, 15, false, 26, 50, 234};


//: login_bg
DeputyNagData kStr_bileText = (DeputyNagData){89, (Byte []){53, 54, 62, 48, 55, 6, 59, 62, 212}, 8, false, 204, 185, 106};


//: #333333
DeputyNagData kStr_deemData = (DeputyNagData){220, (Byte []){255, 239, 239, 239, 239, 239, 239, 80}, 7, false, 192, 146, 13};


//: #5D5F66
DeputyNagData kStr_angelText = (DeputyNagData){185, (Byte []){154, 140, 253, 140, 255, 143, 143, 150}, 7, false, 236, 140, 244};

// __DEBUG__
// __CLOSE_PRINT__
//
//  VideolistLightCollectionCompartmentReusableView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESVideolistCollectionViewCell.h"
#import "VideolistLightCollectionCompartmentReusableView.h"
//: #import "UIView+NTES.h"
#import "UIView+Closes.h"

//: @implementation NTESVideolistCollectionViewCell
@implementation VideolistLightCollectionCompartmentReusableView


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self message];
    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)message
{
    //: CGFloat spacing = 15;
    CGFloat spacing = 15;//行、列 间距
    //: int totalloc = 2;
    int totalloc = 2;//列数
    //: CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;
    CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;

    //: _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    //: _picImg.image = [UIImage imageNamed:@"login_bg"];
    _picImg.image = [UIImage imageNamed:StringFromDeputyNagData(&kStr_bileText)];
    //: [self.contentView addSubview:_picImg];
    [self.contentView addSubview:_picImg];

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    //: _labtitle.font = [UIFont systemFontOfSize:12.f];
    _labtitle.font = [UIFont systemFontOfSize:12.f];
    //: _labtitle.textColor = [UIColor colorWithHexString:@"#333333"];
    _labtitle.textColor = [UIColor withMax:StringFromDeputyNagData(&kStr_deemData)];
    //: _labtitle.text = @"来一个摇滚表演";
    _labtitle.text = StringFromDeputyNagData(&kStr_equateName);
    //: [self.contentView addSubview:_labtitle];
    [self.contentView addSubview:_labtitle];

    //: _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    //: _headImg.image = [UIImage imageNamed:@"login_logo"];
    _headImg.image = [UIImage imageNamed:StringFromDeputyNagData(&kStr_liquidData)];
    //: [self.contentView addSubview:_headImg];
    [self.contentView addSubview:_headImg];

    //: _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    //: _labname.font = [UIFont systemFontOfSize:11.f];
    _labname.font = [UIFont systemFontOfSize:11.f];
    //: _labname.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    _labname.textColor = [UIColor withMax:StringFromDeputyNagData(&kStr_angelText)];
    //: _labname.text = @"中东小王子";
    _labname.text = StringFromDeputyNagData(&kStr_darknessValue);
    //: [self.contentView addSubview:_labname];
    [self.contentView addSubview:_labname];

}

//: @end
@end

Byte *DeputyNagDataToByte(DeputyNagData *data) {
    if (data->liquid) return data->makeup;
    for (int i = 0; i < data->budgeIdentification; i++) {
        data->makeup[i] ^= data->colorTime;
    }
    data->makeup[data->budgeIdentification] = 0;
    data->liquid = true;
	if (data->budgeIdentification >= 3) {
		data->bubbleTenderRegime = data->makeup[0];
		data->canPrisoner = data->makeup[1];
		data->cake = data->makeup[2];
	}
    return data->makeup;
}

NSString *StringFromDeputyNagData(DeputyNagData *data) {
    return [NSString stringWithUTF8String:(char *)DeputyNagDataToByte(data)];
}
