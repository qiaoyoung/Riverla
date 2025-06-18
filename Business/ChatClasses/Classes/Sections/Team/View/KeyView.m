
#import <Foundation/Foundation.h>

NSString *StringFromEvolutionaryData(Byte *data);        


//: icon_add_normal
Byte kStr_missileHeroValue[] = {80, 15, 8, 9, 44, 65, 120, 92, 197, 97, 91, 103, 102, 87, 89, 92, 92, 87, 102, 103, 106, 101, 89, 100, 203};


//: Group_Me
Byte kStr_cocaineRationName[] = {6, 8, 31, 6, 40, 135, 40, 83, 80, 86, 81, 64, 46, 70, 224};

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyView.m
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamMemberListCell.h"
#import "KeyView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFAvatarImageView.h"
#import "StatusWithControl.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "FFFTeamHelper.h"
#import "RandomHelper.h"
//: #import "UserCardDataSourceProtocol.h"
#import "UserCardDataSourceProtocol.h"

//: NSString *const kTeamMember = @"kTeamMember";
NSString *const kLet_keyName = @"kTeamMember";
//: NSString *const kTeamMemberInfo = @"kTeamMemberInfo";
NSString *const kLet_bottomContent = @"kTeamMemberInfo";

//: @interface NIMTeamMemberView : UIView{
@interface DetailWithView : UIView{

}

//: @property(nonatomic,strong) FFFAvatarImageView *imageView;
@property(nonatomic,strong) StatusWithControl *imageView;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property(nonatomic,strong) UILabel *titleLabel;
@property(nonatomic,strong) UILabel *titleLabel;

//: @property(nonatomic,strong) NSDictionary *member;
@property(nonatomic,strong) NSDictionary *member;

//: @end
@end



//: @implementation NIMTeamMemberView
@implementation DetailWithView
//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.font = [UIFont systemFontOfSize:12.f];
        _titleLabel.font = [UIFont systemFontOfSize:12.f];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: _imageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 37, 37)];
        _imageView = [[StatusWithControl alloc] initWithFrame:CGRectMake(0, 0, 37, 37)];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_roleImageView];
        [self addSubview:_roleImageView];
    }
    //: return self;
    return self;
}

//: - (void)setMember:(NSDictionary *)member{
- (void)setMember:(NSDictionary *)member{
    //: _member = member;
    _member = member;
    //: FFFKitInfo *info = member[kTeamMemberInfo];
    MarginThanInfo *info = member[kLet_bottomContent];
    //: id<FFFKitCardHeaderData>user = member[kTeamMember];
    id<FFFKitCardHeaderData>user = member[kLet_keyName];
    //: NSURL *avatarURL;
    NSURL *avatarURL;
    //: if (info.avatarUrlString.length) {
    if (info.avatarUrlString.length) {
        //: avatarURL = [NSURL URLWithString:info.avatarUrlString];
        avatarURL = [NSURL URLWithString:info.avatarUrlString];
    }
    //: [_imageView nim_setImageWithURL:avatarURL placeholderImage:info.avatarImage];
    [_imageView date:avatarURL enableImage:info.avatarImage];

    //: NSString *showName = (info.showName ?: @"");
    NSString *showName = (info.showName ?: @"");
    //: if ([user isMyUserId]) {
    if ([user isMyUserId]) {
        //: showName = [FFFLanguageManager getTextWithKey:@"Group_Me"];
        showName = [ItemManager sessionInformation:StringFromEvolutionaryData(kStr_cocaineRationName)];//@"我".;
    }
    //: _titleLabel.text = showName;
    _titleLabel.text = showName;
    //: _roleImageView.image = [FFFTeamHelper imageWithMemberType:user.userType];
    _roleImageView.image = [RandomHelper title:user.userType];
}


//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: return CGSizeMake(38, 53);
    return CGSizeMake(38, 53);
}



