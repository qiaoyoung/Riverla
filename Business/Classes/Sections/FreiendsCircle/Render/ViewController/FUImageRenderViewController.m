//
//  FUImageRenderViewController.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/8.
//

#import "FUImageRenderViewController.h"
#import "FUBeautyComponentManager.h"
#import "FULandmarkManager.h"
#import <UINavigationController+FDFullscreenPopGesture.h>

@interface FUImageRenderViewController ()<FUBeautyComponentDelegate,UIGestureRecognizerDelegate>

@property (nonatomic, strong) FUGLDisplayView *renderView;

@property (nonatomic, strong) UIButton *downloadButton;

@property (nonatomic, strong) UILabel *noTrackLabel;

@property (nonatomic, strong) UILabel *tipLabel;

@property (nonatomic, strong) FUImageRenderViewModel *viewModel;

@property (nonatomic, strong) UIView *boomView;
/// 恢复按钮
@property (nonatomic, strong) UIButton *recoverButton;
@property (nonatomic, strong) UIButton *captureButtonNext;

@end

@implementation FUImageRenderViewController

#pragma mark - Initializer

- (instancetype)initWithViewModel:(FUImageRenderViewModel *)viewModel {
    self = [super init];
    if (self) {
        self.viewModel = viewModel;
        self.viewModel.delegate = self;
    }
    return self;
}

#pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fd_interactivePopDisabled = YES; // 禁用当前页面的左滑返回
    
    self.photoArray = [NSMutableArray array];
    // 初始化FURenderKit
    [[FURenderKitManager sharedManager] setupRenderKit];
    
    // 加载美颜
    [[FUBeautyComponentManager sharedManager] loadBeautyForFilePath:[[NSBundle mainBundle] pathForResource:@"face_beautification" ofType:@"bundle"]];
    
    [self configureUI];
    
    [self.viewModel start];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillResignActive) name:UIApplicationWillResignActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationDidBecomeActive) name:UIApplicationDidBecomeActiveNotification object:nil];
    
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

// 3. 实现代理方法，返回 NO 表示禁止手势
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    return NO; // 禁止左滑返回
}

// 在当前页面出现时禁用，离开时恢复
//- (void)viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
//    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
//}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
    // // 添加美颜视图
    [[FUBeautyComponentManager sharedManager] addComponentViewToView:self.view];
    [FUBeautyComponentManager sharedManager].delegate = self;
    
    // 添加点位测试开关
    if ([FURenderKitManager sharedManager].showsLandmarks) {
        [FULandmarkManager show];
    }
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];
//    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    // 移除点位测试开关
    if ([FURenderKitManager sharedManager].showsLandmarks) {
        [FULandmarkManager dismiss];
    }
}

- (void)dealloc {
    [self.viewModel stop];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationWillResignActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationDidBecomeActiveNotification object:nil];
}

#pragma mark - UI

- (void)configureUI
{
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_TOP_HEIGHT)];
    [self.view addSubview:topView];
    
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    closeBtn.frame = CGRectMake(15, 4+SCREEN_STATUS_HEIGHT, 32, 32);
    closeBtn.backgroundColor = [UIColor clearColor];
    [closeBtn setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [topView addSubview:closeBtn];
    
//    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    infoBtn.frame = CGRectMake(SCREEN_WIDTH-15-32, 4+SCREEN_STATUS_HEIGHT, 32, 32);
//    infoBtn.backgroundColor = [UIColor clearColor];
//    [infoBtn setImage:[UIImage imageNamed:@"render_camera_switch"] forState:(UIControlStateNormal)];
//    [infoBtn addTarget:self action:@selector(headButtonViewSwitchAction:) forControlEvents:UIControlEventTouchUpInside];
//    [topView addSubview:infoBtn];
   
    [self.view addSubview:self.renderView];
    self.renderView.frame = CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-SCREEN_BOTTOM_HEIGHT-210);

    
