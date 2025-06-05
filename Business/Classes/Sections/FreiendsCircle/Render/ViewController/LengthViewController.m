
#import <Foundation/Foundation.h>

NSString *StringFromDiscusData(Byte *data);        


//: group_info_activity_update_failed
Byte kStr_spaceBindName[] = {25, 33, 75, 8, 135, 106, 91, 109, 28, 39, 36, 42, 37, 20, 30, 35, 27, 36, 20, 22, 24, 41, 30, 43, 30, 41, 46, 20, 42, 37, 25, 22, 41, 26, 20, 27, 22, 30, 33, 26, 25, 220};


//: #1AB391FF
Byte kStr_meteText[] = {99, 9, 94, 5, 47, 197, 211, 227, 228, 213, 219, 211, 232, 232, 194};


//: next_item
Byte kStr_bubbleData[] = {32, 9, 62, 4, 48, 39, 58, 54, 33, 43, 54, 39, 47, 251};


//: #B391FF
Byte kStr_fileAngleValue[] = {19, 7, 65, 9, 30, 226, 49, 38, 84, 226, 1, 242, 248, 240, 5, 5, 3};


//: recover_item
Byte kStr_infoTitle[] = {19, 12, 24, 4, 90, 77, 75, 87, 94, 77, 90, 71, 81, 92, 77, 85, 33};


//: render_camera_capture
Byte kStr_poItemTitle[] = {53, 21, 72, 7, 248, 142, 184, 42, 29, 38, 28, 29, 42, 23, 27, 25, 37, 29, 42, 25, 23, 27, 25, 40, 44, 45, 42, 29, 114};


//: No_Face_Tracking
Byte kStr_oakData[] = {15, 16, 57, 4, 21, 54, 38, 13, 40, 42, 44, 38, 27, 57, 40, 42, 50, 48, 53, 46, 131};


//: ic_close_b
Byte kStr_tonightTitle[] = {99, 10, 47, 5, 175, 58, 52, 48, 52, 61, 64, 68, 54, 48, 51, 4};


//: group_info_activity_update_success
Byte kStr_colorGreenName[] = {3, 34, 75, 12, 235, 189, 25, 100, 150, 149, 198, 246, 28, 39, 36, 42, 37, 20, 30, 35, 27, 36, 20, 22, 24, 41, 30, 43, 30, 41, 46, 20, 42, 37, 25, 22, 41, 26, 20, 40, 42, 24, 24, 26, 40, 40, 127};


//: face_beautification
Byte kStr_kitChildValue[] = {7, 19, 39, 13, 248, 71, 162, 83, 198, 236, 73, 92, 147, 63, 58, 60, 62, 56, 59, 62, 58, 78, 77, 66, 63, 66, 60, 58, 77, 66, 72, 71, 71};


//: bundle
Byte kStr_conclusionData[] = {21, 6, 94, 6, 159, 197, 4, 23, 16, 6, 14, 7, 79};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthViewController.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/8.
//

// __M_A_C_R_O__
//: #import "FUImageRenderViewController.h"
#import "LengthViewController.h"
//: #import "FUBeautyComponentManager.h"
#import "NonsolidColorTeam.h"
//: #import "FULandmarkManager.h"
#import "Occurrence.h"
//: #import <UINavigationController+FDFullscreenPopGesture.h>
#import <UINavigationController+FDFullscreenPopGesture.h>

//: @interface FUImageRenderViewController ()<FUBeautyComponentDelegate,UIGestureRecognizerDelegate>
@interface LengthViewController ()<CellDelegate,UIGestureRecognizerDelegate>

//: @property (nonatomic, strong) FUGLDisplayView *renderView;
@property (nonatomic, strong) FUGLDisplayView *renderView;

//: @property (nonatomic, strong) UIButton *downloadButton;
@property (nonatomic, strong) UIButton *downloadButton;

//: @property (nonatomic, strong) UILabel *noTrackLabel;
@property (nonatomic, strong) UILabel *noTrackLabel;

//: @property (nonatomic, strong) UILabel *tipLabel;
@property (nonatomic, strong) UILabel *tipLabel;

//: @property (nonatomic, strong) FUImageRenderViewModel *viewModel;
@property (nonatomic, strong) ClickModel *viewModel;

