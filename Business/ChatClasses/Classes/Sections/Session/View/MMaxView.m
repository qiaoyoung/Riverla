
#import <Foundation/Foundation.h>

NSString *StringFromOptionHolidayData(Byte *data);        


//: icon_session_time_bg
Byte kStr_brainValue[] = {15, 20, 64, 14, 241, 89, 94, 136, 134, 162, 143, 235, 215, 76, 41, 35, 47, 46, 31, 51, 37, 51, 51, 41, 47, 46, 31, 52, 41, 45, 37, 31, 34, 39, 206};

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
#import "MMaxView.h"
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFTimestampModel.h"
#import "IndexIcon.h"
//: #import "FFFKitUtil.h"
#import "UtilizerUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "MyUserKit.h"
#import "Notice.h"

//: @interface FFFSessionTimestampCell()
@interface MMaxView()

//: @property (nonatomic,strong) FFFTimestampModel *model;
@property (nonatomic,strong) IndexIcon *model;

//: @end
@end

//: @implementation FFFSessionTimestampCell
@implementation MMaxView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
//        self.backgroundColor = [Notice sharedKit].config.cellBackgroundColor;
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
        [_timeBGView setImage:[[UIImage imageNamed:StringFromOptionHolidayData(kStr_brainValue)] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];

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
- (void)telecom:(IndexIcon *)data{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }
    //: self.model = data;
    self.model = data;
    //: if([self checkData]){
    if([self checkFromAccountingDataCell]){
        //: FFFTimestampModel *model = (FFFTimestampModel *)data;
        IndexIcon *model = (IndexIcon *)data;
        //: [_timeLabel setText:[FFFKitUtil showTime:model.messageTime showDetail:YES]];
        [_timeLabel setText:[UtilizerUtil show:model.messageTime send:YES]];
    }
}

//: - (BOOL)checkData{
- (BOOL)checkFromAccountingDataCell{
    //: return [self.model isKindOfClass:[FFFTimestampModel class]];
    return [self.model isKindOfClass:[IndexIcon class]];
}

//: @end
@end

Byte * OptionHolidayDataToCache(Byte *data) {
    int consume = data[0];
    int selfRegulating = data[1];
    Byte workplaceTrim = data[2];
    int utilityChurch = data[3];
    if (!consume) return data + utilityChurch;
    for (int i = utilityChurch; i < utilityChurch + selfRegulating; i++) {
        int value = data[i] + workplaceTrim;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[utilityChurch + selfRegulating] = 0;
    return data + utilityChurch;
}

NSString *StringFromOptionHolidayData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)OptionHolidayDataToCache(data)];
}
