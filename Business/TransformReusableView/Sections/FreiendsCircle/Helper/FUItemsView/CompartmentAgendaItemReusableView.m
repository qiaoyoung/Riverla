// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentAgendaItemReusableView.m
//  FUCommonUIComponent
//
//  Created by 项林平 on 2022/6/24.
//

// __M_A_C_R_O__
//: #import "FUItemCell.h"
#import "CompartmentAgendaItemReusableView.h"

//: @interface FUItemCell ()
@interface CompartmentAgendaItemReusableView ()

//: @property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImageView *imageView;

//: @property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
@property (nonatomic, strong) UIActivityIndicatorView *indicatorView;

//: @end
@end

//: @implementation FUItemCell
@implementation CompartmentAgendaItemReusableView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self.contentView addSubview:self.imageView];
        [self.contentView addSubview:self.imageView];
        //: NSLayoutConstraint *imageLeading = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
        NSLayoutConstraint *imageLeading = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
        //: NSLayoutConstraint *imageTrailing = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
        NSLayoutConstraint *imageTrailing = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
        //: NSLayoutConstraint *imageTop = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
        NSLayoutConstraint *imageTop = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
        //: NSLayoutConstraint *imageBottom = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
        NSLayoutConstraint *imageBottom = [NSLayoutConstraint constraintWithItem:self.imageView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
        //: [self.contentView addConstraints:@[imageLeading, imageTrailing, imageTop, imageBottom]];
        [self.contentView addConstraints:@[imageLeading, imageTrailing, imageTop, imageBottom]];

        //: [self.contentView addSubview:self.indicatorView];
        [self.contentView addSubview:self.indicatorView];
        //: NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:self.indicatorView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
        NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:self.indicatorView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
        //: NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:self.indicatorView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
        NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:self.indicatorView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
        //: [self.contentView addConstraints:@[centerXConstraint, centerYConstraint]];
        [self.contentView addConstraints:@[centerXConstraint, centerYConstraint]];

    }
    //: return self;
    return self;
}

//: #pragma mark - Setters
#pragma mark - Setters

//: - (void)setSelected:(BOOL)selected {
- (void)setSelected:(BOOL)selected {
    //: [super setSelected:selected];
    [super setSelected:selected];
    //: self.imageView.layer.borderWidth = selected ? 3.f : 0;
    self.imageView.layer.borderWidth = selected ? 3.f : 0;
    //: self.imageView.layer.borderColor = selected ? [UIColor colorWithRed:94/255.0 green:199/255.0 blue:254/255.0 alpha:1.0].CGColor : [UIColor clearColor].CGColor;
    self.imageView.layer.borderColor = selected ? [UIColor colorWithRed:94/255.0 green:199/255.0 blue:254/255.0 alpha:1.0].CGColor : [UIColor clearColor].CGColor;
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (UIImageView *)imageView {
- (UIImageView *)imageView {
    //: if (!_imageView) {
    if (!_imageView) {
        //: _imageView = [[UIImageView alloc] init];
        _imageView = [[UIImageView alloc] init];
        //: _imageView.translatesAutoresizingMaskIntoConstraints = NO;
        _imageView.translatesAutoresizingMaskIntoConstraints = NO;
        //: _imageView.layer.masksToBounds = YES;
        _imageView.layer.masksToBounds = YES;
        //: _imageView.layer.cornerRadius = 30.f;
        _imageView.layer.cornerRadius = 30.f;
    }
    //: return _imageView;
    return _imageView;
}

//: - (UIActivityIndicatorView *)indicatorView {
- (UIActivityIndicatorView *)indicatorView {
    //: if (!_indicatorView) {
    if (!_indicatorView) {
        //: _indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        _indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        //: _indicatorView.hidden = YES;
        _indicatorView.hidden = YES;
        //: _indicatorView.translatesAutoresizingMaskIntoConstraints = NO;
        _indicatorView.translatesAutoresizingMaskIntoConstraints = NO;
    }
    //: return _indicatorView;
    return _indicatorView;
}

//: @end
@end