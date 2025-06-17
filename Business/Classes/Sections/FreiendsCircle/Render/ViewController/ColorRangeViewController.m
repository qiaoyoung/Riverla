
#import <Foundation/Foundation.h>

NSString *StringFromColumnData(Byte *data);        


//: No_Face_Tracking
Byte kStr_fileContentData[] = {53, 16, 66, 5, 229, 12, 45, 29, 4, 31, 33, 35, 29, 18, 48, 31, 33, 41, 39, 44, 37, 154};


//: face_beautification
Byte kStr_pinTitleData[] = {70, 19, 71, 7, 224, 234, 71, 31, 26, 28, 30, 24, 27, 30, 26, 46, 45, 34, 31, 34, 28, 26, 45, 34, 40, 39, 190};


//: ic_close_b
Byte kStr_contentCountervalName[] = {76, 10, 65, 13, 154, 231, 104, 218, 61, 144, 107, 85, 124, 40, 34, 30, 34, 43, 46, 50, 36, 30, 33, 165};


//: 保存视频失败
Byte kStr_providerPinMediaName[] = {30, 18, 60, 5, 28, 168, 131, 97, 169, 113, 92, 172, 107, 74, 173, 102, 85, 169, 104, 117, 172, 120, 105, 75};


//: bundle
Byte kStr_remoteText[] = {68, 6, 8, 5, 157, 90, 109, 102, 92, 100, 93, 59};


//: #B391FF
Byte kStr_contentMobileData[] = {81, 7, 34, 14, 133, 152, 160, 177, 235, 155, 134, 219, 54, 148, 1, 32, 17, 23, 15, 36, 36, 145};


//: group_info_activity_update_failed
Byte kStr_pinCellContent[] = {25, 33, 65, 12, 109, 42, 210, 92, 128, 251, 196, 21, 38, 49, 46, 52, 47, 30, 40, 45, 37, 46, 30, 32, 34, 51, 40, 53, 40, 51, 56, 30, 52, 47, 35, 32, 51, 36, 30, 37, 32, 40, 43, 36, 35, 3};


//: render_camera_switch
Byte kStr_statusAtValue[] = {12, 20, 34, 13, 116, 119, 9, 172, 245, 71, 227, 96, 71, 80, 67, 76, 66, 67, 80, 61, 65, 63, 75, 67, 80, 63, 61, 81, 85, 71, 82, 65, 70, 46};


//: #1AB391FF
Byte kStr_highlightWithData[] = {31, 9, 99, 13, 87, 118, 195, 52, 68, 213, 33, 106, 97, 192, 206, 222, 223, 208, 214, 206, 227, 227, 139};


//: group_info_activity_update_success
Byte kStr_viewMessageName[] = {29, 34, 80, 10, 213, 188, 238, 236, 155, 94, 23, 34, 31, 37, 32, 15, 25, 30, 22, 31, 15, 17, 19, 36, 25, 38, 25, 36, 41, 15, 37, 32, 20, 17, 36, 21, 15, 35, 37, 19, 19, 21, 35, 35, 192};


//: 视频已保存到相册
Byte kStr_videoBlueData[] = {20, 24, 2, 5, 228, 230, 165, 132, 231, 160, 143, 227, 181, 176, 226, 189, 155, 227, 171, 150, 227, 134, 174, 229, 153, 182, 227, 132, 138, 227};


//: next_item
Byte kStr_mediaStatusTitle[] = {21, 9, 19, 14, 221, 191, 122, 135, 194, 189, 43, 20, 87, 43, 91, 82, 101, 97, 76, 86, 97, 82, 90, 101};


//: %@.mp4
Byte kStr_pathAreaName[] = {30, 6, 97, 14, 221, 9, 204, 110, 129, 152, 223, 237, 65, 213, 196, 223, 205, 12, 15, 211, 13};


//: 设备不支持该分辨率
Byte kStr_formatContent[] = {95, 27, 19, 13, 60, 167, 89, 236, 42, 131, 162, 90, 208, 213, 155, 171, 210, 145, 116, 209, 165, 122, 211, 129, 156, 211, 121, 110, 213, 156, 146, 210, 117, 115, 213, 171, 149, 212, 123, 116, 2};


//: recover_item
Byte kStr_areaCanData[] = {21, 12, 21, 6, 177, 38, 93, 80, 78, 90, 97, 80, 93, 74, 84, 95, 80, 88, 121};


//: #ffffff
Byte kStr_bottomMyValue[] = {53, 7, 93, 4, 198, 9, 9, 9, 9, 9, 9, 67};


//: render_adjust
Byte kStr_layerMyName[] = {26, 13, 62, 7, 152, 122, 165, 52, 39, 48, 38, 39, 52, 33, 35, 38, 44, 55, 53, 54, 71};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorRangeViewController.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/7/19.
//  Copyright © 2022 FaceUnity. All rights reserved.
//
//#import "FUMediaPickerViewController.h"
//#import "FUHeadButtonView.h"

// __M_A_C_R_O__
//: #import "FURenderViewController.h"
#import "ColorRangeViewController.h"
//: #import "FUBeautyComponentManager.h"
#import "RandomMargin.h"
//: #import "FUCaptureButton.h"
#import "ImagePointView.h"
//: #import "FULightingView.h"
#import "HighView.h"
//: #import "FUPopupMenu.h"
#import "PopHighView.h"
//: #import "FULandmarkManager.h"
#import "Bottom.h"
//: #import <UINavigationController+FDFullscreenPopGesture.h>
#import <UINavigationController+FDFullscreenPopGesture.h>

