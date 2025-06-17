
#import <Foundation/Foundation.h>

NSString *StringFromAreaData(Byte *data);


//: contact_my_tag_activity_my_friend
Byte kStr_colorName[] = {3, 33, 31, 10, 86, 228, 222, 240, 57, 161, 130, 142, 141, 147, 128, 130, 147, 126, 140, 152, 126, 147, 128, 134, 126, 128, 130, 147, 136, 149, 136, 147, 152, 126, 140, 152, 126, 133, 145, 136, 132, 141, 131, 185};


//: #875FFA
Byte kStr_cellName[] = {32, 7, 83, 9, 157, 180, 90, 98, 158, 118, 139, 138, 136, 153, 153, 148, 139};


//: contact_fragment_group
Byte kStr_statusValue[] = {29, 22, 81, 10, 171, 144, 139, 137, 132, 150, 180, 192, 191, 197, 178, 180, 197, 176, 183, 195, 178, 184, 190, 182, 191, 197, 176, 184, 195, 192, 198, 193, 147};


//: #5D5F66
Byte kStr_layerData[] = {58, 7, 85, 4, 120, 138, 153, 138, 155, 139, 139, 67};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactHeaderView.h"
#import "FrameView.h"
//: #import "UIButton+ImageTitleSpacing.h"
#import "UIButton+Header.h"

//: @interface NTESContactHeaderView ()<UITextFieldDelegate>
@interface FrameView ()<UITextFieldDelegate>
//: @property (nonatomic ,strong) UIView *sliderView;
@property (nonatomic ,strong) UIView *sliderView;
//: @property (nonatomic ,strong) UIView *backView;
@property (nonatomic ,strong) UIView *backView;
//: @property (nonatomic ,strong) UIButton *mesBtn;
@property (nonatomic ,strong) UIButton *mesBtn;
//: @property (nonatomic ,strong) UIButton *resqBtn;
@property (nonatomic ,strong) UIButton *resqBtn;
//: @end
@end

//: @implementation NTESContactHeaderView
@implementation FrameView

//: -(instancetype)initWithFrame:(CGRect)frame{
-(instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self initUI];
        [self initSecret];
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
    }
    //: return self;
    return self;
}

//: -(void)initUI{
-(void)initSecret{

//    NSArray *titleArray = @[
//
//        LangKey(@"fragment_contact_new_friend"),
//        LangKey(@"group_notification"),
//        LangKey(@"func_viewholder_black"),
//
//    ];
//
//
//
//    UIView *bgView = [[UIView alloc] init];
//    bgView.backgroundColor = [UIColor whiteColor];
//    [self addSubview:bgView];
//    _backView = bgView;
//    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_offset(0);
//        make.right.mas_offset(0);
//        make.top.mas_offset(0);
//        make.height.mas_equalTo(12+12+41);
//    }];
//
//
//    UIView *lineViews = [[UIView alloc] init];
//    lineViews.backgroundColor = RGB_COLOR_String(@"#F7F8FB");
//    [self addSubview:lineViews];
//    [lineViews mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_offset(0);
//        make.right.mas_offset(0);
//        make.top.mas_equalTo(bgView.mas_bottom).mas_offset(0);
//        make.height.mas_equalTo(1);
//    }];
//
//
//    for (int i = 0; i < 3; i++) {
//
//        CGFloat x;
//        NSString *imageName;
//        if (i==0) {
//            imageName = @"ic_New_friend";
//            x = 0.4;
//        } else if (i==1) {
//            imageName = @"ic_Group_notice";
//            x = 1;
//        } else {
//            imageName = @"ic_Blacklist";
//            x = 1.6;
//        }
//
//        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//        btn.tag = 100 +i;
//        btn.backgroundColor = [UIColor clearColor];
//        [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
//        [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
//        [bgView addSubview:btn];
//        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerX.multipliedBy(x);
//            make.centerY.mas_offset(0);
//            make.width.mas_equalTo(110);
//            make.height.mas_equalTo(40);
//        }];
//        [btn setTitle:titleArray[i] forState:(UIControlStateNormal)];
//        [btn setTitleColor:RGB_COLOR_String(@"#3F3F3F") forState:(UIControlStateNormal)];
//        btn.titleLabel.font = [UIFont systemFontOfSize:12];;
//        [btn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:3];
//
//        UILabel *numLabel = [[UILabel alloc] init];
//        numLabel.tag = 500 + i;
//        numLabel.hidden = YES;
//        numLabel.backgroundColor = [UIColor redColor];
//        numLabel.font = [UIFont systemFontOfSize:11];
//        numLabel.textColor = [UIColor whiteColor];
//        numLabel.textAlignment = NSTextAlignmentCenter;
//        [_backView addSubview:numLabel];
//        numLabel.layer.masksToBounds = YES;
//        numLabel.layer.cornerRadius = 8;
//        [numLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.mas_equalTo(btn).mas_offset(-3);
//            make.right.mas_equalTo(btn).mas_offset(-3);
//            make.width.height.mas_equalTo(16);
//        }];
//
//    }

    //: UIView *sliderView = [[UIView alloc]initWithFrame:CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30, 60)];
    UIView *sliderView = [[UIView alloc]initWithFrame:CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30, 60)];
    //: sliderView.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
    sliderView.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
    //: sliderView.layer.cornerRadius = 30;
    sliderView.layer.cornerRadius = 30;