//: @property (nonatomic, strong) UIView *boomView;
@property (nonatomic, strong) UIView *boomView;
/// 恢复按钮
//: @property (nonatomic, strong) UIButton *recoverButton;
@property (nonatomic, strong) UIButton *recoverButton;
//: @property (nonatomic, strong) UIButton *captureButtonNext;
@property (nonatomic, strong) UIButton *captureButtonNext;

//: @end
@end

//: @implementation FUImageRenderViewController
@implementation LengthViewController

//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)initWithViewModel:(FUImageRenderViewModel *)viewModel {
- (instancetype)initWithJumpstart:(ClickModel *)viewModel {
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
    [[LanguagePin titleUser] text];

    // 加载美颜
    //: [[FUBeautyComponentManager sharedManager] loadBeautyForFilePath:[[NSBundle mainBundle] pathForResource:@"face_beautification" ofType:@"bundle"]];
    [[NonsolidColorTeam success] press:[[NSBundle mainBundle] pathForResource:StringFromDiscusData(kStr_kitChildValue) ofType:StringFromDiscusData(kStr_conclusionData)]];

    //: [self configureUI];
    [self streetSmart];

    //: [self.viewModel start];
    [self.viewModel team];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillResignActive) name:UIApplicationWillResignActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showPlace) name:UIApplicationWillResignActiveNotification object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationDidBecomeActive) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(prodActive) name:UIApplicationDidBecomeActiveNotification object:nil];

    //: self.navigationController.interactivePopGestureRecognizer.delegate = self;
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

// 3. 实现代理方法，返回 NO 表示禁止手势
//: - (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    //: return NO; 
    return NO; // 禁止左滑返回
}

// 在当前页面出现时禁用，离开时恢复
//- (void)viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
//    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
//}

//: - (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    // // 添加美颜视图
    //: [[FUBeautyComponentManager sharedManager] addComponentViewToView:self.view];
    [[NonsolidColorTeam success] button:self.view];
    //: [FUBeautyComponentManager sharedManager].delegate = self;
    [NonsolidColorTeam success].delegate = self;

    // 添加点位测试开关
    //: if ([FURenderKitManager sharedManager].showsLandmarks) {
    if ([LanguagePin titleUser].showsLandmarks) {
        //: [FULandmarkManager show];
        [Occurrence progress];
    }
}

//: - (void)viewWillDisappear:(BOOL)animated {
- (void)viewWillDisappear:(BOOL)animated {
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
//    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    // 移除点位测试开关
    //: if ([FURenderKitManager sharedManager].showsLandmarks) {
    if ([LanguagePin titleUser].showsLandmarks) {
        //: [FULandmarkManager dismiss];
        [Occurrence sharedEvent];
    }
}

//: - (void)dealloc {
- (void)dealloc {
    //: [self.viewModel stop];
    [self.viewModel beforeLabel];

    //: [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationWillResignActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationWillResignActiveNotification object:nil];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationDidBecomeActiveNotification object:nil];
}

//: #pragma mark - UI
#pragma mark - UI

//: - (void)configureUI
- (void)streetSmart
{
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice table]))];
    //: [self.view addSubview:topView];
    [self.view addSubview:topView];

    //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 32, 32);
    closeBtn.frame = CGRectMake(15, 4+[UIDevice table], 32, 32);
    //: closeBtn.backgroundColor = [UIColor clearColor];
    closeBtn.backgroundColor = [UIColor clearColor];
    //: [closeBtn setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [closeBtn setImage:[UIImage imageNamed:StringFromDiscusData(kStr_tonightTitle)] forState:(UIControlStateNormal)];
    //: [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [closeBtn addTarget:self action:@selector(messageView) forControlEvents:UIControlEventTouchUpInside];
    //: [topView addSubview:closeBtn];
    [topView addSubview:closeBtn];

