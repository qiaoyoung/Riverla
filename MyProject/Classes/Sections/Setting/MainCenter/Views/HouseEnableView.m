
#import <Foundation/Foundation.h>
typedef struct {
    Byte surname;
    Byte *leasedOpt;
    unsigned int stationTo;
    bool willKit;
	int primus;
	int spectacularHam;
} KeyDepartmentData;

NSString *StringFromKeyDepartmentData(KeyDepartmentData *data);


//: ic_btn_accept
KeyDepartmentData kStr_gangValue = (KeyDepartmentData){102, (Byte []){15, 5, 57, 4, 18, 8, 57, 7, 5, 5, 3, 22, 18, 18}, 13, false, 94, 80};


//: sex_man
KeyDepartmentData kStr_tractionName = (KeyDepartmentData){91, (Byte []){40, 62, 35, 4, 54, 58, 53, 40}, 7, false, 69, 235};


//: friend_info_activity_nan
KeyDepartmentData kStr_questionContent = (KeyDepartmentData){243, (Byte []){149, 129, 154, 150, 157, 151, 172, 154, 157, 149, 156, 172, 146, 144, 135, 154, 133, 154, 135, 138, 172, 157, 146, 157, 60}, 24, false, 13, 146};


//: sex_unknow
KeyDepartmentData kStr_bindText = (KeyDepartmentData){236, (Byte []){159, 137, 148, 179, 153, 130, 135, 130, 131, 155, 81}, 10, false, 98, 5};


//: friend_info_activity_xu
KeyDepartmentData kStr_cellTrailName = (KeyDepartmentData){223, (Byte []){185, 173, 182, 186, 177, 187, 128, 182, 177, 185, 176, 128, 190, 188, 171, 182, 169, 182, 171, 166, 128, 167, 170, 249}, 23, false, 42, 18};


//: contact_tag_fragment_cancel
KeyDepartmentData kStr_lastKitName = (KeyDepartmentData){27, (Byte []){120, 116, 117, 111, 122, 120, 111, 68, 111, 122, 124, 68, 125, 105, 122, 124, 118, 126, 117, 111, 68, 120, 122, 117, 120, 126, 119, 164}, 27, false, 10, 163};


//: friend_info_activity_nv
KeyDepartmentData kStr_electricMemberContent = (KeyDepartmentData){240, (Byte []){150, 130, 153, 149, 158, 148, 175, 153, 158, 150, 159, 175, 145, 147, 132, 153, 134, 153, 132, 137, 175, 158, 134, 93}, 23, false, 240, 180};


//: #000000
KeyDepartmentData kStr_contentOptValue = (KeyDepartmentData){37, (Byte []){6, 21, 21, 21, 21, 21, 21, 107}, 7, false, 45, 106};


//: user_info_avtivity_keep
KeyDepartmentData kStr_speakValue = (KeyDepartmentData){249, (Byte []){140, 138, 156, 139, 166, 144, 151, 159, 150, 166, 152, 143, 141, 144, 143, 144, 141, 128, 166, 146, 156, 156, 137, 184}, 23, false, 111, 171};


//: activity_friend_info_sex
KeyDepartmentData kStr_makeOffImageValue = (KeyDepartmentData){62, (Byte []){95, 93, 74, 87, 72, 87, 74, 71, 97, 88, 76, 87, 91, 80, 90, 97, 87, 80, 88, 81, 97, 77, 91, 70, 30}, 24, false, 191, 151};


//: sex_woman
KeyDepartmentData kStr_replySpeakTitle = (KeyDepartmentData){150, (Byte []){229, 243, 238, 201, 225, 249, 251, 247, 248, 76}, 9, false, 53, 228};


//: #5D5F66
KeyDepartmentData kStr_materPowderData = (KeyDepartmentData){51, (Byte []){16, 6, 119, 6, 117, 5, 5, 199}, 7, false, 10, 184};


