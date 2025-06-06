
#import <Foundation/Foundation.h>
typedef struct {
    Byte portionImprove;
    Byte *disco;
    unsigned int welcome;
    bool ecologicalAhead;
	int kitRoad;
	int soft;
	int bugThank;
} QuarterMyData;

NSString *StringFromQuarterMyData(QuarterMyData *data);


//: #000000
QuarterMyData kStr_cottaContent = (QuarterMyData){61, (Byte []){30, 13, 13, 13, 13, 13, 13, 149}, 7, false, 133, 186, 179};


//: group_mute_no
QuarterMyData kStr_brainData = (QuarterMyData){184, (Byte []){223, 202, 215, 205, 200, 231, 213, 205, 204, 221, 231, 214, 215, 44}, 13, false, 198, 197, 101};


//: 5D5F66
QuarterMyData kStr_intentionLeadingTitle = (QuarterMyData){144, (Byte []){165, 212, 165, 214, 166, 166, 84}, 6, false, 238, 132, 34};


//: group_mute
QuarterMyData kStr_opponentReverseValue = (QuarterMyData){247, (Byte []){144, 133, 152, 130, 135, 168, 154, 130, 131, 146, 25}, 10, false, 134, 170, 71};


//: #F6F6F6
QuarterMyData kStr_softFreedomTitle = (QuarterMyData){62, (Byte []){29, 120, 8, 120, 8, 120, 8, 171}, 7, false, 151, 136, 184};


//: group_remove
QuarterMyData kStr_breatheHornTitle = (QuarterMyData){5, (Byte []){98, 119, 106, 112, 117, 90, 119, 96, 104, 106, 115, 96, 92}, 12, false, 182, 132, 115};

// __DEBUG__
// __CLOSE_PRINT__
//
//  EvaluateViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFGroupMemberTableViewCell.h"
#import "EvaluateViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "ViewControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "FFFTeamHelper.h"
#import "ScaleHelper.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Notice.h"

//: @interface FFFGroupMemberTableViewCell()
@interface EvaluateViewCell()

//: @property (nonatomic,strong) id<FFFKitCardHeaderData> data;
@property (nonatomic,strong) id<FFFKitCardHeaderData> data;

//: @end
@end

//: @implementation FFFGroupMemberTableViewCell
@implementation EvaluateViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

//        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.selectionStyle = UITableViewCellSelectionStyleGray;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;


        //: [self initSubviews];
        [self initCell];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)randomForView:(UITableView *)tableView
{
    //: static NSString *identifier = @"FFFGroupMemberTableViewCell";
    static NSString *identifier = @"EvaluateViewCell";
    //: FFFGroupMemberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    EvaluateViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[FFFGroupMemberTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[EvaluateViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //: cell.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
        cell.backgroundColor = [UIColor isView:StringFromQuarterMyData(&kStr_softFreedomTitle)];
        //: cell.layer.cornerRadius = 16;
        cell.layer.cornerRadius = 16;
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initCell {

    //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.masksToBounds = YES;
    //: _roleImageView.layer.cornerRadius = 24;
    _roleImageView.layer.cornerRadius = 24;
    //: [self.contentView addSubview:_roleImageView];
    [self.contentView addSubview:_roleImageView];

    //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    _titleLabel.textColor = [UIColor isView:StringFromQuarterMyData(&kStr_cottaContent)];
    //: [self.contentView addSubview:_titleLabel];
    [self.contentView addSubview:_titleLabel];

    //: _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    //: _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: _subtitleLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
    _subtitleLabel.textColor = [UIColor isView:StringFromQuarterMyData(&kStr_intentionLeadingTitle)];
    //: _subtitleLabel.textAlignment = NSTextAlignmentRight;
    _subtitleLabel.textAlignment = NSTextAlignmentRight;
    //: _subtitleLabel.hidden = YES;
    _subtitleLabel.hidden = YES;
    //: [self.contentView addSubview:_subtitleLabel];
    [self.contentView addSubview:_subtitleLabel];

    //: [self.contentView addSubview:self.muteBtn];
    [self.contentView addSubview:self.muteBtn];
    //: [self.contentView addSubview:self.removeBtn];
    [self.contentView addSubview:self.removeBtn];

}

//: - (void)reloadWithUserId:(NSString *)UserId
- (void)title:(NSString *)UserId
{
    //: self.userId = UserId;
    self.userId = UserId;
}

//: - (void)setUserInfo:(FFFKitInfo *)userInfo
- (void)setUserInfo:(OriginBy *)userInfo
{
    //: self.userInfo = userInfo;
    self.userInfo = userInfo;
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)managering:(id)sender{

    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(need:)]) {
        //: [self.delegate cellShouldBeRemoved:self.userId];
        [self.delegate need:self.userId];
    }
}
//: - (void)onTouchMuteBtn:(id)sender{
- (void)styling:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(need:)]) {
        //: [self.delegate cellShouldBeMute:self.userId mute:YES];
        [self.delegate textDate:self.userId view:YES];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    //: self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);
    self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);

}
//: - (UIButton *)removeBtn{
- (UIButton *)removeBtn{
    //: if (!_removeBtn) {
    if (!_removeBtn) {
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(managering:) forControlEvents:UIControlEventTouchUpInside];
        //: [_removeBtn setImage:[UIImage imageNamed:@"group_remove"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:StringFromQuarterMyData(&kStr_breatheHornTitle)] forState:UIControlStateNormal];

    }
    //: return _removeBtn;
    return _removeBtn;
}

//: - (UIButton *)muteBtn{
- (UIButton *)muteBtn{
    //: if (!_muteBtn) {
    if (!_muteBtn) {
        //: _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_muteBtn addTarget:self action:@selector(onTouchMuteBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_muteBtn addTarget:self action:@selector(styling:) forControlEvents:UIControlEventTouchUpInside];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute_no"] forState:UIControlStateNormal];
        [_muteBtn setImage:[UIImage imageNamed:StringFromQuarterMyData(&kStr_brainData)] forState:UIControlStateNormal];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute"] forState:UIControlStateSelected];
        [_muteBtn setImage:[UIImage imageNamed:StringFromQuarterMyData(&kStr_opponentReverseValue)] forState:UIControlStateSelected];

    }
    //: return _muteBtn;
    return _muteBtn;
}


//: @end
@end

Byte *QuarterMyDataToByte(QuarterMyData *data) {
    if (data->ecologicalAhead) return data->disco;
    for (int i = 0; i < data->welcome; i++) {
        data->disco[i] ^= data->portionImprove;
    }
    data->disco[data->welcome] = 0;
    data->ecologicalAhead = true;
	if (data->welcome >= 3) {
		data->kitRoad = data->disco[0];
		data->soft = data->disco[1];
		data->bugThank = data->disco[2];
	}
    return data->disco;
}

NSString *StringFromQuarterMyData(QuarterMyData *data) {
    return [NSString stringWithUTF8String:(char *)QuarterMyDataToByte(data)];
}