//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
    //: self.titleLabel.nim_width = _titleLabel.nim_width > self.nim_width ? self.nim_width : _titleLabel.nim_width;
    self.titleLabel.nim_width = _titleLabel.nim_width > self.nim_width ? self.nim_width : _titleLabel.nim_width;
    //: self.imageView.nim_centerX = self.nim_width * .5f;
    self.imageView.nim_centerX = self.nim_width * .5f;
    //: self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    //: self.titleLabel.nim_bottom = self.nim_height;
    self.titleLabel.nim_bottom = self.nim_height;
    //: self.roleImageView.nim_size = CGSizeMake(16, 16);
    self.roleImageView.nim_size = CGSizeMake(16, 16);
    //: self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    //: self.roleImageView.nim_right = self.imageView.nim_right;
    self.roleImageView.nim_right = self.imageView.nim_right;
}
//: @end
@end

//: const CGFloat kFFFTeamMemberListCellItemWidth = 49.f;
const CGFloat kLet_nameData = 49.f;
//: const CGFloat kFFFTeamMemberListCellItemPadding = 44.f;
const CGFloat kLet_kitFrameData = 44.f;

//: @interface FFFTeamMemberListCell()
@interface KeyView()

//: @property(nonatomic,strong) NSMutableArray *icons;
@property(nonatomic,strong) NSMutableArray *icons;

//: @property(nonatomic, strong) UIButton *addBtn;
@property(nonatomic, strong) UIButton *addBtn;

//: @end
@end

//: @implementation FFFTeamMemberListCell
@implementation KeyView
//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _icons = [[NSMutableArray alloc] init];
        _icons = [[NSMutableArray alloc] init];
        //: _addBtn = [[UIButton alloc]initWithFrame:CGRectZero];
        _addBtn = [[UIButton alloc]initWithFrame:CGRectZero];
        //: [_addBtn addTarget:self action:@selector(onPress:) forControlEvents:UIControlEventTouchUpInside];
        [_addBtn addTarget:self action:@selector(heads:) forControlEvents:UIControlEventTouchUpInside];
        //: _addBtn.userInteractionEnabled = NO;
        _addBtn.userInteractionEnabled = NO;
        //: [self.contentView addSubview:_addBtn];
        [self.contentView addSubview:_addBtn];
    }
    //: return self;
    return self;
}

//: - (NSInteger)maxShowMemberCount {
- (NSInteger)maxShowMemberCount {
    //: CGFloat width = (self.nim_width != [UIScreen mainScreen].bounds.size.width) ? [UIScreen mainScreen].bounds.size.width : self.nim_width;
    CGFloat width = (self.nim_width != [UIScreen mainScreen].bounds.size.width) ? [UIScreen mainScreen].bounds.size.width : self.nim_width;
    //: NSInteger maxShowCount = (width - kFFFTeamMemberListCellItemPadding) / kFFFTeamMemberListCellItemWidth;
    NSInteger maxShowCount = (width - kLet_kitFrameData) / kLet_nameData;
    //: return maxShowCount;
    return maxShowCount;
}

//: - (void)setInfos:(NSMutableArray<NSDictionary *> *)infos {
- (void)setInfos:(NSMutableArray<NSDictionary *> *)infos {
    //: NSInteger count = 0;
    NSInteger count = 0;

    //invite button
    //: if (!_disableInvite) {
    if (!_disableInvite) {
        //: NIMTeamMemberView *view = [self fetchMemeberView:0];
        DetailWithView *view = [self title:0];
        //: UIImage *addImage = [UIImage imageNamed:@"icon_add_normal"];
        UIImage *addImage = [UIImage imageNamed:StringFromEvolutionaryData(kStr_missileHeroValue)];
        //: [view.imageView setImage:addImage];
        [view.imageView setImage:addImage];
        //: view.roleImageView.image = nil;
        view.roleImageView.image = nil;
        //: view.titleLabel.text = @"邀请".nim_localized;
        view.titleLabel.text = @"邀请".textKey;
        //: count = 1;
        count = 1;
    }
    //: self.addBtn.userInteractionEnabled = (count != 0);
    self.addBtn.userInteractionEnabled = (count != 0);

    //icons
    //: for (UIView *view in _icons) {
    for (UIView *view in _icons) {
        //: [view removeFromSuperview];
        [view removeFromSuperview];
    }

    //: NSInteger maxShowCount = self.maxShowMemberCount;
    NSInteger maxShowCount = self.maxShowMemberCount;
    //: NSInteger iconCount = infos.count > maxShowCount-count ? maxShowCount : infos.count+count;
    NSInteger iconCount = infos.count > maxShowCount-count ? maxShowCount : infos.count+count;
    //: for (NSInteger i = 0; i < iconCount; i++) {
    for (NSInteger i = 0; i < iconCount; i++) {
        //: NIMTeamMemberView *view = [self fetchMemeberView:i];
        DetailWithView *view = [self title:i];
        //: if (!count || i != 0) {
        if (!count || i != 0) {
            //: NSInteger memberIndex = i - count;
            NSInteger memberIndex = i - count;
            //: view.member = infos[memberIndex];
            view.member = infos[memberIndex];
        }
        //: [self.contentView addSubview:view];
        [self.contentView addSubview:view];
        //: [view setNeedsLayout];
        [view setNeedsLayout];
    }
    //: [self bringSubviewToFront:self.addBtn];
    [self bringSubviewToFront:self.addBtn];
}

