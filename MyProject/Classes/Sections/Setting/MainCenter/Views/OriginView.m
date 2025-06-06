
#import <Foundation/Foundation.h>

NSString *StringFromPieceOfGroundData(Byte *data);        


//: message_send_album
Byte kStr_materFileName[] = {61, 18, 85, 5, 74, 24, 16, 30, 30, 12, 18, 16, 10, 30, 16, 25, 15, 10, 12, 23, 13, 32, 24, 27};


//: ic_camera
Byte kStr_tapLinkData[] = {9, 9, 51, 9, 29, 226, 37, 202, 186, 54, 48, 44, 48, 46, 58, 50, 63, 46, 189};


//: #000000
Byte kStr_approximateVideoTractionData[] = {32, 7, 41, 12, 59, 135, 222, 9, 179, 42, 150, 126, 250, 7, 7, 7, 7, 7, 7, 94};


//: #F7D2F3
Byte kStr_conclusionTitle[] = {59, 7, 80, 9, 207, 207, 138, 29, 247, 211, 246, 231, 244, 226, 246, 227, 211};


//: #ffffff
Byte kStr_dependingName[] = {51, 7, 28, 4, 7, 74, 74, 74, 74, 74, 74, 34};


//: #5D5F66
Byte kStr_speakData[] = {77, 7, 34, 9, 162, 200, 120, 145, 29, 1, 19, 34, 19, 36, 20, 20, 228};


//: ic_album
Byte kStr_partStopData[] = {83, 8, 16, 6, 143, 143, 89, 83, 79, 81, 92, 82, 101, 93, 1};


//: #CCECFC
Byte kStr_infoDisplayValue[] = {56, 7, 26, 11, 148, 124, 116, 46, 60, 94, 104, 9, 41, 41, 43, 41, 44, 41, 240};


//: message_send_camera
Byte kStr_cellTitleName[] = {9, 19, 73, 12, 2, 223, 193, 185, 235, 221, 163, 50, 36, 28, 42, 42, 24, 30, 28, 22, 42, 28, 37, 27, 22, 26, 24, 36, 28, 41, 24, 191};


//: contact_tag_fragment_cancel
Byte kStr_fedSpendContent[] = {17, 27, 90, 7, 155, 38, 230, 9, 21, 20, 26, 7, 9, 26, 5, 26, 7, 13, 5, 12, 24, 7, 13, 19, 11, 20, 26, 5, 9, 7, 20, 9, 11, 18, 206};

// __DEBUG__
// __CLOSE_PRINT__
//
//  OriginView.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSSetAvater.h"
#import "OriginView.h"

//: @interface NSSetAvater ()
@interface OriginView ()

//: @property (nonatomic, strong) UIView *viewBg;
@property (nonatomic, strong) UIView *viewBg;
//: @property (nonatomic,strong) UIButton *cancelBtn;
@property (nonatomic,strong) UIButton *cancelBtn;
//: @property (nonatomic,strong) UIButton *cameraBtn;
@property (nonatomic,strong) UIButton *cameraBtn;
//: @property (nonatomic,strong) UIButton *albumBtn;
@property (nonatomic,strong) UIButton *albumBtn;

//: @end
@end

//: @implementation NSSetAvater
@implementation OriginView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(randomShow)];
        //: [self addGestureRecognizer:singleTapclose];
        [self addGestureRecognizer:singleTapclose];

        //: [self initUI];
        [self initIndex];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initIndex{

    //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    //: _viewBg.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    _viewBg.backgroundColor = [UIColor isView:StringFromPieceOfGroundData(kStr_dependingName)];
    //: _viewBg.layer.masksToBounds = YES;
    _viewBg.layer.masksToBounds = YES;
    //: _viewBg.layer.cornerRadius = 40;
    _viewBg.layer.cornerRadius = 40;
    //: _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; 
    _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; // 左上圆角 // 右上圆角
    //: [self addSubview:_viewBg];
    [self addSubview:_viewBg];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;

    //: [_viewBg addSubview:self.cameraBtn];
    [_viewBg addSubview:self.cameraBtn];
    //: self.cameraBtn.frame = CGRectMake(30, 30, width, 110);
    self.cameraBtn.frame = CGRectMake(30, 30, width, 110);

    //: [_viewBg addSubview:self.albumBtn];
    [_viewBg addSubview:self.albumBtn];
    //: self.albumBtn.frame = CGRectMake(width+60, 30, width, 110);
    self.albumBtn.frame = CGRectMake(width+60, 30, width, 110);

    //: [_viewBg addSubview:self.cancelBtn];
    [_viewBg addSubview:self.cancelBtn];
    //: self.cancelBtn.frame = CGRectMake(30, self.albumBtn.bottom+24, [[UIScreen mainScreen] bounds].size.width-60, 44);
    self.cancelBtn.frame = CGRectMake(30, self.albumBtn.bottom+24, [[UIScreen mainScreen] bounds].size.width-60, 44);
}

//: -(CGFloat)calculateWidthWithFont:(NSInteger)Font Text:(NSString *)text{
-(CGFloat)image:(NSInteger)Font sectionName:(NSString *)text{
    //: NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    //: CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
    CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
                                     //: options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                     options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                  //: attributes:attr
                                  attributes:attr
                                     //: context:nil];
                                     context:nil];
    //: return rect.size.width;
    return rect.size.width;
}

