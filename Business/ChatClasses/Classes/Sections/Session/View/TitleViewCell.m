
#import <Foundation/Foundation.h>

NSString *StringFromVoiceData(Byte *data);        


//: icon_session_time_bg
Byte kStr_apologyUserMessageValue[] = {87, 20, 30, 14, 135, 70, 223, 157, 252, 149, 180, 7, 137, 237, 75, 69, 81, 80, 65, 85, 71, 85, 85, 75, 81, 80, 65, 86, 75, 79, 71, 65, 68, 73, 244};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionTipCell.m
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionTimestampCell.h"
#import "TitleViewCell.h"
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFTimestampModel.h"
#import "ModelTimestampSupport.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @interface FFFSessionTimestampCell()
@interface TitleViewCell()

//: @property (nonatomic,strong) FFFTimestampModel *model;
@property (nonatomic,strong) ModelTimestampSupport *model;

//: @end
@end

//: @implementation FFFSessionTimestampCell
@implementation TitleViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
//        self.backgroundColor = [Afterwards sharedKit].config.cellBackgroundColor;
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: _timeBGView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _timeBGView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self.contentView addSubview:_timeBGView];
        [self.contentView addSubview:_timeBGView];
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.font = [UIFont boldSystemFontOfSize:10.f];
        _timeLabel.font = [UIFont boldSystemFontOfSize:10.f];
        //: _timeLabel.textColor = [UIColor whiteColor];
        _timeLabel.textColor = [UIColor whiteColor];
        //: [self.contentView addSubview:_timeLabel];
        [self.contentView addSubview:_timeLabel];
        //: [_timeBGView setImage:[[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];
        [_timeBGView setImage:[[UIImage imageNamed:StringFromVoiceData(kStr_apologyUserMessageValue)] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];

    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [_timeLabel sizeToFit];
    [_timeLabel sizeToFit];
    //: _timeLabel.center = CGPointMake(self.nim_centerX, 20);
    _timeLabel.center = CGPointMake(self.nim_centerX, 20);
    //: _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.nim_top - 2, _timeLabel.nim_width + 14, _timeLabel.nim_height + 4);
    _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.nim_top - 2, _timeLabel.nim_width + 14, _timeLabel.nim_height + 4);
}


//: - (void)refreshData:(FFFTimestampModel *)data{
- (void)end:(ModelTimestampSupport *)data{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }
    //: self.model = data;
    self.model = data;
    //: if([self checkData]){
    if([self team]){
        //: FFFTimestampModel *model = (FFFTimestampModel *)data;
        ModelTimestampSupport *model = (ModelTimestampSupport *)data;
        //: [_timeLabel setText:[FFFKitUtil showTime:model.messageTime showDetail:YES]];
        [_timeLabel setText:[PopUtil max:model.messageTime exampleOff:YES]];
    }
}

//: - (BOOL)checkData{
- (BOOL)team{
    //: return [self.model isKindOfClass:[FFFTimestampModel class]];
    return [self.model isKindOfClass:[ModelTimestampSupport class]];
}

//: @end
@end

Byte * VoiceDataToCache(Byte *data) {
    int sizeSelect = data[0];
    int ambassadorDraw = data[1];
    Byte colorDevice = data[2];
    int replete = data[3];
    if (!sizeSelect) return data + replete;
    for (int i = replete; i < replete + ambassadorDraw; i++) {
        int value = data[i] + colorDevice;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[replete + ambassadorDraw] = 0;
    return data + replete;
}

NSString *StringFromVoiceData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)VoiceDataToCache(data)];
}
