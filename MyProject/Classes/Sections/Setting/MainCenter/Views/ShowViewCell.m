
#import <Foundation/Foundation.h>

NSString *StringFromRoadData(Byte *data);


//: login_logo
Byte kStr_refugeeToData[] = {78, 10, 10, 13, 35, 175, 13, 101, 83, 29, 111, 103, 111, 108, 95, 110, 105, 103, 111, 108, 237};


//: 来一个摇滚表演
Byte kStr_shoveName[] = {5, 21, 8, 156, 237, 125, 190, 226, 148, 188, 230, 168, 161, 232, 154, 187, 230, 135, 145, 230, 170, 184, 228, 128, 184, 228, 165, 157, 230, 154};


//: login_bg
Byte kStr_vacationWhyName[] = {41, 8, 11, 123, 158, 101, 135, 82, 188, 142, 247, 103, 98, 95, 110, 105, 103, 111, 108, 25};


//: 中东小王子
Byte kStr_infoContent[] = {71, 15, 11, 37, 90, 172, 5, 1, 61, 160, 155, 144, 173, 229, 139, 142, 231, 143, 176, 229, 156, 184, 228, 173, 184, 228, 132};


//: #333333
Byte kStr_electricImageVatName[] = {61, 7, 7, 169, 198, 84, 150, 51, 51, 51, 51, 51, 51, 35, 137};


//: #5D5F66
Byte kStr_vatTaText[] = {74, 7, 11, 208, 7, 19, 1, 7, 133, 66, 243, 54, 54, 70, 53, 68, 53, 35, 131};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESVideolistCollectionViewCell.h"
#import "ShowViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"

//: @implementation NTESVideolistCollectionViewCell
@implementation ShowViewCell


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self show];
    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)show
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
    _picImg.image = [UIImage imageNamed:StringFromRoadData(kStr_vacationWhyName)];
    //: [self.contentView addSubview:_picImg];
    [self.contentView addSubview:_picImg];

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    //: _labtitle.font = [UIFont systemFontOfSize:12.f];
    _labtitle.font = [UIFont systemFontOfSize:12.f];
    //: _labtitle.textColor = [UIColor colorWithHexString:@"#333333"];
    _labtitle.textColor = [UIColor isView:StringFromRoadData(kStr_electricImageVatName)];
    //: _labtitle.text = @"来一个摇滚表演";
    _labtitle.text = StringFromRoadData(kStr_shoveName);
    //: [self.contentView addSubview:_labtitle];
    [self.contentView addSubview:_labtitle];

    //: _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    //: _headImg.image = [UIImage imageNamed:@"login_logo"];
    _headImg.image = [UIImage imageNamed:StringFromRoadData(kStr_refugeeToData)];
    //: [self.contentView addSubview:_headImg];
    [self.contentView addSubview:_headImg];

    //: _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    //: _labname.font = [UIFont systemFontOfSize:11.f];
    _labname.font = [UIFont systemFontOfSize:11.f];
    //: _labname.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    _labname.textColor = [UIColor isView:StringFromRoadData(kStr_vatTaText)];
    //: _labname.text = @"中东小王子";
    _labname.text = StringFromRoadData(kStr_infoContent);
    //: [self.contentView addSubview:_labname];
    [self.contentView addSubview:_labname];

}

//: @end
@end

Byte * RoadDataToCache(Byte *data) {
    int kitWith = data[0];
    int victor = data[1];
    int dateFile = data[2];
    if (!kitWith) return data + dateFile;
    for (int i = 0; i < victor / 2; i++) {
        int begin = dateFile + i;
        int end = dateFile + victor - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[dateFile + victor] = 0;
    return data + dateFile;
}

NSString *StringFromRoadData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RoadDataToCache(data)];
}  
