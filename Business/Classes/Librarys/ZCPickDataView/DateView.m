
#import <Foundation/Foundation.h>

NSString *StringFromNaturallyData(Byte *data);        


//: eeeeee
Byte kStr_missileValue[] = {15, 6, 48, 6, 239, 20, 53, 53, 53, 53, 53, 53, 90};


//: yyyy-MM-dd
Byte kStr_necessaryContent[] = {7, 10, 51, 8, 126, 148, 48, 216, 70, 70, 70, 70, 250, 26, 26, 250, 49, 49, 53};


//: #5D5F66
Byte kStr_luteData[] = {43, 7, 83, 14, 96, 106, 224, 230, 53, 151, 154, 62, 107, 139, 208, 226, 241, 226, 243, 227, 227, 48};


//: zh_CN
Byte kStr_cocaineMessageData[] = {63, 5, 93, 7, 46, 245, 70, 29, 11, 2, 230, 241, 12};


//: NSUserDefaultLanguage
Byte kStr_musicianData[] = {28, 21, 56, 12, 46, 139, 11, 91, 2, 186, 250, 89, 22, 27, 29, 59, 45, 58, 12, 45, 46, 41, 61, 52, 60, 20, 41, 54, 47, 61, 41, 47, 45, 130};


//: 0d8bf5
Byte kStr_messageLogReferData[] = {27, 6, 67, 11, 199, 183, 35, 1, 190, 251, 144, 237, 33, 245, 31, 35, 242, 167};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AttendanceDatePickerView.m
//  ProjectK
//
//  Created by beartech on 14-1-3.
//  Copyright (c) 2014年 Beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import "HMDatePickerView.h"
#import "DateView.h"
//: #import "NSDate+KIAdditions.h"
#import "NSDate+StopAdditions.h"
//: #import "NSDateFormatter+KIAdditions.h"
#import "NSDateFormatter+StopAdditions.h"

//: @interface HMDatePickerView (){
@interface DateView (){

    //左边退出按钮
    //: UIButton *cancelButton;
    UIButton *cancelButton;
    //右边的确定按钮
    //: UIButton *chooseButton;
    UIButton *chooseButton;
}
//: @property (nonatomic, strong) UIView *bgView;
@property (nonatomic, strong) UIView *bgView;

//: @property (nonatomic,retain) UILabel *yearLabel;
@property (nonatomic,retain) UILabel *yearLabel;
//: @property (nonatomic,retain) UIView *animationView;
@property (nonatomic,retain) UIView *animationView;

//: @end
@end

//: @implementation HMDatePickerView
@implementation DateView
//: @synthesize delegate = _delegate;
@synthesize delegate = _delegate;
//: @synthesize datePicker;
@synthesize datePicker;
//: @synthesize yearLabel;
@synthesize yearLabel;
//: @synthesize blackBackgroundButton = _blackBackgroundButton;
@synthesize blackBackgroundButton = _blackBackgroundButton;
//: @synthesize animationView = _animationView;
@synthesize animationView = _animationView;



