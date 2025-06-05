//
//  NTESMainCenterViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

#import "NTESMainCenterViewController.h"
#import "FFFCommonTableData.h"
#import "FFFCommonTableDelegate.h"
#import "SVProgressHUD.h"
#import "UIView+Toast.h"
#import "UIView+NTES.h"
#import "NTESBundleSetting.h"
#import "UIActionSheet+NTESBlock.h"
#import "UIAlertView+NTESBlock.h"
#import "NTESNotificationCenter.h"
#import "NTESCustomNotificationDB.h"
#import <AVFoundation/AVFoundation.h>
#import "NTESColorButtonCell.h"
#import "CCCBlackListViewController.h"
#import "NTESUserUtil.h"
#import "NTESSessionUtil.h"
#import "NTESMigrateMessageViewController.h"
#import <NIMSDK/NIMSDK.h>
#import "UIView+NTES.h"
#import "UIAlertView+NTESBlock.h"
#import "FFFUserInfoViewController.h"//个人资料
#import "NTESUserQRCodeViewController.h" //我的二维码
#import "NTESSafetySetingController.h"   //安全设置
#import "NTESFeedbackViewController.h" //意见反馈
#import "NTESLanguageViewController.h"

#import "NTESOpinionBackViewController.h" //意见反馈
#import "ZMONPolicyPrivacyViewController.h"
#import "MyLogViewController.h"
#import "FUBeautyViewController.h"

@interface NTESMainCenterViewController ()<NIMUserManagerDelegate>


@property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UIImageView *headerImage;
@property (nonatomic,strong) UILabel *lablang;
@property (nonatomic ,strong) NSString *language;


@end

@implementation NTESMainCenterViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
    [self refreshUserInfo];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
    [SVProgressHUD dismiss];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    bg.image = [UIImage imageNamed:@"common_bg"];
    [self.view addSubview:bg];
    
    [self initUI];
    [[NIMSDK sharedSDK].userManager addDelegate:self];
    
    self.language = [self requestLanguage:[NIMUserDefaults standardUserDefaults].language];
}

