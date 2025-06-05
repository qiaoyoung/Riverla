//
//  FFFTeamMemberListCell.m
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "FFFTeamMemberListCell.h"
#import "UIViewNimKit.h"
#import "FFFAvatarImageView.h"
#import "FFFKitUtil.h"
#import "MyUserKit.h"
#import "UIImage+MyUserKit.h"
#import "FFFTeamHelper.h"
#import "FFFCardDataSourceProtocol.h"

NSString *const kTeamMember = @"kTeamMember";
NSString *const kTeamMemberInfo = @"kTeamMemberInfo";

@interface NIMTeamMemberView : UIView{

}

@property(nonatomic,strong) FFFAvatarImageView *imageView;

@property (nonatomic,strong) UIImageView *roleImageView;

@property(nonatomic,strong) UILabel *titleLabel;

@property(nonatomic,strong) NSDictionary *member;

@end

#define RegularTeamMemberViewHeight 53
#define RegularTeamMemberViewWidth  38
@implementation NIMTeamMemberView
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.font = [UIFont systemFontOfSize:12.f];
        [self addSubview:_titleLabel];
        _imageView   = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 37, 37)];
        [self addSubview:_imageView];
        _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        [self addSubview:_roleImageView];
    }
    return self;
}

- (void)setMember:(NSDictionary *)member{
    _member = member;
    FFFKitInfo *info = member[kTeamMemberInfo];
    id<FFFKitCardHeaderData>user = member[kTeamMember];
    NSURL *avatarURL;
    if (info.avatarUrlString.length) {
        avatarURL = [NSURL URLWithString:info.avatarUrlString];
    }
    [_imageView nim_setImageWithURL:avatarURL placeholderImage:info.avatarImage];
    
    NSString *showName = (info.showName ?: @"");
    if ([user isMyUserId]) {
        showName = LangKey(@"Group_Me");//@"我".;
    }
    _titleLabel.text = showName;
    _roleImageView.image = [FFFTeamHelper imageWithMemberType:user.userType];
}


- (CGSize)sizeThatFits:(CGSize)size{
    return CGSizeMake(RegularTeamMemberViewWidth, RegularTeamMemberViewHeight);
}


#define RegularTeamMemberInvite
- (void)layoutSubviews{
    [super layoutSubviews];
    [self.titleLabel sizeToFit];
    self.titleLabel.nim_width = _titleLabel.nim_width > self.nim_width ? self.nim_width : _titleLabel.nim_width;
    self.imageView.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_bottom = self.nim_height;
    self.roleImageView.nim_size = CGSizeMake(16, 16);
    self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    self.roleImageView.nim_right  = self.imageView.nim_right;
}
@end

const CGFloat kFFFTeamMemberListCellItemWidth = 49.f;
const CGFloat kFFFTeamMemberListCellItemPadding = 44.f;

@interface FFFTeamMemberListCell()

@property(nonatomic,strong) NSMutableArray *icons;

@property(nonatomic, strong) UIButton *addBtn;

@end

@implementation FFFTeamMemberListCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _icons = [[NSMutableArray alloc] init];
        _addBtn = [[UIButton alloc]initWithFrame:CGRectZero];
        [_addBtn addTarget:self action:@selector(onPress:) forControlEvents:UIControlEventTouchUpInside];
        _addBtn.userInteractionEnabled = NO;
        [self.contentView addSubview:_addBtn];
    }
    return self;
}

- (NSInteger)maxShowMemberCount {
    CGFloat width = (self.nim_width != NEEKIT_UIScreenWidth) ? NEEKIT_UIScreenWidth : self.nim_width;
    NSInteger maxShowCount = (width - kFFFTeamMemberListCellItemPadding) / kFFFTeamMemberListCellItemWidth;
    return maxShowCount;
}

- (void)setInfos:(NSMutableArray<NSDictionary *> *)infos {
    NSInteger count = 0;
    
    //invite button
    if (!_disableInvite) {
        NIMTeamMemberView *view = [self fetchMemeberView:0];
        UIImage *addImage = [UIImage imageNamed:@"icon_add_normal"];
        [view.imageView setImage:addImage];
        view.roleImageView.image = nil;
        view.titleLabel.text = @"邀请".nim_localized;
        count = 1;
    }
    self.addBtn.userInteractionEnabled = (count != 0);
    
    //icons
    for (UIView *view in _icons) {
        [view removeFromSuperview];
    }
    
    NSInteger maxShowCount = self.maxShowMemberCount;
    NSInteger iconCount = infos.count > maxShowCount-count ? maxShowCount : infos.count+count;
    for (NSInteger i = 0; i < iconCount; i++) {
        NIMTeamMemberView *view = [self fetchMemeberView:i];
        if (!count || i != 0) {
            NSInteger memberIndex = i - count;
            view.member = infos[memberIndex];
        }
        [self.contentView addSubview:view];
        [view setNeedsLayout];
    }
    [self bringSubviewToFront:self.addBtn];
}

- (void)onPress:(id)sender{
    if ([self.delegate respondsToSelector:@selector(didSelectAddOpeartor)]) {
        [self.delegate didSelectAddOpeartor];
    }
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    CGRect hitRect = self.addBtn.frame;
    return CGRectContainsPoint(hitRect, point) ? self.addBtn : [super hitTest:point withEvent:event];
}


- (void)layoutSubviews{
    [super layoutSubviews];
    _addBtn.frame = CGRectMake(0, 0, self.nim_width *.20f, self.nim_height);
    CGFloat left = 20.f;
    CGFloat top  = 17.f;
    self.textLabel.nim_left = left;
    self.textLabel.nim_top  = top;
    self.detailTextLabel.nim_top = top;
    self.accessoryView.nim_top = top;
    
    CGFloat spacing = 12.f;
    CGFloat bottom  = 10.f;
    for (NIMTeamMemberView *view in _icons) {
        view.nim_left = left;
        left += view.nim_width;
        left += spacing;
        view.nim_bottom = self.nim_height - bottom;
    }
}


#pragma mark - Private

- (NIMTeamMemberView *)fetchMemeberView:(NSInteger)index{
    if (_icons.count <= index) {
        for (int i = 0; i < index - _icons.count + 1 ; i++) {
            NIMTeamMemberView *view = [[NIMTeamMemberView alloc]initWithFrame:CGRectZero];
            view.userInteractionEnabled = NO;
            [view sizeToFit];
            [_icons addObject:view];
        }
    }
    return _icons[index];
}


@end