//: #ffffff
KeyDepartmentData kStr_dateReverseValue = (KeyDepartmentData){10, (Byte []){41, 108, 108, 108, 108, 108, 108, 189}, 7, false, 133, 234};


//: #B391FF
KeyDepartmentData kStr_titleText = (KeyDepartmentData){194, (Byte []){225, 128, 241, 251, 243, 132, 132, 191}, 7, false, 23, 125};

// __DEBUG__
// __CLOSE_PRINT__
//
//  HouseEnableView.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSSetSexView.h"
#import "HouseEnableView.h"

//: @interface NSSetSexView ()
@interface HouseEnableView ()

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
@implementation HouseEnableView

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
        [self initShould];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initShould{

    //: CGFloat totalwidth = 295;
    CGFloat totalwidth = 295;
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-totalwidth)/2, ([[UIScreen mainScreen] bounds].size.height-250)/2, totalwidth, 250)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-totalwidth)/2, ([[UIScreen mainScreen] bounds].size.height-250)/2, totalwidth, 250)];
    //: _box.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    _box.backgroundColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_dateReverseValue)];
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
    [_BtnUnknow addTarget:self action:@selector(actionned:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnUnknow setImage:[UIImage imageNamed:@"sex_unknow"] forState:UIControlStateNormal];
    [_BtnUnknow setImage:[UIImage imageNamed:StringFromKeyDepartmentData(&kStr_bindText)] forState:UIControlStateNormal];
    //: _BtnUnknow.layer.cornerRadius = widthview/2;
    _BtnUnknow.layer.cornerRadius = widthview/2;
    //: _BtnUnknow.layer.masksToBounds = YES;
    _BtnUnknow.layer.masksToBounds = YES;
    //: _BtnUnknow.layer.borderColor = [UIColor colorWithHexString:@"#B391FF"].CGColor;
    _BtnUnknow.layer.borderColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_titleText)].CGColor;
    //: _BtnUnknow.layer.borderWidth = 1;
    _BtnUnknow.layer.borderWidth = 1;
    //: [view1 addSubview:_BtnUnknow];
    [view1 addSubview:_BtnUnknow];

    //: _ImgUnknow = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgUnknow = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgUnknow.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgUnknow.image = [UIImage imageNamed:StringFromKeyDepartmentData(&kStr_gangValue)];
    //: [view1 addSubview:_ImgUnknow];
    [view1 addSubview:_ImgUnknow];

    //: _labUnknow = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    _labUnknow = [[UILabel alloc] initWithFrame:CGRectMake(0, widthview+10, widthview, 20)];
    //: _labUnknow.font = [UIFont systemFontOfSize:14.f];
    _labUnknow.font = [UIFont systemFontOfSize:14.f];
    //: _labUnknow.textColor = [UIColor colorWithHexString:@"#B391FF"];
    _labUnknow.textColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_titleText)];
    //: _labUnknow.textAlignment = NSTextAlignmentCenter;
    _labUnknow.textAlignment = NSTextAlignmentCenter;
    //: _labUnknow.text = [FFFLanguageManager getTextWithKey:@"friend_info_activity_xu"];
    _labUnknow.text = [TeamManager sizeKey:StringFromKeyDepartmentData(&kStr_cellTrailName)];
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
    [_BtnMan addTarget:self action:@selector(actionned:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnMan setImage:[UIImage imageNamed:@"sex_man"] forState:UIControlStateNormal];
    [_BtnMan setImage:[UIImage imageNamed:StringFromKeyDepartmentData(&kStr_tractionName)] forState:UIControlStateNormal];
    //: _BtnMan.layer.cornerRadius = widthview/2;
    _BtnMan.layer.cornerRadius = widthview/2;
    //: _BtnMan.layer.masksToBounds = YES;
    _BtnMan.layer.masksToBounds = YES;
    //: _BtnMan.layer.borderColor = [UIColor colorWithHexString:@"#B391FF"].CGColor;
    _BtnMan.layer.borderColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_titleText)].CGColor;
