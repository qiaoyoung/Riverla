// __DEBUG__
// __CLOSE_PRINT__
//
//  NoticeContactViewCell.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactUtilCell.h"
#import "NoticeContactViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "NTESBadgeView.h"
#import "LinkView.h"

//: @interface NTESContactUtilCell()
@interface NoticeContactViewCell()

//: @property (nonatomic,strong) NTESBadgeView *badgeView;
@property (nonatomic,strong) LinkView *badgeView;

//: @property (nonatomic,strong) id<NTESContactItem> data;
@property (nonatomic,strong) id<CornerTeam> data;

//: @end
@end

//: @implementation NTESContactUtilCell
@implementation NoticeContactViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _badgeView = [NTESBadgeView viewWithBadgeTip:@""];
        _badgeView = [LinkView with:@""];
        //: [self.contentView addSubview:_badgeView];
        [self.contentView addSubview:_badgeView];
    }
    //: return self;
    return self;
}

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item{
- (void)with:(id<CornerTeam>)item{
    //: self.data = item;
    self.data = item;
    //: self.textLabel.text = item.nick;
    self.textLabel.text = item.afterLoad;
    //: self.imageView.image = item.icon;
    self.imageView.image = item.segment;
    //: self.imageView.userInteractionEnabled = YES;
    self.imageView.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onPressUtilImage:)];
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(withsed:)];
    //: [self.imageView addGestureRecognizer: recognizer];
    [self.imageView addGestureRecognizer: recognizer];
    //: [self.textLabel sizeToFit];
    [self.textLabel sizeToFit];

    //: NSString *badge = [item badge];
    NSString *badge = [item at];
    //: self.badgeView.hidden = badge.integerValue == 0;
    self.badgeView.hidden = badge.integerValue == 0;
    //: self.badgeView.badgeValue = badge;
    self.badgeView.badgeValue = badge;
}

//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated {
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    //: [super setSelected:selected animated:animated];
    [super setSelected:selected animated:animated];
}

//: - (void)onPressUtilImage:(id)sender{
- (void)withsed:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onPressUtilImage:)]) {
    if ([self.delegate respondsToSelector:@selector(withsed:)]) {
        //: [self.delegate onPressUtilImage:self.data.nick];
        [self.delegate withsed:self.data.afterLoad];
    }
}

//: - (void)addDelegate:(id)delegate{
- (void)gildTheLilyDelegate:(id)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.imageView.left = NTESContactAvatarLeft;
    self.imageView.left = let_taskData;
    //: self.imageView.centerY = self.height * .5f;
    self.imageView.centerY = self.height * .5f;
    //: self.badgeView.right = self.width - 50;
    self.badgeView.right = self.width - 50;
    //: self.badgeView.centerY = self.height * .5f;
    self.badgeView.centerY = self.height * .5f;
}


//: @end
@end