
#import <Foundation/Foundation.h>

NSString *StringFromHighlightData(Byte *data);


//: addtime
Byte kStr_underlyingData[] = {28, 7, 6, 249, 36, 70, 101, 109, 105, 116, 100, 100, 97, 197};


//: systems
Byte kStr_occasionallyData[] = {43, 7, 5, 69, 24, 115, 109, 101, 116, 115, 121, 115, 247};


//: iPhone
Byte kStr_layerPoleMessageValue[] = {3, 6, 10, 106, 60, 51, 93, 201, 86, 78, 101, 110, 111, 104, 80, 105, 140};


//: user_device_phone
Byte kStr_nervousTitle[] = {29, 17, 6, 22, 195, 39, 101, 110, 111, 104, 112, 95, 101, 99, 105, 118, 101, 100, 95, 114, 101, 115, 117, 72};


//: telname
Byte kStr_annuallyData[] = {1, 7, 6, 50, 34, 199, 101, 109, 97, 110, 108, 101, 116, 124};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WarmerMaxViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/13.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESDeviceListTableViewCell.h"
#import "WarmerMaxViewCell.h"

//: @implementation NTESDeviceListTableViewCell
@implementation WarmerMaxViewCell

//: - (void)initSubviews{
- (void)initHistoricalRecord{

    //: _deviceName = [[UILabel alloc] init];
    _deviceName = [[UILabel alloc] init];
    //: _deviceName.text = @"iPhone";
    _deviceName.text = StringFromHighlightData(kStr_layerPoleMessageValue);
    //: _deviceName.font = [UIFont systemFontOfSize:16];
    _deviceName.font = [UIFont systemFontOfSize:16];
    //: _deviceName.textColor = [UIColor blackColor];
    _deviceName.textColor = [UIColor blackColor];
    //: [self addSubview:_deviceName];
    [self addSubview:_deviceName];
    //: [_deviceName mas_makeConstraints:^(MASConstraintMaker *make) {
    [_deviceName mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.top.mas_offset(15);
        make.top.mas_offset(15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];

    //: _imageViewIcon = [[UIImageView alloc] init];
    _imageViewIcon = [[UIImageView alloc] init];
    //: _imageViewIcon.image = [UIImage imageNamed:@"user_device_phone"];
    _imageViewIcon.image = [UIImage imageNamed:StringFromHighlightData(kStr_nervousTitle)];
    //: [self addSubview:_imageViewIcon];
    [self addSubview:_imageViewIcon];
    //: [_imageViewIcon mas_makeConstraints:^(MASConstraintMaker *make) {
    [_imageViewIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_equalTo(_deviceName.mas_bottom).mas_offset(10);
        make.top.mas_equalTo(_deviceName.mas_bottom).mas_offset(10);
        //: make.bottom.mas_offset(-10);
        make.bottom.mas_offset(-10);
        //: make.width.mas_equalTo(30);
        make.width.mas_equalTo(30);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);

    //: }];
    }];


    //: _timeLabel = [[UILabel alloc] init];
    _timeLabel = [[UILabel alloc] init];
    //: _timeLabel.text = @"iPhone";
    _timeLabel.text = StringFromHighlightData(kStr_layerPoleMessageValue);
    //: _timeLabel.font = [UIFont systemFontOfSize:14];
    _timeLabel.font = [UIFont systemFontOfSize:14];
    //: _timeLabel.textColor = [UIColor lightGrayColor];
    _timeLabel.textColor = [UIColor lightGrayColor];
    //: _timeLabel.textAlignment = NSTextAlignmentRight;
    _timeLabel.textAlignment = NSTextAlignmentRight;
    //: [self addSubview:_timeLabel];
    [self addSubview:_timeLabel];
    //: [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.top.mas_offset(15);
        make.top.mas_offset(15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];

    //: _deveceVersion = [[UILabel alloc] init];
    _deveceVersion = [[UILabel alloc] init];
    //: _deveceVersion.text = @"iPhone";
    _deveceVersion.text = StringFromHighlightData(kStr_layerPoleMessageValue);
    //: _deveceVersion.font = [UIFont systemFontOfSize:14];
    _deveceVersion.font = [UIFont systemFontOfSize:14];
    //: _deveceVersion.textAlignment = NSTextAlignmentRight;
    _deveceVersion.textAlignment = NSTextAlignmentRight;
    //: _deveceVersion.textColor = [UIColor lightGrayColor];
    _deveceVersion.textColor = [UIColor lightGrayColor];
    //: [self addSubview:_deveceVersion];
    [self addSubview:_deveceVersion];
    //: [_deveceVersion mas_makeConstraints:^(MASConstraintMaker *make) {
    [_deveceVersion mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.bottom.mas_offset(-15);
        make.bottom.mas_offset(-15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];
}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)child:(NSDictionary *)information{
    //: _deviceName.text = [information newStringValueForKey:@"telname"];
    _deviceName.text = [information with:StringFromHighlightData(kStr_annuallyData)];
    //: _deveceVersion.text = [information newStringValueForKey:@"systems"];
    _deveceVersion.text = [information with:StringFromHighlightData(kStr_occasionallyData)];
    //: _timeLabel.text = [information newStringValueForKey:@"addtime"];
    _timeLabel.text = [information with:StringFromHighlightData(kStr_underlyingData)];
}

//: @end
@end

Byte * HighlightDataToCache(Byte *data) {
    int filePerfectly = data[0];
    int twentieth = data[1];
    int infection = data[2];
    if (!filePerfectly) return data + infection;
    for (int i = 0; i < twentieth / 2; i++) {
        int begin = infection + i;
        int end = infection + twentieth - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[infection + twentieth] = 0;
    return data + infection;
}

NSString *StringFromHighlightData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HighlightDataToCache(data)];
}  