//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == 初始化
#pragma mark == 初始化
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (id)initWithFrame:(CGRect)frame{
- (id)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        //: _blackBackgroundButton = [[UIButton alloc]init];
        _blackBackgroundButton = [[UIButton alloc]init];
        //: _blackBackgroundButton.frame = self.bounds;
        _blackBackgroundButton.frame = self.bounds;
        //: _blackBackgroundButton.alpha = 0;
        _blackBackgroundButton.alpha = 0;
        //: _blackBackgroundButton.backgroundColor = [UIColor blackColor];
        _blackBackgroundButton.backgroundColor = [UIColor blackColor];
        //: [_blackBackgroundButton addTarget:self action:@selector(singleTap) forControlEvents:UIControlEventTouchDown];
        [_blackBackgroundButton addTarget:self action:@selector(downTap) forControlEvents:UIControlEventTouchDown];
        //: [self addSubview:_blackBackgroundButton];
        [self addSubview:_blackBackgroundButton];

        //: _animationView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIApplication sharedApplication].windows.firstObject.frame.size.height+50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190 +50+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
        _animationView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIApplication sharedApplication].windows.firstObject.frame.size.height+50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190 +50+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
        //: _animationView.backgroundColor = [UIColor whiteColor];
        _animationView.backgroundColor = [UIColor whiteColor];
        //: _animationView.userInteractionEnabled = YES;
        _animationView.userInteractionEnabled = YES;
        //: [self addSubview:_animationView];
        [self addSubview:_animationView];

        //: datePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0,50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190)];
        datePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0,50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190)];
        //: [datePicker addTarget:self action:@selector(datePickerValueChanged) forControlEvents:UIControlEventValueChanged];
        [datePicker addTarget:self action:@selector(birthdayDisable) forControlEvents:UIControlEventValueChanged];
        //: [datePicker setDate:[NSDate date]];
        [datePicker setDate:[NSDate date]];
        //: datePicker.datePickerMode = UIDatePickerModeDate;
        datePicker.datePickerMode = UIDatePickerModeDate;
        //: [_animationView addSubview:datePicker];
        [_animationView addSubview:datePicker];

        //: NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
        NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromNaturallyData(kStr_musicianData)];
        //: if (lang.length <= 0) {
        if (lang.length <= 0) {
            //: lang = @"zh_CN";
            lang = StringFromNaturallyData(kStr_cocaineMessageData);
        }
        //: NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:lang];
        NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:lang];
        //: datePicker.locale = locale;
        datePicker.locale = locale;

        //: if (@available(iOS 14.0, *)) {
        if (@available(iOS 14.0, *)) {
            //: datePicker.preferredDatePickerStyle = UIDatePickerStyleWheels;
            datePicker.preferredDatePickerStyle = UIDatePickerStyleWheels;
            //此处记得再写一下frame, 在datePickerMode设置之后
            //: datePicker.frame = CGRectMake(0,50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190);
            datePicker.frame = CGRectMake(0,50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190);
        }

        //: [self setNavigationBarView];
        [self navigationShow];
    }
    //: return self;
    return self;
}


//: - (void)singleTap{
- (void)downTap{
    //: [self leftButtonClicked:nil];
    [self signals:nil];
}

//: - (void)setDate:(NSDate*)date{
- (void)setSetDownLengthDateRefer:(NSDate*)date{
    //: if ([NSDate isDate:date earlierThanDate:datePicker.minimumDate]) {
    if ([NSDate subjectMatter:date resolution:datePicker.minimumDate]) {
        //: return;
        return;
    }

    //: if ([NSDate isDate:datePicker.maximumDate earlierThanDate:date]) {
    if ([NSDate subjectMatter:datePicker.maximumDate resolution:date]) {
        //: return;
        return;
    }

    //: [datePicker setDate:date];
    [datePicker setDate:date];
}