//    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [backButton setImage:[UIImage imageNamed:@"back_item"] forState:UIControlStateNormal];
//    [backButton addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:backButton];
//    [backButton mas_makeConstraints:^(MASConstraintMaker *make) {
//        if (@available(iOS 11.0, *)) {
//            make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop).offset(20);
//        } else {
//            make.top.equalTo(self.view.mas_top).offset(30);
//        }
//        make.leading.equalTo(self.view.mas_leading).offset(10);
//        make.size.mas_offset(CGSizeMake(44, 44));
//    }];
    
    
    [self.view addSubview:self.noTrackLabel];
    [self.noTrackLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
    
    [self.view addSubview:self.tipLabel];
    [self.tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view.mas_centerY).mas_offset(24);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(32);
    }];
    
//    [self.view addSubview:self.downloadButton];
//    [self.downloadButton mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(self.view.mas_bottom).offset(-self.viewModel.downloadButtonBottomConstant - 10);
//        make.centerX.equalTo(self.view);
//        make.size.mas_offset(CGSizeMake(85, 85));
//    }];
    
    UIView *boomView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_HEIGHT-SCREEN_BOTTOM_HEIGHT-60, SCREEN_WIDTH, 60)];
    [self.view addSubview:boomView];
    
    [boomView addSubview:self.recoverButton];
    self.recoverButton.frame = CGRectMake(20, 10, 88, 40);
    
    
//    [boomView addSubview:self.downloadButton];
//    self.downloadButton.frame = CGRectMake((SCREEN_WIDTH-42)/2, 9, 42, 42);
    
    [boomView addSubview:self.captureButtonNext];
    self.captureButtonNext.frame = CGRectMake(SCREEN_WIDTH-88-20, 10, 88, 40);
}

#pragma mark - Instance methods

- (void)updateBottomConstraintsOfDownloadButton:(CGFloat)constraints {
    [self.downloadButton mas_updateConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view.mas_bottom).mas_offset(-constraints-10);
    }];
    [UIView animateWithDuration:0.15 animations:^{
        [self.view layoutIfNeeded];
    }];
}

#pragma mark - Event response

- (void)backAction {
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)downloadAction:(UIButton *)sender {
    @FUWeakify(self)
    self.viewModel.captureImageHandler = ^(UIImage * _Nonnull image) {
        @FUStrongify(self)
        dispatch_async(dispatch_get_main_queue(), ^{
            UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
            
        });
    };
}

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
    if (error) {
        [FUTipHUD showTips:LangKey(@"group_info_activity_update_failed") dismissWithDelay:1.5];
    } else {
        [FUTipHUD showTips:LangKey(@"group_info_activity_update_success") dismissWithDelay:1.5];
    }
}

- (void)applicationWillResignActive {
    [self.viewModel stop];
}

- (void)applicationDidBecomeActive {
    [self.viewModel start];
}

#pragma mark - FUImageRenderViewModelDelegate

- (void)imageRenderDidOutputPixelBuffer:(CVPixelBufferRef)imageBuffer {
    [self.renderView displayPixelBuffer:imageBuffer];
}

