//
//  NSSetSexView.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

#import "NSSetSexView.h"

@interface NSSetSexView ()

@property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UILabel *titleLabel;

@property (nonatomic,strong) UIButton *BtnUnknow;
@property (nonatomic,strong) UILabel *labUnknow;
@property (nonatomic,strong) UIImageView *ImgUnknow;

@property (nonatomic,strong) UIButton *BtnMan;
@property (nonatomic,strong) UILabel *labMan;
@property (nonatomic,strong) UIImageView *ImgMan;

@property (nonatomic,strong) UIButton *BtnWoman;
@property (nonatomic,strong) UILabel *labWoman;
@property (nonatomic,strong) UIImageView *ImgWoman;

@property (nonatomic,assign) NSInteger selectedGender;

@end

@implementation NSSetSexView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
        [self addGestureRecognizer:singleTapclose];
        
        [self initUI];
        
    }
    return self;
}


- (void)initUI{
    
    CGFloat totalwidth = 295;
    _box = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-totalwidth)/2, (SCREEN_HEIGHT-250)/2, totalwidth, 250)];
    _box.backgroundColor = RGB_COLOR_String(@"#ffffff");
    _box.layer.cornerRadius = 20;
    [self addSubview:_box];

    [_box addSubview:self.titleLabel];
    self.titleLabel.frame = CGRectMake(20, 20, totalwidth-40, 20);
    
    CGFloat widthview = 64;
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, 60, widthview, widthview+30)];
    [_box addSubview:view1];
    _BtnUnknow = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnUnknow.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnUnknow.tag = 0;
    [_BtnUnknow addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnUnknow setImage:[UIImage imageNamed:@"sex_unknow"] forState:UIControlStateNormal];
    _BtnUnknow.layer.cornerRadius = widthview/2;
    _BtnUnknow.layer.masksToBounds = YES;
    _BtnUnknow.layer.borderColor = ThemeColor.CGColor;
    _BtnUnknow.layer.borderWidth = 1;
    [view1 addSubview:_BtnUnknow];
    
    _ImgUnknow = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgUnknow.image = [UIImage imageNamed:@"ic_btn_accept"];
    [view1 addSubview:_ImgUnknow];
    
    _labUnknow = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labUnknow.font = [UIFont systemFontOfSize:14.f];
    _labUnknow.textColor = ThemeColor;
    _labUnknow.textAlignment = NSTextAlignmentCenter;
    _labUnknow.text = LangKey(@"friend_info_activity_xu");
    [view1 addSubview:_labUnknow];
    
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20+widthview+24, 60, widthview, widthview+30)];
    [_box addSubview:view2];
    _BtnMan = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnMan.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnMan.tag = 1;
    [_BtnMan addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnMan setImage:[UIImage imageNamed:@"sex_man"] forState:UIControlStateNormal];
    _BtnMan.layer.cornerRadius = widthview/2;
    _BtnMan.layer.masksToBounds = YES;
    _BtnMan.layer.borderColor = ThemeColor.CGColor;
//    _BtnMan.layer.borderWidth = 1;
    [view2 addSubview:_BtnMan];
    
    _ImgMan = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgMan.image = [UIImage imageNamed:@"ic_btn_accept"];
    [view2 addSubview:_ImgMan];
    _ImgMan.hidden = YES;
    
    _labMan = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labMan.font = [UIFont systemFontOfSize:14.f];
    _labMan.textColor = [UIColor blackColor];
    _labMan.textAlignment = NSTextAlignmentCenter;
    _labMan.text = LangKey(@"friend_info_activity_nan");
    [view2 addSubview:_labMan];
    
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20+2*widthview+2*24, 60, widthview, widthview+30)];
    [_box addSubview:view3];
    _BtnWoman = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnWoman.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnWoman.tag = 2;
    [_BtnWoman addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnWoman setImage:[UIImage imageNamed:@"sex_woman"] forState:UIControlStateNormal];
    _BtnWoman.layer.cornerRadius = widthview/2;
    _BtnWoman.layer.masksToBounds = YES;
    _BtnWoman.layer.borderColor = ThemeColor.CGColor;
    [view3 addSubview:_BtnWoman];
    
    _ImgWoman = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgWoman.image = [UIImage imageNamed:@"ic_btn_accept"];
    [view3 addSubview:_ImgWoman];
    _ImgWoman.hidden = YES;
    
    _labWoman = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labWoman.font = [UIFont systemFontOfSize:14.f];
    _labWoman.textColor = [UIColor blackColor];
    _labWoman.textAlignment = NSTextAlignmentCenter;
    _labWoman.text = LangKey(@"friend_info_activity_nv");
    [view3 addSubview:_labWoman];
    
    
    CGFloat width = (totalwidth-60)/2;
    CGFloat height = 44;
    
    [_box addSubview:self.closeBtn];
    self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);
    
    [_box addSubview:self.sureBtn];
    self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
}