//    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    infoBtn.frame = CGRectMake(SCREEN_WIDTH-15-32, 4+SCREEN_STATUS_HEIGHT, 32, 32);
//    infoBtn.backgroundColor = [UIColor clearColor];
//    [infoBtn setImage:[UIImage imageNamed:@"render_camera_switch"] forState:(UIControlStateNormal)];
//    [infoBtn addTarget:self action:@selector(headButtonViewSwitchAction:) forControlEvents:UIControlEventTouchUpInside];
//    [topView addSubview:infoBtn];

    //: [self.view addSubview:self.renderView];
    [self.view addSubview:self.renderView];
    //: self.renderView.frame = CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-210);
    self.renderView.frame = CGRectMake(0, (44.0f + [UIDevice table]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice table])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-210);


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


    //: [self.view addSubview:self.noTrackLabel];
    [self.view addSubview:self.noTrackLabel];
    //: [self.noTrackLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [self.noTrackLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.center.equalTo(self.view);
        make.center.equalTo(self.view);
    //: }];
    }];

    //: [self.view addSubview:self.tipLabel];
    [self.view addSubview:self.tipLabel];
    //: [self.tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [self.tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.equalTo(self.view.mas_centerY).mas_offset(24);
        make.centerY.equalTo(self.view.mas_centerY).mas_offset(24);
        //: make.centerX.equalTo(self.view);
        make.centerX.equalTo(self.view);
        //: make.width.mas_equalTo(300);
        make.width.mas_equalTo(300);
        //: make.height.mas_equalTo(32);
        make.height.mas_equalTo(32);
    //: }];
    }];

//    [self.view addSubview:self.downloadButton];
//    [self.downloadButton mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(self.view.mas_bottom).offset(-self.viewModel.downloadButtonBottomConstant - 10);
//        make.centerX.equalTo(self.view);
//        make.size.mas_offset(CGSizeMake(85, 85));
//    }];

    //: UIView *boomView = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-60, [[UIScreen mainScreen] bounds].size.width, 60)];
    UIView *boomView = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-60, [[UIScreen mainScreen] bounds].size.width, 60)];
    //: [self.view addSubview:boomView];
    [self.view addSubview:boomView];

    //: [boomView addSubview:self.recoverButton];
    [boomView addSubview:self.recoverButton];
    //: self.recoverButton.frame = CGRectMake(20, 10, 88, 40);
    self.recoverButton.frame = CGRectMake(20, 10, 88, 40);


//    [boomView addSubview:self.downloadButton];
//    self.downloadButton.frame = CGRectMake((SCREEN_WIDTH-42)/2, 9, 42, 42);

    //: [boomView addSubview:self.captureButtonNext];
    [boomView addSubview:self.captureButtonNext];
    //: self.captureButtonNext.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-88-20, 10, 88, 40);
    self.captureButtonNext.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-88-20, 10, 88, 40);
}

//: #pragma mark - Instance methods
#pragma mark - Instance methods

//: - (void)updateBottomConstraintsOfDownloadButton:(CGFloat)constraints {
- (void)size:(CGFloat)constraints {
    //: [self.downloadButton mas_updateConstraints:^(MASConstraintMaker *make) {
    [self.downloadButton mas_updateConstraints:^(MASConstraintMaker *make) {
        //: make.bottom.equalTo(self.view.mas_bottom).mas_offset(-constraints-10);
        make.bottom.equalTo(self.view.mas_bottom).mas_offset(-constraints-10);
    //: }];
    }];
    //: [UIView animateWithDuration:0.15 animations:^{
    [UIView animateWithDuration:0.15 animations:^{
        //: [self.view layoutIfNeeded];
        [self.view layoutIfNeeded];
    //: }];
    }];
}

//: #pragma mark - Event response
#pragma mark - Event response

//: - (void)backAction {
- (void)messageView {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)downloadAction:(UIButton *)sender {
- (void)modelled:(UIButton *)sender {
    //: @autoreleasepool{} __weak __typeof__(self) weak_self = self;
    @autoreleasepool{} __weak __typeof__(self) weak_self = self;
    //: self.viewModel.captureImageHandler = ^(UIImage * _Nonnull image) {
    self.viewModel.captureImageHandler = ^(UIImage * _Nonnull image) {
        //: @autoreleasepool{} __typeof__(self) self = weak_self;
        @autoreleasepool{} __typeof__(self) self = weak_self;
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
            UIImageWriteToSavedPhotosAlbum(image, self, @selector(top:context:up:), NULL);

        //: });
        });
    //: };
    };
}