//: @interface FURenderViewController ()<FUPopupMenuDelegate, FULightingViewDelegate,FUBeautyComponentDelegate>
@interface ColorRangeViewController ()<ActivityDelegate, DisableItemDelegate,AfterContent>

/// 渲染视图
//: @property (nonatomic, strong) FUGLDisplayView *renderView;
@property (nonatomic, strong) FUGLDisplayView *renderView;
/// 顶部功能视图
//@property (nonatomic, strong) FUHeadButtonView *headButtonView;
/// 拍照和录制视频按钮
//: @property (nonatomic, strong) FUCaptureButton *captureButton;
@property (nonatomic, strong) ImagePointView *captureButton;
/// 拍照和录制视频按钮
//: @property (nonatomic, strong) UIButton *captureButtonNext;
@property (nonatomic, strong) UIButton *captureButtonNext;
/// 曝光度调节器
//: @property (nonatomic, strong) FULightingView *lightingView;
@property (nonatomic, strong) HighView *lightingView;
/// 手动对焦指示器
//: @property (nonatomic, strong) UIImageView *adjustImageView;
@property (nonatomic, strong) UIImageView *adjustImageView;
/// 恢复按钮
//: @property (nonatomic, strong) UIButton *recoverButton;
@property (nonatomic, strong) UIButton *recoverButton;

//: @property (nonatomic, strong) UILabel *noTrackLabel;
@property (nonatomic, strong) UILabel *noTrackLabel;

//: @property (nonatomic, strong) UILabel *tipLabel;
@property (nonatomic, strong) UILabel *tipLabel;

//: @property (nonatomic, strong) FURenderViewModel *viewModel;
@property (nonatomic, strong) MaxEmpty *viewModel;

//: @property (nonatomic, strong) UIView *boomView;
@property (nonatomic, strong) UIView *boomView;

//: @end
@end

//: @implementation FURenderViewController {
@implementation ColorRangeViewController {
    // 对焦点击操作记录时间
    //: CFAbsoluteTime operatedTime;
    CFAbsoluteTime operatedTime;
}

//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)initWithViewModel:(FURenderViewModel *)viewModel {
- (instancetype)initWithText:(MaxEmpty *)viewModel {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.viewModel = viewModel;
        self.viewModel = viewModel;
        //: self.viewModel.delegate = self;
        self.viewModel.delegate = self;
    }
    //: return self;
    return self;
}

//: #pragma mark - Life cycle
#pragma mark - Life cycle
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.fd_interactivePopDisabled = YES; 
    self.fd_interactivePopDisabled = YES; // 禁用当前页面的左滑返回
    //: self.photoArray = [NSMutableArray array];
    self.photoArray = [NSMutableArray array];

    // 初始化FURenderKit
    //: [[FURenderKitManager sharedManager] setupRenderKit];
    [[SearchedTingName grayish] subKind];

    // 加载美颜
    //: [[FUBeautyComponentManager sharedManager] loadBeautyForFilePath:[[NSBundle mainBundle] pathForResource:@"face_beautification" ofType:@"bundle"]];
    [[RandomMargin top] appearMenuVertical:[[NSBundle mainBundle] pathForResource:StringFromColumnData(kStr_pinTitleData) ofType:StringFromColumnData(kStr_remoteText)]];


    //: [self configureUI];
    [self option];
}
//: - (void)backAction{
- (void)messageLeft{
//    [[SearchedTingName sharedManager] destoryRenderKit];
//    [[RandomMargin sharedManager] unloadBeauty];

    //: if (self.viewModel.needsLoadingBeauty) {
    if (self.viewModel.needsLoadingBeauty) {
        //: [FUBeautyComponentManager destory];
        [RandomMargin color];
    }
    // 恢复相机曝光度
    //: [self.viewModel setCameraExposureValue:0];
    [self.viewModel setViewIn:0];
    //: [self.viewModel stopCamera];
    [self.viewModel version];
    //: [self.viewModel resetCameraSettings];
    [self.viewModel barrelhouse];
    //: [FURenderKitManager clearItems];
    [SearchedTingName atMessage];

    //: if (self.photoArray.count>0) {
    if (self.photoArray.count>0) {
        //: self.speiceBackBlock(self.photoArray);
        self.speiceBackBlock(self.photoArray);
    }

    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];

    // 添加美颜视图
    //: [[FUBeautyComponentManager sharedManager] addComponentViewToView:self.view];
    [[RandomMargin top] notLanguage:self.view];
    //: [FUBeautyComponentManager sharedManager].delegate = self;
    [RandomMargin top].delegate = self;


    // 进入后台保存数据
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appDidEnterBackground) name:UIApplicationDidEnterBackgroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(parentTeam) name:UIApplicationDidEnterBackgroundNotification object:nil];

    // 每次进入页面或者返回页面都需要重新设置人脸和人体检测模式
//    if (self.viewModel.necessaryAIModelTypes & FUAIModelTypeFace) {
        //: [FURenderKitManager setFaceProcessorDetectMode:FUFaceProcessorDetectModeVideo];
        [SearchedTingName setDoTo:FUFaceProcessorDetectModeVideo];
//    }
//    if (self.viewModel.necessaryAIModelTypes & FUAIModelTypeHuman) {
//        [SearchedTingName setHumanProcessorDetectMode:FUHumanProcessorDetectModeVideo];
//    }

    //: [self.viewModel startCameraWithRenderView:self.renderView];
    [self.viewModel title:self.renderView];

//    // 添加点位测试开关
//    if ([SearchedTingName sharedManager].showsLandmarks) {
//        [Bottom show];
//    }
}

