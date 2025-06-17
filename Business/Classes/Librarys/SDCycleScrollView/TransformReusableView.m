
#import <Foundation/Foundation.h>

NSString *StringFromWithCousinData(Byte *data);


//: bg-gradient
Byte kStr_beefMartValue[] = {18, 11, 6, 181, 120, 167, 116, 110, 101, 105, 100, 97, 114, 103, 45, 103, 98, 180};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TransformReusableView.m
//  PhaseAngleView
//
//  Created by aier on 15-3-22.
//  Copyright (c) 2015年 GSD. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SDCollectionViewCell.h"
#import "TransformReusableView.h"
//: #import "UIView+SDExtension.h"
#import "UIView+With.h"

/*
 
 *********************************************************************************
 *
 * 🌟🌟🌟 新建SDCycleScrollView交流QQ群：185534916 🌟🌟🌟
 *
 * 在您使用此自动轮播库的过程中如果出现bug请及时以以下任意一种方式联系我们，我们会及时修复bug并
 * 帮您解决问题。
 * 新浪微博:GSD_iOS
 * Email : gsdios@126.com
 * GitHub: https://github.com/gsdios
 *
 * 另（我的自动布局库SDAutoLayout）：
 *  一行代码搞定自动布局！支持Cell和Tableview高度自适应，Label和ScrollView内容自适应，致力于
 *  做最简单易用的AutoLayout库。
 * 视频教程：http://www.letv.com/ptv/vplay/24038772.html
 * 用法示例：https://github.com/gsdios/SDAutoLayout/blob/master/README.md
 * GitHub：https://github.com/gsdios/SDAutoLayout
 *********************************************************************************
 
 */





//: @interface SDCollectionViewCell ()
@interface TransformReusableView ()

//: @property (nonatomic, strong) UIImageView *gradientImageView;
@property (nonatomic, strong) UIImageView *gradientImageView;

//: @end
@end

//: @implementation SDCollectionViewCell
@implementation TransformReusableView
{
    //: __weak UILabel *_titleLabel;
    __weak UILabel *_titleLabel;
}


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self setupImageView];
        [self index];
        //: [self setupTitleLabel];
        [self nameLabel];
    }

    //: return self;
    return self;
}

//: - (void)setTitleLabelBackgroundColor:(UIColor *)titleLabelBackgroundColor
- (void)setTitleLabelBackgroundColor:(UIColor *)titleLabelBackgroundColor
{
    //: _titleLabelBackgroundColor = titleLabelBackgroundColor;
    _titleLabelBackgroundColor = titleLabelBackgroundColor;
    //: _titleLabel.backgroundColor = titleLabelBackgroundColor;
    _titleLabel.backgroundColor = titleLabelBackgroundColor;
}

//: - (void)setTitleLabelTextColor:(UIColor *)titleLabelTextColor
- (void)setTitleLabelTextColor:(UIColor *)titleLabelTextColor
{
    //: _titleLabelTextColor = titleLabelTextColor;
    _titleLabelTextColor = titleLabelTextColor;
    //: _titleLabel.textColor = titleLabelTextColor;
    _titleLabel.textColor = titleLabelTextColor;
}

//: - (void)setTitleLabelTextFont:(UIFont *)titleLabelTextFont
- (void)setTitleLabelTextFont:(UIFont *)titleLabelTextFont
{
    //: _titleLabelTextFont = titleLabelTextFont;
    _titleLabelTextFont = titleLabelTextFont;
    //: _titleLabel.font = titleLabelTextFont;
    _titleLabel.font = titleLabelTextFont;
}

//: - (void)setupImageView
- (void)index
{
    //: UIImageView *imageView = [[UIImageView alloc] init];
    UIImageView *imageView = [[UIImageView alloc] init];
    //: _imageView = imageView;
    _imageView = imageView;
    //: [self.contentView addSubview:imageView];
    [self.contentView addSubview:imageView];


    //: self.gradientImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg-gradient"]];
    self.gradientImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromWithCousinData(kStr_beefMartValue)]];
    //: self.gradientImageView.hidden = YES;
    self.gradientImageView.hidden = YES;
    //: [self.contentView addSubview:self.gradientImageView];
    [self.contentView addSubview:self.gradientImageView];

}

//: - (void)setShowGradient:(BOOL)showGradient
- (void)setShowGradient:(BOOL)showGradient
{
    //: _showGradient = showGradient;
    _showGradient = showGradient;
    //: self.gradientImageView.hidden = !showGradient;
    self.gradientImageView.hidden = !showGradient;
}

//: - (void)setupTitleLabel
- (void)nameLabel
{
    //: UILabel *titleLabel = [[UILabel alloc] init];
    UILabel *titleLabel = [[UILabel alloc] init];
    //: _titleLabel = titleLabel;
    _titleLabel = titleLabel;
    //: _titleLabel.hidden = YES;
    _titleLabel.hidden = YES;
    //: [self.contentView addSubview:titleLabel];
    [self.contentView addSubview:titleLabel];
}

//: - (void)setTitle:(NSString *)title
- (void)setTitle:(NSString *)title
{
    //: _title = [title copy];
    _title = [title copy];
    //: _titleLabel.text = [NSString stringWithFormat:@"   %@", title];
    _titleLabel.text = [NSString stringWithFormat:@"   %@", title];
}


//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: _imageView.frame = self.bounds;
    _imageView.frame = self.bounds;

    //: CGFloat titleLabelW = self.sd_width;
    CGFloat titleLabelW = self.sd_width;
    //: CGFloat titleLabelH = _titleLabelHeight;
    CGFloat titleLabelH = _titleLabelHeight;
    //: CGFloat titleLabelX = 0;
    CGFloat titleLabelX = 0;
    //: CGFloat titleLabelY = self.sd_height - titleLabelH;
    CGFloat titleLabelY = self.sd_height - titleLabelH;
    //: _titleLabel.frame = CGRectMake(titleLabelX, titleLabelY, titleLabelW, titleLabelH);
    _titleLabel.frame = CGRectMake(titleLabelX, titleLabelY, titleLabelW, titleLabelH);
    //: _titleLabel.hidden = !_titleLabel.text;
    _titleLabel.hidden = !_titleLabel.text;

    //: self.gradientImageView.frame = CGRectMake(0, self.sd_height-90, self.sd_width, 90);
    self.gradientImageView.frame = CGRectMake(0, self.sd_height-90, self.sd_width, 90);
}

//: @end
@end

Byte * WithCousinDataToCache(Byte *data) {
    int distressing = data[0];
    int unveil = data[1];
    int withinMust = data[2];
    if (!distressing) return data + withinMust;
    for (int i = 0; i < unveil / 2; i++) {
        int begin = withinMust + i;
        int end = withinMust + unveil - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[withinMust + unveil] = 0;
    return data + withinMust;
}

NSString *StringFromWithCousinData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WithCousinDataToCache(data)];
}  