//    _BtnMan.layer.borderWidth = 1;
    //: [view2 addSubview:_BtnMan];
    [view2 addSubview:_BtnMan];

    //: _ImgMan = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgMan = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgMan.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgMan.image = [UIImage imageNamed:StringFromKeyDepartmentData(&kStr_gangValue)];
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
    _labMan.text = [TeamManager sizeKey:StringFromKeyDepartmentData(&kStr_questionContent)];
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
    [_BtnWoman addTarget:self action:@selector(actionned:) forControlEvents:UIControlEventTouchUpInside];
    //: [_BtnWoman setImage:[UIImage imageNamed:@"sex_woman"] forState:UIControlStateNormal];
    [_BtnWoman setImage:[UIImage imageNamed:StringFromKeyDepartmentData(&kStr_replySpeakTitle)] forState:UIControlStateNormal];
    //: _BtnWoman.layer.cornerRadius = widthview/2;
    _BtnWoman.layer.cornerRadius = widthview/2;
    //: _BtnWoman.layer.masksToBounds = YES;
    _BtnWoman.layer.masksToBounds = YES;
    //: _BtnWoman.layer.borderColor = [UIColor colorWithHexString:@"#B391FF"].CGColor;
    _BtnWoman.layer.borderColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_titleText)].CGColor;
    //: [view3 addSubview:_BtnWoman];
    [view3 addSubview:_BtnWoman];

    //: _ImgWoman = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    _ImgWoman = [[UIImageView alloc]initWithFrame:CGRectMake((widthview-16)/2, widthview-8, 16, 16)];
    //: _ImgWoman.image = [UIImage imageNamed:@"ic_btn_accept"];
    _ImgWoman.image = [UIImage imageNamed:StringFromKeyDepartmentData(&kStr_gangValue)];
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
    _labWoman.text = [TeamManager sizeKey:StringFromKeyDepartmentData(&kStr_electricMemberContent)];
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
- (void)frameGender:(NSInteger)gender
{
    //: if(gender == 0){
    if(gender == 0){
        //: [self clickTheSex:_BtnUnknow];
        [self actionned:_BtnUnknow];
    //: }else if (gender == 1){
    }else if (gender == 1){
        //: [self clickTheSex:_BtnMan];
        [self actionned:_BtnMan];
    //: }else if (gender == 2){
    }else if (gender == 2){
        //: [self clickTheSex:_BtnWoman];
        [self actionned:_BtnWoman];
    }
}

//: - (void)clickTheSex:(UIButton *)sender
- (void)actionned:(UIButton *)sender
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
        _labUnknow.textColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_titleText)];
//        _BtnMan.layer.borderColor = TextColor_0.CGColor;
        //: _BtnMan.layer.borderWidth = 0;
        _BtnMan.layer.borderWidth = 0;
        //: _ImgMan.hidden = YES;
        _ImgMan.hidden = YES;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#000000"];
        _labMan.textColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_contentOptValue)];
//        _BtnWoman.layer.borderColor = TextColor_0.CGColor;
        //: _BtnWoman.layer.borderWidth = 0;
        _BtnWoman.layer.borderWidth = 0;
        //: _ImgWoman.hidden = YES;
        _ImgWoman.hidden = YES;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#000000"];
        _labWoman.textColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_contentOptValue)];
    //: }else if (sender == _BtnMan){
    }else if (sender == _BtnMan){
//        _BtnUnknow.layer.borderColor = TextColor_0.CGColor;
        //: _BtnUnknow.layer.borderWidth = 0;
        _BtnUnknow.layer.borderWidth = 0;
        //: _ImgUnknow.hidden = YES;
        _ImgUnknow.hidden = YES;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#000000"];
        _labUnknow.textColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_contentOptValue)];
//        _BtnMan.layer.borderColor = ThemeColor.CGColor;
        //: _BtnMan.layer.borderWidth = 1;
        _BtnMan.layer.borderWidth = 1;
        //: _ImgMan.hidden = NO;
        _ImgMan.hidden = NO;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#B391FF"];
        _labMan.textColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_titleText)];