//: - (void)setNavigationBarView{
- (void)navigationShow{

    //盛放按钮的View
    //: UIView *upVeiw = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMinY(datePicker.frame)-50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 50)];
    UIView *upVeiw = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMinY(datePicker.frame)-50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 50)];
    //: upVeiw.backgroundColor = [UIColor whiteColor];
    upVeiw.backgroundColor = [UIColor whiteColor];
    //: [_animationView addSubview:upVeiw];
    [_animationView addSubview:upVeiw];
    //: upVeiw.layer.borderWidth = 0.5f;
    upVeiw.layer.borderWidth = 0.5f;
    //: upVeiw.layer.borderColor = [UIColor colorWithHexString:@"eeeeee"].CGColor;
    upVeiw.layer.borderColor = [UIColor withMax:StringFromNaturallyData(kStr_missileValue)].CGColor;

    //左边的取消按钮
    //: cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: cancelButton.frame = CGRectMake(12, 0, 50, 50);
    cancelButton.frame = CGRectMake(12, 0, 50, 50);
    //: [cancelButton setTitle:@"取消".nim_localized forState:UIControlStateNormal];
    [cancelButton setTitle:@"取消".textKey forState:UIControlStateNormal];
    //: cancelButton.backgroundColor = [UIColor clearColor];
    cancelButton.backgroundColor = [UIColor clearColor];
    //: cancelButton.titleLabel.font = [UIFont systemFontOfSize:16];
    cancelButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [cancelButton setTitleColor:[UIColor colorWithHexString:@"0d8bf5"] forState:UIControlStateNormal];
    [cancelButton setTitleColor:[UIColor withMax:StringFromNaturallyData(kStr_messageLogReferData)] forState:UIControlStateNormal];
    //: [cancelButton addTarget:self action:@selector(leftButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [cancelButton addTarget:self action:@selector(signals:) forControlEvents:UIControlEventTouchUpInside];
    //: [upVeiw addSubview:cancelButton];
    [upVeiw addSubview:cancelButton];

    //右边的确定按钮
    //: chooseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    chooseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: chooseButton.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 62, 0, 50, 50);
    chooseButton.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 62, 0, 50, 50);
    //: [chooseButton setTitle:@"完成".nim_localized forState:UIControlStateNormal];
    [chooseButton setTitle:@"完成".textKey forState:UIControlStateNormal];
    //: chooseButton.backgroundColor = [UIColor clearColor];
    chooseButton.backgroundColor = [UIColor clearColor];
    //: chooseButton.titleLabel.font = [UIFont systemFontOfSize:16];
    chooseButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [chooseButton setTitleColor:[UIColor colorWithHexString:@"0d8bf5"] forState:UIControlStateNormal];
    [chooseButton setTitleColor:[UIColor withMax:StringFromNaturallyData(kStr_messageLogReferData)] forState:UIControlStateNormal];
    //: [chooseButton addTarget:self action:@selector(rightButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [chooseButton addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
    //: [upVeiw addSubview:chooseButton];
    [upVeiw addSubview:chooseButton];

    //: self.titleL = [[UILabel alloc] initWithFrame:CGRectMake(62, 10, [[UIScreen mainScreen] bounds].size.width-124, 30)];
    self.titleL = [[UILabel alloc] initWithFrame:CGRectMake(62, 10, [[UIScreen mainScreen] bounds].size.width-124, 30)];
    //: [upVeiw addSubview:_titleL];
    [upVeiw addSubview:_titleL];
    //: _titleL.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    _titleL.textColor = [UIColor withMax:StringFromNaturallyData(kStr_luteData)];
    //: _titleL.font = [UIFont systemFontOfSize:16];
    _titleL.font = [UIFont systemFontOfSize:16];
    //: _titleL.textAlignment = NSTextAlignmentCenter;
    _titleL.textAlignment = NSTextAlignmentCenter;
    //: _titleL.text = _titleString;
    _titleL.text = _titleString;

    //分割线
    //: UIView *splitView = [[UIView alloc] initWithFrame:CGRectMake(0, 50, [[UIScreen mainScreen] bounds].size.width, 0.5)];
    UIView *splitView = [[UIView alloc] initWithFrame:CGRectMake(0, 50, [[UIScreen mainScreen] bounds].size.width, 0.5)];
    //: splitView.backgroundColor = [UIColor lightTextColor];
    splitView.backgroundColor = [UIColor lightTextColor];
    //: [upVeiw addSubview:splitView];
    [upVeiw addSubview:splitView];


    //: if([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0){
    if([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0){
        //: datePicker.backgroundColor = [UIColor whiteColor];
        datePicker.backgroundColor = [UIColor whiteColor];
    }

}

//: - (void)changeDelegate:(id<HMDatePickerViewDelegate>)delegate{
- (void)empower:(id<PickerBubble>)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
    //: delegateClass = object_getClass(delegate);
    delegateClass = object_getClass(delegate);
}

//: - (void)datePickerValueChanged{
- (void)birthdayDisable{
    //: [self reloadYearLabel:datePicker.date];
    [self tool:datePicker.date];
}