//: - (void)viewWillDisappear:(BOOL)animated {
- (void)viewWillDisappear:(BOOL)animated {
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];

    //: [self.viewModel stopCamera];
    [self.viewModel version];
    //: [self.viewModel resetCameraFocusAndExposureMode];
    [self.viewModel at];

//    // 移除点位测试开关
//    if ([SearchedTingName sharedManager].showsLandmarks) {
//        [Bottom dismiss];
//    }
}

//: - (void)appDidEnterBackground {
- (void)parentTeam {
    //: [[FUBeautyComponentManager sharedManager] saveBeauty];
    [[RandomMargin top] color];
}

//: #pragma mark - FUBeautyComponentDelegate
#pragma mark - AfterContent
//: - (void)beautyComponentDidTouchDownComparison {
- (void)downwardlyShould {
    //: self.beautyviewModel.rendering = NO;
    self.beautyviewModel.rendering = NO;
}

//: - (void)beautyComponentDidTouchUpComparison {
- (void)grayEnd {
    //: self.beautyviewModel.rendering = YES;
    self.beautyviewModel.rendering = YES;
}

//: - (void)beautyComponentNeedsDisplayPromptContent:(NSString *)content {
- (void)glamorLikeCollectionContent:(NSString *)content {
    //: if (content.length == 0) {
    if (content.length == 0) {
        //: return;
        return;
    }
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: self.tipLabel.text = content;
        self.tipLabel.text = content;
        //: self.tipLabel.hidden = NO;
        self.tipLabel.hidden = NO;
    //: });
    });
}


//: #pragma mark - UI
#pragma mark - UI

//: - (void)configureUI {
- (void)option {
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice clear]))];
    //: [self.view addSubview:topView];
    [self.view addSubview:topView];

    //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 32, 32);
    closeBtn.frame = CGRectMake(15, 4+[UIDevice clear], 32, 32);
    //: closeBtn.backgroundColor = [UIColor clearColor];
    closeBtn.backgroundColor = [UIColor clearColor];
    //: [closeBtn setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [closeBtn setImage:[UIImage imageNamed:StringFromColumnData(kStr_contentCountervalName)] forState:(UIControlStateNormal)];
    //: [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [closeBtn addTarget:self action:@selector(messageLeft) forControlEvents:UIControlEventTouchUpInside];
    //: [topView addSubview:closeBtn];
    [topView addSubview:closeBtn];

    //: UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: infoBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32, 4+[UIDevice vg_statusBarHeight], 32, 32);
    infoBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32, 4+[UIDevice clear], 32, 32);
    //: infoBtn.backgroundColor = [UIColor clearColor];
    infoBtn.backgroundColor = [UIColor clearColor];
    //: [infoBtn setImage:[UIImage imageNamed:@"render_camera_switch"] forState:(UIControlStateNormal)];
    [infoBtn setImage:[UIImage imageNamed:StringFromColumnData(kStr_statusAtValue)] forState:(UIControlStateNormal)];
    //: [infoBtn addTarget:self action:@selector(headButtonViewSwitchAction:) forControlEvents:UIControlEventTouchUpInside];
    [infoBtn addTarget:self action:@selector(scanStatus:) forControlEvents:UIControlEventTouchUpInside];
    //: [topView addSubview:infoBtn];
    [topView addSubview:infoBtn];


    //: [self.view addSubview:self.renderView];
    [self.view addSubview:self.renderView];
    //: self.renderView.frame = CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-210);
    self.renderView.frame = CGRectMake(0, (44.0f + [UIDevice clear]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice clear])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-210);

    //: [self.view addSubview:self.lightingView];
    [self.view addSubview:self.lightingView];
    //: [self.view addSubview:self.adjustImageView];
    [self.view addSubview:self.adjustImageView];

    //: [self.view addSubview:self.noTrackLabel];
    [self.view addSubview:self.noTrackLabel];
    //: [self.noTrackLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [self.noTrackLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.center.equalTo(self.view);
        make.center.equalTo(self.view);
    //: }];
    }];

//    [self.view addSubview:self.tipLabel];
//    [self.tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.equalTo(self.view.mas_centerY).mas_offset(24);
//        make.leading.mas_offset(10);
//        make.trailing.mas_offset(-10);
//    }];

    //: UIView *boomView = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-60, [[UIScreen mainScreen] bounds].size.width, 60)];
    UIView *boomView = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-60, [[UIScreen mainScreen] bounds].size.width, 60)];
    //: [self.view addSubview:boomView];
    [self.view addSubview:boomView];

    //: [boomView addSubview:self.recoverButton];
    [boomView addSubview:self.recoverButton];
    //: self.recoverButton.frame = CGRectMake(20, 10, 88, 40);
    self.recoverButton.frame = CGRectMake(20, 10, 88, 40);


    //: [boomView addSubview:self.captureButton];
    [boomView addSubview:self.captureButton];
    //: self.captureButton.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-42)/2, 9, 42, 42);
    self.captureButton.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-42)/2, 9, 42, 42);

    //: [boomView addSubview:self.captureButtonNext];
    [boomView addSubview:self.captureButtonNext];
    //: self.captureButtonNext.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-88-20, 10, 88, 40);
    self.captureButtonNext.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-88-20, 10, 88, 40);
    //: if (self.photoNum>0) {
    if (self.photoNum>0) {
        //: [self.captureButtonNext setTitle:[NSString stringWithFormat:@"(%lu/3)",(unsigned long)self.photoArray.count+self.photoNum] forState:UIControlStateNormal];
        [self.captureButtonNext setTitle:[NSString stringWithFormat:@"(%lu/3)",(unsigned long)self.photoArray.count+self.photoNum] forState:UIControlStateNormal];
    }
}