- (void)imageRenderShouldCheckDetectingStatus:(FUDetectingParts)parts {
    @autoreleasepool {
        BOOL detectingResult = YES;
        switch (parts) {
            case FUDetectingPartsFace:
                detectingResult = [FURenderKitManager faceTracked];
                break;
            case FUDetectingPartsHuman:
                detectingResult = [FURenderKitManager humanTracked];
                break;
            case FUDetectingPartsHand:
                detectingResult = [FURenderKitManager handTracked];
                break;
            default:
                break;
        }
//        dispatch_async(dispatch_get_main_queue(), ^{
//            self.noTrackLabel.hidden = detectingResult;
////            if (!detectingResult) {
////                self.noTrackLabel.text = parts == FUDetectingPartsFace ? FULocalizedString(@"未检测到人脸") : (parts == FUDetectingPartsHuman ? FULocalizedString(@"未检测到人体") : FULocalizedString(@"未检测到手势"));
////            }
//        });
    }
}
- (void)captureButtonDidTakePhotoNext
{
    @FUWeakify(self)
    self.viewModel.captureImageHandler = ^(UIImage * _Nonnull image) {
        @FUStrongify(self)
        [self.photoArray addObject:image];
        if (self.photoArray.count>0) {
            self.speiceimgBackBlock(self.photoArray);
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
            [self.navigationController popViewControllerAnimated:NO];
        });
    };
}
- (void)recoverAction
{
    [[FUBeautyComponentManager sharedManager].beautySkinViewModel recoverAllSkinValuesToDefault];
    [[FUBeautyComponentManager sharedManager].beautySkinView refreshSubviews];
}
#pragma mark - Getters
- (UIButton *)captureButtonNext {
    if (!_captureButtonNext) {
        _captureButtonNext = [UIButton buttonWithType:UIButtonTypeCustom];
        _captureButtonNext.layer.cornerRadius = 20;
        _captureButtonNext.backgroundColor = ThemeColor;
        
        [_captureButtonNext addTarget:self action:@selector(captureButtonDidTakePhotoNext) forControlEvents:UIControlEventTouchUpInside];
//        _captureButtonNext.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_captureButtonNext setTitleColor:RGB_COLOR_String(@"#ffffff") forState:UIControlStateNormal];
//        [_captureButtonNext setTitle:LangKey(@"user_info_avtivity_keep") forState:UIControlStateNormal];
        [_captureButtonNext setImage:[UIImage imageNamed:@"next_item"] forState:UIControlStateNormal];
    }
    return _captureButtonNext;
}

- (UIButton *)recoverButton {
    if (!_recoverButton) {
        _recoverButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _recoverButton.backgroundColor = RGB_COLOR_String(@"#1AB391FF");
        _recoverButton.layer.cornerRadius = 20;
//        _recoverButton.titleLabel.font = [UIFont systemFontOfSize:12];
//        [_recoverButton setTitle:LangKey(@"reset") forState:UIControlStateNormal];
//        [_recoverButton setTitleColor:ThemeColor forState:UIControlStateNormal];
        [_recoverButton setImage:[UIImage imageNamed:@"recover_item"] forState:UIControlStateNormal];
        [_recoverButton addTarget:self action:@selector(recoverAction) forControlEvents:UIControlEventTouchUpInside];
//        [_recoverButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
    }
    return _recoverButton;
}
- (UIButton *)downloadButton {
    if (!_downloadButton) {
        _downloadButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        _downloadButton.layer.cornerRadius = 42.5;
        [_downloadButton setBackgroundImage:[UIImage imageNamed:@"render_camera_capture"] forState:UIControlStateNormal];
        [_downloadButton addTarget:self action:@selector(downloadAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _downloadButton;
}

- (UILabel *)noTrackLabel {
    if (!_noTrackLabel) {
        _noTrackLabel = [[UILabel alloc] init];
        _noTrackLabel.textColor = [UIColor whiteColor];
        _noTrackLabel.font = [UIFont systemFontOfSize:17];
        _noTrackLabel.text = LangKey(@"No_Face_Tracking");
        _noTrackLabel.hidden = YES;
    }
    return _noTrackLabel;
}

- (UILabel *)tipLabel {
    if (!_tipLabel) {
        _tipLabel = [[UILabel alloc] init];
        _tipLabel.textColor = [UIColor whiteColor];
        _tipLabel.font = [UIFont systemFontOfSize:32];
        _tipLabel.textAlignment = NSTextAlignmentCenter;
        _tipLabel.hidden = YES;
    }
    return _tipLabel;
}

- (FUGLDisplayView *)renderView {
    if (!_renderView) {
        _renderView = [[FUGLDisplayView alloc] initWithFrame:self.view.bounds];
        _renderView.contentMode = FUGLDisplayViewContentModeScaleAspectFit;
    }
    return _renderView;
}

#pragma mark - Override methods

- (BOOL)prefersStatusBarHidden {
    return !FUDeviceIsiPhoneXStyle();
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
