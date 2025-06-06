
#import <Foundation/Foundation.h>

NSString *StringFromWorriedSireData(Byte *data);


//: #B391FF
Byte kStr_spectrumPriorName[] = {46, 7, 6, 135, 37, 29, 70, 70, 49, 57, 51, 66, 35, 32};


//: back_arrow_bl
Byte kStr_goodData[] = {95, 13, 7, 248, 3, 6, 238, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 88};


//: #FAF8FD
Byte kStr_favorableText[] = {19, 7, 6, 255, 194, 196, 68, 70, 56, 70, 65, 70, 35, 207};


//: #000000
Byte kStr_focusName[] = {40, 7, 8, 106, 240, 168, 2, 194, 48, 48, 48, 48, 48, 48, 35, 49};


//: contact_list_activity_complete
Byte kStr_pinGloryContent[] = {38, 30, 6, 117, 6, 18, 101, 116, 101, 108, 112, 109, 111, 99, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 115, 105, 108, 95, 116, 99, 97, 116, 110, 111, 99, 153};


//: #5D5F66
Byte kStr_daughterValue[] = {39, 7, 10, 81, 126, 166, 100, 144, 39, 35, 54, 54, 70, 53, 68, 53, 35, 154};


//: zh-Hant
Byte kStr_sovereignContent[] = {97, 7, 11, 123, 183, 184, 30, 206, 59, 80, 190, 116, 110, 97, 72, 45, 104, 122, 207};


//: zh-Hans
Byte kStr_allianceTitle[] = {42, 7, 10, 163, 63, 128, 239, 66, 126, 177, 115, 110, 97, 72, 45, 104, 122, 111};


//: ko-KP
Byte kStr_gainPathValue[] = {74, 5, 13, 255, 47, 106, 19, 174, 146, 5, 37, 51, 232, 80, 75, 45, 111, 107, 118};


//: register_good_avater
Byte kStr_spiritData[] = {86, 20, 8, 141, 115, 254, 184, 114, 114, 101, 116, 97, 118, 97, 95, 100, 111, 111, 103, 95, 114, 101, 116, 115, 105, 103, 101, 114, 103};


//: icon_photo
Byte kStr_escapeValue[] = {34, 10, 13, 71, 105, 106, 202, 131, 131, 46, 251, 70, 228, 111, 116, 111, 104, 112, 95, 110, 111, 99, 105, 207};


//: spa
Byte kStr_reallyAcknowledgeText[] = {4, 3, 4, 178, 97, 112, 115, 249};


//: head_default
Byte kStr_willNameTitle[] = {53, 12, 4, 56, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 230};


//: hant
Byte kStr_albumLameTitle[] = {76, 4, 9, 225, 163, 204, 245, 119, 100, 116, 110, 97, 104, 160};


//: set_group_avater
Byte kStr_workingData[] = {3, 16, 11, 42, 202, 107, 249, 39, 150, 210, 240, 114, 101, 116, 97, 118, 97, 95, 112, 117, 111, 114, 103, 95, 116, 101, 115, 98};


//: #F6F7FA
Byte kStr_herText[] = {21, 7, 7, 33, 72, 70, 6, 65, 70, 55, 70, 54, 70, 35, 21};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScoopViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/8/8.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFGroupAvatarViewController.h"
#import "ScoopViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+RefreshFaceBlock.h"
//: #import "KEKESetNickNameView.h"
#import "HouseGenerateView.h"
//: #import "SDWebImageManager.h"
#import "SDWebImageManager.h"
//: #import "NTESFileLocationHelper.h"
#import "TrademarkByScaleHelper.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "TZImageManager.h"
#import "TZImageManager.h"
//: #import "TZVideoPlayerController.h"
#import "TZVideoPlayerController.h"
//: #import "TZPhotoPreviewController.h"
#import "TZPhotoPreviewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "UIView+TZLayout.h"
#import "UIView+TZLayout.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESRegistConfigManager.h"
#import "FaceVideo.h"
//: #import "FFFKitProgressHUD.h"
#import "DiscoverEffectView.h"
//: #import "ViewKitDependency.h"
#import "ViewKitDependency.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Notice.h"
//: #import "NSSetAvater.h"
#import "OriginView.h"

//: @interface FFFGroupAvatarViewController ()<NTESCustomUIAlertDelegate>
@interface ScoopViewController ()<ColorWith>

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;
//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;

//: @property (nonatomic, strong) NSSetAvater *aleartView;
@property (nonatomic, strong) OriginView *aleartView;

