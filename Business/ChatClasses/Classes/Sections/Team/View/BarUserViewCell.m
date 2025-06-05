
#import <Foundation/Foundation.h>
typedef struct {
    Byte trailSize;
    Byte *successfully;
    unsigned int correspondent;
    bool forthSire;
	int sunna;
	int tingRod;
	int lastField;
} PeriodOfTimeData;

NSString *StringFromPeriodOfTimeData(PeriodOfTimeData *data);


//: user
PeriodOfTimeData kStr_majorName = (PeriodOfTimeData){76, (Byte []){57, 63, 41, 62, 202}, 4, false, 122, 168, 21};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BarUserViewCell.m
// Notice
//
//  Created by chris on 16/5/10.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamMemberCardHeaderCell.h"
#import "BarUserViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "ViewControl.h"
//: #import "FFFUsrInfoData.h"
#import "FFFUsrInfoData.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFKitUtil.h"
#import "UtilizerUtil.h"

//: @interface FFFTeamMemberCardHeaderCell()
@interface BarUserViewCell()

//: @property (nonatomic,strong) FFFAvatarImageView *avatarView;
@property (nonatomic,strong) ViewControl *avatarView;

//: @property (nonatomic,strong) UILabel *nickLabel;
@property (nonatomic,strong) UILabel *nickLabel;

//: @end
@end

//: @implementation FFFTeamMemberCardHeaderCell
@implementation BarUserViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: [self.contentView addSubview:self.avatarView];
        [self.contentView addSubview:self.avatarView];
        //: [self.contentView addSubview:self.nickLabel];
        [self.contentView addSubview:self.nickLabel];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;{
- (void)elite:(BuildRow *)rowData past:(UITableView *)tableView;{
    //: FFFKitInfo *userInfo = rowData.extraInfo[@"user"];
    OriginBy *userInfo = rowData.extraInfo[StringFromPeriodOfTimeData(&kStr_majorName)];
    //: NSLog(@"userInfo===%@",userInfo);
    //: NSURL *avatarURL;
    NSURL *avatarURL;
    //: if (userInfo.avatarUrlString.length) {
    if (userInfo.avatarUrlString.length) {
        //: avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
        avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
    }
    //: [self.avatarView nim_setImageWithURL:avatarURL placeholderImage:userInfo.avatarImage];
    [self.avatarView eigenvalueImage:avatarURL index:userInfo.avatarImage];
    //: self.nickLabel.text = userInfo.showName;
    self.nickLabel.text = userInfo.showName;
    //: [self.nickLabel sizeToFit];
    [self.nickLabel sizeToFit];
    //: self.userInteractionEnabled = NO;
    self.userInteractionEnabled = NO;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatarView.nim_top = 52.f;
    self.avatarView.nim_top = 52.f;
    //: self.avatarView.nim_centerX = self.nim_width * .5f;
    self.avatarView.nim_centerX = self.nim_width * .5f;
    //: self.nickLabel.nim_centerX = self.avatarView.nim_centerX;
    self.nickLabel.nim_centerX = self.avatarView.nim_centerX;
    //: self.nickLabel.nim_top = self.avatarView.nim_bottom + 10;
    self.nickLabel.nim_top = self.avatarView.nim_bottom + 10;
}


//: - (FFFAvatarImageView *)avatarView
- (ViewControl *)avatarView
{
    //: if (!_avatarView) {
    if (!_avatarView) {
        //: _avatarView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
        _avatarView = [[ViewControl alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
        //: _avatarView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        _avatarView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    }
    //: return _avatarView;
    return _avatarView;
}

//: - (UILabel *)nickLabel
- (UILabel *)nickLabel
{
    //: if (!_nickLabel) {
    if (!_nickLabel) {
        //: _nickLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nickLabel.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        _nickLabel.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        //: _nickLabel.font = [UIFont systemFontOfSize:17];
        _nickLabel.font = [UIFont systemFontOfSize:17];
        //: _nickLabel.textColor = [UIColor colorWithRed:51.0 / 255 green:51.0 / 255 blue:51.0 / 255 alpha:1.0];
        _nickLabel.textColor = [UIColor colorWithRed:51.0 / 255 green:51.0 / 255 blue:51.0 / 255 alpha:1.0];
    }
    //: return _nickLabel;
    return _nickLabel;
}


//: @end
@end

Byte *PeriodOfTimeDataToByte(PeriodOfTimeData *data) {
    if (data->forthSire) return data->successfully;
    for (int i = 0; i < data->correspondent; i++) {
        data->successfully[i] ^= data->trailSize;
    }
    data->successfully[data->correspondent] = 0;
    data->forthSire = true;
	if (data->correspondent >= 3) {
		data->sunna = data->successfully[0];
		data->tingRod = data->successfully[1];
		data->lastField = data->successfully[2];
	}
    return data->successfully;
}

NSString *StringFromPeriodOfTimeData(PeriodOfTimeData *data) {
    return [NSString stringWithUTF8String:(char *)PeriodOfTimeDataToByte(data)];
}
