
#import <Foundation/Foundation.h>

NSString *StringFromPublicationData(Byte *data);        


//: bundle
Byte kStr_contentMessageValue[] = {92, 6, 15, 6, 112, 249, 83, 102, 95, 85, 93, 86, 44};


//: recover_item
Byte kStr_collectionContent[] = {74, 12, 57, 14, 112, 117, 98, 110, 149, 245, 21, 234, 28, 4, 57, 44, 42, 54, 61, 44, 57, 38, 48, 59, 44, 52, 124};


//: ic_close_b
Byte kStr_hidePathData[] = {89, 10, 48, 4, 57, 51, 47, 51, 60, 63, 67, 53, 47, 50, 37};


//: group_info_activity_update_success
Byte kStr_handleFormatAtData[] = {32, 34, 17, 6, 255, 244, 86, 97, 94, 100, 95, 78, 88, 93, 85, 94, 78, 80, 82, 99, 88, 101, 88, 99, 104, 78, 100, 95, 83, 80, 99, 84, 78, 98, 100, 82, 82, 84, 98, 98, 166};


//: next_item
Byte kStr_pathHideData[] = {16, 9, 3, 6, 251, 12, 107, 98, 117, 113, 92, 102, 113, 98, 106, 108};


//: group_info_activity_update_failed
Byte kStr_sizeObjectContent[] = {16, 33, 84, 5, 95, 19, 30, 27, 33, 28, 11, 21, 26, 18, 27, 11, 13, 15, 32, 21, 34, 21, 32, 37, 11, 33, 28, 16, 13, 32, 17, 11, 18, 13, 21, 24, 17, 16, 199};


//: face_beautification
Byte kStr_recordingKeyCellName[] = {90, 19, 25, 7, 18, 213, 210, 77, 72, 74, 76, 70, 73, 76, 72, 92, 91, 80, 77, 80, 74, 72, 91, 80, 86, 85, 96};


//: render_camera_capture
Byte kStr_scaleObjectData[] = {51, 21, 38, 10, 130, 67, 218, 81, 229, 64, 76, 63, 72, 62, 63, 76, 57, 61, 59, 71, 63, 76, 59, 57, 61, 59, 74, 78, 79, 76, 63, 243};


//: No_Face_Tracking
Byte kStr_enableWithData[] = {90, 16, 14, 7, 151, 185, 176, 64, 97, 81, 56, 83, 85, 87, 81, 70, 100, 83, 85, 93, 91, 96, 89, 202};


//: #B391FF
Byte kStr_keyColorWeakValue[] = {97, 7, 58, 8, 235, 174, 150, 99, 233, 8, 249, 255, 247, 12, 12, 127};


//: #1AB391FF
Byte kStr_textShouldValue[] = {94, 9, 88, 14, 69, 58, 170, 67, 219, 2, 221, 48, 146, 254, 203, 217, 233, 234, 219, 225, 217, 238, 238, 242};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TrifleViewController.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/8.
//

// __M_A_C_R_O__
//: #import "FUImageRenderViewController.h"
#import "TrifleViewController.h"
//: #import "FUBeautyComponentManager.h"
#import "RandomMargin.h"
//: #import "FULandmarkManager.h"
#import "Bottom.h"
//: #import <UINavigationController+FDFullscreenPopGesture.h>
#import <UINavigationController+FDFullscreenPopGesture.h>

//: @interface FUImageRenderViewController ()<FUBeautyComponentDelegate,UIGestureRecognizerDelegate>
@interface TrifleViewController ()<AfterContent,UIGestureRecognizerDelegate>

//: @property (nonatomic, strong) FUGLDisplayView *renderView;
@property (nonatomic, strong) FUGLDisplayView *renderView;

//: @property (nonatomic, strong) UIButton *downloadButton;
@property (nonatomic, strong) UIButton *downloadButton;

//: @property (nonatomic, strong) UILabel *noTrackLabel;
@property (nonatomic, strong) UILabel *noTrackLabel;

//: @property (nonatomic, strong) UILabel *tipLabel;
@property (nonatomic, strong) UILabel *tipLabel;

//: @property (nonatomic, strong) FUImageRenderViewModel *viewModel;
@property (nonatomic, strong) IngredientModel *viewModel;

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
@implementation TrifleViewController

