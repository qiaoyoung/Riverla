
#import <Foundation/Foundation.h>

NSString *StringFromSassData(Byte *data);


//: head_default
Byte kStr_favorableMyName[] = {4, 12, 51, 11, 243, 40, 240, 83, 131, 211, 15, 155, 152, 148, 151, 146, 151, 152, 153, 148, 168, 159, 167, 231};


//: icon_accessory_normal
Byte kStr_creditEnemyValue[] = {24, 21, 90, 6, 47, 112, 195, 189, 201, 200, 185, 187, 189, 189, 191, 205, 205, 201, 204, 211, 185, 200, 201, 204, 199, 187, 198, 140};


//: icon_accessory_selected
Byte kStr_historicallyValue[] = {55, 23, 42, 10, 224, 60, 58, 31, 181, 158, 147, 141, 153, 152, 137, 139, 141, 141, 143, 157, 157, 153, 156, 163, 137, 157, 143, 150, 143, 141, 158, 143, 142, 145};


//: f6f6f6
Byte kStr_heritageAbsenceName[] = {22, 6, 30, 6, 208, 86, 132, 84, 132, 84, 132, 84, 167};

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
#import "LanguageViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "ViewControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"

//: @interface FFFContactDataCell()
@interface LanguageViewCell()

//: @end
@end

//: @implementation FFFContactDataCell
@implementation LanguageViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
        bgView.backgroundColor = [UIColor isView:StringFromSassData(kStr_heritageAbsenceName)];
        //: bgView.layer.cornerRadius = 16;
        bgView.layer.cornerRadius = 16;
        //: [self.contentView addSubview:bgView];
        [self.contentView addSubview:bgView];


        //: _avatarImageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        _avatarImageView = [[ViewControl alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        //: [_avatarImageView addTarget:self action:@selector(onPressAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [_avatarImageView addTarget:self action:@selector(levelsing:) forControlEvents:UIControlEventTouchUpInside];
        //: [bgView addSubview:_avatarImageView];
        [bgView addSubview:_avatarImageView];

        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:StringFromSassData(kStr_creditEnemyValue)] forState:UIControlStateNormal];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_accessoryBtn setImage:[UIImage imageNamed:StringFromSassData(kStr_historicallyValue)] forState:UIControlStateSelected];
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
- (void)title:(id<BoardMemberLayer>)member {
    //: [self refreshTitle:member.showName];
    [self status:member.showName];
    //: self.memberId = member.memberId;
    self.memberId = member.memberId;
    //: NSURL *url = member.avatarUrlString ? [NSURL URLWithString:member.avatarUrlString] : nil;
    NSURL *url = member.inputTitle ? [NSURL URLWithString:member.inputTitle] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"] options:SDWebImageRetryFailed];
    [_avatarImageView disableTime:url min:[UIImage imageNamed:StringFromSassData(kStr_favorableMyName)] pathImageOptions:SDWebImageRetryFailed];
}

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)multi:(id<BoardMemberLayer>)member{
    //: [self refreshTitle:member.showName];
    [self status:member.showName];
    //: self.memberId = [member memberId];
    self.memberId = [member memberId];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    OriginBy *info = [[Notice fullKit] value:self.memberId manager:nil];
    //: [self refreshAvatar:info];
    [self ofInterval:info];
}

//: - (void)refreshTeam:(NIMTeam *)team; {
- (void)sizeOn:(NIMTeam *)team; {
    //: [self refreshTitle:team.teamName];
    [self status:team.teamName];
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    OriginBy *info = [[Notice fullKit] title:self.memberId commence:nil];
    //: [self refreshAvatar:info];
    [self ofInterval:info];
}

//: - (void)refreshTitle:(NSString *)title{
- (void)status:(NSString *)title{
    //: self.labName.text = title;
    self.labName.text = title;
}

//: - (void)refreshAvatar:(FFFKitInfo *)info{
- (void)ofInterval:(OriginBy *)info{
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatarImageView disableTime:url min:info.avatarImage pathImageOptions:SDWebImageRetryFailed];
}

//: - (void)onPressAvatar:(id)sender{
- (void)levelsing:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onPressAvatar:)]) {
    if ([self.delegate respondsToSelector:@selector(levelsing:)]) {
        //: [self.delegate onPressAvatar:self.memberId];
        [self.delegate levelsing:self.memberId];
    }
}

//: - (void)addDelegate:(id)delegate{
- (void)behindShould:(id)delegate{
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

Byte * SassDataToCache(Byte *data) {
    int provisions = data[0];
    int meteHeater = data[1];
    Byte greenBattery = data[2];
    int conclusionExhibition = data[3];
    if (!provisions) return data + conclusionExhibition;
    for (int i = conclusionExhibition; i < conclusionExhibition + meteHeater; i++) {
        int value = data[i] - greenBattery;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[conclusionExhibition + meteHeater] = 0;
    return data + conclusionExhibition;
}

NSString *StringFromSassData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SassDataToCache(data)];
}