//: #pragma mark - Private methods
#pragma mark - Private methods
/// 延迟隐藏视图
//: - (void)hideFocusAndLightingViewAfterDelay:(NSTimeInterval)deley {
- (void)barDelay:(NSTimeInterval)deley {
    //: dispatch_after(dispatch_time((0ull), (int64_t)(deley * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(deley * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: CFAbsoluteTime currentTime = CFAbsoluteTimeGetCurrent();
        CFAbsoluteTime currentTime = CFAbsoluteTimeGetCurrent();
        //: if (currentTime - self->operatedTime > 1.29) {
        if (currentTime - self->operatedTime > 1.29) {
            //: self.lightingView.hidden = YES;
            self.lightingView.hidden = YES;
            //: self.adjustImageView.hidden = YES;
            self.adjustImageView.hidden = YES;
        }
    //: });
    });
}

//: #pragma mark - Event response
#pragma mark - Event response
//: - (void)renderViewTapAction:(UITapGestureRecognizer *)tap {
- (void)economy:(UITapGestureRecognizer *)tap {
    //: operatedTime = CFAbsoluteTimeGetCurrent();
    operatedTime = CFAbsoluteTimeGetCurrent();
    //: self.lightingView.hidden = NO;
    self.lightingView.hidden = NO;
    //: self.adjustImageView.hidden = NO;
    self.adjustImageView.hidden = NO;
    //: [self.viewModel switchCameraFocusMode:FUCaptureCameraFocusModeChangeless];
    [self.viewModel barOnImage:FUCaptureCameraFocusModeChangeless];
    //: CGPoint center = [tap locationInView:self.renderView];
    CGPoint center = [tap locationInView:self.renderView];
    //: CGPoint imageCenter = [tap locationInView:self.view];
    CGPoint imageCenter = [tap locationInView:self.view];
    //: self.adjustImageView.center = imageCenter;
    self.adjustImageView.center = imageCenter;
    // 缩放动画
    //: self.adjustImageView.transform = CGAffineTransformIdentity;
    self.adjustImageView.transform = CGAffineTransformIdentity;
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: self.adjustImageView.transform = CGAffineTransformMakeScale(0.67, 0.67);
        self.adjustImageView.transform = CGAffineTransformMakeScale(0.67, 0.67);
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: [self hideFocusAndLightingViewAfterDelay:1.0];
        [self barDelay:1.0];
    //: }];
    }];
    // 根据renderView的填充模式计算图像中心点
    //: CGPoint pictureCenter;
    CGPoint pictureCenter;
    //: CGFloat scale = self.viewModel.inputBufferHeight / self.viewModel.inputBufferWidth;
    CGFloat scale = self.viewModel.inputBufferHeight / self.viewModel.inputBufferWidth;
    //: CGFloat renderViewWidth = CGRectGetWidth(self.renderView.bounds);
    CGFloat renderViewWidth = CGRectGetWidth(self.renderView.bounds);
    //: CGFloat renderViewHeight = CGRectGetHeight(self.renderView.bounds);
    CGFloat renderViewHeight = CGRectGetHeight(self.renderView.bounds);
    //: if (self.renderView.contentMode == FUGLDisplayViewContentModeScaleAspectFill) {
    if (self.renderView.contentMode == FUGLDisplayViewContentModeScaleAspectFill) {
        // 短边填满(宽度按比例截取中间部分)
        //: CGFloat leading = (renderViewHeight / scale - renderViewWidth) / 2.0;
        CGFloat leading = (renderViewHeight / scale - renderViewWidth) / 2.0;
        //: CGFloat pictureWidth = renderViewWidth + leading * 2;
        CGFloat pictureWidth = renderViewWidth + leading * 2;
        //: center.x += leading;
        center.x += leading;
        //: if (center.y <= 0) {
        if (center.y <= 0) {
            //: return;
            return;
        }
        //: pictureCenter = CGPointMake(center.y / renderViewHeight, self.viewModel.captureDevicePostion == AVCaptureDevicePositionFront ? center.x / pictureWidth : 1 - center.x / pictureWidth);
        pictureCenter = CGPointMake(center.y / renderViewHeight, self.viewModel.captureDevicePostion == AVCaptureDevicePositionFront ? center.x / pictureWidth : 1 - center.x / pictureWidth);
    //: } else if (self.renderView.contentMode == FUGLDisplayViewContentModeScaleAspectFit) {
    } else if (self.renderView.contentMode == FUGLDisplayViewContentModeScaleAspectFit) {
        // 长边填满(高度上下会留空白)
        //: CGFloat top = (renderViewHeight - renderViewWidth * scale) / 2.0;
        CGFloat top = (renderViewHeight - renderViewWidth * scale) / 2.0;
        //: CGFloat pictureHeight = renderViewHeight - top * 2;
        CGFloat pictureHeight = renderViewHeight - top * 2;
        //: center.y -= top;
        center.y -= top;
        //: if (center.y <= 0) {
        if (center.y <= 0) {
            //: return;
            return;
        }
        //: pictureCenter = CGPointMake(center.y / pictureHeight, self.viewModel.captureDevicePostion == AVCaptureDevicePositionFront ? center.x / renderViewWidth : 1 - center.x / renderViewWidth);
        pictureCenter = CGPointMake(center.y / pictureHeight, self.viewModel.captureDevicePostion == AVCaptureDevicePositionFront ? center.x / renderViewWidth : 1 - center.x / renderViewWidth);
    //: } else {
    } else {
        // 拉伸填满
        //: pictureCenter = CGPointMake(center.y / renderViewHeight, self.viewModel.captureDevicePostion == AVCaptureDevicePositionFront ? center.x / renderViewWidth : 1 - center.x / renderViewWidth);
        pictureCenter = CGPointMake(center.y / renderViewHeight, self.viewModel.captureDevicePostion == AVCaptureDevicePositionFront ? center.x / renderViewWidth : 1 - center.x / renderViewWidth);
    }
    //: [self.viewModel setCameraFocusPoint:pictureCenter];
    [self.viewModel setMessage:pictureCenter];
}

