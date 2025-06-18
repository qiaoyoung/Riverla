
#import <Foundation/Foundation.h>

NSString *StringFromApproveData(Byte *data);


//: user
Byte kStr_captainContent[] = {27, 4, 83, 4, 200, 198, 184, 197, 102};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageViewCell.m
// Afterwards
//
//  Created by chris on 16/5/10.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamMemberCardHeaderCell.h"
#import "MessageViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "StatusWithControl.h"
//: #import "UsrInfoData.h"
#import "UsrInfoData.h"
//: #import "UserCommonTableData.h"
#import "UserCommonTableData.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"

//: @interface FFFTeamMemberCardHeaderCell()
@interface MessageViewCell()

//: @property (nonatomic,strong) FFFAvatarImageView *avatarView;
@property (nonatomic,strong) StatusWithControl *avatarView;

//: @property (nonatomic,strong) UILabel *nickLabel;
@property (nonatomic,strong) UILabel *nickLabel;

//: @end
@end

//: @implementation FFFTeamMemberCardHeaderCell
@implementation MessageViewCell

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
- (void)view:(ColorContentRow *)rowData title:(UITableView *)tableView;{
    //: FFFKitInfo *userInfo = rowData.extraInfo[@"user"];
    MarginThanInfo *userInfo = rowData.extraInfo[StringFromApproveData(kStr_captainContent)];
    //: NSLog(@"userInfo===%@",userInfo);
    //: NSURL *avatarURL;
    NSURL *avatarURL;
    //: if (userInfo.avatarUrlString.length) {
    if (userInfo.avatarUrlString.length) {
        //: avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
        avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
    }
    //: [self.avatarView nim_setImageWithURL:avatarURL placeholderImage:userInfo.avatarImage];
    [self.avatarView date:avatarURL enableImage:userInfo.avatarImage];
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
- (StatusWithControl *)avatarView
{
    //: if (!_avatarView) {
    if (!_avatarView) {
        //: _avatarView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
        _avatarView = [[StatusWithControl alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
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

Byte * ApproveDataToCache(Byte *data) {
    int corridorRealize = data[0];
    int requestIngredient = data[1];
    Byte ireSuspect = data[2];
    int sharedHe = data[3];
    if (!corridorRealize) return data + sharedHe;
    for (int i = sharedHe; i < sharedHe + requestIngredient; i++) {
        int value = data[i] - ireSuspect;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[sharedHe + requestIngredient] = 0;
    return data + sharedHe;
}

NSString *StringFromApproveData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ApproveDataToCache(data)];
}
