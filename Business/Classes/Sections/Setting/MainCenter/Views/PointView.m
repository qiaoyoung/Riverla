
#import <Foundation/Foundation.h>

NSString *StringFromTenseData(Byte *data);


//: #ffffff
Byte kStr_budgeValue[] = {34, 7, 27, 6, 65, 228, 62, 129, 129, 129, 129, 129, 129, 103};


//: ic_btn_accept
Byte kStr_hotelBackgroundValue[] = {91, 13, 19, 9, 18, 214, 176, 232, 45, 124, 118, 114, 117, 135, 129, 114, 116, 118, 118, 120, 131, 135, 212};


//: #B391FF
Byte kStr_herselfContent[] = {22, 7, 90, 7, 57, 128, 227, 125, 156, 141, 147, 139, 160, 160, 140};


//: contact_tag_fragment_cancel
Byte kStr_leadSolelyName[] = {7, 27, 50, 9, 169, 252, 54, 86, 49, 149, 161, 160, 166, 147, 149, 166, 145, 166, 147, 153, 145, 152, 164, 147, 153, 159, 151, 160, 166, 145, 149, 147, 160, 149, 151, 158, 88};


//: friend_info_activity_xu
Byte kStr_thoroughItEgoTitle[] = {34, 23, 6, 13, 207, 36, 213, 181, 122, 6, 90, 100, 44, 108, 120, 111, 107, 116, 106, 101, 111, 116, 108, 117, 101, 103, 105, 122, 111, 124, 111, 122, 127, 101, 126, 123, 133};


//: user_info_avtivity_keep
Byte kStr_poleData[] = {77, 23, 93, 9, 123, 57, 135, 69, 84, 210, 208, 194, 207, 188, 198, 203, 195, 204, 188, 190, 211, 209, 198, 211, 198, 209, 214, 188, 200, 194, 194, 205, 47};


//: friend_info_activity_nan
Byte kStr_imageSingeName[] = {62, 24, 2, 9, 26, 108, 40, 182, 117, 104, 116, 107, 103, 112, 102, 97, 107, 112, 104, 113, 97, 99, 101, 118, 107, 120, 107, 118, 123, 97, 112, 99, 112, 52};


//: friend_info_activity_nv
Byte kStr_tacticText[] = {5, 23, 26, 9, 200, 139, 226, 57, 226, 128, 140, 131, 127, 136, 126, 121, 131, 136, 128, 137, 121, 123, 125, 142, 131, 144, 131, 142, 147, 121, 136, 144, 13};


//: #000000
Byte kStr_yardChangeTingText[] = {30, 7, 16, 10, 80, 89, 96, 94, 196, 73, 51, 64, 64, 64, 64, 64, 64, 27};


//: sex_man
Byte kStr_perfectlyData[] = {16, 7, 46, 9, 121, 71, 226, 228, 176, 161, 147, 166, 141, 155, 143, 156, 225};


//: activity_friend_info_sex
Byte kStr_neverthelessName[] = {33, 24, 14, 7, 222, 144, 58, 111, 113, 130, 119, 132, 119, 130, 135, 109, 116, 128, 119, 115, 124, 114, 109, 119, 124, 116, 125, 109, 129, 115, 134, 38};


//: #5D5F66
Byte kStr_seventhContent[] = {94, 7, 88, 7, 61, 240, 157, 123, 141, 156, 141, 158, 142, 142, 78};


//: sex_unknow
Byte kStr_teacherName[] = {36, 10, 11, 7, 15, 16, 6, 126, 112, 131, 106, 128, 121, 118, 121, 122, 130, 52};


//: sex_woman
Byte kStr_surgeryValue[] = {9, 9, 83, 7, 19, 86, 80, 198, 184, 203, 178, 202, 194, 192, 180, 193, 219};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PointView.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSSetSexView.h"
#import "PointView.h"

//: @interface NSSetSexView ()
@interface PointView ()

//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *BtnUnknow;
@property (nonatomic,strong) UIButton *BtnUnknow;
//: @property (nonatomic,strong) UILabel *labUnknow;
@property (nonatomic,strong) UILabel *labUnknow;
//: @property (nonatomic,strong) UIImageView *ImgUnknow;
@property (nonatomic,strong) UIImageView *ImgUnknow;

