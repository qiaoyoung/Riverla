
#import <Foundation/Foundation.h>
typedef struct {
    Byte recto;
    Byte *avoidNameView;
    unsigned int keyMessage;
    bool lemma;
	int pettyJury;
	int experienceKneel;
	int shoveScore;
} IceData;

NSString *StringFromIceData(IceData *data);


//: HH:mm
IceData kStr_extremeText = (IceData){75, (Byte []){3, 3, 113, 38, 38, 233}, 5, false, 131, 161, 50};


//: 00:00
IceData kStr_worksPdaTitle = (IceData){69, (Byte []){117, 117, 127, 117, 117, 123}, 5, false, 209, 150, 139};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RecentMessageCell.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeMessageCell.h"
#import "RecentMessageCell.h"
//: #import "FFFBadgeView.h"
#import "HeadView.h"
//: #import "FFFSessionTextContentView.h"
#import "WithNameView.h"
//: #import "FFFAvatarImageView.h"
#import "ViewControl.h"
//: #import "M80AttributedLabel.h"
#import "PopScrollView.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "NTESMessageModel.h"
#import "MaxHouseMessageModel.h"

//: @interface NTESMergeMessageCell ()
@interface RecentMessageCell ()

//: @property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIView *line;

//: @property (nonatomic, strong) UILabel *timeLab;
@property (nonatomic, strong) UILabel *timeLab;

//: @end
@end

//: @implementation NTESMergeMessageCell
@implementation RecentMessageCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //: [self.traningActivityIndicator removeFromSuperview];
        [self.traningActivityIndicator removeFromSuperview];
        //: [self.retryButton removeFromSuperview];
        [self.retryButton removeFromSuperview];
        //: [self.audioPlayedIcon removeFromSuperview];
        [self.audioPlayedIcon removeFromSuperview];
        //: [self.readButton removeFromSuperview];
        [self.readButton removeFromSuperview];
        //: [self.selectButton removeFromSuperview];
        [self.selectButton removeFromSuperview];
        //: [self.selectButtonMask removeFromSuperview];
        [self.selectButtonMask removeFromSuperview];
        //: [self.contentView addSubview:self.timeLab];
        [self.contentView addSubview:self.timeLab];
        //: [self.contentView addSubview:self.line];
        [self.contentView addSubview:self.line];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInset = self.model.contentViewInsets;
    UIEdgeInsets contentInset = self.model.contentViewInsets;
    //: self.headImageView.origin = CGPointMake(16.0, 16.0);
    self.headImageView.origin = CGPointMake(16.0, 16.0);
    //: self.nameLabel.origin = CGPointMake(self.headImageView.right + contentInset.left, self.headImageView.top);
    self.nameLabel.origin = CGPointMake(self.headImageView.right + contentInset.left, self.headImageView.top);
    //: self.bubbleView.origin = CGPointMake(self.headImageView.right, self.nameLabel.bottom - contentInset.top + 4.0);
    self.bubbleView.origin = CGPointMake(self.headImageView.right, self.nameLabel.bottom - contentInset.top + 4.0);
    //: _line.frame = CGRectMake(self.headImageView.left, self.height - 1, self.width-2*self.headImageView.left, 1.0);
    _line.frame = CGRectMake(self.headImageView.left, self.height - 1, self.width-2*self.headImageView.left, 1.0);
    //: _timeLab.origin = CGPointMake(self.width - _timeLab.width - 16.0, self.nameLabel.top);
    _timeLab.origin = CGPointMake(self.width - _timeLab.width - 16.0, self.nameLabel.top);
}