//: - (void)onPress:(id)sender{
- (void)heads:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(didSelectAddOpeartor)]) {
    if ([self.delegate respondsToSelector:@selector(progressUser)]) {
        //: [self.delegate didSelectAddOpeartor];
        [self.delegate progressUser];
    }
}

//: - (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //: CGRect hitRect = self.addBtn.frame;
    CGRect hitRect = self.addBtn.frame;
    //: return CGRectContainsPoint(hitRect, point) ? self.addBtn : [super hitTest:point withEvent:event];
    return CGRectContainsPoint(hitRect, point) ? self.addBtn : [super hitTest:point withEvent:event];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _addBtn.frame = CGRectMake(0, 0, self.nim_width *.20f, self.nim_height);
    _addBtn.frame = CGRectMake(0, 0, self.nim_width *.20f, self.nim_height);
    //: CGFloat left = 20.f;
    CGFloat left = 20.f;
    //: CGFloat top = 17.f;
    CGFloat top = 17.f;
    //: self.textLabel.nim_left = left;
    self.textLabel.nim_left = left;
    //: self.textLabel.nim_top = top;
    self.textLabel.nim_top = top;
    //: self.detailTextLabel.nim_top = top;
    self.detailTextLabel.nim_top = top;
    //: self.accessoryView.nim_top = top;
    self.accessoryView.nim_top = top;

    //: CGFloat spacing = 12.f;
    CGFloat spacing = 12.f;
    //: CGFloat bottom = 10.f;
    CGFloat bottom = 10.f;
    //: for (NIMTeamMemberView *view in _icons) {
    for (DetailWithView *view in _icons) {
        //: view.nim_left = left;
        view.nim_left = left;
        //: left += view.nim_width;
        left += view.nim_width;
        //: left += spacing;
        left += spacing;
        //: view.nim_bottom = self.nim_height - bottom;
        view.nim_bottom = self.nim_height - bottom;
    }
}


//: #pragma mark - Private
#pragma mark - Private

//: - (NIMTeamMemberView *)fetchMemeberView:(NSInteger)index{
- (DetailWithView *)title:(NSInteger)index{
    //: if (_icons.count <= index) {
    if (_icons.count <= index) {
        //: for (int i = 0; i < index - _icons.count + 1 ; i++) {
        for (int i = 0; i < index - _icons.count + 1 ; i++) {
            //: NIMTeamMemberView *view = [[NIMTeamMemberView alloc]initWithFrame:CGRectZero];
            DetailWithView *view = [[DetailWithView alloc]initWithFrame:CGRectZero];
            //: view.userInteractionEnabled = NO;
            view.userInteractionEnabled = NO;
            //: [view sizeToFit];
            [view sizeToFit];
            //: [_icons addObject:view];
            [_icons addObject:view];
        }
    }
    //: return _icons[index];
    return _icons[index];
}


//: @end
@end

Byte * EvolutionaryDataToCache(Byte *data) {
    int humanity = data[0];
    int nimMessage = data[1];
    Byte todayShowStack = data[2];
    int atomicSum2 = data[3];
    if (!humanity) return data + atomicSum2;
    for (int i = atomicSum2; i < atomicSum2 + nimMessage; i++) {
        int value = data[i] + todayShowStack;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[atomicSum2 + nimMessage] = 0;
    return data + atomicSum2;
}

NSString *StringFromEvolutionaryData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)EvolutionaryDataToCache(data)];
}