//        _BtnWoman.layer.borderColor = TextColor_0.CGColor;
        //: _BtnWoman.layer.borderWidth = 0;
        _BtnWoman.layer.borderWidth = 0;
        //: _ImgWoman.hidden = YES;
        _ImgWoman.hidden = YES;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#000000"];
        _labWoman.textColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_contentOptValue)];
    //: }else if (sender == _BtnWoman){
    }else if (sender == _BtnWoman){
//        _BtnUnknow.layer.borderColor = TextColor_0.CGColor;
        //: _BtnUnknow.layer.borderWidth = 0;
        _BtnUnknow.layer.borderWidth = 0;
        //: _ImgUnknow.hidden = YES;
        _ImgUnknow.hidden = YES;
        //: _labUnknow.textColor = [UIColor colorWithHexString:@"#000000"];
        _labUnknow.textColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_contentOptValue)];
//        _BtnMan.layer.borderColor = TextColor_0.CGColor;
        //: _BtnMan.layer.borderWidth = 0;
        _BtnMan.layer.borderWidth = 0;
        //: _ImgMan.hidden = YES;
        _ImgMan.hidden = YES;
        //: _labMan.textColor = [UIColor colorWithHexString:@"#000000"];
        _labMan.textColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_contentOptValue)];
//        _BtnWoman.layer.borderColor = ThemeColor.CGColor;
        //: _BtnWoman.layer.borderWidth = 1;
        _BtnWoman.layer.borderWidth = 1;
        //: _ImgWoman.hidden = NO;
        _ImgWoman.hidden = NO;
        //: _labWoman.textColor = [UIColor colorWithHexString:@"#B391FF"];
        _labWoman.textColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_titleText)];
    }
}

//: - (void)clickTheSave
- (void)saveMessage
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
        _titleLabel.textColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_contentOptValue)];
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_friend_info_sex"];
        _titleLabel.text = [TeamManager sizeKey:StringFromKeyDepartmentData(&kStr_makeOffImageValue)];
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
        [_closeBtn addTarget:self action:@selector(randomShow) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor isView:StringFromKeyDepartmentData(&kStr_materPowderData)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[TeamManager sizeKey:StringFromKeyDepartmentData(&kStr_lastKitName)] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        _closeBtn.backgroundColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_dateReverseValue)];
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
        [_sureBtn addTarget:self action:@selector(saveMessage) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        //: [_sureBtn setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor isView:StringFromKeyDepartmentData(&kStr_dateReverseValue)] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_keep"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[TeamManager sizeKey:StringFromKeyDepartmentData(&kStr_speakValue)] forState:UIControlStateNormal];
        //: CGFloat width = (295-60)/2;
        CGFloat width = (295-60)/2;
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
        _sureBtn.backgroundColor = [UIColor isView:StringFromKeyDepartmentData(&kStr_titleText)];
        //: _sureBtn.layer.cornerRadius = 22;
        _sureBtn.layer.cornerRadius = 22;
        //: _sureBtn.layer.masksToBounds = YES;
        _sureBtn.layer.masksToBounds = YES;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)animationClose
- (void)randomShow
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)to
{
    //: self.hidden = NO;
    self.hidden = NO;
}



//: @end
@end

Byte *KeyDepartmentDataToByte(KeyDepartmentData *data) {
    if (data->willKit) return data->leasedOpt;
    for (int i = 0; i < data->stationTo; i++) {
        data->leasedOpt[i] ^= data->surname;
    }
    data->leasedOpt[data->stationTo] = 0;
    data->willKit = true;
	if (data->stationTo >= 2) {
		data->primus = data->leasedOpt[0];
		data->spectacularHam = data->leasedOpt[1];
	}
    return data->leasedOpt;
}

NSString *StringFromKeyDepartmentData(KeyDepartmentData *data) {
    return [NSString stringWithUTF8String:(char *)KeyDepartmentDataToByte(data)];
}
