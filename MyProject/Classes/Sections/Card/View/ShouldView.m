
#import <Foundation/Foundation.h>

NSString *StringFromModelData(Byte *data);


//: #FAF8FD
Byte kStr_dateTitle[] = {50, 7, 10, 51, 48, 177, 179, 175, 247, 41, 68, 70, 56, 70, 65, 70, 35, 27};


//: report_next_select
Byte kStr_videoName[] = {29, 18, 10, 229, 104, 64, 221, 5, 178, 74, 116, 99, 101, 108, 101, 115, 95, 116, 120, 101, 110, 95, 116, 114, 111, 112, 101, 114, 157};


//: user_profile_avtivity_remove_friend
Byte kStr_enableMyData[] = {27, 35, 9, 68, 167, 40, 162, 234, 71, 100, 110, 101, 105, 114, 102, 95, 101, 118, 111, 109, 101, 114, 95, 121, 116, 105, 118, 105, 116, 118, 97, 95, 101, 108, 105, 102, 111, 114, 112, 95, 114, 101, 115, 117, 133};


//: icon_accessory_selected
Byte kStr_withText[] = {46, 23, 3, 100, 101, 116, 99, 101, 108, 101, 115, 95, 121, 114, 111, 115, 115, 101, 99, 99, 97, 95, 110, 111, 99, 105, 110};


//: contact_tag_fragment_sure
Byte kStr_memberTextTitle[] = {39, 25, 10, 136, 4, 136, 67, 29, 206, 161, 101, 114, 117, 115, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 53};


//: ic_distrub
Byte kStr_titleBubbleContent[] = {49, 10, 3, 98, 117, 114, 116, 115, 105, 100, 95, 99, 105, 114};


//: contact_tag_fragment_cancel
Byte kStr_makeName[] = {18, 27, 7, 255, 126, 76, 158, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 22};


//: #B391FF
Byte kStr_fileCheckContent[] = {70, 7, 10, 168, 173, 110, 183, 66, 5, 224, 70, 70, 49, 57, 51, 66, 35, 28};


//: icon_accessory_normal
Byte kStr_nameValue[] = {18, 21, 4, 130, 108, 97, 109, 114, 111, 110, 95, 121, 114, 111, 115, 115, 101, 99, 99, 97, 95, 110, 111, 99, 105, 37};


//: ic_delete
Byte kStr_limitName[] = {3, 9, 10, 52, 216, 154, 67, 236, 241, 91, 101, 116, 101, 108, 101, 100, 95, 99, 105, 47};


//: activity_group_chat_avatar_add_black
Byte kStr_frameKitName[] = {5, 36, 11, 172, 160, 165, 29, 14, 73, 66, 106, 107, 99, 97, 108, 98, 95, 100, 100, 97, 95, 114, 97, 116, 97, 118, 97, 95, 116, 97, 104, 99, 95, 112, 117, 111, 114, 103, 95, 121, 116, 105, 118, 105, 116, 99, 97, 35};


//: #5D5F66
Byte kStr_windowData[] = {20, 7, 6, 195, 119, 147, 54, 54, 70, 53, 68, 53, 35, 93};


//: report_Content
Byte kStr_colorText[] = {32, 14, 11, 249, 35, 177, 44, 49, 236, 39, 104, 116, 110, 101, 116, 110, 111, 67, 95, 116, 114, 111, 112, 101, 114, 205};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportNextView.h"
#import "ShouldView.h"

//: @interface ZMONReportNextView ()
@interface ShouldView ()

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UIView *buttonBox;
@property (nonatomic,strong) UIView *buttonBox;
//: @property (nonatomic,strong) UIView *blockView;
@property (nonatomic,strong) UIView *blockView;
//: @property (nonatomic,strong) UIView *deleteView;
@property (nonatomic,strong) UIView *deleteView;

//: @property (nonatomic,strong) UIButton *btnBlock;
@property (nonatomic,strong) UIButton *btnBlock;
//: @property (nonatomic,strong) UIButton *btnDelete;
@property (nonatomic,strong) UIButton *btnDelete;

//: @property (nonatomic,strong) NSString *type;
@property (nonatomic,strong) NSString *type;

//: @end
@end

//: @implementation ZMONReportNextView
@implementation ShouldView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: self.type = @"1";
        self.type = @"1";
        //: [self initUI];
        [self initDate];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initDate{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-304)/2, [[UIScreen mainScreen] bounds].size.width-40, 304)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-304)/2, [[UIScreen mainScreen] bounds].size.width-40, 304)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 24;
    _box.layer.cornerRadius = 24;
    //: [self addSubview:_box];
    [self addSubview:_box];


    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);
    self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);

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

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labsubLabel.textColor = [UIColor isView:StringFromModelData(kStr_windowData)];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [FFFLanguageManager getTextWithKey:@"report_next_select"];
    labsubLabel.text = [TeamManager sizeKey:StringFromModelData(kStr_videoName)];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: [_box addSubview:self.blockView];
    [_box addSubview:self.blockView];
    //: self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);

    //: [_box addSubview:self.deleteView];
    [_box addSubview:self.deleteView];
    //: self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 56);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 304-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 304-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 304-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 304-20-height, width, height);
}