//: @property (nonatomic,strong) UIButton *BtnMan;
@property (nonatomic,strong) UIButton *BtnMan;
//: @property (nonatomic,strong) UILabel *labMan;
@property (nonatomic,strong) UILabel *labMan;
//: @property (nonatomic,strong) UIImageView *ImgMan;
@property (nonatomic,strong) UIImageView *ImgMan;

//: @property (nonatomic,strong) UIButton *BtnWoman;
@property (nonatomic,strong) UIButton *BtnWoman;
//: @property (nonatomic,strong) UILabel *labWoman;
@property (nonatomic,strong) UILabel *labWoman;
//: @property (nonatomic,strong) UIImageView *ImgWoman;
@property (nonatomic,strong) UIImageView *ImgWoman;

//: @property (nonatomic,assign) NSInteger selectedGender;
@property (nonatomic,assign) NSInteger selectedGender;

//: @end
@end

//: @implementation NSSetSexView
@implementation PointView

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
        [self initGreen];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initGreen{

    //: CGFloat totalwidth = 295;
    CGFloat totalwidth = 295;
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-totalwidth)/2, ([[UIScreen mainScreen] bounds].size.height-250)/2, totalwidth, 250)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-totalwidth)/2, ([[UIScreen mainScreen] bounds].size.height-250)/2, totalwidth, 250)];
    //: _box.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    _box.backgroundColor = [UIColor withMax:StringFromTenseData(kStr_budgeValue)];
    //: _box.layer.cornerRadius = 20;
    _box.layer.cornerRadius = 20;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, totalwidth-40, 20);
    self.titleLabel.frame = CGRectMake(20, 20, totalwidth-40, 20);

    //: CGFloat widthview = 64;
    CGFloat widthview = 64;
    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, 60, widthview, widthview+30)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(20, 60, widthview, widthview+30)];
    //: [_box addSubview:view1];
    [_box addSubview:view1];
    //: _BtnUnknow = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnUnknow = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _BtnUnknow.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnUnknow.frame = CGRectMake(0, 0, widthview, widthview);
    //: _BtnUnknow.tag = 0;
    _BtnUnknow.tag = 0;
    //: [_BtnUnknow addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnUnknow addTarget:self action:@selector(searchedSex:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnUnknow setImage:[UIImage imageNamed:@"sex_unknow"] forState:UIControlStateNormal];
    [_BtnUnknow setImage:[UIImage imageNamed:StringFromTenseData(kStr_teacherName)] forState:UIControlStateNormal];
    //: _BtnUnknow.layer.cornerRadius = widthview/2;
    _BtnUnknow.layer.cornerRadius = widthview/2;
    //: _BtnUnknow.layer.masksToBounds = YES;
    _BtnUnknow.layer.masksToBounds = YES;
    //: _BtnUnknow.layer.borderColor = [UIColor colorWithHexString:@"#B391FF"].CGColor;
    _BtnUnknow.layer.borderColor = [UIColor withMax:StringFromTenseData(kStr_herselfContent)].CGColor;
    //: _BtnUnknow.layer.borderWidth = 1;
    _BtnUnknow.layer.borderWidth = 1;
    //: [view1 addSubview:_BtnUnknow];
    [view1 addSubview:_BtnUnknow];

    //: _ImgUnknow = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgUnknow = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgUnknow.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgUnknow.image = [UIImage imageNamed:StringFromTenseData(kStr_hotelBackgroundValue)];
    //: [view1 addSubview:_ImgUnknow];
    [view1 addSubview:_ImgUnknow];

    //: _labUnknow = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labUnknow = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    //: _labUnknow.font = [UIFont systemFontOfSize:14.f];
    _labUnknow.font = [UIFont systemFontOfSize:14.f];
    //: _labUnknow.textColor = [UIColor colorWithHexString:@"#B391FF"];
    _labUnknow.textColor = [UIColor withMax:StringFromTenseData(kStr_herselfContent)];
    //: _labUnknow.textAlignment = NSTextAlignmentCenter;
    _labUnknow.textAlignment = NSTextAlignmentCenter;
    //: _labUnknow.text = [FFFLanguageManager getTextWithKey:@"friend_info_activity_xu"];
    _labUnknow.text = [ItemManager sessionInformation:StringFromTenseData(kStr_thoroughItEgoTitle)];
    //: [view1 addSubview:_labUnknow];
    [view1 addSubview:_labUnknow];

    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20+widthview+24, 60, widthview, widthview+30)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(20+widthview+24, 60, widthview, widthview+30)];
    //: [_box addSubview:view2];
    [_box addSubview:view2];
    //: _BtnMan = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnMan = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _BtnMan.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnMan.frame = CGRectMake(0, 0, widthview, widthview);
    //: _BtnMan.tag = 1;
    _BtnMan.tag = 1;
    //: [_BtnMan addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnMan addTarget:self action:@selector(searchedSex:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnMan setImage:[UIImage imageNamed:@"sex_man"] forState:UIControlStateNormal];
    [_BtnMan setImage:[UIImage imageNamed:StringFromTenseData(kStr_perfectlyData)] forState:UIControlStateNormal];
    //: _BtnMan.layer.cornerRadius = widthview/2;
    _BtnMan.layer.cornerRadius = widthview/2;
    //: _BtnMan.layer.masksToBounds = YES;
    _BtnMan.layer.masksToBounds = YES;
    //: _BtnMan.layer.borderColor = [UIColor colorWithHexString:@"#B391FF"].CGColor;
    _BtnMan.layer.borderColor = [UIColor withMax:StringFromTenseData(kStr_herselfContent)].CGColor;