//: @end
@end

//: @implementation FFFGroupAvatarViewController
@implementation ScoopViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor isView:StringFromWorriedSireData(kStr_herText)];
//        UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//        bg.image = [UIImage imageNamed:@"login_bg"];
//        [self.view addSubview:bg];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:StringFromWorriedSireData(kStr_goodData)] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(messageView) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 4+[UIDevice table], 40, 40);

    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 4+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 4+[UIDevice table], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:16];
    titleLabel.font = [UIFont boldSystemFontOfSize:16];
    //: titleLabel.text = [FFFLanguageManager getTextWithKey:@"set_group_avater"];
    titleLabel.text = [TeamManager sizeKey:StringFromWorriedSireData(kStr_workingData)];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];

    //: [self initUI];
    [self initViewDown];




}
//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: - (void)backAction{
- (void)messageView{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)initUI
- (void)initViewDown
{
    //: UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice table]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice table]))];
    //: bodyView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
    bodyView.backgroundColor = [UIColor isView:StringFromWorriedSireData(kStr_favorableText)];
    //: [self.view addSubview:bodyView];
    [self.view addSubview:bodyView];

    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor isView:StringFromWorriedSireData(kStr_daughterValue)];
    //: self.accountLabel.text = [FFFLanguageManager getTextWithKey:@"register_good_avater"];
    self.accountLabel.text = [TeamManager sizeKey:StringFromWorriedSireData(kStr_spiritData)];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [bodyView addSubview:self.accountLabel];
    [bodyView addSubview:self.accountLabel];

    //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, self.accountLabel.bottom+40, 140, 140)];
    UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, self.accountLabel.bottom+40, 140, 140)];
    //: [bodyView addSubview:imgView];
    [bodyView addSubview:imgView];

    //: _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    //: _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    //: _aratarImgView.layer.cornerRadius = 70;
    _aratarImgView.layer.cornerRadius = 70;
    //: _aratarImgView.layer.masksToBounds = YES;
    _aratarImgView.layer.masksToBounds = YES;
    //: _aratarImgView.image = [UIImage imageNamed:@"head_default"];
    _aratarImgView.image = [UIImage imageNamed:StringFromWorriedSireData(kStr_willNameTitle)];
    //: [imgView addSubview:_aratarImgView];
    [imgView addSubview:_aratarImgView];

//    UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
//    usericon.image = [UIImage imageNamed:@"ic_hi"];
//    [imgView addSubview:usericon];

    //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(140-36, 140-36, 36, 36)];
    UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(140-36, 140-36, 36, 36)];
