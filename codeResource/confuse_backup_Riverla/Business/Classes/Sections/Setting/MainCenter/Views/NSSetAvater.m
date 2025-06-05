//
//  NSSetAvater.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

#import "NSSetAvater.h"


@interface NSSetAvater ()

@property (nonatomic, strong) UIView *viewBg;
@property (nonatomic,strong) UIButton *cancelBtn;
@property (nonatomic,strong) UIButton *cameraBtn;
@property (nonatomic,strong) UIButton *albumBtn;

@end

@implementation NSSetAvater

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
    
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT-278, SCREEN_WIDTH, 278)];
    _viewBg.backgroundColor = RGB_COLOR_String(@"#ffffff");
    _viewBg.layer.masksToBounds = YES;
    _viewBg.layer.cornerRadius = 40;
    _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; // 左上圆角 // 右上圆角
    [self addSubview:_viewBg];
    
    CGFloat width = (SCREEN_WIDTH-90)/2;
    
    [_viewBg addSubview:self.cameraBtn];
    self.cameraBtn.frame = CGRectMake(30, 30, width, 110);
 
    [_viewBg addSubview:self.albumBtn];
    self.albumBtn.frame = CGRectMake(width+60, 30, width, 110);
    
    [_viewBg addSubview:self.cancelBtn];
    self.cancelBtn.frame = CGRectMake(30, self.albumBtn.bottom+24, SCREEN_WIDTH-60, 44);
}

-(CGFloat)calculateWidthWithFont:(NSInteger)Font Text:(NSString *)text{
    NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    CGRect rect = [text boundingRectWithSize:CGSizeMake(MAXFLOAT, Font + 2)
                                     options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attr
                                     context:nil];
    return rect.size.width;
}

- (void)clickTheBtn:(UIButton *)sender
{
    [self animationClose];
    if ([self.delegate respondsToSelector:@selector(didTouchTheBtnWith:)]) {
        [self.delegate didTouchTheBtnWith:sender.tag];
    }
    
}

- (UIButton *)cameraBtn {
    if (!_cameraBtn) {
        _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
//        _cameraBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_cameraBtn setTitleColor:TextColor_2 forState:UIControlStateNormal];
//        [_cameraBtn setTitle:LangKey(@"message_send_camera") forState:UIControlStateNormal];
//        _cameraBtn.tag = 101;
//        [_cameraBtn setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
////        [_cameraBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:0];
//        _cameraBtn.backgroundColor = RGB_COLOR_String(@"#F4F1EC");
//        _cameraBtn.layer.cornerRadius = 20;
//        _cameraBtn.layer.masksToBounds = YES;

        _cameraBtn.tag = 101;
        _cameraBtn.backgroundColor = RGB_COLOR_String(@"#F7D2F3");
        _cameraBtn.layer.cornerRadius = 12;
        [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        CGFloat width = (SCREEN_WIDTH-90)/2;
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        img.image = [UIImage imageNamed:@"ic_camera"];
        [_cameraBtn addSubview:img];
        
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        lab.font = [UIFont systemFontOfSize:14];
        lab.textColor = RGB_COLOR_String(@"#000000");
        lab.text = LangKey(@"message_send_camera");
        lab.textAlignment = NSTextAlignmentCenter;
        [_cameraBtn addSubview:lab];
//        _cameraBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_cameraBtn setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
//        [_cameraBtn setTitle:@"Camera" forState:UIControlStateNormal];
//        [_cameraBtn setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
//        [_cameraBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
//        _cameraBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [_cameraBtn setTitleEdgeInsets:UIEdgeInsetsMake(36, -36, 0, 0)];
//        [_cameraBtn setImageEdgeInsets:UIEdgeInsetsMake(-20, 0, 0, -[self calculateWidthWithFont:14 Text:LangKey(@"message_send_album")])];
    }
    return _cameraBtn;
}

- (UIButton *)albumBtn {
    if (!_albumBtn) {
        _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _albumBtn.backgroundColor = RGB_COLOR_String(@"#CCECFC");
        _albumBtn.layer.cornerRadius = 12;
        [_albumBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        _albumBtn.tag = 102;
        CGFloat width = (SCREEN_WIDTH-90)/2;
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        img.image = [UIImage imageNamed:@"ic_album"];
        [_albumBtn addSubview:img];
       
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        lab.font = [UIFont systemFontOfSize:14];
        lab.textColor = RGB_COLOR_String(@"#000000");
        lab.text = LangKey(@"message_send_album");
        lab.textAlignment = NSTextAlignmentCenter;
        [_albumBtn addSubview:lab];
        
//        _albumBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_albumBtn setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
//        [_albumBtn setTitle:LangKey(@"message_send_album") forState:UIControlStateNormal];
//        [_albumBtn setImage:[UIImage imageNamed:@"ic_album"] forState:UIControlStateNormal];
////        [_albumBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
//        _albumBtn.tag = 102;
//        _albumBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [_albumBtn setTitleEdgeInsets:UIEdgeInsetsMake(36, -36, 0, 0)];
//        [_albumBtn setImageEdgeInsets:UIEdgeInsetsMake(-24, 0, 0, -[self calculateWidthWithFont:14 Text:LangKey(@"message_send_album")])];
    }
    return _albumBtn;
}

- (UIButton *)cancelBtn {
    if (!_cancelBtn) {
        _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_cancelBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        [_cancelBtn setTitleColor:TextColor_2 forState:UIControlStateNormal];
        [_cancelBtn setTitle:LangKey(@"contact_tag_fragment_cancel") forState:UIControlStateNormal];
        _cancelBtn.backgroundColor = RGB_COLOR_String(@"#ffffff");
        _cancelBtn.layer.cornerRadius = 22;
        _cancelBtn.layer.masksToBounds = YES;
        _cancelBtn.layer.borderWidth = 1;
        _cancelBtn.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    }
    return _cancelBtn;
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