- (void)refreshUserInfo
{
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    FFFKitInfo *info = [[NeeyoKit sharedKit] infoByUser:userID option:nil];
    
    self.titleLabel.text = me.userInfo.nickName;
    self.accountLabel.text = [NSString stringWithFormat:@"%@",emptyString([NIMUserDefaults standardUserDefaults].accountName)];
    [self.headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    
    
    _lablang.text = self.language;
}

- (NSString *)requestLanguage:(NSString *)langType {
    
    NSString *resourceType = @"en";
    if ([langType containsString:@"en"]) {
        resourceType = @"English";
    }else if ([langType containsString:@"th"]){
        resourceType = @"ภาษาไทย ";
    }else if ([langType containsString:@"vi"]){
        resourceType = @"Việt nam";
    }else if ([langType containsString:@"hi"]){
        resourceType = @"हिंदी";
    }else if ([langType containsString:@"ja"]){
        resourceType = @"にほんご";
    }else if ([langType containsString:@"ko"]){
        resourceType = @"한국어";
    }else if ([langType containsString:@"spa"]){
        resourceType = @"Español";
    }else if ([langType containsString:@"pt"]){
        resourceType = @"Portugal";
    }else if ([langType containsString:@"zh"]){
        resourceType = @"中文";
    }else if ([langType containsString:@"it"]){
        resourceType = @"italiano";
    }else if ([langType containsString:@"eg"]){
        resourceType = @"العربية المصرية";
    }else if ([langType containsString:@"tr"]){
        resourceType = @"Türkçe";
    }else if ([langType containsString:@"ug"]){
        resourceType = @"Kiswahili";
    }else if ([langType containsString:@"de"]){
        resourceType = @"Em alemão";
    }else if ([langType containsString:@"pk"]){
        resourceType = @"‎اردو";
    }else if ([langType containsString:@"sa"]){
        resourceType = @"العربية";
    }else if ([langType containsString:@"ru"]){
        resourceType = @"русск";
    }else if ([langType containsString:@"bd"]){
        resourceType = @"বাঙ্গালি";
    }else if ([langType containsString:@"fr"]){
        resourceType = @"France";
    }else if ([langType containsString:@"hant"]){
        resourceType = @"中文繁体";
    }else if ([langType containsString:@"sv"]){
        resourceType = @"Sverige";
    }else if ([langType containsString:@"sl"]){
        resourceType = @"Slovenija";
    }else if ([langType containsString:@"sk"]){
        resourceType = @"Slovakia";
    }else if ([langType containsString:@"ro"]){
        resourceType = @"Romania";
    }else if ([langType containsString:@"pl"]){
        resourceType = @"Poland";
    }else if ([langType containsString:@"nl"]){
        resourceType = @"Netherlands";
    }else if ([langType containsString:@"mt"]){
        resourceType = @"Malta";
    }else if ([langType containsString:@"lb"]){
        resourceType = @"Luxembourg";
    }else if ([langType containsString:@"lt"]){
        resourceType = @"Lithuania";
    }else if ([langType containsString:@"lv"]){
        resourceType = @"Latvia";
    }else if ([langType containsString:@"bg"]){
        resourceType = @"Bulgaria";
    }else if ([langType containsString:@"hr"]){
        resourceType = @"Croatia";
    }else if ([langType containsString:@"cs"]){
        resourceType = @"Czech Republic";
    }else if ([langType containsString:@"da"]){
        resourceType = @"Denmark";
    }else if ([langType containsString:@"et"]){
        resourceType = @"Estonia";
    }else if ([langType containsString:@"fi"]){
        resourceType = @"Finland";
    }else if ([langType containsString:@"el"]){
        resourceType = @"Greece";
    }else if ([langType containsString:@"hu"]){
        resourceType = @"Hungary";
    }else if ([langType containsString:@"ga"]){
        resourceType = @"Ireland";
    }
    
    NSLog(@"resourceType : %@",resourceType);

    return resourceType;
}

- (void)initUI{
    
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    FFFKitInfo *info = [[NeeyoKit sharedKit] infoByUser:userID option:nil];
    
    _headerImage = [[UIImageView alloc] initWithFrame:CGRectMake(20,SCREEN_TOP_HEIGHT, 64, 64)];
    [self.view  addSubview:_headerImage];
    _headerImage.layer.cornerRadius = 32;
    _headerImage.layer.borderColor = [UIColor whiteColor].CGColor;
    _headerImage.layer.borderWidth = 1;
    _headerImage.layer.masksToBounds = YES;
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    
    [self.view addSubview:self.titleLabel];
    self.titleLabel.text = me.userInfo.nickName;
    self.titleLabel.frame = CGRectMake(_headerImage.right+10, SCREEN_TOP_HEIGHT+7, 150, 25);
    [self.titleLabel sizeToFit];
    
    [self.view addSubview:self.accountLabel];
    self.accountLabel.text = [NSString stringWithFormat:@"%@",emptyString([NIMUserDefaults standardUserDefaults].accountName)];
    self.accountLabel.frame = CGRectMake(_headerImage.right+10, self.titleLabel.bottom, 250, 25);
    
    UIButton *qrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    qrBtn.frame = CGRectMake(SCREEN_WIDTH-53-15, SCREEN_TOP_HEIGHT+2, 53, 60);
    qrBtn.backgroundColor = [UIColor whiteColor];
    qrBtn.layer.cornerRadius = 12;
    [qrBtn setImage:[UIImage imageNamed:@"user_qr_icon"] forState:(UIControlStateNormal)];
    [qrBtn addTarget:self action:@selector(handlebtnQr) forControlEvents:UIControlEventTouchUpInside];
    qrBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    [qrBtn setTitleColor:ThemeColor forState:UIControlStateNormal];
    [qrBtn setTitle:LangKey(@"qrcode_activity_title") forState:UIControlStateNormal];
    [qrBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
    [self.view addSubview:qrBtn];
    
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT+100, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-SCREEN_TABBAR_HEIGHT)];
    contentView.backgroundColor = RGB_COLOR_String(@"#ffffff");
    contentView.layer.cornerRadius = 34;
    [self.view addSubview:contentView];
    
    CGFloat width = (SCREEN_WIDTH-45)/2;
    UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, width, 52)];
    editView.backgroundColor = RGB_COLOR_String(@"#F7D2F3");
    editView.layer.cornerRadius = 12;
    [contentView addSubview:editView];
    editView.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userInfoCenter)];
    [editView addGestureRecognizer:singleTap1];
    UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    editimg.image = [UIImage imageNamed:@"user_edit_profile"];
    editimg.contentMode = UIViewContentModeScaleAspectFill;
    [editView addSubview:editimg];
    UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    labedit.font = [UIFont systemFontOfSize:14];
    labedit.textColor = RGB_COLOR_String(@"#2C3042");
    labedit.text = LangKey(@"edit_profile");
    [editView addSubview:labedit];
    
    UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width+30, 15, width, 52)];
    langView.backgroundColor = RGB_COLOR_String(@"#CCECFC");
    langView.layer.cornerRadius = 12;
    [contentView addSubview:langView];
    langView.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(changeLang)];
    [langView addGestureRecognizer:singleTap2];
    UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    langimg.image = [UIImage imageNamed:@"user_edit_lang"];
    langimg.contentMode = UIViewContentModeScaleAspectFill;
    [langView addSubview:langimg];
    _lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    _lablang.font = [UIFont systemFontOfSize:14];
    _lablang.textColor = RGB_COLOR_String(@"#2C3042");
    _lablang.text = @"English";
    [langView addSubview:_lablang];
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, editView.bottom+15, SCREEN_WIDTH-30, 162)];
    [contentView addSubview:view1];
    view1.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    view1.layer.cornerRadius = 12;
    view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    view1.layer.shadowOffset = CGSizeMake(0,4);
    view1.layer.shadowOpacity = 1;
    view1.layer.shadowRadius = 16;
    
    UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, SCREEN_WIDTH-60, 54)];
    box1.backgroundColor = [UIColor clearColor];
    [view1 addSubview:box1];
    
    UIImageView *image11 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_1"]];
    image11.frame = CGRectMake(0, 13, 28, 28);
    [box1 addSubview:image11];
    UILabel *label11 = [[UILabel alloc] initWithFrame:CGRectMake(image11.right+12, image11.top, SCREEN_WIDTH-90-60, 28)];
    label11.font = [UIFont systemFontOfSize:13.f];
    label11.textColor = [UIColor blackColor];
    label11.text = LangKey(@"receiver_model");
    [box1 addSubview:label11];
    UISwitch *switch11 = [[UISwitch alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60-51, image11.top-3, 51, 31)];
    switch11.onTintColor = ThemeColor;
    [switch11 addTarget:self action:@selector(switchWith:) forControlEvents:UIControlEventValueChanged];
    [box1 addSubview:switch11];
    
    
    UIView *boxlog = [[UIView alloc]initWithFrame:CGRectMake(15, box1.bottom, SCREEN_WIDTH-60, 54)];
    boxlog.backgroundColor = [UIColor clearColor];
    [view1 addSubview:boxlog];
    boxlog.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTap8 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(gotoMyLog)];
    [boxlog addGestureRecognizer:singleTap8];
    
    UIImageView *imagelog = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_my_log"]];
    imagelog.frame = CGRectMake(0, 13, 28, 28);
    [boxlog addSubview:imagelog];
    UILabel *labellog = [[UILabel alloc] initWithFrame:CGRectMake(imagelog.right+12, imagelog.top, SCREEN_WIDTH-60-60, 28)];
    labellog.font = [UIFont systemFontOfSize:13.f];
    labellog.textColor = [UIColor blackColor];
    labellog.text = LangKey(@"my_log");
    [boxlog addSubview:labellog];
    UIImageView *arrowrightlog = [[UIImageView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-60-12, 21, 12, 12)];
    arrowrightlog.image = [UIImage imageNamed:@"btn_right"];
    [boxlog addSubview:arrowrightlog];
    
    UIView *box6 = [[UIView alloc]initWithFrame:CGRectMake(15, boxlog.bottom, SCREEN_WIDTH-60, 54)];
    box6.backgroundColor = [UIColor clearColor];
    [view1 addSubview:box6];
    box6.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTap7 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(safetySeting)];
    [box6 addGestureRecognizer:singleTap7];
    
    UIImageView *image23 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_2"]];
    image23.frame = CGRectMake(0, 13, 28, 28);
    [box6 addSubview:image23];
    UILabel *label23 = [[UILabel alloc] initWithFrame:CGRectMake(image23.right+12, image23.top, SCREEN_WIDTH-60-60, 28)];
    label23.font = [UIFont systemFontOfSize:13.f];
    label23.textColor = [UIColor blackColor];
    label23.text = LangKey(@"safe_setting_activity_title");
    [box6 addSubview:label23];
    UIImageView *arrowright6 = [[UIImageView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-60-12, 21, 12, 12)];
    arrowright6.image = [UIImage imageNamed:@"btn_right"];
    [box6 addSubview:arrowright6];
    
    
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+10, SCREEN_WIDTH-30, 162)];
    [contentView addSubview:view2];
    view2.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    view2.layer.cornerRadius = 12;
    view2.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    view2.layer.shadowOffset = CGSizeMake(0,4);
    view2.layer.shadowOpacity = 1;
    view2.layer.shadowRadius = 16;
    
 
    
    UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, SCREEN_WIDTH-60, 54)];
    box3.backgroundColor = [UIColor clearColor];
    [view2 addSubview:box3];
    
    UIImageView *image14 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_3"]];
    image14.frame = CGRectMake(0, 13, 28, 28);
    [box3 addSubview:image14];
    UILabel *label14 = [[UILabel alloc] initWithFrame:CGRectMake(image14.right+12, image14.top, SCREEN_WIDTH-60-60, 28)];
    label14.font = [UIFont systemFontOfSize:13.f];
    label14.textColor = [UIColor blackColor];
    label14.text = LangKey(@"activity_comment_setting_ys");//@"用户协议和隐私协议";
    [box3 addSubview:label14];
    UIImageView *arrowright2 = [[UIImageView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-60-12, 21, 12, 12)];
    arrowright2.image = [UIImage imageNamed:@"btn_right"];
    [box3 addSubview:arrowright2];
    box3.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTap4 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(jumpAgreement)];
    [box3 addGestureRecognizer:singleTap4];
    
    UIView *box5 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, SCREEN_WIDTH-60, 54)];
    box5.backgroundColor = [UIColor clearColor];
    [view2 addSubview:box5];
    box5.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTap6 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(opinionBack)];
    [box5 addGestureRecognizer:singleTap6];
    
    UIImageView *image22 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_4"]];
    image22.frame = CGRectMake(0, 13, 28, 28);
    [box5 addSubview:image22];
    UILabel *label22 = [[UILabel alloc] initWithFrame:CGRectMake(image22.right+12, image22.top, SCREEN_WIDTH-60-60, 28)];
    label22.font = [UIFont systemFontOfSize:13.f];
    label22.textColor = [UIColor blackColor];
    label22.text = LangKey(@"feedback_activity_title");
    [box5 addSubview:label22];
    
    UIImageView *arrowright5 = [[UIImageView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-60-12, 21, 12, 12)];
    arrowright5.image = [UIImage imageNamed:@"btn_right"];
    [box5 addSubview:arrowright5];
    
    
    
   
    
    
    UIView *box7 = [[UIView alloc]initWithFrame:CGRectMake(15, box5.bottom, SCREEN_WIDTH-60, 54)];
    box7.backgroundColor = [UIColor clearColor];
    [view2 addSubview:box7];
    
    UIImageView *image31 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_5"]];
    image31.frame = CGRectMake(0, 13, 28, 28);
    [box7 addSubview:image31];
    UILabel *label31 = [[UILabel alloc] initWithFrame:CGRectMake(image31.right+12, image31.top, SCREEN_WIDTH-60-60, 28)];
    label31.font = [UIFont systemFontOfSize:13.f];
    label31.textColor = [UIColor blackColor];
    [box7 addSubview:label31];
    NSString *fragment_my_version = LangKey(@"fragment_my_version");
    NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    NSString *appVersion = [infoDic objectForKey:@"CFBundleShortVersionString"];// 获取App的版本号
    label31.text = [NSString stringWithFormat: @"%@：%@",fragment_my_version,appVersion];
    
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    loginButton.frame = CGRectMake(15, view2.bottom+20, SCREEN_WIDTH-30, 44);
    loginButton.titleLabel.font = [UIFont systemFontOfSize:14];
    [loginButton setTitleColor:RGB_COLOR_String(@"5D5F66") forState:UIControlStateNormal];
    [loginButton setTitle:LangKey(@"activity_comment_setting_exit") forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(logoutCurrentAccount) forControlEvents:UIControlEventTouchUpInside];
    [contentView addSubview:loginButton];
    loginButton.layer.borderWidth = 1;
    loginButton.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    loginButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    loginButton.layer.cornerRadius = 22;
  
    
    
}
#pragma mark - NTESMainCenterDelegate
-(void)userInfoCenter{
    FFFUserInfoViewController *vc = [[FFFUserInfoViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)handlebtnQr{
    
    NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    [self.navigationController pushViewController:vc animated:YES];
    
}
-(void)opinionBack{

    NTESFeedbackViewController *vc = [[NTESFeedbackViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
}
-(void)safetySeting{
    NTESSafetySetingController *vc = [[NTESSafetySetingController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)gotoMyLog
{
    MyLogViewController *vc = [[MyLogViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)switchWith:(UISwitch *)switchView{
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if (switchView.on) {
        [dict setObject:kConstant_1 forKey:@"enable"];
        
        // 启用听筒模式
        [self setEarpieceMode:YES];
        
    }else{
        [dict setObject:kConstant_0 forKey:@"enable"];
        
        // 禁用听筒模式
        [self setEarpieceMode:NO];
    }
}

- (void)setEarpieceMode:(BOOL)enabled {
    NSError *error = nil;
    
    // 获取当前的音频会话
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    
    // 配置音频会话为播放和录制
    [audioSession setCategory:AVAudioSessionCategoryPlayAndRecord error:&error];
    
    if (error) {
        NSLog(@"Error setting audio session category: %@", error);
        return;
    }
    
    // 激活音频会话
    [audioSession setActive:YES error:&error];
    
    if (error) {
        NSLog(@"Error activating audio session: %@", error);
        return;
    }
    
    // 根据开关设置听筒模式
    if (enabled) {
        // 切换到听筒
        [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideSpeaker error:&error];
    } else {
        // 使用默认音频输出设备（即听筒模式）
        [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideNone error:&error];
    }
    
    if (error) {
        NSLog(@"Error overriding audio port: %@", error);
    }
}


-(void)changeLang
{
    NTESLanguageViewController *vc = [[NTESLanguageViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)exitApp{
    NSString *alertStr = LangKey(@"system_change_language_title");
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:alertStr preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_sure") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        exit(0);
    }]];
    
    [alert addAction:[UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    
    UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    [rootVC presentViewController:alert animated:YES completion:nil];
    
}

-(void)jumpAgreement{
    
    ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
    vc.webTitle = LangKey(@"activity_comment_setting_ys");//@"隐私协议";
    vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)logoutCurrentAccount
{
    
    [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
     {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"NTESNotificationLogout" object:nil];
    }];
    
}


#pragma mark -- Setter && Getter
- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:22.f];
        _titleLabel.textColor = [UIColor blackColor];
    }
    return _titleLabel;
}

- (UILabel *)accountLabel{
    if (!_accountLabel) {
        _accountLabel = [[UILabel alloc] init];
        _accountLabel.font = [UIFont systemFontOfSize:12.f];
        _accountLabel.textColor = TextColor_3;
    }
    return _accountLabel;
}

- (UIButton *)closeBtn {
    if (!_closeBtn) {
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn setImage:[UIImage imageNamed:@"icon_close"] forState:UIControlStateNormal];
    }
    return _closeBtn;
}

- (UIButton *)sureBtn {
    if (!_sureBtn) {
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_sureBtn setImage:[UIImage imageNamed:@"icon_select_confirm"] forState:UIControlStateNormal];
        //        [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sureBtn;
}



@end
