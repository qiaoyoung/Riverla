//
//  FURenderViewController.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/7/19.
//  Copyright © 2022 FaceUnity. All rights reserved.
//

#import "FURenderViewController.h"
#import "FUBeautyComponentManager.h"
//#import "FUMediaPickerViewController.h"
//#import "FUHeadButtonView.h"
#import "FUCaptureButton.h"
#import "FULightingView.h"
#import "FUPopupMenu.h"
#import "FULandmarkManager.h"
#import <UINavigationController+FDFullscreenPopGesture.h>

@interface FURenderViewController ()<FUPopupMenuDelegate, FULightingViewDelegate,FUBeautyComponentDelegate>

/// 渲染视图
@property (nonatomic, strong) FUGLDisplayView *renderView;
/// 顶部功能视图
//@property (nonatomic, strong) FUHeadButtonView *headButtonView;
/// 拍照和录制视频按钮
@property (nonatomic, strong) FUCaptureButton *captureButton;
/// 拍照和录制视频按钮
@property (nonatomic, strong) UIButton *captureButtonNext;
/// 曝光度调节器
@property (nonatomic, strong) FULightingView *lightingView;
/// 手动对焦指示器
@property (nonatomic, strong) UIImageView *adjustImageView;
/// 恢复按钮
@property (nonatomic, strong) UIButton *recoverButton;

@property (nonatomic, strong) UILabel *noTrackLabel;

@property (nonatomic, strong) UILabel *tipLabel;

@property (nonatomic, strong) FURenderViewModel *viewModel;

@property (nonatomic, strong) UIView *boomView;

@end

@implementation FURenderViewController {
    // 对焦点击操作记录时间
    CFAbsoluteTime operatedTime;
}

#pragma mark - Initializer

- (instancetype)initWithViewModel:(FURenderViewModel *)viewModel {
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
}
- (void)backAction{
//    [[FURenderKitManager sharedManager] destoryRenderKit];
//    [[FUBeautyComponentManager sharedManager] unloadBeauty];
    
    if (self.viewModel.needsLoadingBeauty) {
        [FUBeautyComponentManager destory];
    }
    // 恢复相机曝光度
    [self.viewModel setCameraExposureValue:0];
    [self.viewModel stopCamera];
    [self.viewModel resetCameraSettings];
    [FURenderKitManager clearItems];

    if (self.photoArray.count>0) {
        self.speiceBackBlock(self.photoArray);
    }
    
    [self.navigationController popViewControllerAnimated:NO];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
    
    // 添加美颜视图
    [[FUBeautyComponentManager sharedManager] addComponentViewToView:self.view];
    [FUBeautyComponentManager sharedManager].delegate = self;

    
    // 进入后台保存数据
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appDidEnterBackground) name:UIApplicationDidEnterBackgroundNotification object:nil];
    
    // 每次进入页面或者返回页面都需要重新设置人脸和人体检测模式
//    if (self.viewModel.necessaryAIModelTypes & FUAIModelTypeFace) {
        [FURenderKitManager setFaceProcessorDetectMode:FUFaceProcessorDetectModeVideo];
//    }
//    if (self.viewModel.necessaryAIModelTypes & FUAIModelTypeHuman) {
//        [FURenderKitManager setHumanProcessorDetectMode:FUHumanProcessorDetectModeVideo];
//    }
    
    [self.viewModel startCameraWithRenderView:self.renderView];
    
//    // 添加点位测试开关
//    if ([FURenderKitManager sharedManager].showsLandmarks) {
//        [FULandmarkManager show];
//    }
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setHidden:NO];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
    [self.viewModel stopCamera];
    [self.viewModel resetCameraFocusAndExposureMode];
    
//    // 移除点位测试开关
//    if ([FURenderKitManager sharedManager].showsLandmarks) {
//        [FULandmarkManager dismiss];
//    }
}

- (void)appDidEnterBackground {
    [[FUBeautyComponentManager sharedManager] saveBeauty];
}

#pragma mark - FUBeautyComponentDelegate
- (void)beautyComponentDidTouchDownComparison {
    self.beautyviewModel.rendering = NO;
}

- (void)beautyComponentDidTouchUpComparison {
    self.beautyviewModel.rendering = YES;
}

- (void)beautyComponentNeedsDisplayPromptContent:(NSString *)content {
    if (content.length == 0) {
        return;
    }
    dispatch_async(dispatch_get_main_queue(), ^{
        self.tipLabel.text = content;
        self.tipLabel.hidden = NO;
    });
}


#pragma mark - UI

