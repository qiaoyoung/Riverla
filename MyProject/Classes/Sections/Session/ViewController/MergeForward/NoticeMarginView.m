
#import <Foundation/Foundation.h>
typedef struct {
    Byte both;
    Byte *chapter;
    unsigned int assaultModel;
    bool specialMember;
	int explode;
} BrokenRoutinelyData;

NSString *StringFromBrokenRoutinelyData(BrokenRoutinelyData *data);


//: yyyy-MM-dd
BrokenRoutinelyData kStr_dualText = (BrokenRoutinelyData){170, (Byte []){211, 211, 211, 211, 135, 231, 231, 135, 206, 206, 253}, 10, false, 66};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NoticeMarginView.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTimestampCell.h"
#import "NoticeMarginView.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "FFFTimestampModel.h"
#import "IndexIcon.h"

//: @interface NTESTimestampCell ()
@interface NoticeMarginView ()

//: @property (nonatomic, strong) UIView *lineLeft;
@property (nonatomic, strong) UIView *lineLeft;
//: @property (nonatomic, strong) UIView *lineRight;
@property (nonatomic, strong) UIView *lineRight;

//: @end
@end

//: @implementation NTESTimestampCell
@implementation NoticeMarginView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //: [self.timeBGView removeFromSuperview];
        [self.timeBGView removeFromSuperview];
        //: self.timeLabel.textColor = [MyUserKit sharedKit].config.nickColor;
        self.timeLabel.textColor = [Notice fullKit].config.nickColor;
        //: self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
        self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
        //: [self.contentView addSubview:self.lineLeft];
        [self.contentView addSubview:self.lineLeft];
        //: [self.contentView addSubview:self.lineRight];
        [self.contentView addSubview:self.lineRight];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 8.0;
    CGFloat padding = 8.0;
    //: self.timeLabel.centerY = self.height/2;
    self.timeLabel.centerY = self.height/2;
    //: _lineLeft.frame = CGRectMake(padding, 0.0, self.timeLabel.left - padding*2, 1.0);
    _lineLeft.frame = CGRectMake(padding, 0.0, self.timeLabel.left - padding*2, 1.0);
    //: _lineLeft.centerY = self.timeLabel.centerY;
    _lineLeft.centerY = self.timeLabel.centerY;
    //: _lineRight.frame = CGRectMake(self.timeLabel.right + padding, 0, self.width - self.timeLabel.right - 2*padding, 1.0);
    _lineRight.frame = CGRectMake(self.timeLabel.right + padding, 0, self.width - self.timeLabel.right - 2*padding, 1.0);
    //: _lineRight.centerY = self.timeLabel.centerY;
    _lineRight.centerY = self.timeLabel.centerY;
}

//: - (void)refreshData:(FFFTimestampModel *)data {
- (void)telecom:(IndexIcon *)data {
    //: if ([data isKindOfClass:[FFFTimestampModel class]]) {
    if ([data isKindOfClass:[IndexIcon class]]) {
        //: self.timeLabel.text = [self timeFormatString:data.messageTime];
        self.timeLabel.text = [self ting:data.messageTime];
    }
}

//: - (NSString *)timeFormatString:(NSTimeInterval)timestamp {
- (NSString *)ting:(NSTimeInterval)timestamp {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"yyyy-MM-dd"];
    [formatter setDateFormat:StringFromBrokenRoutinelyData(&kStr_dualText)];
    //: return [formatter stringFromDate: date];
    return [formatter stringFromDate: date];
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UIView *)lineLeft {
- (UIView *)lineLeft {
    //: if (!_lineLeft) {
    if (!_lineLeft) {
        //: _lineLeft = [self setupLine];
        _lineLeft = [self lineup];
    }
    //: return _lineLeft;
    return _lineLeft;
}

//: - (UIView *)lineRight {
- (UIView *)lineRight {
    //: if (!_lineRight) {
    if (!_lineRight) {
        //: _lineRight = [self setupLine];
        _lineRight = [self lineup];
    }
    //: return _lineRight;
    return _lineRight;
}

//: - (UIView *)setupLine {
- (UIView *)lineup {
    //: UIView *ret = [[UIView alloc] init];
    UIView *ret = [[UIView alloc] init];
    //: ret.backgroundColor = [UIColor systemGroupedBackgroundColor];
    ret.backgroundColor = [UIColor systemGroupedBackgroundColor];
    //: return ret;
    return ret;
}

//: @end
@end

Byte *BrokenRoutinelyDataToByte(BrokenRoutinelyData *data) {
    if (data->specialMember) return data->chapter;
    for (int i = 0; i < data->assaultModel; i++) {
        data->chapter[i] ^= data->both;
    }
    data->chapter[data->assaultModel] = 0;
    data->specialMember = true;
	if (data->assaultModel >= 1) {
		data->explode = data->chapter[0];
	}
    return data->chapter;
}

NSString *StringFromBrokenRoutinelyData(BrokenRoutinelyData *data) {
    return [NSString stringWithUTF8String:(char *)BrokenRoutinelyDataToByte(data)];
}
