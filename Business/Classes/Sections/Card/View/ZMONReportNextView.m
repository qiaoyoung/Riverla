//
//  ZMONReportNextView.m
//  Neeyo
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Neeyo. All rights reserved.
//

#import "ZMONReportNextView.h"


@interface ZMONReportNextView ()

@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIView *buttonBox;
@property (nonatomic,strong) UIView *blockView;
@property (nonatomic,strong) UIView *deleteView;

@property (nonatomic,strong) UIButton *btnBlock;
@property (nonatomic,strong) UIButton *btnDelete;

@property (nonatomic,strong) NSString *type;

@end

@implementation ZMONReportNextView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.type = @"1";
        [self initUI];
        
    }
    return self;
}


- (void)initUI{
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, (SCREEN_HEIGHT-304)/2, SCREEN_WIDTH-40, 304)];
    _box.backgroundColor = [UIColor whiteColor];
    _box.layer.cornerRadius = 24;
    [self addSubview:_box];
 
    
    [_box addSubview:self.titleLabel];
    self.titleLabel.frame = CGRectMake(20, 20, SCREEN_WIDTH-80, 20);
    
//    UIButton *cloBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    cloBtn.frame = CGRectMake(SCREEN_WIDTH-50-32, 10, 32, 32);
//    [cloBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
//    [cloBtn setImage:[UIImage imageNamed:@"report_close"] forState:UIControlStateNormal];
//    [_box addSubview:cloBtn];
    
//    //What other steps do you want to take
//    UILabel *labLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, SCREEN_WIDTH-80, 20)];
//    labLabel.font = [UIFont boldSystemFontOfSize:14.f];
//    labLabel.textColor = TextColor_4;
//    labLabel.text = LangKey(@"report_next_select");
//    [_box addSubview:labLabel];
    
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, SCREEN_WIDTH-80, 20)];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.textColor = TextColor_2;
    labsubLabel.numberOfLines = 0;
    labsubLabel.text = LangKey(@"report_next_select");
    [_box addSubview:labsubLabel];
    
    [_box addSubview:self.blockView];
    self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, SCREEN_WIDTH-80, 56);
    
    [_box addSubview:self.deleteView];
    self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, SCREEN_WIDTH-80, 56);
    
    CGFloat width = (SCREEN_WIDTH-100)/2;
    CGFloat height = 40;
    
    [_box addSubview:self.closeBtn];
    self.closeBtn.frame = CGRectMake(20, 304-20-height, width, height);
    
    [_box addSubview:self.sureBtn];
    self.sureBtn.frame = CGRectMake(width+40, 304-20-height, width, height);
}


//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self animationClose];
//}

#pragma mark -- Setter && Getter
- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.textColor = [UIColor blackColor];
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 0;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
//        _titleLabel.text = LangKey(@"report_User");
        _titleLabel.text = LangKey(@"report_Content");
        
    }
    return _titleLabel;
}
- (UIView *)blockView
{
    if (!_blockView) {
        _blockView = [[UIView alloc]init];
        _blockView.backgroundColor = RGB_COLOR_String(@"#FAF8FD");
        _blockView.layer.cornerRadius = 28;
        
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        img.image = [UIImage imageNamed:@"ic_distrub"];
        [_blockView addSubview:img];
        
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, SCREEN_WIDTH-80-80, 32)];
        lab.textColor = TextColor_2;
        lab.font = [UIFont systemFontOfSize:14];
        lab.text = LangKey(@"activity_group_chat_avatar_add_black");
        [_blockView addSubview:lab];
        
        _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnBlock.frame = CGRectMake(SCREEN_WIDTH-80-40, 16, 24, 24);
        [_btnBlock addTarget:self action:@selector(handleBlock:) forControlEvents:UIControlEventTouchUpInside];
        [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_blockView addSubview:_btnBlock];
        _btnBlock.selected = YES;
    }
    return _blockView;
}

- (UIView *)deleteView
{
    if (!_deleteView) {
        _deleteView = [[UIView alloc]init];
        _deleteView.backgroundColor = RGB_COLOR_String(@"#FAF8FD");
        _deleteView.layer.cornerRadius = 28;
        
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        img.image = [UIImage imageNamed:@"ic_delete"];
        [_deleteView addSubview:img];
        
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, SCREEN_WIDTH-80-80, 32)];
        lab.textColor = TextColor_2;
        lab.font = [UIFont systemFontOfSize:14];
        lab.text = LangKey(@"user_profile_avtivity_remove_friend");
        [_deleteView addSubview:lab];
        
        _btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnDelete.frame = CGRectMake(SCREEN_WIDTH-80-40, 16, 24, 24);
        [_btnDelete addTarget:self action:@selector(handleDeletes:) forControlEvents:UIControlEventTouchUpInside];
        [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_deleteView addSubview:_btnDelete];
    }
    return _deleteView;
}

- (void)handleBlock:(UIButton *)sender{
    self.type = @"1";
    _btnBlock.selected = YES;
    _btnDelete.selected = NO;
}
- (void)handleDeletes:(UIButton *)sender{
    self.type = @"2";
//    sender.selected = !sender.selected;
    _btnBlock.selected = NO;
    _btnDelete.selected = YES;
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
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
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
        _sureBtn.backgroundColor = ThemeColor;
        _sureBtn.layer.cornerRadius = 20;
//        _sureBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:154/255.0 blue:220/255.0 alpha:1].CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;
        
    }
    return _sureBtn;
}

- (void)handleBlack
{
    [self animationClose];
    if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
        [self.delegate didTouchBlackButton];
    }
}

- (void)handleDelete
{
    [self animationClose];
    if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
        [self.delegate didTouchDeleteButton];
    }
    
}

- (void)handleSubmit
{
    [self animationClose];
    if (self.type.intValue == 1) {
        if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
            [self.delegate didTouchBlackButton];
        }
    }else{
        if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
            [self.delegate didTouchDeleteButton];
        }
    }
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