- (void)configureUI {
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_TOP_HEIGHT)];
    [self.view addSubview:topView];
    
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    closeBtn.frame = CGRectMake(15, 4+SCREEN_STATUS_HEIGHT, 32, 32);
    closeBtn.backgroundColor = [UIColor clearColor];
    [closeBtn setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [topView addSubview:closeBtn];
    
    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    infoBtn.frame = CGRectMake(SCREEN_WIDTH-15-32, 4+SCREEN_STATUS_HEIGHT, 32, 32);
    infoBtn.backgroundColor = [UIColor clearColor];
    [infoBtn setImage:[UIImage imageNamed:@"render_camera_switch"] forState:(UIControlStateNormal)];
    [infoBtn addTarget:self action:@selector(headButtonViewSwitchAction:) forControlEvents:UIControlEventTouchUpInside];
    [topView addSubview:infoBtn];
   
    
    [self.view addSubview:self.renderView];
    self.renderView.frame = CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-SCREEN_BOTTOM_HEIGHT-210);

    [self.view addSubview:self.lightingView];
    [self.view addSubview:self.adjustImageView];
    
    [self.view addSubview:self.noTrackLabel];
    [self.noTrackLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
    
//    [self.view addSubview:self.tipLabel];
//    [self.tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.equalTo(self.view.mas_centerY).mas_offset(24);
//        make.leading.mas_offset(10);
//        make.trailing.mas_offset(-10);
//    }];
    
    UIView *boomView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_HEIGHT-SCREEN_BOTTOM_HEIGHT-60, SCREEN_WIDTH, 60)];
    [self.view addSubview:boomView];
    
    [boomView addSubview:self.recoverButton];
    self.recoverButton.frame = CGRectMake(20, 10, 88, 40);
    
    
    [boomView addSubview:self.captureButton];
    self.captureButton.frame = CGRectMake((SCREEN_WIDTH-42)/2, 9, 42, 42);
    
    [boomView addSubview:self.captureButtonNext];
    self.captureButtonNext.frame = CGRectMake(SCREEN_WIDTH-88-20, 10, 88, 40);
    if (self.photoNum>0) {
        [self.captureButtonNext setTitle:[NSString stringWithFormat:@"(%lu/3)",(unsigned long)self.photoArray.count+self.photoNum] forState:UIControlStateNormal];
    }
}

#pragma mark - Private methods
/// 延迟隐藏视图
- (void)hideFocusAndLightingViewAfterDelay:(NSTimeInterval)deley {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(deley * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CFAbsoluteTime currentTime = CFAbsoluteTimeGetCurrent();
        if (currentTime - self->operatedTime > 1.29) {
            self.lightingView.hidden = YES;
            self.adjustImageView.hidden = YES;
        }
    });
}

#pragma mark - Event response
- (void)renderViewTapAction:(UITapGestureRecognizer *)tap {
    operatedTime = CFAbsoluteTimeGetCurrent();
    self.lightingView.hidden = NO;
    self.adjustImageView.hidden = NO;
    [self.viewModel switchCameraFocusMode:FUCaptureCameraFocusModeChangeless];
    CGPoint center = [tap locationInView:self.renderView];
    CGPoint imageCenter = [tap locationInView:self.view];
    self.adjustImageView.center = imageCenter;
    // 缩放动画
    self.adjustImageView.transform = CGAffineTransformIdentity;
    [UIView animateWithDuration:0.3 animations:^{
        self.adjustImageView.transform = CGAffineTransformMakeScale(0.67, 0.67);
    } completion:^(BOOL finished) {
        [self hideFocusAndLightingViewAfterDelay:1.0];
    }];
    // 根据renderView的填充模式计算图像中心点
    CGPoint pictureCenter;
    CGFloat scale = self.viewModel.inputBufferHeight / self.viewModel.inputBufferWidth;
    CGFloat renderViewWidth = CGRectGetWidth(self.renderView.bounds);
    CGFloat renderViewHeight = CGRectGetHeight(self.renderView.bounds);
    if (self.renderView.contentMode == FUGLDisplayViewContentModeScaleAspectFill) {
        // 短边填满(宽度按比例截取中间部分)
        CGFloat leading = (renderViewHeight / scale - renderViewWidth) / 2.0;
        CGFloat pictureWidth = renderViewWidth + leading * 2;
        center.x += leading;
        if (center.y <= 0) {
            return;
        }
        pictureCenter = CGPointMake(center.y / renderViewHeight, self.viewModel.captureDevicePostion == AVCaptureDevicePositionFront ? center.x / pictureWidth : 1 - center.x / pictureWidth);
    } else if (self.renderView.contentMode == FUGLDisplayViewContentModeScaleAspectFit) {
        // 长边填满(高度上下会留空白)
        CGFloat top = (renderViewHeight - renderViewWidth * scale) / 2.0;
        CGFloat pictureHeight = renderViewHeight - top * 2;
        center.y -= top;
        if (center.y <= 0) {
            return;
        }
        pictureCenter = CGPointMake(center.y / pictureHeight, self.viewModel.captureDevicePostion == AVCaptureDevicePositionFront ? center.x / renderViewWidth : 1 - center.x / renderViewWidth);
    } else {
        // 拉伸填满
        pictureCenter = CGPointMake(center.y / renderViewHeight, self.viewModel.captureDevicePostion == AVCaptureDevicePositionFront ? center.x / renderViewWidth : 1 - center.x / renderViewWidth);
    }
    [self.viewModel setCameraFocusPoint:pictureCenter];
}

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
    if (error) {
        [FUTipHUD showTips:LangKey(@"group_info_activity_update_failed") dismissWithDelay:1.5];
    } else {
        [FUTipHUD showTips:LangKey(@"group_info_activity_update_success") dismissWithDelay:1.5];
    }
}