//    sliderView.backgroundColor = [UIColor clearColor];
    //: [self addSubview:sliderView];
    [self addSubview:sliderView];
    //: _sliderView = sliderView;
    _sliderView = sliderView;

    //: _mesBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _mesBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _mesBtn.frame = CGRectMake(8, 10, 162, 40);
    _mesBtn.frame = CGRectMake(8, 10, 162, 40);
    //: _mesBtn.tag = 200;
    _mesBtn.tag = 200;
    //: _mesBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
    _mesBtn.backgroundColor = [UIColor withMax:StringFromAreaData(kStr_cellName)];
    //: _mesBtn.layer.cornerRadius = 20;
    _mesBtn.layer.cornerRadius = 20;
    //: _mesBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _mesBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_mesBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_my_tag_activity_my_friend"] forState:UIControlStateNormal];
    [_mesBtn setTitle:[ItemManager sessionInformation:StringFromAreaData(kStr_colorName)] forState:UIControlStateNormal];
    //: [_mesBtn addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_mesBtn addTarget:self action:@selector(showwed:) forControlEvents:UIControlEventTouchUpInside];
    //: [sliderView addSubview:_mesBtn];
    [sliderView addSubview:_mesBtn];

    //: _resqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _resqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _resqBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-8-170, 10, 162, 40);
    _resqBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-8-170, 10, 162, 40);
    //: _resqBtn.tag = 201;
    _resqBtn.tag = 201;
//    resqBtn.backgroundColor = RGB_COLOR_String(kCommonBGColor_begin);
    //: _resqBtn.layer.cornerRadius = 20;
    _resqBtn.layer.cornerRadius = 20;
    //: _resqBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _resqBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_resqBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_resqBtn setTitleColor:[UIColor withMax:StringFromAreaData(kStr_layerData)] forState:UIControlStateNormal];
    //: [_resqBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_group"] forState:UIControlStateNormal];
    [_resqBtn setTitle:[ItemManager sessionInformation:StringFromAreaData(kStr_statusValue)] forState:UIControlStateNormal];
    //: [_resqBtn addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_resqBtn addTarget:self action:@selector(showwed:) forControlEvents:UIControlEventTouchUpInside];
    //: [sliderView addSubview:_resqBtn];
    [sliderView addSubview:_resqBtn];

//    for (int i = 0; i<2; i++) {
//        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//        button.tag = 200 + i;
//        [button addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
//        [sliderView addSubview:button];
//
//        [button mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerY.multipliedBy(1);
//            make.centerX.multipliedBy(0.5+1*i).mas_offset(i*10);
//            make.width.mas_equalTo(80);
//            make.height.mas_equalTo(44);
//        }];
//
//        UIView *lineView = [[UIView alloc] init];
//        lineView.tag = 2000 + i;
//        [sliderView addSubview:lineView];
//        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_offset(SCREEN_WIDTH/2.f*i);
//            make.width.mas_equalTo(SCREEN_WIDTH/2.f);
//            make.top.mas_equalTo(button.mas_bottom).mas_offset(-3);
//            make.height.mas_equalTo(2);
//        }];
//
//        if (i == 0) {
//            [button setImage:[UIImage imageNamed:@"ic_friends"] forState:(UIControlStateNormal)];
//            [button setImage:[UIImage imageNamed:@"ic_friends_current"] forState:(UIControlStateSelected)];
//
//            lineView.backgroundColor = [UIColor colorWithPatternImage:[MarginMax getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionLevel]];
//            button.selected = YES;
//        } else if (i == 1){
//            [button setImage:[UIImage imageNamed:@"ic_group"] forState:(UIControlStateNormal)];
//            [button setImage:[UIImage imageNamed:@"ic_group_current"] forState:(UIControlStateSelected)];
//
//        }
//
//    }
}