//: - (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
- (void)top:(UIImage *)image context:(NSError *)error up:(void *)contextInfo {
    //: if (error) {
    if (error) {
        //: [FUTipHUD showTips:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"] dismissWithDelay:1.5];
        [ChangeActionVideo image:[TeamManager sizeKey:StringFromDiscusData(kStr_spaceBindName)] notice:1.5];
    //: } else {
    } else {
        //: [FUTipHUD showTips:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_success"] dismissWithDelay:1.5];
        [ChangeActionVideo image:[TeamManager sizeKey:StringFromDiscusData(kStr_colorGreenName)] notice:1.5];
    }
}

//: - (void)applicationWillResignActive {
- (void)showPlace {
    //: [self.viewModel stop];
    [self.viewModel beforeLabel];
}

//: - (void)applicationDidBecomeActive {
- (void)prodActive {
    //: [self.viewModel start];
    [self.viewModel team];
}

//: #pragma mark - FUImageRenderViewModelDelegate
#pragma mark - MarginDelegate

//: - (void)imageRenderDidOutputPixelBuffer:(CVPixelBufferRef)imageBuffer {
- (void)messageTo:(CVPixelBufferRef)imageBuffer {
    //: [self.renderView displayPixelBuffer:imageBuffer];
    [self.renderView displayPixelBuffer:imageBuffer];
}

