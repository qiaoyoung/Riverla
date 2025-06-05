//
//  RegisterInfoViewController.m
//  Neeyo
//
//  Created by mac on 2025/4/9.
//  Copyright © 2025 Neeyo. All rights reserved.
//

#import "RegisterInfoViewController.h"
#import "TZImagePickerController.h"
#import "NTESRegistConfigManager.h"
#import "NTESFileLocationHelper.h"

@interface RegisterInfoViewController ()

@property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImageView *aratarImgView;
@property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UIImageView *titleImg;

@property (strong, nonatomic)  UIButton *loginButton;
@property (strong, nonatomic)  UIButton *registerButton;

@property (nonatomic, strong) NSString *avaterUrl;

@end

@implementation RegisterInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    bg.image = [UIImage imageNamed:@"login_bg"];
    [self.view addSubview:bg];
    
    [self initUI];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}
- (void)backAction{
    [self.navigationController popViewControllerAnimated:NO];
}
- (void)initUI
{
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    closeBtn.frame = CGRectMake(15, SCREEN_STATUS_HEIGHT+2, 40, 40);
    [closeBtn setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:closeBtn];
    
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+20, SCREEN_WIDTH-30, 30)];
    labtitle.text = LangKey(@"register_good_nick");
    labtitle.textColor = TextColor_2;
    labtitle.font = [UIFont systemFontOfSize:14];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:labtitle];
    
    UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-140)/2, labtitle.bottom+30, 140, 140)];
    [self.view addSubview:avaterView];
    self.aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    self.aratarImgView.image = [UIImage imageNamed:@"photo_account_def"];
    self.aratarImgView.layer.cornerRadius = 70;
    self.aratarImgView.layer.masksToBounds = YES;
    [avaterView addSubview:self.aratarImgView];
    self.btnPhoto = [UIButton buttonWithType:UIButtonTypeCustom];
//    self.btnPhoto.backgroundColor = [UIColor whiteColor];
    self.btnPhoto.layer.cornerRadius = 24;
    self.btnPhoto.layer.masksToBounds = YES;
    self.btnPhoto.frame = CGRectMake(92, 92, 48, 48);
    [self.btnPhoto setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [self.btnPhoto addTarget:self action:@selector(showPicker) forControlEvents:UIControlEventTouchUpInside];
    [avaterView addSubview:self.btnPhoto];
    
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, avaterView.bottom+30, SCREEN_WIDTH-40, 48)];
    usernameView.backgroundColor = RGB_COLOR_String(@"#F6F6F6");
    usernameView.layer.cornerRadius = 24;
    usernameView.layer.masksToBounds = YES;
    [self.view addSubview:usernameView];
    
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg.image = [UIImage imageNamed:@"login_nickname"];
    [usernameView addSubview:self.titleImg];
    
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, SCREEN_WIDTH-90, 44)];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.textColor = TextColor_4;
    //    _usernameTextField.keyboardType = UIKeyboardTypeASCIICapable;
//    _usernameTextField.delegate = self;
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:LangKey(@"nickname_tip") attributes:@{NSForegroundColorAttributeName:TextColor_3}];
    _usernameTextField.attributedPlaceholder = attrString;
    [usernameView addSubview:_usernameTextField];
    
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginButton.frame = CGRectMake(20, usernameView.bottom+20, SCREEN_WIDTH-40, 48);
    _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitle:LangKey(@"contact_list_activity_complete") forState:UIControlStateNormal];
    [_loginButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_loginButton];
    _loginButton.backgroundColor = ThemeColor;
    _loginButton.layer.cornerRadius = 24;
    
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton.frame = CGRectMake(SCREEN_WIDTH-136, SCREEN_STATUS_HEIGHT+20, 146, 32);
    _registerButton.backgroundColor = ThemeColor;
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [_registerButton setTitleColor:RGB_COLOR_String(@"#ffffff") forState:UIControlStateNormal];
    [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",LangKey(@"activity_register_account_has_account"),LangKey(@"activity_login_login")] forState:UIControlStateNormal];
    [_registerButton addTarget:self action:@selector(gotologin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_registerButton];
    _registerButton.layer.masksToBounds = YES;
    _registerButton.layer.cornerRadius = 16;
}


- (void)requestAuthorizationForVideo {
   
    @weakify(self);
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            if (granted == YES) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    @strongify(self);

                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        [self pushTZImagePickerControllerWithAsset:nil];
                        
                    }
                });
            }
        }];
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            [self pushTZImagePickerControllerWithAsset:nil];
            
        }
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }
        
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:LangKey(@"warm_prompt") message:LangKey(@"setting_privacy_camera") preferredStyle:UIAlertControllerStyleAlert];
        [alertControl addAction:([UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        }])];
        [alertControl addAction:([UIAlertAction actionWithTitle:LangKey(@"tag_activity_set") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        }])];
        [self presentViewController:alertControl animated:YES completion:nil];
        
    }
}

