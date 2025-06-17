// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentTextView.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactUtilCell.h"
#import "CompartmentTextView.h"
//: #import "UIView+NTES.h"
#import "UIView+Closes.h"
//: #import "NTESBadgeView.h"
#import "ActivityView.h"

//: @interface NTESContactUtilCell()
@interface CompartmentTextView()

//: @property (nonatomic,strong) NTESBadgeView *badgeView;
@property (nonatomic,strong) ActivityView *badgeView;

//: @property (nonatomic,strong) id<NTESContactItem> data;
@property (nonatomic,strong) id<ImageItem> data;

//: @end
@end

//: @implementation NTESContactUtilCell
@implementation CompartmentTextView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _badgeView = [NTESBadgeView viewWithBadgeTip:@""];
        _badgeView = [ActivityView segmentTip:@""];
        //: [self.contentView addSubview:_badgeView];
        [self.contentView addSubview:_badgeView];
    }
    //: return self;
    return self;
}

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item{
- (void)contact:(id<ImageItem>)item{
    //: self.data = item;
    self.data = item;
    //: self.textLabel.text = item.nick;
    self.textLabel.text = item.reply;
    //: self.imageView.image = item.icon;
    self.imageView.image = item.viewIcon;
    //: self.imageView.userInteractionEnabled = YES;
    self.imageView.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onPressUtilImage:)];
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(craunched:)];
    //: [self.imageView addGestureRecognizer: recognizer];
    [self.imageView addGestureRecognizer: recognizer];
    //: [self.textLabel sizeToFit];
    [self.textLabel sizeToFit];

    //: NSString *badge = [item badge];
    NSString *badge = [item bottom];
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
- (void)craunched:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onPressUtilImage:)]) {
    if ([self.delegate respondsToSelector:@selector(craunched:)]) {
        //: [self.delegate onPressUtilImage:self.data.nick];
        [self.delegate craunched:self.data.reply];
    }
}

//: - (void)addDelegate:(id)delegate{
- (void)eigenvalue:(id)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.imageView.left = NTESContactAvatarLeft;
    self.imageView.left = kLet_strongData;
    //: self.imageView.centerY = self.height * .5f;
    self.imageView.centerY = self.height * .5f;
    //: self.badgeView.right = self.width - 50;
    self.badgeView.right = self.width - 50;
    //: self.badgeView.centerY = self.height * .5f;
    self.badgeView.centerY = self.height * .5f;
}


//: @end
@end