//: #pragma mark - Initializer
#pragma mark - Initializer

//: - (instancetype)initWithViewModel:(FUImageRenderViewModel *)viewModel {
- (instancetype)initWithTitle:(IngredientModel *)viewModel {
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
    [[RandomMargin top] appearMenuVertical:[[NSBundle mainBundle] pathForResource:StringFromPublicationData(kStr_recordingKeyCellName) ofType:StringFromPublicationData(kStr_contentMessageValue)]];

    //: [self configureUI];
    [self bar];

    //: [self.viewModel start];
    [self.viewModel color];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillResignActive) name:UIApplicationWillResignActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationString) name:UIApplicationWillResignActiveNotification object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationDidBecomeActive) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(indexFile) name:UIApplicationDidBecomeActiveNotification object:nil];

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
    [[RandomMargin top] notLanguage:self.view];
    //: [FUBeautyComponentManager sharedManager].delegate = self;
    [RandomMargin top].delegate = self;

    // 添加点位测试开关
    //: if ([FURenderKitManager sharedManager].showsLandmarks) {
    if ([SearchedTingName grayish].showsLandmarks) {
        //: [FULandmarkManager show];
        [Bottom to];
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
    if ([SearchedTingName grayish].showsLandmarks) {
        //: [FULandmarkManager dismiss];
        [Bottom scaleTable];
    }
}

//: - (void)dealloc {
- (void)dealloc {
    //: [self.viewModel stop];
    [self.viewModel hand];

    //: [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationWillResignActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationWillResignActiveNotification object:nil];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationDidBecomeActiveNotification object:nil];
}

//: #pragma mark - UI
#pragma mark - UI

//: - (void)configureUI
- (void)bar
{
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
    [closeBtn setImage:[UIImage imageNamed:StringFromPublicationData(kStr_hidePathData)] forState:(UIControlStateNormal)];
    //: [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [closeBtn addTarget:self action:@selector(messageLeft) forControlEvents:UIControlEventTouchUpInside];
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
    self.renderView.frame = CGRectMake(0, (44.0f + [UIDevice clear]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice clear])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-210);


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
- (void)style:(CGFloat)constraints {
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
- (void)messageLeft {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)downloadAction:(UIButton *)sender {
- (void)hiddening:(UIButton *)sender {
    //: @autoreleasepool{} __weak __typeof__(self) weak_self = self;
    @autoreleasepool{} __weak __typeof__(self) weak_self = self;
    //: self.viewModel.captureImageHandler = ^(UIImage * _Nonnull image) {
    self.viewModel.captureImageHandler = ^(UIImage * _Nonnull image) {
        //: @autoreleasepool{} __typeof__(self) self = weak_self;
        @autoreleasepool{} __typeof__(self) self = weak_self;
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
            UIImageWriteToSavedPhotosAlbum(image, self, @selector(humanInfo:punctuate:backgroundInfo:), NULL);

        //: });
        });
    //: };
    };
}

//: - (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
- (void)humanInfo:(UIImage *)image punctuate:(NSError *)error backgroundInfo:(void *)contextInfo {
    //: if (error) {
    if (error) {
        //: [FUTipHUD showTips:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_failed"] dismissWithDelay:1.5];
        [PopHud content:[ItemManager sessionInformation:StringFromPublicationData(kStr_sizeObjectContent)] with:1.5];
    //: } else {
    } else {
        //: [FUTipHUD showTips:[FFFLanguageManager getTextWithKey:@"group_info_activity_update_success"] dismissWithDelay:1.5];
        [PopHud content:[ItemManager sessionInformation:StringFromPublicationData(kStr_handleFormatAtData)] with:1.5];
    }
}

//: - (void)applicationWillResignActive {
- (void)applicationString {
    //: [self.viewModel stop];
    [self.viewModel hand];
}

//: - (void)applicationDidBecomeActive {
- (void)indexFile {
    //: [self.viewModel start];
    [self.viewModel color];
}

//: #pragma mark - FUImageRenderViewModelDelegate
#pragma mark - BottomColor

//: - (void)imageRenderDidOutputPixelBuffer:(CVPixelBufferRef)imageBuffer {
- (void)ting:(CVPixelBufferRef)imageBuffer {
    //: [self.renderView displayPixelBuffer:imageBuffer];
    [self.renderView displayPixelBuffer:imageBuffer];
}