//: - (void)imageRenderShouldCheckDetectingStatus:(FUDetectingParts)parts {
- (void)languages:(FUDetectingParts)parts {
    //: @autoreleasepool {
    @autoreleasepool {
        //: BOOL detectingResult = YES;
        BOOL detectingResult = YES;
        //: switch (parts) {
        switch (parts) {
            //: case FUDetectingPartsFace:
            case FUDetectingPartsFace:
                //: detectingResult = [FURenderKitManager faceTracked];
                detectingResult = [LanguagePin text];
                //: break;
                break;
            //: case FUDetectingPartsHuman:
            case FUDetectingPartsHuman:
                //: detectingResult = [FURenderKitManager humanTracked];
                detectingResult = [LanguagePin hominineExtra];
                //: break;
                break;
            //: case FUDetectingPartsHand:
            case FUDetectingPartsHand:
                //: detectingResult = [FURenderKitManager handTracked];
                detectingResult = [LanguagePin eleven];
                //: break;
                break;
            //: default:
            default:
                //: break;
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
//: - (void)captureButtonDidTakePhotoNext
- (void)accountSession
{
    //: @autoreleasepool{} __weak __typeof__(self) weak_self = self;
    @autoreleasepool{} __weak __typeof__(self) weak_self = self;
    //: self.viewModel.captureImageHandler = ^(UIImage * _Nonnull image) {
    self.viewModel.captureImageHandler = ^(UIImage * _Nonnull image) {
        //: @autoreleasepool{} __typeof__(self) self = weak_self;
        @autoreleasepool{} __typeof__(self) self = weak_self;
        //: [self.photoArray addObject:image];
        [self.photoArray addObject:image];
        //: if (self.photoArray.count>0) {
        if (self.photoArray.count>0) {
            //: self.speiceimgBackBlock(self.photoArray);
            self.speiceimgBackBlock(self.photoArray);
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
            UIImageWriteToSavedPhotosAlbum(image, self, @selector(top:context:up:), NULL);
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: });
        });
    //: };
    };
}
//: - (void)recoverAction
- (void)viewCenter
{
    //: [[FUBeautyComponentManager sharedManager].beautySkinViewModel recoverAllSkinValuesToDefault];
    [[NonsolidColorTeam success].beautySkinViewModel reload];
    //: [[FUBeautyComponentManager sharedManager].beautySkinView refreshSubviews];
    [[NonsolidColorTeam success].beautySkinView color];
}
//: #pragma mark - Getters
#pragma mark - Getters
//: - (UIButton *)captureButtonNext {
- (UIButton *)captureButtonNext {
    //: if (!_captureButtonNext) {
    if (!_captureButtonNext) {
        //: _captureButtonNext = [UIButton buttonWithType:UIButtonTypeCustom];
        _captureButtonNext = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _captureButtonNext.layer.cornerRadius = 20;
        _captureButtonNext.layer.cornerRadius = 20;
        //: _captureButtonNext.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
        _captureButtonNext.backgroundColor = [UIColor isView:StringFromDiscusData(kStr_fileAngleValue)];

        //: [_captureButtonNext addTarget:self action:@selector(captureButtonDidTakePhotoNext) forControlEvents:UIControlEventTouchUpInside];
        [_captureButtonNext addTarget:self action:@selector(accountSession) forControlEvents:UIControlEventTouchUpInside];
//        _captureButtonNext.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_captureButtonNext setTitleColor:RGB_COLOR_String(@"#ffffff") forState:UIControlStateNormal];
//        [_captureButtonNext setTitle:LangKey(@"user_info_avtivity_keep") forState:UIControlStateNormal];
        //: [_captureButtonNext setImage:[UIImage imageNamed:@"next_item"] forState:UIControlStateNormal];
        [_captureButtonNext setImage:[UIImage imageNamed:StringFromDiscusData(kStr_bubbleData)] forState:UIControlStateNormal];
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
        _recoverButton.backgroundColor = [UIColor isView:StringFromDiscusData(kStr_meteText)];
        //: _recoverButton.layer.cornerRadius = 20;
        _recoverButton.layer.cornerRadius = 20;
//        _recoverButton.titleLabel.font = [UIFont systemFontOfSize:12];
//        [_recoverButton setTitle:LangKey(@"reset") forState:UIControlStateNormal];
//        [_recoverButton setTitleColor:ThemeColor forState:UIControlStateNormal];
        //: [_recoverButton setImage:[UIImage imageNamed:@"recover_item"] forState:UIControlStateNormal];
        [_recoverButton setImage:[UIImage imageNamed:StringFromDiscusData(kStr_infoTitle)] forState:UIControlStateNormal];
        //: [_recoverButton addTarget:self action:@selector(recoverAction) forControlEvents:UIControlEventTouchUpInside];
        [_recoverButton addTarget:self action:@selector(viewCenter) forControlEvents:UIControlEventTouchUpInside];
//        [_recoverButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
    }
    //: return _recoverButton;
    return _recoverButton;
}
//: - (UIButton *)downloadButton {
- (UIButton *)downloadButton {
    //: if (!_downloadButton) {
    if (!_downloadButton) {
        //: _downloadButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _downloadButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        _downloadButton.layer.cornerRadius = 42.5;
        //: [_downloadButton setBackgroundImage:[UIImage imageNamed:@"render_camera_capture"] forState:UIControlStateNormal];
        [_downloadButton setBackgroundImage:[UIImage imageNamed:StringFromDiscusData(kStr_poItemTitle)] forState:UIControlStateNormal];
        //: [_downloadButton addTarget:self action:@selector(downloadAction:) forControlEvents:UIControlEventTouchUpInside];
        [_downloadButton addTarget:self action:@selector(modelled:) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _downloadButton;
    return _downloadButton;
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
        //: _noTrackLabel.text = [FFFLanguageManager getTextWithKey:@"No_Face_Tracking"];
        _noTrackLabel.text = [TeamManager sizeKey:StringFromDiscusData(kStr_oakData)];
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
        //: _tipLabel.hidden = YES;
        _tipLabel.hidden = YES;
    }
    //: return _tipLabel;
    return _tipLabel;
}

//: - (FUGLDisplayView *)renderView {
- (FUGLDisplayView *)renderView {
    //: if (!_renderView) {
    if (!_renderView) {
        //: _renderView = [[FUGLDisplayView alloc] initWithFrame:self.view.bounds];
        _renderView = [[FUGLDisplayView alloc] initWithFrame:self.view.bounds];
        //: _renderView.contentMode = FUGLDisplayViewContentModeScaleAspectFit;
        _renderView.contentMode = FUGLDisplayViewContentModeScaleAspectFit;
    }
    //: return _renderView;
    return _renderView;
}

//: #pragma mark - Override methods
#pragma mark - Override methods

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

Byte * DiscusDataToCache(Byte *data) {
    int canvass = data[0];
    int trap = data[1];
    Byte opponentImage = data[2];
    int enableeringClimb = data[3];
    if (!canvass) return data + enableeringClimb;
    for (int i = enableeringClimb; i < enableeringClimb + trap; i++) {
        int value = data[i] + opponentImage;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[enableeringClimb + trap] = 0;
    return data + enableeringClimb;
}

NSString *StringFromDiscusData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DiscusDataToCache(data)];
}
