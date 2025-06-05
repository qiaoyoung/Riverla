//
//  FFFGroupAvatarViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/8/8.
//  Copyright © 2024 Netease. All rights reserved.
//

#import "FFFGroupAvatarViewController.h"
#import "SVProgressHUD.h"
#import "UIView+Toast.h"
#import "UIActionSheet+NTESBlock.h"
#import "KEKESetNickNameView.h"
#import "SDWebImageManager.h"
#import "NTESFileLocationHelper.h"
#import <Photos/Photos.h>
#import "TZImageManager.h"
#import "TZVideoPlayerController.h"
#import "TZPhotoPreviewController.h"
#import "TZImagePickerController.h"
#import "UIView+TZLayout.h"
#import "UIView+Toast.h"
#import "NTESRegistConfigManager.h"
#import "FFFKitProgressHUD.h"
#import "FFFKitDependency.h"
#import "UIImage+NeeyoKit.h"
#import "NSString+NeeyoKit.h"
#import "NSSetAvater.h"

@interface FFFGroupAvatarViewController ()<NTESCustomUIAlertDelegate>

@property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UILabel  *appNameLabel;
@property (nonatomic, strong) UILabel  *subLabel;
@property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UIButton *registButton;

@property (nonatomic, strong) NSSetAvater *aleartView;

@end

@implementation FFFGroupAvatarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = CommonBGView_Color;
//        UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//        bg.image = [UIImage imageNamed:@"login_bg"];
//        [self.view addSubview:bg];
    
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.closeBtn];
    self.closeBtn.frame = CGRectMake(15, 4+SCREEN_STATUS_HEIGHT, 40, 40);
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60,  4+SCREEN_STATUS_HEIGHT, SCREEN_WIDTH-120, 40)];
    titleLabel.textColor = [UIColor blackColor];
    titleLabel.font = [UIFont boldSystemFontOfSize:16];
    titleLabel.text = LangKey(@"set_group_avater");
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
    
    [self initUI];
    
  
    
   
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];

}

- (void)backAction{
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)initUI
{
    UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT)];
    bodyView.backgroundColor = RGB_COLOR_String(@"#FAF8FD");
    [self.view addSubview:bodyView];
    
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH, 20)];
    self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    self.accountLabel.textColor = TextColor_2;
    self.accountLabel.text = LangKey(@"register_good_avater");
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    [bodyView addSubview:self.accountLabel];
    
    UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-140)/2, self.accountLabel.bottom+40, 140, 140)];
    [bodyView addSubview:imgView];
  
    _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    _aratarImgView.layer.cornerRadius = 70;
    _aratarImgView.layer.masksToBounds = YES;
    _aratarImgView.image = [UIImage imageNamed:@"head_default"];
    [imgView addSubview:_aratarImgView];
    
//    UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
//    usericon.image = [UIImage imageNamed:@"ic_hi"];
//    [imgView addSubview:usericon];
    
    UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(140-36, 140-36, 36, 36)];
//    cameraicon.backgroundColor = [UIColor whiteColor];
    [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    cameraicon.layer.cornerRadius = 18;
    cameraicon.layer.masksToBounds = YES;
    [imgView addSubview:cameraicon];
    [cameraicon addTarget:self action:@selector(showPicker) forControlEvents:(UIControlEventTouchUpInside)];
    
    UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+20, SCREEN_WIDTH, 20)];
    tita.text = self.groupName;
    tita.textColor = RGB_COLOR_String(@"#000000");
    tita.textAlignment = NSTextAlignmentCenter;
    tita.font = [UIFont systemFontOfSize:20];
    [bodyView addSubview:tita];
  

    
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton.frame = CGRectMake(15, tita.bottom+40, SCREEN_WIDTH-30, 48);
    self.registButton.backgroundColor = ThemeColor;
    self.registButton.layer.masksToBounds = YES;
    self.registButton.layer.cornerRadius = 24;
//    self.registButton.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:154/255.0 blue:220/255.0 alpha:1].CGColor;
//    self.registButton.layer.shadowOpacity = 1;
//    self.registButton.layer.shadowRadius = 0;
//    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitle:LangKey(@"contact_list_activity_complete") forState:UIControlStateNormal];
    [bodyView addSubview:self.registButton];
    [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
 
    
}

