
#import <Foundation/Foundation.h>

NSString *StringFromHappilyRemoteData(Byte *data);        


//: ic_camera
Byte kStr_remoteHandleName[] = {16, 9, 37, 14, 193, 9, 26, 231, 154, 96, 81, 160, 19, 5, 68, 62, 58, 62, 60, 72, 64, 77, 60, 83};


//: #5D5F66
Byte kStr_angelForgeData[] = {16, 7, 50, 10, 197, 201, 255, 250, 241, 86, 241, 3, 18, 3, 20, 4, 4, 90};


//: message_send_album
Byte kStr_viewCaptureValue[] = {7, 18, 98, 7, 231, 181, 62, 11, 3, 17, 17, 255, 5, 3, 253, 17, 3, 12, 2, 253, 255, 10, 0, 19, 11, 133};


//: contact_tag_fragment_cancel
Byte kStr_triggerCottaName[] = {42, 27, 16, 7, 176, 208, 69, 83, 95, 94, 100, 81, 83, 100, 79, 100, 81, 87, 79, 86, 98, 81, 87, 93, 85, 94, 100, 79, 83, 81, 94, 83, 85, 92, 219};


//: #F7D2F3
Byte kStr_friendshipData[] = {27, 7, 4, 10, 214, 14, 31, 209, 248, 134, 31, 66, 51, 64, 46, 66, 47, 245};


//: ic_album
Byte kStr_buyerContent[] = {5, 8, 64, 9, 77, 248, 226, 67, 209, 41, 35, 31, 33, 44, 34, 53, 45, 110};


//: #000000
Byte kStr_enableFilmValue[] = {50, 7, 68, 6, 114, 54, 223, 236, 236, 236, 236, 236, 236, 149};


//: #CCECFC
Byte kStr_deputyValue[] = {62, 7, 42, 10, 223, 254, 175, 149, 200, 6, 249, 25, 25, 27, 25, 28, 25, 173};


//: message_send_camera
Byte kStr_valeTitle[] = {83, 19, 86, 9, 107, 136, 171, 234, 130, 23, 15, 29, 29, 11, 17, 15, 9, 29, 15, 24, 14, 9, 13, 11, 23, 15, 28, 11, 112};


//: #ffffff
Byte kStr_beatContent[] = {97, 7, 51, 5, 158, 240, 51, 51, 51, 51, 51, 51, 185};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithRangeView.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSSetAvater.h"
#import "WithRangeView.h"

//: @interface NSSetAvater ()
@interface WithRangeView ()

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
@implementation WithRangeView

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
        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(textLanguage)];
        //: [self addGestureRecognizer:singleTapclose];
        [self addGestureRecognizer:singleTapclose];

        //: [self initUI];
        [self initAddRead];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initAddRead{

    //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    //: _viewBg.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    _viewBg.backgroundColor = [UIColor withMax:StringFromHappilyRemoteData(kStr_beatContent)];
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
-(CGFloat)tool:(NSInteger)Font sound:(NSString *)text{
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
- (void)barnburnerred:(UIButton *)sender
{
    //: [self animationClose];
    [self textLanguage];
    //: if ([self.delegate respondsToSelector:@selector(didTouchTheBtnWith:)]) {
    if ([self.delegate respondsToSelector:@selector(images:)]) {
        //: [self.delegate didTouchTheBtnWith:sender.tag];
        [self.delegate images:sender.tag];
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
        _cameraBtn.backgroundColor = [UIColor withMax:StringFromHappilyRemoteData(kStr_friendshipData)];
        //: _cameraBtn.layer.cornerRadius = 12;
        _cameraBtn.layer.cornerRadius = 12;
        //: [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_cameraBtn addTarget:self action:@selector(barnburnerred:) forControlEvents:UIControlEventTouchUpInside];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_camera"];
        img.image = [UIImage imageNamed:StringFromHappilyRemoteData(kStr_remoteHandleName)];
        //: [_cameraBtn addSubview:img];
        [_cameraBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor withMax:StringFromHappilyRemoteData(kStr_enableFilmValue)];
        //: lab.text = [FFFLanguageManager getTextWithKey:@"message_send_camera"];
        lab.text = [ItemManager sessionInformation:StringFromHappilyRemoteData(kStr_valeTitle)];
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
        _albumBtn.backgroundColor = [UIColor withMax:StringFromHappilyRemoteData(kStr_deputyValue)];
        //: _albumBtn.layer.cornerRadius = 12;
        _albumBtn.layer.cornerRadius = 12;
        //: [_albumBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_albumBtn addTarget:self action:@selector(barnburnerred:) forControlEvents:UIControlEventTouchUpInside];
        //: _albumBtn.tag = 102;
        _albumBtn.tag = 102;
        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_album"];
        img.image = [UIImage imageNamed:StringFromHappilyRemoteData(kStr_buyerContent)];
        //: [_albumBtn addSubview:img];
        [_albumBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor withMax:StringFromHappilyRemoteData(kStr_enableFilmValue)];
        //: lab.text = [FFFLanguageManager getTextWithKey:@"message_send_album"];
        lab.text = [ItemManager sessionInformation:StringFromHappilyRemoteData(kStr_viewCaptureValue)];
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
        [_cancelBtn addTarget:self action:@selector(textLanguage) forControlEvents:UIControlEventTouchUpInside];
        //: _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_cancelBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_cancelBtn setTitleColor:[UIColor withMax:StringFromHappilyRemoteData(kStr_angelForgeData)] forState:UIControlStateNormal];
        //: [_cancelBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_cancelBtn setTitle:[ItemManager sessionInformation:StringFromHappilyRemoteData(kStr_triggerCottaName)] forState:UIControlStateNormal];
        //: _cancelBtn.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        _cancelBtn.backgroundColor = [UIColor withMax:StringFromHappilyRemoteData(kStr_beatContent)];
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
- (void)textLanguage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)line
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end

Byte * HappilyRemoteDataToCache(Byte *data) {
    int gun = data[0];
    int prisoner = data[1];
    Byte quantityervalProminent = data[2];
    int spectralColourMessage = data[3];
    if (!gun) return data + spectralColourMessage;
    for (int i = spectralColourMessage; i < spectralColourMessage + prisoner; i++) {
        int value = data[i] + quantityervalProminent;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[spectralColourMessage + prisoner] = 0;
    return data + spectralColourMessage;
}

NSString *StringFromHappilyRemoteData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HappilyRemoteDataToCache(data)];
}