//: - (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
- (void)humanInfo:(UIImage *)image punctuate:(NSError *)error backgroundInfo:(void *)contextInfo {
    //: if (error) {
    if (error) {
        //: [FUTipHUD showTips:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"] dismissWithDelay:1.5];
        [PopHud content:[ItemManager sessionInformation:StringFromColumnData(kStr_pinCellContent)] with:1.5];
    //: } else {
    } else {
        //: [FUTipHUD showTips:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_success"] dismissWithDelay:1.5];
        [PopHud content:[ItemManager sessionInformation:StringFromColumnData(kStr_viewMessageName)] with:1.5];
    }
}

//: - (void)video:(NSString *)videoPath didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
- (void)modelTo:(NSString *)videoPath message:(NSError *)error botch:(void *)contextInfo {
    //: if (error) {
    if (error) {
        //: [FUTipHUD showTips:NSLocalizedString(@"保存视频失败", nil) dismissWithDelay:1.5];
        [PopHud content:NSLocalizedString(StringFromColumnData(kStr_providerPinMediaName), nil) with:1.5];
    //: } else {
    } else {
        //: [FUTipHUD showTips:NSLocalizedString(@"视频已保存到相册", nil) dismissWithDelay:1.5];
        [PopHud content:NSLocalizedString(StringFromColumnData(kStr_videoBlueData), nil) with:1.5];
    }
}

//: #pragma mark - FURenderViewModelDelegate
#pragma mark - ReplyEnable

//: - (void)renderShouldCheckDetectingStatus:(FUDetectingParts)parts {
- (void)renderLengthMagnituderyStatus:(FUDetectingParts)parts {
    //: @autoreleasepool {
    @autoreleasepool {
        //: BOOL detectingResult = YES;
        BOOL detectingResult = YES;
        //: switch (parts) {
        switch (parts) {
            //: case FUDetectingPartsFace:
            case FUDetectingPartsFace:
                //: detectingResult = [FURenderKitManager faceTracked];
                detectingResult = [SearchedTingName visage];
                //: break;
                break;
            //: case FUDetectingPartsHuman:
            case FUDetectingPartsHuman:
                //: detectingResult = [FURenderKitManager humanTracked];
                detectingResult = [SearchedTingName keySearch];
                //: break;
                break;
            //: case FUDetectingPartsHand:
            case FUDetectingPartsHand:
                //: detectingResult = [FURenderKitManager handTracked];
                detectingResult = [SearchedTingName beforeColor];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: self.noTrackLabel.hidden = detectingResult;
            self.noTrackLabel.hidden = detectingResult;
//            if (!detectingResult) {
//                self.noTrackLabel.text = parts == FUDetectingPartsFace ? FULocalizedString(@"未检测到人脸") : (parts == FUDetectingPartsHuman ? FULocalizedString(@"未检测到人体") : FULocalizedString(@"未检测到手势"));
//            }
        //: });
        });
    }
}

//: #pragma mark - FULightingViewDelegate
#pragma mark - DisableItemDelegate

//: - (void)lightingViewValueDidChange:(float)value {
- (void)inputs:(float)value {
    //: operatedTime = CFAbsoluteTimeGetCurrent();
    operatedTime = CFAbsoluteTimeGetCurrent();
    //: [self hideFocusAndLightingViewAfterDelay:1.3];
    [self barDelay:1.3];
    //: [self.viewModel setCameraExposureValue:value];
    [self.viewModel setViewIn:value];
}