- (void)reloadWithGender:(NSInteger)gender
{
    if(gender == 0){
        [self clickTheSex:_BtnUnknow];
    }else if (gender == 1){
        [self clickTheSex:_BtnMan];
    }else if (gender == 2){
        [self clickTheSex:_BtnWoman];
    }
}

- (void)clickTheSex:(UIButton *)sender
{
    self.selectedGender = sender.tag;
    
    if(sender == _BtnUnknow){
//        _BtnUnknow.layer.borderColor = ThemeColor.CGColor;
        _BtnUnknow.layer.borderWidth = 1;
        _ImgUnknow.hidden = NO;
        _labUnknow.textColor = ThemeColor;
//        _BtnMan.layer.borderColor = TextColor_0.CGColor;
        _BtnMan.layer.borderWidth = 0;
        _ImgMan.hidden = YES;
        _labMan.textColor = TextColor_0;
//        _BtnWoman.layer.borderColor = TextColor_0.CGColor;
        _BtnWoman.layer.borderWidth = 0;
        _ImgWoman.hidden = YES;
        _labWoman.textColor = TextColor_0;
    }else if (sender == _BtnMan){
//        _BtnUnknow.layer.borderColor = TextColor_0.CGColor;
        _BtnUnknow.layer.borderWidth = 0;
        _ImgUnknow.hidden = YES;
        _labUnknow.textColor = TextColor_0;
//        _BtnMan.layer.borderColor = ThemeColor.CGColor;
        _BtnMan.layer.borderWidth = 1;
        _ImgMan.hidden = NO;
        _labMan.textColor = ThemeColor;
//        _BtnWoman.layer.borderColor = TextColor_0.CGColor;
        _BtnWoman.layer.borderWidth = 0;
        _ImgWoman.hidden = YES;
        _labWoman.textColor = TextColor_0;
    }else if (sender == _BtnWoman){
//        _BtnUnknow.layer.borderColor = TextColor_0.CGColor;
        _BtnUnknow.layer.borderWidth = 0;
        _ImgUnknow.hidden = YES;
        _labUnknow.textColor = TextColor_0;
//        _BtnMan.layer.borderColor = TextColor_0.CGColor;
        _BtnMan.layer.borderWidth = 0;
        _ImgMan.hidden = YES;
        _labMan.textColor = TextColor_0;
//        _BtnWoman.layer.borderColor = ThemeColor.CGColor;
        _BtnWoman.layer.borderWidth = 1;
        _ImgWoman.hidden = NO;
        _labWoman.textColor = ThemeColor;
    }
}

- (void)clickTheSave
{
    self.speiceBackBlock(self.selectedGender);
}

#pragma mark -- Setter && Getter
- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.textColor = TextColor_0;
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.text = LangKey(@"activity_friend_info_sex");
    }
    return _titleLabel;
}


- (UIButton *)closeBtn {
    if (!_closeBtn) {
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        [_closeBtn setTitleColor:RGB_COLOR_String(@"#5D5F66") forState:UIControlStateNormal];
        [_closeBtn setTitle:LangKey(@"contact_tag_fragment_cancel") forState:UIControlStateNormal];
        _closeBtn.backgroundColor = RGB_COLOR_String(@"#ffffff");
        _closeBtn.layer.cornerRadius = 22;
        _closeBtn.layer.masksToBounds = YES;
    }
    return _closeBtn;
}

- (UIButton *)sureBtn {
    if (!_sureBtn) {
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_sureBtn addTarget:self action:@selector(clickTheSave) forControlEvents:UIControlEventTouchUpInside];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        [_sureBtn setTitleColor:RGB_COLOR_String(@"#ffffff") forState:UIControlStateNormal];
        [_sureBtn setTitle:LangKey(@"user_info_avtivity_keep") forState:UIControlStateNormal];
        CGFloat width = (295-60)/2;
        _sureBtn.backgroundColor = ThemeColor;
        _sureBtn.layer.cornerRadius = 22;
        _sureBtn.layer.masksToBounds = YES;
        
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