//: - (void)reloadYearLabel:(NSDate*)date{
- (void)tool:(NSDate*)date{
    //    NSString *stringYM = [NSDate getStringFromDate:datePicker.date dateFormatter:KKDateFormatter05];
    //: NSString *stringYMD = [NSDate getStringFromDate:date dateFormatter:@"yyyy-MM-dd"];
    NSString *stringYMD = [NSDate addFormatter:date successOf:StringFromNaturallyData(kStr_necessaryContent)];
    //    NSString *stringYMDH = [NSDate getStringFromDate:date dateFormatter:KKDateFormatter03];
    //    NSString *stringYMDHM = [NSDate getStringFromDate:date dateFormatter:KKDateFormatter02];
    //
    //    CGFloat HH = [[NSDate getStringFromDate:date dateFormatter:@"HH"] floatValue];
    //    CGFloat mm = [[NSDate getStringFromDate:date dateFormatter:@"mm"] floatValue];


    //    if (HH==0 && mm==0) {
    //        yearLabel.text = stringYMD;
    //        yearLabel.font = [UIFont boldSystemFontOfSize:24];
    //    }
    //    else if (mm==0 && HH!=0){
    //        yearLabel.text = stringYMDH;
    //        yearLabel.font = [UIFont boldSystemFontOfSize:22];
    //    }
    //    else{
    //        yearLabel.text = stringYMDHM;
    //        yearLabel.font = [UIFont boldSystemFontOfSize:20];
    //    }
    //: yearLabel.text = stringYMD;
    yearLabel.text = stringYMD;
    //: yearLabel.font = [UIFont boldSystemFontOfSize:24];
    yearLabel.font = [UIFont boldSystemFontOfSize:24];
}

//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == 接口
#pragma mark == 接口
//: #pragma mark ==================================================
#pragma mark ==================================================
//: + (void)showInView:(UIView*)view delegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate *)showDate{
+ (void)quick:(UIView*)view optionDate:(id<PickerBubble>)delegate trackTitle:(NSDate*)minDate text:(NSDate*)maxDate disabled_strong:(NSDate *)showDate{

    //: HMDatePickerView *pickerView = [[HMDatePickerView alloc]initWithFrame:CGRectMake(0, 0, [UIApplication sharedApplication].windows.firstObject.frame.size.width, view.frame.size.height)];
    DateView *pickerView = [[DateView alloc]initWithFrame:CGRectMake(0, 0, [UIApplication sharedApplication].windows.firstObject.frame.size.width, view.frame.size.height)];
    //: pickerView.tag = 2006021272;
    pickerView.tag = 2006021272;
    //: if (minDate) {
    if (minDate) {
        //: [pickerView.datePicker setMinimumDate:minDate];
        [pickerView.datePicker setMinimumDate:minDate];
    }
    //: if (maxDate) {
    if (maxDate) {
        //: [pickerView.datePicker setMaximumDate:maxDate];
        [pickerView.datePicker setMaximumDate:maxDate];
    }
    //: if (showDate) {
    if (showDate) {
        //: [pickerView.datePicker setDate:showDate];
        [pickerView.datePicker setDate:showDate];
    }
    //: [pickerView changeDelegate:delegate];
    [pickerView empower:delegate];
    //: [view addSubview:pickerView];
    [view addSubview:pickerView];
    //: [pickerView show];
    [pickerView sound];


}