//    cameraicon.backgroundColor = [UIColor whiteColor];
    //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [cameraicon setImage:[UIImage imageNamed:StringFromWorriedSireData(kStr_escapeValue)] forState:(UIControlStateNormal)];
    //: cameraicon.layer.cornerRadius = 18;
    cameraicon.layer.cornerRadius = 18;
    //: cameraicon.layer.masksToBounds = YES;
    cameraicon.layer.masksToBounds = YES;
    //: [imgView addSubview:cameraicon];
    [imgView addSubview:cameraicon];
    //: [cameraicon addTarget:self action:@selector(showPicker) forControlEvents:(UIControlEventTouchUpInside)];
    [cameraicon addTarget:self action:@selector(frameOfPicker) forControlEvents:(UIControlEventTouchUpInside)];

    //: UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: tita.text = self.groupName;
    tita.text = self.groupName;
    //: tita.textColor = [UIColor colorWithHexString:@"#000000"];
    tita.textColor = [UIColor isView:StringFromWorriedSireData(kStr_focusName)];
    //: tita.textAlignment = NSTextAlignmentCenter;
    tita.textAlignment = NSTextAlignmentCenter;
    //: tita.font = [UIFont systemFontOfSize:20];
    tita.font = [UIFont systemFontOfSize:20];
    //: [bodyView addSubview:tita];
    [bodyView addSubview:tita];



    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(15, tita.bottom+40, [[UIScreen mainScreen] bounds].size.width-30, 48);
    self.registButton.frame = CGRectMake(15, tita.bottom+40, [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
    self.registButton.backgroundColor = [UIColor isView:StringFromWorriedSireData(kStr_spectrumPriorName)];
    //: self.registButton.layer.masksToBounds = YES;
    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 24;
    self.registButton.layer.cornerRadius = 24;
//    self.registButton.layer.shadowColor = DeepBtnColor.CGColor;
//    self.registButton.layer.shadowOpacity = 1;
//    self.registButton.layer.shadowRadius = 0;
//    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [self.registButton setTitle:[TeamManager sizeKey:StringFromWorriedSireData(kStr_pinGloryContent)] forState:UIControlStateNormal];
    //: [bodyView addSubview:self.registButton];
    [bodyView addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(upwardView) forControlEvents:UIControlEventTouchUpInside];


}

//: #pragma mark - UIImagePickerControllerSourceType
#pragma mark - UIImagePickerControllerSourceType
//: - (void)didTouchTheBtnWith:(NSInteger )tag
- (void)need:(NSInteger )tag
{
    //: if(tag == 101){
    if(tag == 101){
//        [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self name:nil];
    //: }else if (tag == 102){
    }else if (tag == 102){
//        [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self name:nil];
    }
}

//: - (void)showPicker {
- (void)frameOfPicker {

    //: [self.view addSubview:self.aleartView];
    [self.view addSubview:self.aleartView];
    //: [self.aleartView animationShow];
    [self.aleartView tingBy];

//    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
//
//    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
//        [self pushTZImagePickerControllerWithAsset:nil];
//
//    }];
//
//    UIAlertAction *picture = [UIAlertAction actionWithTitle:LangKey(@"message_send_album") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
//        [self pushTZImagePickerControllerWithAsset:nil];
//
//            }];
//    
//    UIAlertAction *cancle = [UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
//   }];
//    
//
//    [alertVc addAction:camera];
//    [alertVc addAction:picture];
//    [alertVc addAction:cancle];
//
//    [self presentViewController:alertVc animated:YES completion:nil];
}

//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)name:(PHAsset *)asset {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];

//: #pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
#pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
    //: imagePickerVc.isSelectOriginalPhoto = YES;
    imagePickerVc.isSelectOriginalPhoto = YES;
    //: if (asset){
    if (asset){
        //: imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; 
        imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; // 目前已经选中的图片数组
    }
    //: imagePickerVc.allowTakePicture = YES; 
    imagePickerVc.allowTakePicture = YES; // 在内部显示拍照按钮
    //: imagePickerVc.allowTakeVideo = NO; 
    imagePickerVc.allowTakeVideo = NO; // 在内部显示拍视频按
    //: [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
    [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
        //: imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
        imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
    //: }];
    }];

    //: imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    //: imagePickerVc.showPhotoCannotSelectLayer = YES;
    imagePickerVc.showPhotoCannotSelectLayer = YES;
    //: imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    //: imagePickerVc.processHintStr = @"...";
    imagePickerVc.processHintStr = @"...";
    // 3. 设置是否可以选择视频/图片/原图
    //: imagePickerVc.allowPickingVideo = NO;
    imagePickerVc.allowPickingVideo = NO;
    //: imagePickerVc.allowPickingImage = YES;
    imagePickerVc.allowPickingImage = YES;
    //: imagePickerVc.allowPickingOriginalPhoto = YES;
    imagePickerVc.allowPickingOriginalPhoto = YES;
    //: imagePickerVc.allowPickingGif = NO;
    imagePickerVc.allowPickingGif = NO;
    //: imagePickerVc.allowPickingMultipleVideo = NO;
    imagePickerVc.allowPickingMultipleVideo = NO;

    // 4. 照片排列按修改时间升序
    //: imagePickerVc.sortAscendingByModificationDate = YES;
    imagePickerVc.sortAscendingByModificationDate = YES;

     //: imagePickerVc.maxImagesCount = 1;
     imagePickerVc.maxImagesCount = 1;

    /// 5. Single selection mode, valid when maxImagesCount = 1
    /// 5. 单选模式,maxImagesCount为1时才生效
    //: imagePickerVc.showSelectBtn = NO;
    imagePickerVc.showSelectBtn = NO;
    //: imagePickerVc.allowCrop = YES;
    imagePickerVc.allowCrop = YES;
    //: imagePickerVc.needCircleCrop = YES;
    imagePickerVc.needCircleCrop = YES;
    // 设置竖屏下的裁剪尺寸
    //: NSInteger left = 30;
    NSInteger left = 30;
    //: NSInteger widthHeight = self.view.tz_width - 2 * left;
    NSInteger widthHeight = self.view.tz_width - 2 * left;
    //: NSInteger top = (self.view.tz_height - widthHeight) / 2;
    NSInteger top = (self.view.tz_height - widthHeight) / 2;
    //: imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    //: imagePickerVc.scaleAspectFillCrop = YES;
    imagePickerVc.scaleAspectFillCrop = YES;

    //: imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;
    imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;

    // 设置是否显示图片序号
    //: imagePickerVc.showSelectedIndex = YES;
    imagePickerVc.showSelectedIndex = YES;

    //: imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
    imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
