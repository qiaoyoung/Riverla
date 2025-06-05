//
//  ZMONAlartView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

#import "ZMONAlartView.h"


@interface ZMONAlartView ()

@property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UIView *box;

@end

@implementation ZMONAlartView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        
        [self initUI];
        
    }
    return self;
}


- (void)initUI{
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, (SCREEN_HEIGHT-156)/2, SCREEN_WIDTH-40, 156)];
    _box.backgroundColor = [UIColor whiteColor];
    _box.layer.cornerRadius = 12;
    [self addSubview:_box];

    UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH-40, 20)];
    tip.font = [UIFont boldSystemFontOfSize:18.f];
    tip.textColor = [UIColor blackColor];
    tip.textAlignment = NSTextAlignmentCenter;
    tip.text = LangKey(@"warm_prompt");
    [_box addSubview:tip];
    
    [_box addSubview:self.titleLabel];
    self.titleLabel.frame = CGRectMake(20, tip.bottom+10, SCREEN_WIDTH-80, 40);

    
    CGFloat width = (SCREEN_WIDTH-100)/2;
    CGFloat height = 40;
    
    [_box addSubview:self.sureBtn];
    [_box addSubview:self.closeBtn];
    self.closeBtn.frame = CGRectMake(20, 156-height-10, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 156-height-10, width, height);

    
}

- (void)reloadWithTitlename:(NSString *)name
{
    self.titleLabel.text = name;
}

- (void)handleSubmit{
    
    [self endEditing:YES];
    self.speiceBackBlock(@"");

}

#pragma mark -- Setter && Getter
- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:12.f];
        _titleLabel.textColor = RGB_COLOR_String(@"999999");
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLabel;
}

- (UIButton *)closeBtn {
    if (!_closeBtn) {
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        [_closeBtn setTitleColor:TextColor_2 forState:UIControlStateNormal];
        [_closeBtn setTitle:LangKey(@"contact_tag_fragment_cancel") forState:UIControlStateNormal];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.cornerRadius = 20;
    }
    return _closeBtn;
}

- (UIButton *)sureBtn {
    if (!_sureBtn) {
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitle:LangKey(@"contact_tag_fragment_sure") forState:UIControlStateNormal];
        _sureBtn.backgroundColor = RGB_COLOR_String(@"#FF483D");
        _sureBtn.layer.cornerRadius = 20;
        
    }
    return _sureBtn;
}

- (void)animationClose
{
    self.hidden = YES;
}

- (void)animationShow
{
    self.hidden = NO;
    
}


@end