- (void)video:(NSString *)videoPath didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
    if (error) {
        [FUTipHUD showTips:FULocalizedString(@"保存视频失败") dismissWithDelay:1.5];
    } else {
        [FUTipHUD showTips:FULocalizedString(@"视频已保存到相册") dismissWithDelay:1.5];
    }
}

#pragma mark - FURenderViewModelDelegate

- (void)renderShouldCheckDetectingStatus:(FUDetectingParts)parts {
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
        dispatch_async(dispatch_get_main_queue(), ^{
            self.noTrackLabel.hidden = detectingResult;
//            if (!detectingResult) {
//                self.noTrackLabel.text = parts == FUDetectingPartsFace ? FULocalizedString(@"未检测到人脸") : (parts == FUDetectingPartsHuman ? FULocalizedString(@"未检测到人体") : FULocalizedString(@"未检测到手势"));
//            }
        });
    }
}

#pragma mark - FULightingViewDelegate

- (void)lightingViewValueDidChange:(float)value {
    operatedTime = CFAbsoluteTimeGetCurrent();
    [self hideFocusAndLightingViewAfterDelay:1.3];
    [self.viewModel setCameraExposureValue:value];
}

//#pragma mark - FUHeadButtonViewDelegate
//
//- (void)headButtonViewBackAction:(UIButton *)btn {
//    if (self.viewModel.needsLoadingBeauty) {
//        [FUBeautyComponentManager destory];
//    }
//    // 恢复相机曝光度
//    [self.viewModel setCameraExposureValue:0];
//    [self.viewModel stopCamera];
//    [self.viewModel resetCameraSettings];
//    [FURenderKitManager clearItems];
//    [self.navigationController popViewControllerAnimated:YES];
//}
//
//- (void)headButtonViewSegmentedChange:(NSUInteger)index {
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        [self.viewModel switchCameraOutputFormat];
//    });
//}
//
//- (void)headButtonViewSelImageAction:(UIButton *)btn {
//    if (!self.viewModel.supportPresetSelection) {
//        // 直接进入图片和视频选择页面
//        FUMediaPickerViewController *picker = [[FUMediaPickerViewController alloc] initWithViewModel:[[FUMediaPickerViewModel alloc] initWithModule:self.viewModel.module]];
//        [self.navigationController pushViewController:picker animated:YES];
//    } else {
//        // 弹出视图
//        CGFloat height;
//        BOOL hideMediaSelection;
//        if (self.viewModel.supportMediaRendering) {
//            // 支持分辨率、图片或视频视图
//            height = 132;
//            hideMediaSelection = NO;
//        } else {
//            // 只支持分辨率视图
//            height = 80;
//            hideMediaSelection = YES;
//        }
//        int selectedPresetIndex = (int)[self.viewModel.presets indexOfObject:self.viewModel.capturePreset];
//        [FUPopupMenu showRelyOnView:btn frame:CGRectMake(17, CGRectGetMaxY(self.headButtonView.frame) + 1, 340, height) defaultSelectedAtIndex:selectedPresetIndex onlyTop:hideMediaSelection dataSource:self.viewModel.presetTitles delegate:self];
//    }
//}
//
//- (void)headButtonViewBuglyAction:(UIButton *)btn {
//    self.buglyLabel.hidden = !self.buglyLabel.hidden;
//}
//
- (void)headButtonViewSwitchAction:(UIButton *)btn {
    btn.userInteractionEnabled = NO;
    dispatch_time_t delayTime = dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC);
    dispatch_after(delayTime, dispatch_get_main_queue(), ^(void){
        btn.userInteractionEnabled = YES;
    });
    [self.viewModel switchCameraBetweenFrontAndRear:self.viewModel.captureDevicePostion != AVCaptureDevicePositionFront unsupportedPresetHandler:^{
        dispatch_async(dispatch_get_main_queue(), ^{
            [FUTipHUD showTips:FULocalizedString(@"设备不支持该分辨率") dismissWithDelay:1.5];
        });
    }];
}
//
//#pragma mark - FUPopupMenuDelegate
//
///// 选择图片或视频
//- (void)fuPopupMenuDidSelectedImage {
//    // 直接进入图片和视频选择页面
//    dispatch_async(dispatch_get_main_queue(), ^{
//        FUMediaPickerViewController *picker = [[FUMediaPickerViewController alloc] initWithViewModel:[[FUMediaPickerViewModel alloc] initWithModule:self.viewModel.module]];
//        [self.navigationController pushViewController:picker animated:YES];
//    });
//}
//
///// 分辨率切换
//- (void)fuPopupMenuSegment:(FUSegmentedControl *)segment didSelectedAtIndex:(NSInteger)index {
//    segment.userInteractionEnabled = NO;
//    AVCaptureSessionPreset selectedPreset = self.viewModel.presets[index];
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        [self.viewModel switchCapturePreset:selectedPreset unsupportedPresetHandler:^{
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [FUTipHUD showTips:FULocalizedString(@"设备不支持该分辨率") dismissWithDelay:1.5];
//            });
//        }];
//        dispatch_async(dispatch_get_main_queue(), ^{
//            segment.userInteractionEnabled = YES;
//        });
//    });
//}

#pragma mark - FUCaptureButtonDelegate
- (void)captureButtonDidTakePhotoNext
{
    [FUUtility requestPhotoLibraryAuthorization:^(PHAuthorizationStatus status) {
        if (status == PHAuthorizationStatusAuthorized) {
            dispatch_async(dispatch_get_main_queue(), ^{
               
                
                    UIImage *image = [FURenderKit captureImage];
                    UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
                    [self.photoArray addObject:image];
                    
                [self.captureButtonNext setTitle:[NSString stringWithFormat:@"(%lu/3)",(unsigned long)self.photoArray.count+self.photoNum] forState:UIControlStateNormal];
//                [self.captureButtonNext layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
                
                    if (self.photoArray.count+self.photoNum >= 3) {
                        [self backAction];
                    }
                
            });
            
           
        }
    }];
    
    
}
- (void)captureButtonDidTakePhoto {
    [FUUtility requestPhotoLibraryAuthorization:^(PHAuthorizationStatus status) {
        if (status == PHAuthorizationStatusAuthorized) {
            
            dispatch_async(dispatch_get_main_queue(), ^{
            UIImage *image = [FURenderKit captureImage];
            UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
            
            [self.photoArray addObject:image];
            [self backAction];
                
            });
        }
    }];
    
}

- (void)captureButtonDidStartRecording {
    [FUUtility requestPhotoLibraryAuthorization:^(PHAuthorizationStatus status) {
        if (status == PHAuthorizationStatusAuthorized) {
            NSString *videoPath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.mp4", FUCurrentDateString()]];
            if (!videoPath) {
                return;
            }
            [FURenderKit startRecordVideoWithFilePath:videoPath];
        }
    }];
    
}

- (void)captureButtonDidFinishRecording {
    @FUWeakify(self)
    [FURenderKit stopRecordVideoComplention:^(NSString * _Nonnull filePath) {
        @FUStrongify(self)
        if (!filePath) {
            return;
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            UISaveVideoAtPathToSavedPhotosAlbum(filePath, self, @selector(video:didFinishSavingWithError:contextInfo:), NULL);
        });
    }];
}

#pragma mark - Getters

- (FUGLDisplayView *)renderView {
    if (!_renderView) {
        _renderView = [[FUGLDisplayView alloc] initWithFrame:self.view.bounds];
//        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(renderViewTapAction:)];
//        [_renderView addGestureRecognizer:tap];
    }
    return _renderView;
}

//- (FUHeadButtonView *)headButtonView {
//    if (!_headButtonView) {
//        _headButtonView = [[FUHeadButtonView alloc] init];
//        _headButtonView.delegate = self;
//        _headButtonView.selectedImageButton.hidden = (!self.viewModel.supportMediaRendering && !self.viewModel.supportPresetSelection);
//        _headButtonView.segmentedControl.hidden = !self.viewModel.supportSwitchingOutputFormat;
//        if (!_headButtonView.hidden) {
//            [_headButtonView.selectedImageButton setImage:self.viewModel.supportPresetSelection ? [UIImage imageNamed:@"render_more"] : [UIImage imageNamed:@"render_picture"] forState:UIControlStateNormal];
//        }
//    }
//    return _headButtonView;
//}

- (void)recoverAction
{
    [[FUBeautyComponentManager sharedManager].beautySkinViewModel recoverAllSkinValuesToDefault];
    [[FUBeautyComponentManager sharedManager].beautySkinView refreshSubviews];
    
    [FUBeautyComponentManager sharedManager].beautyFilterViewModel.selectedIndex = 0;
    // 默认选中
    [[FUBeautyComponentManager sharedManager].beautyFilterView.filterCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:[FUBeautyComponentManager sharedManager].beautyFilterViewModel.selectedIndex inSection:0] animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
    [FUBeautyComponentManager sharedManager].beautyFilterView.filterSlider.hidden = [FUBeautyComponentManager sharedManager].beautyFilterViewModel.selectedIndex < 1;
    if (![FUBeautyComponentManager sharedManager].beautyFilterView.filterSlider.hidden) {
        [FUBeautyComponentManager sharedManager].beautyFilterView.filterSlider.value = [FUBeautyComponentManager sharedManager].beautyFilterViewModel.beautyFilters[[FUBeautyComponentManager sharedManager].beautyFilterViewModel.selectedIndex].filterLevel;
    }
}

- (FULightingView *)lightingView {
    if (!_lightingView) {
        _lightingView = [[FULightingView alloc] initWithFrame:CGRectMake(0, 0, 280, 40)];
        _lightingView.center = CGPointMake(CGRectGetWidth(self.view.bounds) - 20, CGRectGetHeight(self.view.bounds) / 2.0 - 60);
        _lightingView.transform = CGAffineTransformMakeRotation(-M_PI_2);
        _lightingView.slider.minimumValue = -2;
        _lightingView.slider.maximumValue = 2;
        _lightingView.slider.value = 0;
        _lightingView.delegate = self;
        _lightingView.hidden = YES;
    }
    return _lightingView;
}

- (UIImageView *)adjustImageView {
    if (!_adjustImageView) {
        _adjustImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"render_adjust"]];
        _adjustImageView.center = self.view.center;
        _adjustImageView.hidden = YES;
    }
    return _adjustImageView;
}