//: + (id)showWithDelegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate{
+ (id)bitArray:(id<PickerBubble>)delegate searched:(NSDate*)minDate filter_strong:(NSDate*)maxDate sizeByTip:(NSDate*)showDate{
    //: HMDatePickerView *pickerView = [[HMDatePickerView alloc]initWithFrame:CGRectMake(0, 0, [UIApplication sharedApplication].windows.firstObject.frame.size.width, [UIApplication sharedApplication].windows.firstObject.frame.size.height)];
    DateView *pickerView = [[DateView alloc]initWithFrame:CGRectMake(0, 0, [UIApplication sharedApplication].windows.firstObject.frame.size.width, [UIApplication sharedApplication].windows.firstObject.frame.size.height)];
    //: pickerView.tag = 2006021272;
    pickerView.tag = 2006021272;
    //: if (minDate) {
    if (minDate) {
        //: [pickerView.datePicker setMinimumDate:minDate];
        [pickerView.datePicker setMinimumDate:minDate];
    }
    //: if (maxDate) {
    if (maxDate) {
        //: [pickerView.datePicker setMaximumDate:maxDate];
        [pickerView.datePicker setMaximumDate:maxDate];
    }
    //: if (showDate) {
    if (showDate) {
        //: [pickerView.datePicker setDate:showDate];
        [pickerView.datePicker setDate:showDate];
    }
    //: [pickerView changeDelegate:delegate];
    [pickerView empower:delegate];

//    BOOL iswork = [pickerView.delegate isKindOfClass:[UEmployNotifiViewController class]];
//    BOOL isedu  = [pickerView.delegate isKindOfClass:[UInvitationTestViewController class]];
//    if (iswork || isedu) {
//        pickerView.datePicker.datePickerMode = UIDatePickerModeDateAndTime;
//
//    }

    //: UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    //: [window addSubview:pickerView];
    [window addSubview:pickerView];
    //: [window bringSubviewToFront:pickerView];
    [window bringSubviewToFront:pickerView];

    //: [pickerView show];
    [pickerView sound];

    //: return pickerView;
    return pickerView;
}

//: - (void)show{
- (void)sound{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: _blackBackgroundButton.alpha = 0.3;
        _blackBackgroundButton.alpha = 0.3;
        //: _animationView.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-190 -50, [[UIScreen mainScreen] bounds].size.width, 190 +50+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom));
        _animationView.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-190 -50, [[UIScreen mainScreen] bounds].size.width, 190 +50+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom));
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

    //: }];
    }];
}

//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == PickerViewDelegate
#pragma mark == PickerViewDelegate
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (void)leftButtonClicked:(id)sender{
- (void)signals:(id)sender{
    //: Class currentClass = object_getClass(self.delegate);
    Class currentClass = object_getClass(self.delegate);
    //: if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(dismissDataPickerView)]) {
    if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(viewHeight)]) {
        //: [self.delegate dismissDataPickerView];
        [self.delegate viewHeight];
    }

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: _blackBackgroundButton.alpha = 0;
        _blackBackgroundButton.alpha = 0;
        //: _animationView.frame = CGRectOffset(self.frame, 0, self.frame.size.height);
        _animationView.frame = CGRectOffset(self.frame, 0, self.frame.size.height);
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}

//: - (void)rightButtonClicked:(id)sender{
- (void)clicked:(id)sender{
    //: Class currentClass = object_getClass(self.delegate);
    Class currentClass = object_getClass(self.delegate);
    //: if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(dismissDataPickerView)]) {
    if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(viewHeight)]) {
        //: [self.delegate dismissDataPickerView];
        [self.delegate viewHeight];
    }
    //: if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(datePick:doneWithDate:)]) {
    if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(done:edge:)]) {
        //: [self.delegate datePick:self doneWithDate:datePicker.date];
        [self.delegate done:self edge:datePicker.date];
    }

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: _blackBackgroundButton.alpha = 0;
        _blackBackgroundButton.alpha = 0;
        //: _animationView.frame = CGRectOffset(self.frame, 0, self.frame.size.height);
        _animationView.frame = CGRectOffset(self.frame, 0, self.frame.size.height);
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}


//: @end
@end

Byte * NaturallyDataToCache(Byte *data) {
    int submitAt = data[0];
    int realize = data[1];
    Byte addition = data[2];
    int endRation = data[3];
    if (!submitAt) return data + endRation;
    for (int i = endRation; i < endRation + realize; i++) {
        int value = data[i] + addition;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[endRation + realize] = 0;
    return data + endRation;
}

NSString *StringFromNaturallyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)NaturallyDataToCache(data)];
}