//    _BtnMan.layer.borderWidth = 1;
    //: [view2 addSubview:_BtnMan];
    [view2 addSubview:_BtnMan];

    //: _ImgMan = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgMan = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgMan.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgMan.image = [UIImage imageNamed:StringFromTenseData(kStr_hotelBackgroundValue)];
    //: [view2 addSubview:_ImgMan];
    [view2 addSubview:_ImgMan];
    //: _ImgMan.hidden = YES;
    _ImgMan.hidden = YES;

    //: _labMan = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labMan = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    //: _labMan.font = [UIFont systemFontOfSize:14.f];
    _labMan.font = [UIFont systemFontOfSize:14.f];
    //: _labMan.textColor = [UIColor blackColor];
    _labMan.textColor = [UIColor blackColor];
    //: _labMan.textAlignment = NSTextAlignmentCenter;
    _labMan.textAlignment = NSTextAlignmentCenter;
    //: _labMan.text = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nan"];
    _labMan.text = [ItemManager sessionInformation:StringFromTenseData(kStr_imageSingeName)];
    //: [view2 addSubview:_labMan];
    [view2 addSubview:_labMan];

    //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20+2*widthview+2*24, 60, widthview, widthview+30)];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(20+2*widthview+2*24, 60, widthview, widthview+30)];
    //: [_box addSubview:view3];
    [_box addSubview:view3];
    //: _BtnWoman = [UIButton buttonWithType:UIButtonTypeCustom];
    _BtnWoman = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _BtnWoman.frame = CGRectMake(0, 0, widthview, widthview);
    _BtnWoman.frame = CGRectMake(0, 0, widthview, widthview);
    //: _BtnWoman.tag = 2;
    _BtnWoman.tag = 2;
    //: [_BtnWoman addTarget:self action:@selector(clickTheSex:) forControlEvents:UIControlEventTouchUpInside];
    [_BtnWoman addTarget:self action:@selector(searchedSex:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnWoman setImage:[UIImage imageNamed:@"sex_woman"] forState:UIControlStateNormal];
    [_BtnWoman setImage:[UIImage imageNamed:StringFromTenseData(kStr_surgeryValue)] forState:UIControlStateNormal];
    //: _BtnWoman.layer.cornerRadius = widthview/2;
    _BtnWoman.layer.cornerRadius = widthview/2;
    //: _BtnWoman.layer.masksToBounds = YES;
    _BtnWoman.layer.masksToBounds = YES;
    //: _BtnWoman.layer.borderColor = [UIColor colorWithHexString:@"#B391FF"].CGColor;
    _BtnWoman.layer.borderColor = [UIColor withMax:StringFromTenseData(kStr_herselfContent)].CGColor;
    //: [view3 addSubview:_BtnWoman];
    [view3 addSubview:_BtnWoman];

    //: _ImgWoman = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgWoman = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgWoman.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgWoman.image = [UIImage imageNamed:StringFromTenseData(kStr_hotelBackgroundValue)];
    //: [view3 addSubview:_ImgWoman];
    [view3 addSubview:_ImgWoman];
    //: _ImgWoman.hidden = YES;
    _ImgWoman.hidden = YES;

    //: _labWoman = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labWoman = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    //: _labWoman.font = [UIFont systemFontOfSize:14.f];
    _labWoman.font = [UIFont systemFontOfSize:14.f];
    //: _labWoman.textColor = [UIColor blackColor];
    _labWoman.textColor = [UIColor blackColor];
    //: _labWoman.textAlignment = NSTextAlignmentCenter;
    _labWoman.textAlignment = NSTextAlignmentCenter;
    //: _labWoman.text = [FFFLanguageManager getTextWithKey:@"friend_info_activity_nv"];
    _labWoman.text = [ItemManager sessionInformation:StringFromTenseData(kStr_tacticText)];
    //: [view3 addSubview:_labWoman];
    [view3 addSubview:_labWoman];


    //: CGFloat width = (totalwidth-60)/2;
    CGFloat width = (totalwidth-60)/2;
    //: CGFloat height = 44;
    CGFloat height = 44;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
}