- (UILabel *)noTrackLabel {
    if (!_noTrackLabel) {
        _noTrackLabel = [[UILabel alloc] init];
        _noTrackLabel.textColor = [UIColor whiteColor];
        _noTrackLabel.font = [UIFont systemFontOfSize:17];
        _noTrackLabel.textAlignment = NSTextAlignmentCenter;
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
        _tipLabel.numberOfLines = 0;
        _tipLabel.hidden = YES;
    }
    return _tipLabel;
}

- (FUCaptureButton *)captureButton {
    if (!_captureButton) {
        _captureButton = [[FUCaptureButton alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.view.bounds) / 2.0 - 21, CGRectGetHeight(self.view.bounds) - 91, 42, 42)];
        _captureButton.recordVideo = self.viewModel.supportVideoRecording;
        _captureButton.hidden = !self.viewModel.supportCaptureAndRecording;
        _captureButton.delegate = self;
    }
    return _captureButton;
}

- (UIButton *)captureButtonNext {
    if (!_captureButtonNext) {
        _captureButtonNext = [UIButton buttonWithType:UIButtonTypeCustom];
        _captureButtonNext.layer.cornerRadius = 20;
        _captureButtonNext.backgroundColor = ThemeColor;
        
        [_captureButtonNext addTarget:self action:@selector(captureButtonDidTakePhotoNext) forControlEvents:UIControlEventTouchUpInside];
        _captureButtonNext.titleLabel.font = [UIFont systemFontOfSize:14];
        [_captureButtonNext setTitleColor:RGB_COLOR_String(@"#ffffff") forState:UIControlStateNormal];
//        [_captureButtonNext setTitle:LangKey(@"save_next") forState:UIControlStateNormal];
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
        
    }
    return _recoverButton;
}

#pragma mark - Overriding

- (BOOL)prefersStatusBarHidden {
    return !FUDeviceIsiPhoneXStyle();
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