//#pragma mark - FUHeadButtonViewDelegate
//
//- (void)headButtonViewBackAction:(UIButton *)btn {
//    if (self.viewModel.needsLoadingBeauty) {
//        [RandomMargin destory];
//    }
//    // 恢复相机曝光度
//    [self.viewModel setCameraExposureValue:0];
//    [self.viewModel stopCamera];
//    [self.viewModel resetCameraSettings];
//    [SearchedTingName clearItems];
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
//        [PopHighView showRelyOnView:btn frame:CGRectMake(17, CGRectGetMaxY(self.headButtonView.frame) + 1, 340, height) defaultSelectedAtIndex:selectedPresetIndex onlyTop:hideMediaSelection dataSource:self.viewModel.presetTitles delegate:self];
//    }
//}
//
//- (void)headButtonViewBuglyAction:(UIButton *)btn {
//    self.buglyLabel.hidden = !self.buglyLabel.hidden;
//}
//
//: - (void)headButtonViewSwitchAction:(UIButton *)btn {
- (void)scanStatus:(UIButton *)btn {
    //: btn.userInteractionEnabled = NO;
    btn.userInteractionEnabled = NO;
    //: dispatch_time_t delayTime = dispatch_time((0ull), 1 * 1000000000ull);
    dispatch_time_t delayTime = dispatch_time((0ull), 1 * 1000000000ull);
    //: dispatch_after(delayTime, dispatch_get_main_queue(), ^(void){
    dispatch_after(delayTime, dispatch_get_main_queue(), ^(void){
        //: btn.userInteractionEnabled = YES;
        btn.userInteractionEnabled = YES;
    //: });
    });
    //: [self.viewModel switchCameraBetweenFrontAndRear:self.viewModel.captureDevicePostion != AVCaptureDevicePositionFront unsupportedPresetHandler:^{
    [self.viewModel skim:self.viewModel.captureDevicePostion != AVCaptureDevicePositionFront menuHandler:^{
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [FUTipHUD showTips:NSLocalizedString(@"设备不支持该分辨率", nil) dismissWithDelay:1.5];
            [PopHud content:NSLocalizedString(StringFromColumnData(kStr_formatContent), nil) with:1.5];
        //: });
        });
    //: }];
    }];
}
//
//#pragma mark - ActivityDelegate
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
//- (void)fuPopupMenuSegment:(PasskeyView *)segment didSelectedAtIndex:(NSInteger)index {
//    segment.userInteractionEnabled = NO;
//    AVCaptureSessionPreset selectedPreset = self.viewModel.presets[index];
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        [self.viewModel switchCapturePreset:selectedPreset unsupportedPresetHandler:^{
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [PopHud showTips:FULocalizedString(@"设备不支持该分辨率") dismissWithDelay:1.5];
//            });
//        }];
//        dispatch_async(dispatch_get_main_queue(), ^{
//            segment.userInteractionEnabled = YES;
//        });
//    });
//}

//: #pragma mark - FUCaptureButtonDelegate
#pragma mark - SizeRangeSearched
//: - (void)captureButtonDidTakePhotoNext
- (void)recentEffect
{
    //: [FUUtility requestPhotoLibraryAuthorization:^(PHAuthorizationStatus status) {
    [ClearButtonEnable status:^(PHAuthorizationStatus status) {
        //: if (status == PHAuthorizationStatusAuthorized) {
        if (status == PHAuthorizationStatusAuthorized) {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{


                    //: UIImage *image = [FURenderKit captureImage];
                    UIImage *image = [FURenderKit captureImage];
                    //: UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
                    UIImageWriteToSavedPhotosAlbum(image, self, @selector(humanInfo:punctuate:backgroundInfo:), NULL);
                    //: [self.photoArray addObject:image];
                    [self.photoArray addObject:image];

                //: [self.captureButtonNext setTitle:[NSString stringWithFormat:@"(%lu/3)",(unsigned long)self.photoArray.count+self.photoNum] forState:UIControlStateNormal];
                [self.captureButtonNext setTitle:[NSString stringWithFormat:@"(%lu/3)",(unsigned long)self.photoArray.count+self.photoNum] forState:UIControlStateNormal];
//                [self.captureButtonNext layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];

                    //: if (self.photoArray.count+self.photoNum >= 3) {
                    if (self.photoArray.count+self.photoNum >= 3) {
                        //: [self backAction];
                        [self messageLeft];
                    }

            //: });
            });


        }
    //: }];
    }];


}
//: - (void)captureButtonDidTakePhoto {
- (void)ofMust {
    //: [FUUtility requestPhotoLibraryAuthorization:^(PHAuthorizationStatus status) {
    [ClearButtonEnable status:^(PHAuthorizationStatus status) {
        //: if (status == PHAuthorizationStatusAuthorized) {
        if (status == PHAuthorizationStatusAuthorized) {

            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
            //: UIImage *image = [FURenderKit captureImage];
            UIImage *image = [FURenderKit captureImage];
            //: UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
            UIImageWriteToSavedPhotosAlbum(image, self, @selector(humanInfo:punctuate:backgroundInfo:), NULL);

            //: [self.photoArray addObject:image];
            [self.photoArray addObject:image];
            //: [self backAction];
            [self messageLeft];

            //: });
            });
        }
    //: }];
    }];

}

//: - (void)captureButtonDidStartRecording {
- (void)accumulationSession {
    //: [FUUtility requestPhotoLibraryAuthorization:^(PHAuthorizationStatus status) {
    [ClearButtonEnable status:^(PHAuthorizationStatus status) {
        //: if (status == PHAuthorizationStatusAuthorized) {
        if (status == PHAuthorizationStatusAuthorized) {
            //: NSString *videoPath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.mp4", FUCurrentDateString()]];
            NSString *videoPath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:StringFromColumnData(kStr_pathAreaName), FUCurrentDateString()]];
            //: if (!videoPath) {
            if (!videoPath) {
                //: return;
                return;
            }
            //: [FURenderKit startRecordVideoWithFilePath:videoPath];
            [FURenderKit startRecordVideoWithFilePath:videoPath];
        }
    //: }];
    }];

}

