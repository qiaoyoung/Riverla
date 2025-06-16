//
//  DeleteAccountTipView.m
//  Neeyo
//
//  Created by mac on 2025/5/16.
//  Copyright © 2025 Neeyo. All rights reserved.
//

#import "DeleteAccountTipView.h"

@interface DeleteAccountTipView ()

@property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *contentBox;

@end

@implementation DeleteAccountTipView

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
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, (SCREEN_HEIGHT-250)/2, SCREEN_WIDTH-30, 250)];
    _box.backgroundColor = [UIColor whiteColor];
    _box.layer.cornerRadius = 12;
    [self addSubview:_box];
    
    [_box addSubview:self.titleLabel];
    self.titleLabel.frame = CGRectMake(0, 20, SCREEN_WIDTH-30, 20);
    

    [_box addSubview:self.contentBox];
    self.contentBox.frame = CGRectMake(20, self.titleLabel.bottom+10, SCREEN_WIDTH-70, 160);
    

    CGFloat width = (SCREEN_WIDTH-90)/2;
    CGFloat height = 40;
    
    [_box addSubview:self.closeBtn];
    self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);
    
    [_box addSubview:self.sureBtn];
    self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
}



- (void)handleSubmit
{
    [self animationClose];
    if ([self.delegate respondsToSelector:@selector(didTouchDeleteSureButton)]) {
        [self.delegate didTouchDeleteSureButton];
    }
 
}

#pragma mark -- Setter && Getter
- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.textColor = kTextColor_2c3042;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.text = LangKey(@"activity_comment_setting_cancel_account");
    }
    return _titleLabel;
}

- (UIView *)contentBox
{
    if(!_contentBox){
        _contentBox = [[UIView alloc]init];
        
        CGFloat width = (SCREEN_WIDTH-30-40);
        
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        labtitle1.font = [UIFont systemFontOfSize:14.f];
        labtitle1.textColor = TextColor_4;
        labtitle1.text = LangKey(@"account_delete_tip1");
        labtitle1.numberOfLines = 0;
        [_contentBox addSubview:labtitle1];
        [labtitle1 sizeToFit];
        
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom+10, width, 70)];
        labsubtitle1.font = [UIFont systemFontOfSize:14.f];
        labsubtitle1.textColor = TextColor_4;
        labsubtitle1.text = LangKey(@"account_delete_tip2");
        labsubtitle1.numberOfLines = 0;
        [_contentBox addSubview:labsubtitle1];
        [labsubtitle1 sizeToFit];
        
    }
    return _contentBox;
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
