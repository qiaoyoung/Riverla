
#import <Foundation/Foundation.h>

NSString *StringFromTransparentSubstanceData(Byte *data);


//: icon_accessory_selected
Byte kStr_brigFleshTitle[] = {18, 23, 61, 11, 186, 15, 198, 188, 36, 141, 7, 166, 160, 172, 171, 156, 158, 160, 160, 162, 176, 176, 172, 175, 182, 156, 176, 162, 169, 162, 160, 177, 162, 161, 198};


//: icon_accessory_normal
Byte kStr_broadcastValue[] = {5, 21, 22, 11, 8, 136, 96, 183, 248, 49, 88, 127, 121, 133, 132, 117, 119, 121, 121, 123, 137, 137, 133, 136, 143, 117, 132, 133, 136, 131, 119, 130, 125};


//: head_default
Byte kStr_storeTitle[] = {17, 12, 87, 14, 187, 90, 65, 182, 137, 146, 82, 198, 84, 145, 191, 188, 184, 187, 182, 187, 188, 189, 184, 204, 195, 203, 167};


//: f6f6f6
Byte kStr_quickEvolutionaryContent[] = {67, 6, 48, 8, 120, 218, 24, 169, 150, 102, 150, 102, 150, 102, 133};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactInfoCell.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactDataCell.h"
#import "BankViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "StatusWithControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"

//: @interface FFFContactDataCell()
@interface BankViewCell()

//: @end
@end

//: @implementation FFFContactDataCell
@implementation BankViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
        bgView.backgroundColor = [UIColor withMax:StringFromTransparentSubstanceData(kStr_quickEvolutionaryContent)];
        //: bgView.layer.cornerRadius = 16;
        bgView.layer.cornerRadius = 16;
        //: [self.contentView addSubview:bgView];
        [self.contentView addSubview:bgView];


        //: _avatarImageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        _avatarImageView = [[StatusWithControl alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        //: [_avatarImageView addTarget:self action:@selector(onPressAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [_avatarImageView addTarget:self action:@selector(videoOfCan:) forControlEvents:UIControlEventTouchUpInside];
        //: [bgView addSubview:_avatarImageView];
        [bgView addSubview:_avatarImageView];

        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:StringFromTransparentSubstanceData(kStr_broadcastValue)] forState:UIControlStateNormal];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_accessoryBtn setImage:[UIImage imageNamed:StringFromTransparentSubstanceData(kStr_brigFleshTitle)] forState:UIControlStateSelected];
        //: [_accessoryBtn sizeToFit];
        [_accessoryBtn sizeToFit];
        //: _accessoryBtn.hidden = YES;
        _accessoryBtn.hidden = YES;
        //: _accessoryBtn.userInteractionEnabled = NO;
        _accessoryBtn.userInteractionEnabled = NO;
        //: [bgView addSubview:_accessoryBtn];
        [bgView addSubview:_accessoryBtn];

        //: self.labName = [[UILabel alloc]initWithFrame:CGRectMake(_avatarImageView.right+15, 12, 250, 48)];
        self.labName = [[UILabel alloc]initWithFrame:CGRectMake(_avatarImageView.right+15, 12, 250, 48)];
        //: self.labName.textColor = [UIColor blackColor];
        self.labName.textColor = [UIColor blackColor];
        //: self.labName.font = [UIFont boldSystemFontOfSize:16];
        self.labName.font = [UIFont boldSystemFontOfSize:16];
        //: [bgView addSubview:self.labName];
        [bgView addSubview:self.labName];

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleGray;
        self.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    //: return self;
    return self;
}

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member {
- (void)nowadays:(id<TingProtocol>)member {
    //: [self refreshTitle:member.showName];
    [self with:member.requestShow];
    //: self.memberId = member.memberId;
    self.memberId = member.roundCell;
    //: NSURL *url = member.avatarUrlString ? [NSURL URLWithString:member.avatarUrlString] : nil;
    NSURL *url = member.team ? [NSURL URLWithString:member.team] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"] options:SDWebImageRetryFailed];
    [_avatarImageView placeholder:url beforeArea:[UIImage imageNamed:StringFromTransparentSubstanceData(kStr_storeTitle)] frameImageOptions:SDWebImageRetryFailed];
}

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)show:(id<TingProtocol>)member{
    //: [self refreshTitle:member.showName];
    [self with:member.requestShow];
    //: self.memberId = [member memberId];
    self.memberId = [member roundCell];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    MarginThanInfo *info = [[Afterwards blue] put:self.memberId button:nil];
    //: [self refreshAvatar:info];
    [self fiveView:info];
}

//: - (void)refreshTeam:(NIMTeam *)team; {
- (void)input:(NIMTeam *)team; {
    //: [self refreshTitle:team.teamName];
    [self with:team.teamName];
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    MarginThanInfo *info = [[Afterwards blue] communication:self.memberId bar:nil];
    //: [self refreshAvatar:info];
    [self fiveView:info];
}

//: - (void)refreshTitle:(NSString *)title{
- (void)with:(NSString *)title{
    //: self.labName.text = title;
    self.labName.text = title;
}

//: - (void)refreshAvatar:(FFFKitInfo *)info{
- (void)fiveView:(MarginThanInfo *)info{
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatarImageView placeholder:url beforeArea:info.avatarImage frameImageOptions:SDWebImageRetryFailed];
}

//: - (void)onPressAvatar:(id)sender{
- (void)videoOfCan:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onPressAvatar:)]) {
    if ([self.delegate respondsToSelector:@selector(videoOfCan:)]) {
        //: [self.delegate onPressAvatar:self.memberId];
        [self.delegate videoOfCan:self.memberId];
    }
}

//: - (void)addDelegate:(id)delegate{
- (void)convertTop:(id)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
}

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [self.accessoryBtn setHighlighted:highlighted];
    [self.accessoryBtn setHighlighted:highlighted];
}


//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{

}






//: @end
@end

Byte * TransparentSubstanceDataToCache(Byte *data) {
    int middleTingCell = data[0];
    int brobdingnagianEntitle = data[1];
    Byte studMare = data[2];
    int atWindow = data[3];
    if (!middleTingCell) return data + atWindow;
    for (int i = atWindow; i < atWindow + brobdingnagianEntitle; i++) {
        int value = data[i] - studMare;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[atWindow + brobdingnagianEntitle] = 0;
    return data + atWindow;
}

NSString *StringFromTransparentSubstanceData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TransparentSubstanceDataToCache(data)];
}