//: - (void)reloadWithGender:(NSInteger)gender
- (void)will:(NSInteger)gender
{
    //: if(gender == 0){
    if(gender == 0){
        //: [self clickTheSex:_BtnUnknow];
        [self searchedSex:_BtnUnknow];
    //: }else if (gender == 1){
    }else if (gender == 1){
        //: [self clickTheSex:_BtnMan];
        [self searchedSex:_BtnMan];
    //: }else if (gender == 2){
    }else if (gender == 2){
        //: [self clickTheSex:_BtnWoman];
        [self searchedSex:_BtnWoman];
    }
}

//: - (void)clickTheSex:(UIButton *)sender
- (void)searchedSex:(UIButton *)sender
{
    //: self.selectedGender = sender.tag;
    self.selectedGender = sender.tag;

    //: if(sender == _BtnUnknow){
    if(sender == _BtnUnknow){
//        _BtnUnknow.layer.borderColor = ThemeColor.CGColor;
        //: _BtnUnknow.layer.borderWidth = 1;
        _BtnUnknow.layer.borderWidth = 1;
        //: _ImgUnknow.hidden = NO;
        _ImgUnknow.hidden = NO;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#B391FF"];
        _labUnknow.textColor = [UIColor withMax:StringFromTenseData(kStr_herselfContent)];
//        _BtnMan.layer.borderColor = TextColor_0.CGColor;
        //: _BtnMan.layer.borderWidth = 0;
        _BtnMan.layer.borderWidth = 0;
        //: _ImgMan.hidden = YES;
        _ImgMan.hidden = YES;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#000000"];
        _labMan.textColor = [UIColor withMax:StringFromTenseData(kStr_yardChangeTingText)];
//        _BtnWoman.layer.borderColor = TextColor_0.CGColor;
        //: _BtnWoman.layer.borderWidth = 0;
        _BtnWoman.layer.borderWidth = 0;
        //: _ImgWoman.hidden = YES;
        _ImgWoman.hidden = YES;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#000000"];
        _labWoman.textColor = [UIColor withMax:StringFromTenseData(kStr_yardChangeTingText)];
    //: }else if (sender == _BtnMan){
    }else if (sender == _BtnMan){
//        _BtnUnknow.layer.borderColor = TextColor_0.CGColor;
        //: _BtnUnknow.layer.borderWidth = 0;
        _BtnUnknow.layer.borderWidth = 0;
        //: _ImgUnknow.hidden = YES;
        _ImgUnknow.hidden = YES;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#000000"];
        _labUnknow.textColor = [UIColor withMax:StringFromTenseData(kStr_yardChangeTingText)];
//        _BtnMan.layer.borderColor = ThemeColor.CGColor;
        //: _BtnMan.layer.borderWidth = 1;
        _BtnMan.layer.borderWidth = 1;
        //: _ImgMan.hidden = NO;
        _ImgMan.hidden = NO;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#B391FF"];
        _labMan.textColor = [UIColor withMax:StringFromTenseData(kStr_herselfContent)];
//        _BtnWoman.layer.borderColor = TextColor_0.CGColor;
        //: _BtnWoman.layer.borderWidth = 0;
        _BtnWoman.layer.borderWidth = 0;
        //: _ImgWoman.hidden = YES;
        _ImgWoman.hidden = YES;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#000000"];
        _labWoman.textColor = [UIColor withMax:StringFromTenseData(kStr_yardChangeTingText)];
    //: }else if (sender == _BtnWoman){
    }else if (sender == _BtnWoman){
//        _BtnUnknow.layer.borderColor = TextColor_0.CGColor;
        //: _BtnUnknow.layer.borderWidth = 0;
        _BtnUnknow.layer.borderWidth = 0;
        //: _ImgUnknow.hidden = YES;
        _ImgUnknow.hidden = YES;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#000000"];
        _labUnknow.textColor = [UIColor withMax:StringFromTenseData(kStr_yardChangeTingText)];
//        _BtnMan.layer.borderColor = TextColor_0.CGColor;
        //: _BtnMan.layer.borderWidth = 0;
        _BtnMan.layer.borderWidth = 0;
        //: _ImgMan.hidden = YES;
        _ImgMan.hidden = YES;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#000000"];
        _labMan.textColor = [UIColor withMax:StringFromTenseData(kStr_yardChangeTingText)];
//        _BtnWoman.layer.borderColor = ThemeColor.CGColor;
        //: _BtnWoman.layer.borderWidth = 1;
        _BtnWoman.layer.borderWidth = 1;
        //: _ImgWoman.hidden = NO;
        _ImgWoman.hidden = NO;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#B391FF"];
        _labWoman.textColor = [UIColor withMax:StringFromTenseData(kStr_herselfContent)];
    }
}