//: - (UIView *)line {
- (UIView *)line {
    //: if (!_line) {
    if (!_line) {
        //: _line = [[UIView alloc] init];
        _line = [[UIView alloc] init];
        //: _line.backgroundColor = [UIColor systemGroupedBackgroundColor];
        _line.backgroundColor = [UIColor systemGroupedBackgroundColor];
    }
    //: return _line;
    return _line;
}
//: - (UILabel *)timeLab {
- (UILabel *)timeLab {
    //: if (!_timeLab) {
    if (!_timeLab) {
        //: _timeLab = [[UILabel alloc] init];
        _timeLab = [[UILabel alloc] init];
        //: _timeLab.backgroundColor = [UIColor clearColor];
        _timeLab.backgroundColor = [UIColor clearColor];
        //: _timeLab.opaque = YES;
        _timeLab.opaque = YES;
        //: _timeLab.font = [MyUserKit sharedKit].config.nickFont;
        _timeLab.font = [Notice fullKit].config.nickFont;
        //: _timeLab.textColor = [MyUserKit sharedKit].config.nickColor;
        _timeLab.textColor = [Notice fullKit].config.nickColor;
        //: _timeLab.text = @"00:00";
        _timeLab.text = StringFromIceData(&kStr_worksPdaTitle);
        //: [_timeLab sizeToFit];
        [_timeLab sizeToFit];
        //: _timeLab.width += 8.0;
        _timeLab.width += 8.0;
    }
    //: return _timeLab;
    return _timeLab;
}

//: - (void)refreshData:(FFFMessageModel *)data {
- (void)shadowIndex:(MaxLink *)data {
    //: [super refreshData:data];
    [super shadowIndex:data];

    //: NTESMessageModel *model = nil;
    MaxHouseMessageModel *model = nil;
    //: if ([data isKindOfClass:[NTESMessageModel class]]) {
    if ([data isKindOfClass:[MaxHouseMessageModel class]]) {
        //: model = (NTESMessageModel *)data;
        model = (MaxHouseMessageModel *)data;
        //: _line.hidden = model.hiddenSeparatorLine;
        _line.hidden = model.hiddenSeparatorLine;

        //: NSString *timeInfo = [self timeFormatString:model.message.timestamp];
        NSString *timeInfo = [self sendAt:model.message.timestamp];
        //: _timeLab.text = timeInfo ?: @"00:00";
        _timeLab.text = timeInfo ?: StringFromIceData(&kStr_worksPdaTitle);

        //: self.bubbleView.layoutStyle = FFFSessionMessageContentViewLayoutLeft;
        self.bubbleView.layoutStyle = FFFSessionMessageContentViewLayoutLeft;
    }

    //: self.bubbleView.bubbleImageView.hidden = YES;
    self.bubbleView.bubbleImageView.hidden = YES;
    //: self.bubblesBackgroundView.hidden = YES;
    self.bubblesBackgroundView.hidden = YES;
    //: self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
    self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];

    //: id bubbleView = self.bubbleView;
    id bubbleView = self.bubbleView;
    //: if ([bubbleView isKindOfClass:[FFFSessionTextContentView class]]) {
    if ([bubbleView isKindOfClass:[WithNameView class]]) {
        //: ((FFFSessionTextContentView *)bubbleView).textView.textColor = [UIColor blackColor];
        ((WithNameView *)bubbleView).textView.textColor = [UIColor blackColor];
    }
}

//: - (NSString *)timeFormatString:(NSTimeInterval)time {
- (NSString *)sendAt:(NSTimeInterval)time {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"HH:mm"];
    [formatter setDateFormat:StringFromIceData(&kStr_extremeText)];
    //: return [formatter stringFromDate: date];
    return [formatter stringFromDate: date];
}

//: @end
@end

Byte *IceDataToByte(IceData *data) {
    if (data->lemma) return data->avoidNameView;
    for (int i = 0; i < data->keyMessage; i++) {
        data->avoidNameView[i] ^= data->recto;
    }
    data->avoidNameView[data->keyMessage] = 0;
    data->lemma = true;
	if (data->keyMessage >= 3) {
		data->pettyJury = data->avoidNameView[0];
		data->experienceKneel = data->avoidNameView[1];
		data->shoveScore = data->avoidNameView[2];
	}
    return data->avoidNameView;
}

NSString *StringFromIceData(IceData *data) {
    return [NSString stringWithUTF8String:(char *)IceDataToByte(data)];
}
