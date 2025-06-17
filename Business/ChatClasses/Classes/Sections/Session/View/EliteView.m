// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMListCollectionCell.m
// Afterwards
//
//  Created by He on 2020/4/13.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFQuickCommentCell.h"
#import "EliteView.h"
//: #import "FFFKitQuickCommentUtil.h"
#import "ActionUtil.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+Afterwards.h"

//: @interface FFFQuickCommentCell ()
@interface EliteView ()

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) ShowTitleView *textLabel;
//: @property (nonatomic, strong) UIView *divider;
@property (nonatomic, strong) UIView *divider;

//: @end
@end

//: @implementation FFFQuickCommentCell
@implementation EliteView


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: _textLabel = [FFFKitQuickCommentUtil newCommentLabel];
        _textLabel = [ActionUtil valueDevice];
        //: [self.contentView addSubview:_textLabel];
        [self.contentView addSubview:_textLabel];
        //: self.layer.cornerRadius = 12.0;
        self.layer.cornerRadius = 12.0;
        //: self.backgroundColor = [UIColor colorWithWhite:0.7 alpha:0.3];
        self.backgroundColor = [UIColor colorWithWhite:0.7 alpha:0.3];

        //: _divider = [[UIView alloc] initWithFrame:CGRectZero];
        _divider = [[UIView alloc] initWithFrame:CGRectZero];
        //: _divider.backgroundColor = UIColor.lightGrayColor;
        _divider.backgroundColor = UIColor.lightGrayColor;
        //: [self.contentView addSubview:_divider];
        [self.contentView addSubview:_divider];

    }
    //: return self;
    return self;
}

//: - (void)refreshWithData:(NSArray *)comments model:(FFFMessageModel *)data
- (void)auditoryImageModel:(NSArray *)comments date:(StochasticProcessTeam *)data
{
    //: self.textLabel.textColor = data.shouldShowLeft ? [UIColor colorWithHex:0x000000 alpha:1] : [UIColor colorWithHex:0xFFFFFF alpha:1];
    self.textLabel.textColor = data.shouldShowLeft ? [UIColor colorful:0x000000 sizeContent:1] : [UIColor colorful:0xFFFFFF sizeContent:1];
    //: [self.textLabel nim_setText:[FFFKitQuickCommentUtil commentsContent:comments]];
    [self.textLabel time:[ActionUtil shadow:comments]];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.textLabel.nim_width = self.nim_width - NIMKitCommentUtilCellContentPadding * 2;
    self.textLabel.nim_width = self.nim_width - kLet_untilText * 2;
    //: self.textLabel.nim_height = self.textLabel.intrinsicContentSize.height;
    self.textLabel.nim_height = self.textLabel.intrinsicContentSize.height;
    //: self.textLabel.nim_centerY = self.nim_height * .5f;
    self.textLabel.nim_centerY = self.nim_height * .5f;
    //: self.textLabel.nim_left = NIMKitCommentUtilCellPadding;
    self.textLabel.nim_left = kLet_keyTitle;

    //: self.divider.nim_width = 0.5;
    self.divider.nim_width = 0.5;
    //: self.divider.nim_height = self.contentView.nim_height - 8;
    self.divider.nim_height = self.contentView.nim_height - 8;
    //: self.divider.nim_centerY = self.contentView.nim_height * 0.5;
    self.divider.nim_centerY = self.contentView.nim_height * 0.5;
    //: self.divider.nim_left = 22;
    self.divider.nim_left = 22;
}

//: @end
@end