//: - (void)clickTheSave
- (void)tempVisible
{
    //: self.speiceBackBlock(self.selectedGender);
    self.speiceBackBlock(self.selectedGender);
}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
        _titleLabel.textColor = [UIColor withMax:StringFromTenseData(kStr_yardChangeTingText)];
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_friend_info_sex"];
        _titleLabel.text = [ItemManager sessionInformation:StringFromTenseData(kStr_neverthelessName)];
    }
    //: return _titleLabel;
    return _titleLabel;
}


//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(textLanguage) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor withMax:StringFromTenseData(kStr_seventhContent)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[ItemManager sessionInformation:StringFromTenseData(kStr_leadSolelyName)] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        _closeBtn.backgroundColor = [UIColor withMax:StringFromTenseData(kStr_budgeValue)];
        //: _closeBtn.layer.cornerRadius = 22;
        _closeBtn.layer.cornerRadius = 22;
        //: _closeBtn.layer.masksToBounds = YES;
        _closeBtn.layer.masksToBounds = YES;
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(clickTheSave) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(tempVisible) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_sureBtn setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor withMax:StringFromTenseData(kStr_budgeValue)] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_keep"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[ItemManager sessionInformation:StringFromTenseData(kStr_poleData)] forState:UIControlStateNormal];
        //: CGFloat width = (295-60)/2;
        CGFloat width = (295-60)/2;
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
        _sureBtn.backgroundColor = [UIColor withMax:StringFromTenseData(kStr_herselfContent)];
        //: _sureBtn.layer.cornerRadius = 22;
        _sureBtn.layer.cornerRadius = 22;
        //: _sureBtn.layer.masksToBounds = YES;
        _sureBtn.layer.masksToBounds = YES;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)animationClose
- (void)textLanguage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)bar
{
    //: self.hidden = NO;
    self.hidden = NO;
}



//: @end
@end

Byte * TenseDataToCache(Byte *data) {
    int park = data[0];
    int styleDirection = data[1];
    Byte terrorist = data[2];
    int mandate = data[3];
    if (!park) return data + mandate;
    for (int i = mandate; i < mandate + styleDirection; i++) {
        int value = data[i] - terrorist;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[mandate + styleDirection] = 0;
    return data + mandate;
}

NSString *StringFromTenseData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TenseDataToCache(data)];
}