#pragma mark - UIImagePickerControllerSourceType
- (void)didTouchTheBtnWith:(NSInteger )tag
{
    if(tag == 101){
//        [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        [self pushTZImagePickerControllerWithAsset:nil];
    }else if (tag == 102){
//        [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        [self pushTZImagePickerControllerWithAsset:nil];
    }
}

- (void)showPicker {

    [self.view addSubview:self.aleartView];
    [self.aleartView animationShow];
    
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

#pragma mark - TZImagePickerController
- (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {

    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    
#pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
    imagePickerVc.isSelectOriginalPhoto = YES;
    if (asset){
        imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; // 目前已经选中的图片数组
    }
    imagePickerVc.allowTakePicture = YES; // 在内部显示拍照按钮
    imagePickerVc.allowTakeVideo = NO;   // 在内部显示拍视频按
    [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
        imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
    }];

    imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    imagePickerVc.showPhotoCannotSelectLayer = YES;
    imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    imagePickerVc.processHintStr = @"...";
    // 3. 设置是否可以选择视频/图片/原图
    imagePickerVc.allowPickingVideo = NO;
    imagePickerVc.allowPickingImage = YES;
    imagePickerVc.allowPickingOriginalPhoto = YES;
    imagePickerVc.allowPickingGif = NO;
    imagePickerVc.allowPickingMultipleVideo = NO;
    
    // 4. 照片排列按修改时间升序
    imagePickerVc.sortAscendingByModificationDate = YES;
    
     imagePickerVc.maxImagesCount = 1;

    /// 5. Single selection mode, valid when maxImagesCount = 1
    /// 5. 单选模式,maxImagesCount为1时才生效
    imagePickerVc.showSelectBtn = NO;
    imagePickerVc.allowCrop = YES;
    imagePickerVc.needCircleCrop = YES;
    // 设置竖屏下的裁剪尺寸
    NSInteger left = 30;
    NSInteger widthHeight = self.view.tz_width - 2 * left;
    NSInteger top = (self.view.tz_height - widthHeight) / 2;
    imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    imagePickerVc.scaleAspectFillCrop = YES;
   
    imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;
    
    // 设置是否显示图片序号
    imagePickerVc.showSelectedIndex = YES;
    
    imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
//    imagePickerVc.naviBgColor = [KEKESkinColorManager shareInstance].skinColor;
    imagePickerVc.naviTitleColor = [UIColor blackColor];
    imagePickerVc.barItemTextColor = [UIColor blackColor];
 
    NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *preferredlang = @"";
    if ([langType containsString:@"vi"]){
        preferredlang = @"vi";
    }else if ([langType containsString:@"ja"]){
        preferredlang = @"ja";
    }else if ([langType containsString:@"ko"]){
        preferredlang = @"ko-KP";
    }else if ([langType containsString:@"spa"]){
        preferredlang = @"es";
    }else if ([langType containsString:@"pt"]){
        preferredlang = @"pt";
    }else if ([langType containsString:@"zh"]){
        preferredlang = @"zh-Hans";
    }else if ([langType containsString:@"de"]){
        preferredlang = @"de";
    }else if ([langType containsString:@"sa"]){
        preferredlang = @"ar";
    }else if ([langType containsString:@"ru"]){
        preferredlang = @"ru";
    }else if ([langType containsString:@"fr"]){
        preferredlang = @"fr";
    }else if ([langType containsString:@"hant"]){
        preferredlang = @"zh-Hant";
    }else{
        preferredlang = @"en";
    }
    imagePickerVc.preferredLanguage = preferredlang;
    
#pragma mark - 到这里为止
    
    @weakify(self);
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        if (photos.count > 0 && assets.count > 0) {
            @strongify(self);
           
            [self.aratarImgView setImage:photos.firstObject];
            self.headerImage = photos.firstObject;
  
        }
    }];
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

- (void)nextButtonClick{
    
    self.speiceBackBlock(self.headerImage);
    
//    UIImage *imageForAvatarUpload = [self.headerImage nim_imageForAvatarUpload];
//    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
//    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
//    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
//    BOOL success = data && [data writeToFile:filePath atomically:YES];
//    __weak typeof(self) wself = self;
//    if (success) {
//        [FFFKitProgressHUD show];
//        __weak typeof(self) weakSelf = self;
//        [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//            [FFFKitProgressHUD dismiss];
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

- (NSSetAvater *)aleartView{
    if(!_aleartView){
        _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        _aleartView.delegate = self;
    }
    return _aleartView;
}

@end
