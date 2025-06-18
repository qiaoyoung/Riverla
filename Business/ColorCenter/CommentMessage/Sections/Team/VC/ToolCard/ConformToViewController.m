
#import <Foundation/Foundation.h>

NSString *StringFromSkeletonData(Byte *data);


//: #B391FF
Byte kStr_nimBlindEmptyName[] = {52, 7, 51, 10, 231, 32, 147, 49, 56, 130, 86, 117, 102, 108, 100, 121, 121, 26};


//: #2B2F36
Byte kStr_captainName[] = {93, 7, 33, 14, 247, 86, 218, 96, 111, 138, 214, 201, 123, 114, 68, 83, 99, 83, 103, 84, 87, 30};


//: back_arrow_bl
Byte kStr_corridorTributeValue[] = {31, 13, 84, 9, 165, 151, 42, 135, 7, 182, 181, 183, 191, 179, 181, 198, 198, 195, 203, 179, 182, 192, 84};


//: #F6F7FA
Byte kStr_levelText[] = {85, 7, 39, 6, 14, 163, 74, 109, 93, 109, 94, 109, 104, 21};


//: Announcement_title
Byte kStr_biasValue[] = {5, 18, 45, 14, 25, 53, 142, 181, 196, 155, 13, 249, 90, 54, 110, 155, 155, 156, 162, 155, 144, 146, 154, 146, 155, 161, 140, 161, 150, 161, 153, 146, 133};


//: #EEEEEE
Byte kStr_lipTitle[] = {32, 7, 73, 9, 163, 104, 67, 212, 54, 108, 142, 142, 142, 142, 142, 142, 8};


//: Please_enter_content
Byte kStr_dayFileQuickValue[] = {64, 20, 23, 9, 56, 41, 162, 60, 101, 103, 131, 124, 120, 138, 124, 118, 124, 133, 139, 124, 137, 118, 122, 134, 133, 139, 124, 133, 139, 42};


//: #999999
Byte kStr_flueSuspectName[] = {46, 7, 67, 14, 155, 240, 173, 194, 1, 1, 128, 202, 206, 154, 102, 124, 124, 124, 124, 124, 124, 13};


//: feedback_activity_submit
Byte kStr_voiceReferName[] = {84, 24, 85, 13, 113, 97, 161, 99, 199, 213, 114, 181, 36, 187, 186, 186, 185, 183, 182, 184, 192, 180, 182, 184, 201, 190, 203, 190, 201, 206, 180, 200, 202, 183, 194, 190, 201, 133};


//: 2B2F36
Byte kStr_afterCruiseCellTitle[] = {38, 6, 55, 7, 222, 90, 224, 105, 121, 105, 125, 106, 109, 168};


//: Group_description
Byte kStr_heroValue[] = {84, 17, 35, 13, 119, 255, 241, 75, 151, 123, 202, 182, 193, 106, 149, 146, 152, 147, 130, 135, 136, 150, 134, 149, 140, 147, 151, 140, 146, 145, 175};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCreateTeamAnnouncement.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCreateTeamAnnouncement.h"
#import "ConformToViewController.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UserGlobalMacro.h"
#import "UserGlobalMacro.h"
//: #import "FFFKitKeyboardInfo.h"
#import "OnRecentClose.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface FFFCreateTeamAnnouncement () <UITextFieldDelegate, UITextViewDelegate>
@interface ConformToViewController () <UITextFieldDelegate, UITextViewDelegate>
//: @property (strong, nonatomic) UITextField *titleTextField;
@property (strong, nonatomic) UITextField *titleTextField;
//: @property (strong, nonatomic) UITextView *contentTextView;
@property (strong, nonatomic) UITextView *contentTextView;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;

//: @end
@end

//: @implementation FFFCreateTeamAnnouncement
@implementation ConformToViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor withMax:StringFromSkeletonData(kStr_levelText)];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice clear]))];
//    bgView.backgroundColor = [UIColor redColor];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];


    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice clear]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromSkeletonData(kStr_corridorTributeValue)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(messageLeft) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice clear]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"Group_description"];
    labtitle.text = [ItemManager sessionInformation:StringFromSkeletonData(kStr_heroValue)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];



//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];


//    UIView *titleView = [[UIView alloc]initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+10, SCREEN_WIDTH-30, 50)];
////    titleView.backgroundColor = [UIColor whiteColor];
////    titleView.layer.cornerRadius = 8;
//    [self.view addSubview:titleView];
//    titleView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    titleView.layer.cornerRadius = 8;
//    titleView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    titleView.layer.shadowOffset = CGSizeMake(0,3);
//    titleView.layer.shadowOpacity = 1;
//    titleView.layer.shadowRadius = 0;




    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 300)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice clear])+10, [[UIScreen mainScreen] bounds].size.width-30, 300)];
    //: contentView.backgroundColor = [UIColor whiteColor];
    contentView.backgroundColor = [UIColor whiteColor];
    //: contentView.layer.cornerRadius = 8;
    contentView.layer.cornerRadius = 8;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];