//: - (void)imageRenderShouldCheckDetectingStatus:(FUDetectingParts)parts {
- (void)chromatogramTeam:(FUDetectingParts)parts {
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
//        dispatch_async(dispatch_get_main_queue(), ^{
//            self.noTrackLabel.hidden = detectingResult;
////            if (!detectingResult) {
////                self.noTrackLabel.text = parts == FUDetectingPartsFace ? FULocalizedString(@"未检测到人脸") : (parts == FUDetectingPartsHuman ? FULocalizedString(@"未检测到人体") : FULocalizedString(@"未检测到手势"));
////            }
//        });
    }
}
//: - (void)captureButtonDidTakePhotoNext
- (void)recentEffect
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
            UIImageWriteToSavedPhotosAlbum(image, self, @selector(humanInfo:punctuate:backgroundInfo:), NULL);
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: });
        });
    //: };
    };
}
//: - (void)recoverAction
- (void)findDown
{
    //: [[FUBeautyComponentManager sharedManager].beautySkinViewModel recoverAllSkinValuesToDefault];
    [[RandomMargin top].beautySkinViewModel clearDefault];
    //: [[FUBeautyComponentManager sharedManager].beautySkinView refreshSubviews];
    [[RandomMargin top].beautySkinView connect];
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
        _captureButtonNext.backgroundColor = [UIColor withMax:StringFromPublicationData(kStr_keyColorWeakValue)];

        //: [_captureButtonNext addTarget:self action:@selector(captureButtonDidTakePhotoNext) forControlEvents:UIControlEventTouchUpInside];
        [_captureButtonNext addTarget:self action:@selector(recentEffect) forControlEvents:UIControlEventTouchUpInside];
//        _captureButtonNext.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_captureButtonNext setTitleColor:RGB_COLOR_String(@"#ffffff") forState:UIControlStateNormal];
//        [_captureButtonNext setTitle:LangKey(@"user_info_avtivity_keep") forState:UIControlStateNormal];
        //: [_captureButtonNext setImage:[UIImage imageNamed:@"next_item"] forState:UIControlStateNormal];
        [_captureButtonNext setImage:[UIImage imageNamed:StringFromPublicationData(kStr_pathHideData)] forState:UIControlStateNormal];
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
        _recoverButton.backgroundColor = [UIColor withMax:StringFromPublicationData(kStr_textShouldValue)];
        //: _recoverButton.layer.cornerRadius = 20;
        _recoverButton.layer.cornerRadius = 20;
//        _recoverButton.titleLabel.font = [UIFont systemFontOfSize:12];
//        [_recoverButton setTitle:LangKey(@"reset") forState:UIControlStateNormal];
//        [_recoverButton setTitleColor:ThemeColor forState:UIControlStateNormal];
        //: [_recoverButton setImage:[UIImage imageNamed:@"recover_item"] forState:UIControlStateNormal];
        [_recoverButton setImage:[UIImage imageNamed:StringFromPublicationData(kStr_collectionContent)] forState:UIControlStateNormal];
        //: [_recoverButton addTarget:self action:@selector(recoverAction) forControlEvents:UIControlEventTouchUpInside];
        [_recoverButton addTarget:self action:@selector(findDown) forControlEvents:UIControlEventTouchUpInside];
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
        [_downloadButton setBackgroundImage:[UIImage imageNamed:StringFromPublicationData(kStr_scaleObjectData)] forState:UIControlStateNormal];
        //: [_downloadButton addTarget:self action:@selector(downloadAction:) forControlEvents:UIControlEventTouchUpInside];
        [_downloadButton addTarget:self action:@selector(hiddening:) forControlEvents:UIControlEventTouchUpInside];
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
        _noTrackLabel.text = [ItemManager sessionInformation:StringFromPublicationData(kStr_enableWithData)];
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

Byte * PublicationDataToCache(Byte *data) {
    int play = data[0];
    int bed = data[1];
    Byte tvDisable = data[2];
    int distantStyle = data[3];
    if (!play) return data + distantStyle;
    for (int i = distantStyle; i < distantStyle + bed; i++) {
        int value = data[i] + tvDisable;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[distantStyle + bed] = 0;
    return data + distantStyle;
}

NSString *StringFromPublicationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PublicationDataToCache(data)];
}