//: - (void)captureButtonDidFinishRecording {
- (void)backgroundBlue {
    //: @autoreleasepool{} __weak __typeof__(self) weak_self = self;
    @autoreleasepool{} __weak __typeof__(self) weak_self = self;
    //: [FURenderKit stopRecordVideoComplention:^(NSString * _Nonnull filePath) {
    [FURenderKit stopRecordVideoComplention:^(NSString * _Nonnull filePath) {
        //: @autoreleasepool{} __typeof__(self) self = weak_self;
        @autoreleasepool{} __typeof__(self) self = weak_self;
        //: if (!filePath) {
        if (!filePath) {
            //: return;
            return;
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: UISaveVideoAtPathToSavedPhotosAlbum(filePath, self, @selector(video:didFinishSavingWithError:contextInfo:), NULL);
            UISaveVideoAtPathToSavedPhotosAlbum(filePath, self, @selector(modelTo:message:botch:), NULL);
        //: });
        });
    //: }];
    }];
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (FUGLDisplayView *)renderView {
- (FUGLDisplayView *)renderView {
    //: if (!_renderView) {
    if (!_renderView) {
        //: _renderView = [[FUGLDisplayView alloc] initWithFrame:self.view.bounds];
        _renderView = [[FUGLDisplayView alloc] initWithFrame:self.view.bounds];
//        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(renderViewTapAction:)];
//        [_renderView addGestureRecognizer:tap];
    }
    //: return _renderView;
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

//: - (void)recoverAction
- (void)findDown
{
    //: [[FUBeautyComponentManager sharedManager].beautySkinViewModel recoverAllSkinValuesToDefault];
    [[RandomMargin top].beautySkinViewModel clearDefault];
    //: [[FUBeautyComponentManager sharedManager].beautySkinView refreshSubviews];
    [[RandomMargin top].beautySkinView connect];

    //: [FUBeautyComponentManager sharedManager].beautyFilterViewModel.selectedIndex = 0;
    [RandomMargin top].beautyFilterViewModel.selectedIndex = 0;
    // 默认选中
    //: [[FUBeautyComponentManager sharedManager].beautyFilterView.filterCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:[FUBeautyComponentManager sharedManager].beautyFilterViewModel.selectedIndex inSection:0] animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
    [[RandomMargin top].beautyFilterView.filterCollectionView selectItemAtIndexPath:[NSIndexPath indexPathForItem:[RandomMargin top].beautyFilterViewModel.selectedIndex inSection:0] animated:YES scrollPosition:UICollectionViewScrollPositionCenteredHorizontally];
    //: [FUBeautyComponentManager sharedManager].beautyFilterView.filterSlider.hidden = [FUBeautyComponentManager sharedManager].beautyFilterViewModel.selectedIndex < 1;
    [RandomMargin top].beautyFilterView.filterSlider.hidden = [RandomMargin top].beautyFilterViewModel.selectedIndex < 1;
    //: if (![FUBeautyComponentManager sharedManager].beautyFilterView.filterSlider.hidden) {
    if (![RandomMargin top].beautyFilterView.filterSlider.hidden) {
        //: [FUBeautyComponentManager sharedManager].beautyFilterView.filterSlider.value = [FUBeautyComponentManager sharedManager].beautyFilterViewModel.beautyFilters[[FUBeautyComponentManager sharedManager].beautyFilterViewModel.selectedIndex].filterLevel;
        [RandomMargin top].beautyFilterView.filterSlider.value = [RandomMargin top].beautyFilterViewModel.beautyFilters[[RandomMargin top].beautyFilterViewModel.selectedIndex].filterLevel;
    }
}

//: - (FULightingView *)lightingView {
- (HighView *)lightingView {
    //: if (!_lightingView) {
    if (!_lightingView) {
        //: _lightingView = [[FULightingView alloc] initWithFrame:CGRectMake(0, 0, 280, 40)];
        _lightingView = [[HighView alloc] initWithFrame:CGRectMake(0, 0, 280, 40)];
        //: _lightingView.center = CGPointMake(CGRectGetWidth(self.view.bounds) - 20, CGRectGetHeight(self.view.bounds) / 2.0 - 60);
        _lightingView.center = CGPointMake(CGRectGetWidth(self.view.bounds) - 20, CGRectGetHeight(self.view.bounds) / 2.0 - 60);
        //: _lightingView.transform = CGAffineTransformMakeRotation(-1.57079632679489661923132169163975144);
        _lightingView.transform = CGAffineTransformMakeRotation(-1.57079632679489661923132169163975144);
        //: _lightingView.slider.minimumValue = -2;
        _lightingView.slider.minimumValue = -2;
        //: _lightingView.slider.maximumValue = 2;
        _lightingView.slider.maximumValue = 2;
        //: _lightingView.slider.value = 0;
        _lightingView.slider.value = 0;
        //: _lightingView.delegate = self;
        _lightingView.delegate = self;
        //: _lightingView.hidden = YES;
        _lightingView.hidden = YES;
    }
    //: return _lightingView;
    return _lightingView;
}

//: - (UIImageView *)adjustImageView {
- (UIImageView *)adjustImageView {
    //: if (!_adjustImageView) {
    if (!_adjustImageView) {
        //: _adjustImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"render_adjust"]];
        _adjustImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromColumnData(kStr_layerMyName)]];
        //: _adjustImageView.center = self.view.center;
        _adjustImageView.center = self.view.center;
        //: _adjustImageView.hidden = YES;
        _adjustImageView.hidden = YES;
    }
    //: return _adjustImageView;
    return _adjustImageView;
}

//: - (UILabel *)noTrackLabel {
- (UILabel *)noTrackLabel {
    //: if (!_noTrackLabel) {
    if (!_noTrackLabel) {
        //: _noTrackLabel = [[UILabel alloc] init];
        _noTrackLabel = [[UILabel alloc] init];
        //: _noTrackLabel.textColor = [UIColor whiteColor];
        _noTrackLabel.textColor = [UIColor whiteColor];
        //: _noTrackLabel.font = [UIFont systemFontOfSize:17];
        _noTrackLabel.font = [UIFont systemFontOfSize:17];
        //: _noTrackLabel.textAlignment = NSTextAlignmentCenter;
        _noTrackLabel.textAlignment = NSTextAlignmentCenter;
        //: _noTrackLabel.text = [FFFLanguageManager getTextWithKey:@"No_Face_Tracking"];
        _noTrackLabel.text = [ItemManager sessionInformation:StringFromColumnData(kStr_fileContentData)];
        //: _noTrackLabel.hidden = YES;
        _noTrackLabel.hidden = YES;
    }
    //: return _noTrackLabel;
    return _noTrackLabel;
}