//    imagePickerVc.naviBgColor = [KEKESkinColorManager shareInstance].skinColor;
    //: imagePickerVc.naviTitleColor = [UIColor blackColor];
    imagePickerVc.naviTitleColor = [UIColor blackColor];
    //: imagePickerVc.barItemTextColor = [UIColor blackColor];
    imagePickerVc.barItemTextColor = [UIColor blackColor];

    //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *langType = emptyString([BlondeDefaults phone].language);
    //: NSString *preferredlang = @"";
    NSString *preferredlang = @"";
    //: if ([langType containsString:@"vi"]){
    if ([langType containsString:@"vi"]){
        //: preferredlang = @"vi";
        preferredlang = @"vi";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: preferredlang = @"ja";
        preferredlang = @"ja";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: preferredlang = @"ko-KP";
        preferredlang = StringFromWorriedSireData(kStr_gainPathValue);
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:StringFromWorriedSireData(kStr_reallyAcknowledgeText)]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = StringFromWorriedSireData(kStr_allianceTitle);
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: preferredlang = @"de";
        preferredlang = @"de";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: preferredlang = @"ar";
        preferredlang = @"ar";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: preferredlang = @"ru";
        preferredlang = @"ru";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: preferredlang = @"fr";
        preferredlang = @"fr";
    //: }else if ([langType containsString:@"hant"]){
    }else if ([langType containsString:StringFromWorriedSireData(kStr_albumLameTitle)]){
        //: preferredlang = @"zh-Hant";
        preferredlang = StringFromWorriedSireData(kStr_sovereignContent);
    //: }else{
    }else{
        //: preferredlang = @"en";
        preferredlang = @"en";
    }
    //: imagePickerVc.preferredLanguage = preferredlang;
    imagePickerVc.preferredLanguage = preferredlang;

//: #pragma mark - 到这里为止
#pragma mark - 到这里为止

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        //: if (photos.count > 0 && assets.count > 0) {
        if (photos.count > 0 && assets.count > 0) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;

            //: [self.aratarImgView setImage:photos.firstObject];
            [self.aratarImgView setImage:photos.firstObject];
            //: self.headerImage = photos.firstObject;
            self.headerImage = photos.firstObject;

        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

//: - (void)nextButtonClick{
- (void)upwardView{

    //: self.speiceBackBlock(self.headerImage);
    self.speiceBackBlock(self.headerImage);

//    UIImage *imageForAvatarUpload = [self.headerImage nim_imageForAvatarUpload];
//    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
//    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
//    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
//    BOOL success = data && [data writeToFile:filePath atomically:YES];
//    __weak typeof(self) wself = self;
//    if (success) {
//        [DiscoverEffectView show];
//        __weak typeof(self) weakSelf = self;
//        [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//            [DiscoverEffectView dismiss];
//            if (!error) {
//                NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
//                SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
//                [sdManager.imageCache storeImage:imageForAvatarUpload
//                                       imageData:data
//                                          forKey:urlString
//                                       cacheType:SDImageCacheTypeAll
//                                      completion:nil];
//                [wself.navigationController popViewControllerAnimated:NO];
//            }
////            [wself showToastMsg:msg];
//        }];
//    }

}

//: - (NSSetAvater *)aleartView{
- (OriginView *)aleartView{
    //: if(!_aleartView){
    if(!_aleartView){
        //: _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _aleartView = [[OriginView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _aleartView.delegate = self;
        _aleartView.delegate = self;
    }
    //: return _aleartView;
    return _aleartView;
}

//: @end
@end

Byte * WorriedSireDataToCache(Byte *data) {
    int sufficient = data[0];
    int bitterLike = data[1];
    int pursueFurniture = data[2];
    if (!sufficient) return data + pursueFurniture;
    for (int i = 0; i < bitterLike / 2; i++) {
        int begin = pursueFurniture + i;
        int end = pursueFurniture + bitterLike - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[pursueFurniture + bitterLike] = 0;
    return data + pursueFurniture;
}

NSString *StringFromWorriedSireData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WorriedSireDataToCache(data)];
}  