//: -(void)sliderButtonClick:(UIButton *)sender{
-(void)showwed:(UIButton *)sender{

    //: sender.selected = YES;
    sender.selected = YES;

    //: if(sender == self.mesBtn){
    if(sender == self.mesBtn){
        //: _mesBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
        _mesBtn.backgroundColor = [UIColor withMax:StringFromAreaData(kStr_cellName)];
        //: [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: _resqBtn.backgroundColor = [UIColor clearColor];
        _resqBtn.backgroundColor = [UIColor clearColor];
        //: [_resqBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_resqBtn setTitleColor:[UIColor withMax:StringFromAreaData(kStr_layerData)] forState:UIControlStateNormal];
    //: }else if (sender == self.resqBtn){
    }else if (sender == self.resqBtn){
        //: _resqBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
        _resqBtn.backgroundColor = [UIColor withMax:StringFromAreaData(kStr_cellName)];
        //: [_resqBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_resqBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: _mesBtn.backgroundColor = [UIColor clearColor];
        _mesBtn.backgroundColor = [UIColor clearColor];
        //: [_mesBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_mesBtn setTitleColor:[UIColor withMax:StringFromAreaData(kStr_layerData)] forState:UIControlStateNormal];
    }


    //: if (self.delegate && [self.delegate respondsToSelector:@selector(sliderWithIndex:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(centerWith:)]) {
        //: [self.delegate sliderWithIndex:sender.tag -200];
        [self.delegate centerWith:sender.tag -200];
    }

}

//: -(void)buttonClick:(UIButton *)sender{
-(void)holdfasts:(UIButton *)sender{
    //: NSInteger tag = sender.tag -100;
    NSInteger tag = sender.tag -100;
    //: switch (tag) {
    switch (tag) {
        //: case 0:
        case 0:
        {
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(friendNotification)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(mobileView)]) {
                //: [self.delegate friendNotification];
                [self.delegate mobileView];
            }
        }
            //: break;
            break;
        //: case 1:
        case 1:
        {
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(friendNotification)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(mobileView)]) {
                //: [self.delegate groupNotification];
                [self.delegate can];
            }
        }
            //: break;
            break;
        //: case 2:
        case 2:
        {
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(blackFriendList)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(asShared)]) {
                //: [self.delegate blackFriendList];
                [self.delegate asShared];
            }
        }
            //: break;
            break;

        //: default:
        default:
            //: break;
            break;
    }
}



//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{

    //: if (self.delegate &&[self.delegate respondsToSelector:@selector(searchClick)]) {
    if (self.delegate &&[self.delegate respondsToSelector:@selector(moveImage)]) {
        //: [self.delegate searchClick];
        [self.delegate moveImage];
    }

    //: return NO;
    return NO;
}

//: -(void)reloadCountNumber:(NSInteger)systemCount{
-(void)sole:(NSInteger)systemCount{
    //: [self reloadAddFriend];
    [self black];
    //: [self reloadGroup];
    [self record];
}

//: -(void)reloadAddFriend{
-(void)black{
    //: NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
    NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
    //: filter.notificationTypes = @[@(5)];
    filter.notificationTypes = @[@(5)];
    //: NSInteger systemCount = [[[NIMSDK sharedSDK] systemNotificationManager] allUnreadCount:filter];
    NSInteger systemCount = [[[NIMSDK sharedSDK] systemNotificationManager] allUnreadCount:filter];
    //: UILabel *label = [_backView viewWithTag:500];
    UILabel *label = [_backView viewWithTag:500];
    //: label.text = [NSString stringWithFormat:@"%ld",systemCount];
    label.text = [NSString stringWithFormat:@"%ld",systemCount];
    //: if (systemCount > 0) {
    if (systemCount > 0) {
        //: label.hidden = NO;
        label.hidden = NO;
    //: }else{
    }else{
        //: label.hidden = YES;
        label.hidden = YES;
    }
}

//: -(void)reloadGroup{
-(void)record{
    //: NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
    NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
    //: filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(15),@(16),@(17),@(18)];
    filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(15),@(16),@(17),@(18)];
    //: NSInteger systemCount = [[[NIMSDK sharedSDK] systemNotificationManager] allUnreadCount:filter];
    NSInteger systemCount = [[[NIMSDK sharedSDK] systemNotificationManager] allUnreadCount:filter];
    //: UILabel *label = [_backView viewWithTag:500 +1];
    UILabel *label = [_backView viewWithTag:500 +1];
    //: label.text = [NSString stringWithFormat:@"%ld",systemCount];
    label.text = [NSString stringWithFormat:@"%ld",systemCount];
    //: if (systemCount > 0) {
    if (systemCount > 0) {
        //: label.hidden = NO;
        label.hidden = NO;
    //: }else{
    }else{
        //: label.hidden = YES;
        label.hidden = YES;
    }
}

//: @end
@end

Byte * AreaDataToCache(Byte *data) {
    int blueFile = data[0];
    int status = data[1];
    Byte chromosomalMutation = data[2];
    int pathRow = data[3];
    if (!blueFile) return data + pathRow;
    for (int i = pathRow; i < pathRow + status; i++) {
        int value = data[i] - chromosomalMutation;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[pathRow + status] = 0;
    return data + pathRow;
}

NSString *StringFromAreaData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AreaDataToCache(data)];
}