//: - (UILabel *)tipLabel {
- (UILabel *)tipLabel {
    //: if (!_tipLabel) {
    if (!_tipLabel) {
        //: _tipLabel = [[UILabel alloc] init];
        _tipLabel = [[UILabel alloc] init];
        //: _tipLabel.textColor = [UIColor whiteColor];
        _tipLabel.textColor = [UIColor whiteColor];
        //: _tipLabel.font = [UIFont systemFontOfSize:32];
        _tipLabel.font = [UIFont systemFontOfSize:32];
        //: _tipLabel.textAlignment = NSTextAlignmentCenter;
        _tipLabel.textAlignment = NSTextAlignmentCenter;
        //: _tipLabel.numberOfLines = 0;
        _tipLabel.numberOfLines = 0;
        //: _tipLabel.hidden = YES;
        _tipLabel.hidden = YES;
    }
    //: return _tipLabel;
    return _tipLabel;
}

//: - (FUCaptureButton *)captureButton {
- (ImagePointView *)captureButton {
    //: if (!_captureButton) {
    if (!_captureButton) {
        //: _captureButton = [[FUCaptureButton alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.view.bounds) / 2.0 - 21, CGRectGetHeight(self.view.bounds) - 91, 42, 42)];
        _captureButton = [[ImagePointView alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.view.bounds) / 2.0 - 21, CGRectGetHeight(self.view.bounds) - 91, 42, 42)];
        //: _captureButton.recordVideo = self.viewModel.supportVideoRecording;
        _captureButton.recordVideo = self.viewModel.supportVideoRecording;
        //: _captureButton.hidden = !self.viewModel.supportCaptureAndRecording;
        _captureButton.hidden = !self.viewModel.supportCaptureAndRecording;
        //: _captureButton.delegate = self;
        _captureButton.delegate = self;
    }
    //: return _captureButton;
    return _captureButton;
}

//: - (UIButton *)captureButtonNext {
- (UIButton *)captureButtonNext {
    //: if (!_captureButtonNext) {
    if (!_captureButtonNext) {
        //: _captureButtonNext = [UIButton buttonWithType:UIButtonTypeCustom];
        _captureButtonNext = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _captureButtonNext.layer.cornerRadius = 20;
        _captureButtonNext.layer.cornerRadius = 20;
        //: _captureButtonNext.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
        _captureButtonNext.backgroundColor = [UIColor withMax:StringFromColumnData(kStr_contentMobileData)];

        //: [_captureButtonNext addTarget:self action:@selector(captureButtonDidTakePhotoNext) forControlEvents:UIControlEventTouchUpInside];
        [_captureButtonNext addTarget:self action:@selector(recentEffect) forControlEvents:UIControlEventTouchUpInside];
        //: _captureButtonNext.titleLabel.font = [UIFont systemFontOfSize:14];
        _captureButtonNext.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_captureButtonNext setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
        [_captureButtonNext setTitleColor:[UIColor withMax:StringFromColumnData(kStr_bottomMyValue)] forState:UIControlStateNormal];
//        [_captureButtonNext setTitle:LangKey(@"save_next") forState:UIControlStateNormal];
        //: [_captureButtonNext setImage:[UIImage imageNamed:@"next_item"] forState:UIControlStateNormal];
        [_captureButtonNext setImage:[UIImage imageNamed:StringFromColumnData(kStr_mediaStatusTitle)] forState:UIControlStateNormal];
    }
    //: return _captureButtonNext;
    return _captureButtonNext;
}

//: - (UIButton *)recoverButton {
- (UIButton *)recoverButton {
    //: if (!_recoverButton) {
    if (!_recoverButton) {
        //: _recoverButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _recoverButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _recoverButton.backgroundColor = [UIColor colorWithHexString:@"#1AB391FF"];
        _recoverButton.backgroundColor = [UIColor withMax:StringFromColumnData(kStr_highlightWithData)];
        //: _recoverButton.layer.cornerRadius = 20;
        _recoverButton.layer.cornerRadius = 20;
//        _recoverButton.titleLabel.font = [UIFont systemFontOfSize:12];
//        [_recoverButton setTitle:LangKey(@"reset") forState:UIControlStateNormal];
//        [_recoverButton setTitleColor:ThemeColor forState:UIControlStateNormal];
        //: [_recoverButton setImage:[UIImage imageNamed:@"recover_item"] forState:UIControlStateNormal];
        [_recoverButton setImage:[UIImage imageNamed:StringFromColumnData(kStr_areaCanData)] forState:UIControlStateNormal];
        //: [_recoverButton addTarget:self action:@selector(recoverAction) forControlEvents:UIControlEventTouchUpInside];
        [_recoverButton addTarget:self action:@selector(findDown) forControlEvents:UIControlEventTouchUpInside];

    }
    //: return _recoverButton;
    return _recoverButton;
}

//: #pragma mark - Overriding
#pragma mark - Overriding

//: - (BOOL)prefersStatusBarHidden {
- (BOOL)prefersStatusBarHidden {
    //: return !FUDeviceIsiPhoneXStyle();
    return !FUDeviceIsiPhoneXStyle();
}

//: - (UIStatusBarStyle)preferredStatusBarStyle {
- (UIStatusBarStyle)preferredStatusBarStyle {
    //: return UIStatusBarStyleLightContent;
    return UIStatusBarStyleLightContent;
}

//: @end
@end

Byte * ColumnDataToCache(Byte *data) {
    int canHandle = data[0];
    int infoLayer = data[1];
    Byte groupDiscussion = data[2];
    int shouldCollection = data[3];
    if (!canHandle) return data + shouldCollection;
    for (int i = shouldCollection; i < shouldCollection + infoLayer; i++) {
        int value = data[i] + groupDiscussion;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[shouldCollection + infoLayer] = 0;
    return data + shouldCollection;
}

NSString *StringFromColumnData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ColumnDataToCache(data)];
}
