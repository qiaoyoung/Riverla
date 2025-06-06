
#import <Foundation/Foundation.h>

NSString *StringFromShadowDependenceData(Byte *data);        


//: systems
Byte kStr_direSpectacularName[] = {24, 7, 92, 10, 254, 255, 102, 24, 172, 99, 23, 29, 23, 24, 9, 17, 23, 175};


//: telname
Byte kStr_leadingData[] = {97, 7, 69, 4, 47, 32, 39, 41, 28, 40, 32, 100};


//: addtime
Byte kStr_chopKitData[] = {45, 7, 74, 14, 56, 233, 160, 16, 45, 5, 15, 5, 205, 8, 23, 26, 26, 42, 31, 35, 27, 202};


//: user_device_phone
Byte kStr_theoryContent[] = {5, 17, 13, 12, 50, 249, 70, 121, 239, 203, 67, 146, 104, 102, 88, 101, 82, 87, 88, 105, 92, 86, 88, 82, 99, 91, 98, 97, 88, 96};


//: iPhone
Byte kStr_indicatorOnShouldData[] = {17, 6, 85, 6, 218, 226, 20, 251, 19, 26, 25, 16, 212};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/13.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESDeviceListTableViewCell.h"
#import "NameViewCell.h"

//: @implementation NTESDeviceListTableViewCell
@implementation NameViewCell

//: - (void)initSubviews{
- (void)initExhibitTap{

    //: _deviceName = [[UILabel alloc] init];
    _deviceName = [[UILabel alloc] init];
    //: _deviceName.text = @"iPhone";
    _deviceName.text = StringFromShadowDependenceData(kStr_indicatorOnShouldData);
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
    _imageViewIcon.image = [UIImage imageNamed:StringFromShadowDependenceData(kStr_theoryContent)];
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
    _timeLabel.text = StringFromShadowDependenceData(kStr_indicatorOnShouldData);
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
    _deveceVersion.text = StringFromShadowDependenceData(kStr_indicatorOnShouldData);
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
-(void)doingTeam:(NSDictionary *)information{
    //: _deviceName.text = [information newStringValueForKey:@"telname"];
    _deviceName.text = [information speedy:StringFromShadowDependenceData(kStr_leadingData)];
    //: _deveceVersion.text = [information newStringValueForKey:@"systems"];
    _deveceVersion.text = [information speedy:StringFromShadowDependenceData(kStr_direSpectacularName)];
    //: _timeLabel.text = [information newStringValueForKey:@"addtime"];
    _timeLabel.text = [information speedy:StringFromShadowDependenceData(kStr_chopKitData)];
}

//: @end
@end

Byte * ShadowDependenceDataToCache(Byte *data) {
    int subordination = data[0];
    int think = data[1];
    Byte clanMember = data[2];
    int planning = data[3];
    if (!subordination) return data + planning;
    for (int i = planning; i < planning + think; i++) {
        int value = data[i] + clanMember;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[planning + think] = 0;
    return data + planning;
}

NSString *StringFromShadowDependenceData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ShadowDependenceDataToCache(data)];
}