//    contentView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    contentView.layer.cornerRadius = 8;
//    contentView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    contentView.layer.shadowOffset = CGSizeMake(0,3);
//    contentView.layer.shadowOpacity = 1;
//    contentView.layer.shadowRadius = 0;

    //: self.titleTextField = [[UITextField alloc] initWithFrame:CGRectMake(15, 10, [[UIScreen mainScreen] bounds].size.width-60, 30)];
    self.titleTextField = [[UITextField alloc] initWithFrame:CGRectMake(15, 10, [[UIScreen mainScreen] bounds].size.width-60, 30)];
    //: self.titleTextField.placeholder = [FFFLanguageManager getTextWithKey:@"Announcement_title"];
    self.titleTextField.placeholder = [ItemManager sessionInformation:StringFromSkeletonData(kStr_biasValue)];
    //: self.titleTextField.font = [UIFont systemFontOfSize:18.f];
    self.titleTextField.font = [UIFont systemFontOfSize:18.f];
    //: self.titleTextField.textColor = [UIColor colorWithHexString:@"2B2F36"];
    self.titleTextField.textColor = [UIColor withMax:StringFromSkeletonData(kStr_afterCruiseCellTitle)];
    //: self.titleTextField.text = self.defaultTitle;
    self.titleTextField.text = self.defaultTitle;
    //: self.titleTextField.delegate = self;
    self.titleTextField.delegate = self;
    //: [contentView addSubview:self.titleTextField];
    [contentView addSubview:self.titleTextField];

    //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(15, self.titleTextField.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 1)];
    UIView *line = [[UIView alloc]initWithFrame:CGRectMake(15, self.titleTextField.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 1)];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    line.backgroundColor = [UIColor withMax:StringFromSkeletonData(kStr_lipTitle)];
    //: [contentView addSubview:line];
    [contentView addSubview:line];

    //: self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, line.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 230)];
    self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, line.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 230)];
    //: self.contentTextView.textColor = [UIColor colorWithHexString:@"#2B2F36"];
    self.contentTextView.textColor = [UIColor withMax:StringFromSkeletonData(kStr_captainName)];
    //: self.contentTextView.font = [UIFont systemFontOfSize:14.f];
    self.contentTextView.font = [UIFont systemFontOfSize:14.f];
    //: self.contentTextView.delegate = self;
    self.contentTextView.delegate = self;
    //: self.contentTextView.placeholder = [FFFLanguageManager getTextWithKey:@"Please_enter_content"];
    self.contentTextView.placeholder = [ItemManager sessionInformation:StringFromSkeletonData(kStr_dayFileQuickValue)];
    //: self.contentTextView.text = self.defaultContent;
    self.contentTextView.text = self.defaultContent;
    //: [contentView addSubview:self.contentTextView];
    [contentView addSubview:self.contentTextView];

//    [self.view addSubview:self.numLabel];
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/512",(unsigned long)self.contentTextView.text.length];
//    self.numLabel.frame = CGRectMake(15, contentView.bottom+10, SCREEN_WIDTH-30, 20);

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
    submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    //: [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [submitButton setTitle:[FFFLanguageManager getTextWithKey:@"feedback_activity_submit"] forState:UIControlStateNormal];
    [submitButton setTitle:[ItemManager sessionInformation:StringFromSkeletonData(kStr_voiceReferName)] forState:UIControlStateNormal];
    //: [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(inputTitle:) forControlEvents:UIControlEventTouchUpInside];
    //: submitButton.layer.cornerRadius = 24;
    submitButton.layer.cornerRadius = 24;
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
    submitButton.backgroundColor = [UIColor withMax:StringFromSkeletonData(kStr_nimBlindEmptyName)];
    //: [self.view addSubview:submitButton];
    [self.view addSubview:submitButton];



}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)backAction{
- (void)messageLeft{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)textViewDidChange:(UITextView *)textView {
- (void)textViewDidChange:(UITextView *)textView {
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/400",textView.text.length];
}


//: - (void)onSave:(id)sender {
- (void)inputTitle:(id)sender {
    //: [self.titleTextField endEditing:YES];
    [self.titleTextField endEditing:YES];
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];
    //: NSString *title = [self.titleTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *title = [self.titleTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
    //: if([self.delegate respondsToSelector:@selector(createTeamAnnouncementCompleteWithTitle:content:)]) {
    if([self.delegate respondsToSelector:@selector(titleContent:collection:)]) {
        //: [self.delegate createTeamAnnouncementCompleteWithTitle:title content:content];
        [self.delegate titleContent:title collection:content];
    }
}

//: - (UILabel *)numLabel{
- (UILabel *)numLabel{
    //: if (!_numLabel) {
    if (!_numLabel) {
        //: _numLabel = [[UILabel alloc] init];
        _numLabel = [[UILabel alloc] init];
        //: _numLabel.font = [UIFont systemFontOfSize:12.f];
        _numLabel.font = [UIFont systemFontOfSize:12.f];
        //: _numLabel.textAlignment = NSTextAlignmentRight;
        _numLabel.textAlignment = NSTextAlignmentRight;
        //: _numLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _numLabel.textColor = [UIColor withMax:StringFromSkeletonData(kStr_flueSuspectName)];
    }
    //: return _numLabel;
    return _numLabel;
}



//: @end
@end

Byte * SkeletonDataToCache(Byte *data) {
    int novelCell = data[0];
    int notePale = data[1];
    Byte continentRestore = data[2];
    int acknowledgment = data[3];
    if (!novelCell) return data + acknowledgment;
    for (int i = acknowledgment; i < acknowledgment + notePale; i++) {
        int value = data[i] - continentRestore;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[acknowledgment + notePale] = 0;
    return data + acknowledgment;
}

NSString *StringFromSkeletonData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SkeletonDataToCache(data)];
}