//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self animationClose];
//}

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
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 0;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
//        _titleLabel.text = LangKey(@"report_User");
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [TeamManager sizeKey:StringFromModelData(kStr_colorText)];

    }
    //: return _titleLabel;
    return _titleLabel;
}
//: - (UIView *)blockView
- (UIView *)blockView
{
    //: if (!_blockView) {
    if (!_blockView) {
        //: _blockView = [[UIView alloc]init];
        _blockView = [[UIView alloc]init];
        //: _blockView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        _blockView.backgroundColor = [UIColor isView:StringFromModelData(kStr_dateTitle)];
        //: _blockView.layer.cornerRadius = 28;
        _blockView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_distrub"];
        img.image = [UIImage imageNamed:StringFromModelData(kStr_titleBubbleContent)];
        //: [_blockView addSubview:img];
        [_blockView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor isView:StringFromModelData(kStr_windowData)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [FFFLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        lab.text = [TeamManager sizeKey:StringFromModelData(kStr_frameKitName)];
        //: [_blockView addSubview:lab];
        [_blockView addSubview:lab];

        //: _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        //: [_btnBlock addTarget:self action:@selector(handleBlock:) forControlEvents:UIControlEventTouchUpInside];
        [_btnBlock addTarget:self action:@selector(selectedBlock:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnBlock setImage:[UIImage imageNamed:StringFromModelData(kStr_nameValue)] forState:UIControlStateNormal];
        //: [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_btnBlock setImage:[UIImage imageNamed:StringFromModelData(kStr_withText)] forState:UIControlStateSelected];
        //: [_blockView addSubview:_btnBlock];
        [_blockView addSubview:_btnBlock];
        //: _btnBlock.selected = YES;
        _btnBlock.selected = YES;
    }
    //: return _blockView;
    return _blockView;
}

//: - (UIView *)deleteView
- (UIView *)deleteView
{
    //: if (!_deleteView) {
    if (!_deleteView) {
        //: _deleteView = [[UIView alloc]init];
        _deleteView = [[UIView alloc]init];
        //: _deleteView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        _deleteView.backgroundColor = [UIColor isView:StringFromModelData(kStr_dateTitle)];
        //: _deleteView.layer.cornerRadius = 28;
        _deleteView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_delete"];
        img.image = [UIImage imageNamed:StringFromModelData(kStr_limitName)];
        //: [_deleteView addSubview:img];
        [_deleteView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor isView:StringFromModelData(kStr_windowData)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [FFFLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        lab.text = [TeamManager sizeKey:StringFromModelData(kStr_enableMyData)];
        //: [_deleteView addSubview:lab];
        [_deleteView addSubview:lab];

        //: _btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        _btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        //: [_btnDelete addTarget:self action:@selector(showAnimation:) forControlEvents:UIControlEventTouchUpInside];
        [_btnDelete addTarget:self action:@selector(magnitudeervalAnimation:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnDelete setImage:[UIImage imageNamed:StringFromModelData(kStr_nameValue)] forState:UIControlStateNormal];
        //: [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_btnDelete setImage:[UIImage imageNamed:StringFromModelData(kStr_withText)] forState:UIControlStateSelected];
        //: [_deleteView addSubview:_btnDelete];
        [_deleteView addSubview:_btnDelete];
    }
    //: return _deleteView;
    return _deleteView;
}

//: - (void)handleBlock:(UIButton *)sender{
- (void)selectedBlock:(UIButton *)sender{
    //: self.type = @"1";
    self.type = @"1";
    //: _btnBlock.selected = YES;
    _btnBlock.selected = YES;
    //: _btnDelete.selected = NO;
    _btnDelete.selected = NO;
}

//: - (void)showAnimation:(UIButton *)sender{
- (void)magnitudeervalAnimation:(UIButton *)sender{
    //: self.type = @"2";
    self.type = @"2";
//    sender.selected = !sender.selected;
    //: _btnBlock.selected = NO;
    _btnBlock.selected = NO;
    //: _btnDelete.selected = YES;
    _btnDelete.selected = YES;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(randomShow) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor isView:StringFromModelData(kStr_windowData)] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[TeamManager sizeKey:StringFromModelData(kStr_makeName)] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
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
        //: [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(enableReply) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[TeamManager sizeKey:StringFromModelData(kStr_memberTextTitle)] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
        _sureBtn.backgroundColor = [UIColor isView:StringFromModelData(kStr_fileCheckContent)];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;
//        _sureBtn.layer.shadowColor = DeepBtnColor.CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)handleBlack
- (void)statuteTitle
{
    //: [self animationClose];
    [self randomShow];
    //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
    if ([self.delegate respondsToSelector:@selector(fromFixing)]) {
        //: [self.delegate didTouchBlackButton];
        [self.delegate fromFixing];
    }
}

//: - (void)showAnimation
- (void)independentCancel
{
    //: [self animationClose];
    [self randomShow];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
    if ([self.delegate respondsToSelector:@selector(cellMessage)]) {
        //: [self.delegate didTouchDeleteButton];
        [self.delegate cellMessage];
    }

}

//: - (void)handleSubmit
- (void)enableReply
{
    //: [self animationClose];
    [self randomShow];
    //: if (self.type.intValue == 1) {
    if (self.type.intValue == 1) {
        //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
        if ([self.delegate respondsToSelector:@selector(fromFixing)]) {
            //: [self.delegate didTouchBlackButton];
            [self.delegate fromFixing];
        }
    //: }else{
    }else{
        //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
        if ([self.delegate respondsToSelector:@selector(cellMessage)]) {
            //: [self.delegate didTouchDeleteButton];
            [self.delegate cellMessage];
        }
    }
}

//: - (void)animationClose
- (void)randomShow
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)with
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end

Byte * ModelDataToCache(Byte *data) {
    int fileCell = data[0];
    int coloured = data[1];
    int nameViewFrame = data[2];
    if (!fileCell) return data + nameViewFrame;
    for (int i = 0; i < coloured / 2; i++) {
        int begin = nameViewFrame + i;
        int end = nameViewFrame + coloured - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[nameViewFrame + coloured] = 0;
    return data + nameViewFrame;
}

NSString *StringFromModelData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ModelDataToCache(data)];
}  