/**
 *  请求相册
 */
- (void)requestAuthorizationForPhotoLibrary
{
    @weakify(self);
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    if (PHAuthorizationStatusNotDetermined == authStatus) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            if (PHAuthorizationStatusAuthorized == status) {
                @strongify(self);
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self pushTZImagePickerControllerWithAsset:nil];
                });
            }
        }];
        return;
    } else if (PHAuthorizationStatusAuthorized == authStatus){
        [self pushTZImagePickerControllerWithAsset:nil];
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }
        
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:LangKey(@"warm_prompt") message:LangKey(@"setting_privacy") preferredStyle:UIAlertControllerStyleAlert];
        [alertControl addAction:([UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        }])];
        [alertControl addAction:([UIAlertAction actionWithTitle:LangKey(@"tag_activity_set") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        }])];
        [self presentViewController:alertControl animated:YES completion:nil];
    }
}







- (void)showPicker {

    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];

//    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
////        [self pushTZImagePickerControllerWithAsset:nil];
//        [self requestAuthorizationForVideo];
//
//    }];

    UIAlertAction *picture = [UIAlertAction actionWithTitle:LangKey(@"message_send_album") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

//        [self pushTZImagePickerControllerWithAsset:nil];
        [self requestAuthorizationForPhotoLibrary];

            }];
    
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
   }];
    

//    [alertVc addAction:camera];
    [alertVc addAction:picture];
    [alertVc addAction:cancle];

    [self presentViewController:alertVc animated:YES completion:nil];
}

#pragma mark - TZImagePickerController
- (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {

    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    
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
    NSInteger widthHeight = self.view.width - 2 * left;
    NSInteger top = (self.view.height - widthHeight) / 2;
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
    
//    [NSSet setWithObjects:@"zh-Hans", @"zh-Hant", @"en", @"ar", @"de", @"es", @"fr", @"ja", @"ko-KP", @"pt", @"ru", @"vi", nil];
    // 设置首选语言 / Set preferred language
//         imagePickerVc.preferredLanguage = @"zh-Hans";
        // 设置languageBundle以使用其它语言 / Set languageBundle to use other language
//         imagePickerVc.languageBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"tz-ru" ofType:@"lproj"]];
    
#pragma mark - 到这里为止
    
    @weakify(self);
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        if (photos.count > 0 && assets.count > 0) {
            @strongify(self);
           
            [self.aratarImgView setImage:photos.firstObject];
            self.headerImage = photos.firstObject;
//            [self uploadImage:photos.firstObject];
        }
    }];
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

#pragma mark - Private
- (void)uploadImage:(UIImage *)image{
    
    UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    NSString *fileName = [NTESFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *filePath = [[NTESFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.7);
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    __weak typeof(self) wself = self;
    if (success) {
        [SVProgressHUD show];
        [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
            NSLog(@"%.2f",progress);
        } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
            [SVProgressHUD dismiss];
            if (!error && wself) {
                NSLog(@"urlString：%@",urlString);
                self.avaterUrl = urlString;
            }else{
                [wself.view makeToast:LangKey(@"user_info_avtivity_upload_avatar_failed")
                             duration:2
                             position:CSToastPositionCenter];
            }
        }];
    }else{
        [self.view makeToast:LangKey(@"group_info_activity_update_failed")
                    duration:2
                    position:CSToastPositionCenter];
    }
}


- (void)gotologin
{
    [self.navigationController popToRootViewControllerAnimated:NO];
}
- (void)nextButtonClick
{
    if (_usernameTextField.text.length == 0) {
        [self.view makeToast:LangKey(@"register_avtivity3_nick")
                    duration:2.0
                    position:CSToastPositionCenter];
        return;
    }
    if ([_usernameTextField.text isEqualToString:self.accountName]) {
        [self.view makeToast:LangKey(@"nickname_same_account")
                    duration:2.0
                    position:CSToastPositionCenter];
        return;
    }
    
    
    NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];

    if (_headerImage) {
        manager.headerImage = _headerImage;
    }else{
        [SVProgressHUD showMessage:LangKey(@"register_avtivity3_avatar")];
        return;
    }

    [manager.registDict setObject:self.usernameTextField.text forKey:@"nickname"];
//    [manager.registDict setObject:self.avaterUrl forKey:@"imageurl"];
    
    //注册
    [NTESRegistConfigManager sendRegistRequest:self.navigationController];
}

@end