//: - (void)clickTheBtn:(UIButton *)sender
- (void)bordersing:(UIButton *)sender
{
    //: [self animationClose];
    [self randomShow];
    //: if ([self.delegate respondsToSelector:@selector(didTouchTheBtnWith:)]) {
    if ([self.delegate respondsToSelector:@selector(need:)]) {
        //: [self.delegate didTouchTheBtnWith:sender.tag];
        [self.delegate need:sender.tag];
    }

}

//: - (UIButton *)cameraBtn {
- (UIButton *)cameraBtn {
    //: if (!_cameraBtn) {
    if (!_cameraBtn) {
        //: _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
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

        //: _cameraBtn.tag = 101;
        _cameraBtn.tag = 101;
        //: _cameraBtn.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        _cameraBtn.backgroundColor = [UIColor isView:StringFromPieceOfGroundData(kStr_conclusionTitle)];
        //: _cameraBtn.layer.cornerRadius = 12;
        _cameraBtn.layer.cornerRadius = 12;
        //: [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_cameraBtn addTarget:self action:@selector(bordersing:) forControlEvents:UIControlEventTouchUpInside];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_camera"];
        img.image = [UIImage imageNamed:StringFromPieceOfGroundData(kStr_tapLinkData)];
        //: [_cameraBtn addSubview:img];
        [_cameraBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor isView:StringFromPieceOfGroundData(kStr_approximateVideoTractionData)];
        //: lab.text = [FFFLanguageManager getTextWithKey:@"message_send_camera"];
        lab.text = [TeamManager sizeKey:StringFromPieceOfGroundData(kStr_cellTitleName)];
        //: lab.textAlignment = NSTextAlignmentCenter;
        lab.textAlignment = NSTextAlignmentCenter;
        //: [_cameraBtn addSubview:lab];
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
    //: return _cameraBtn;
    return _cameraBtn;
}

//: - (UIButton *)albumBtn {
- (UIButton *)albumBtn {
    //: if (!_albumBtn) {
    if (!_albumBtn) {
        //: _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _albumBtn.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
        _albumBtn.backgroundColor = [UIColor isView:StringFromPieceOfGroundData(kStr_infoDisplayValue)];
        //: _albumBtn.layer.cornerRadius = 12;
        _albumBtn.layer.cornerRadius = 12;
        //: [_albumBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_albumBtn addTarget:self action:@selector(bordersing:) forControlEvents:UIControlEventTouchUpInside];
        //: _albumBtn.tag = 102;
        _albumBtn.tag = 102;
        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_album"];
        img.image = [UIImage imageNamed:StringFromPieceOfGroundData(kStr_partStopData)];
        //: [_albumBtn addSubview:img];
        [_albumBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor isView:StringFromPieceOfGroundData(kStr_approximateVideoTractionData)];
        //: lab.text = [FFFLanguageManager getTextWithKey:@"message_send_album"];
        lab.text = [TeamManager sizeKey:StringFromPieceOfGroundData(kStr_materFileName)];
        //: lab.textAlignment = NSTextAlignmentCenter;
        lab.textAlignment = NSTextAlignmentCenter;
        //: [_albumBtn addSubview:lab];
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
    //: return _albumBtn;
    return _albumBtn;
}

//: - (UIButton *)cancelBtn {
- (UIButton *)cancelBtn {
    //: if (!_cancelBtn) {
    if (!_cancelBtn) {
        //: _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_cancelBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_cancelBtn addTarget:self action:@selector(randomShow) forControlEvents:UIControlEventTouchUpInside];
        //: _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_cancelBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_cancelBtn setTitleColor:[UIColor isView:StringFromPieceOfGroundData(kStr_speakData)] forState:UIControlStateNormal];
        //: [_cancelBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_cancelBtn setTitle:[TeamManager sizeKey:StringFromPieceOfGroundData(kStr_fedSpendContent)] forState:UIControlStateNormal];
        //: _cancelBtn.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        _cancelBtn.backgroundColor = [UIColor isView:StringFromPieceOfGroundData(kStr_dependingName)];
        //: _cancelBtn.layer.cornerRadius = 22;
        _cancelBtn.layer.cornerRadius = 22;
        //: _cancelBtn.layer.masksToBounds = YES;
        _cancelBtn.layer.masksToBounds = YES;
        //: _cancelBtn.layer.borderWidth = 1;
        _cancelBtn.layer.borderWidth = 1;
        //: _cancelBtn.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
        _cancelBtn.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    }
    //: return _cancelBtn;
    return _cancelBtn;
}

//: - (void)animationClose
- (void)randomShow
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)tingBy
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end

Byte * PieceOfGroundDataToCache(Byte *data) {
    int compartment = data[0];
    int bubbleWhy = data[1];
    Byte climbMyLink = data[2];
    int textAlley = data[3];
    if (!compartment) return data + textAlley;
    for (int i = textAlley; i < textAlley + bubbleWhy; i++) {
        int value = data[i] + climbMyLink;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[textAlley + bubbleWhy] = 0;
    return data + textAlley;
}

NSString *StringFromPieceOfGroundData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PieceOfGroundDataToCache(data)];
}
