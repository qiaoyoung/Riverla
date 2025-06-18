// __DEBUG__
// __CLOSE_PRINT__
//
//  ActionViewController.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/7/26.
//

// __M_A_C_R_O__
//: #import "FUBeautyViewController.h"
#import "ActionViewController.h"
//: #import "FUBeautyComponentManager.h"
#import "RandomMargin.h"

//: @interface FUBeautyViewController ()<FUBeautyComponentDelegate>
@interface ActionViewController ()<AfterContent>

//: @property (nonatomic, strong, readonly) FUBeautyViewModel *viewModel;
@property (nonatomic, strong, readonly) BeautyViewModel *viewModel;

//: @end
@end

//: @implementation FUBeautyViewController
@implementation ActionViewController

//: @dynamic viewModel;
@dynamic viewModel;

//: #pragma mark - Life cycle
#pragma mark - Life cycle

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
}

//: - (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];

    // 添加美颜视图
    //: [[FUBeautyComponentManager sharedManager] addComponentViewToView:self.view];
    [[RandomMargin top] notLanguage:self.view];
    //: [FUBeautyComponentManager sharedManager].delegate = self;
    [RandomMargin top].delegate = self;

    // 进入后台保存数据
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appDidEnterBackground) name:UIApplicationDidEnterBackgroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(parentTeam) name:UIApplicationDidEnterBackgroundNotification object:nil];
}

//: - (void)viewWillDisappear:(BOOL)animated {
- (void)viewWillDisappear:(BOOL)animated {
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)appDidEnterBackground {
- (void)parentTeam {
    //: [[FUBeautyComponentManager sharedManager] saveBeauty];
    [[RandomMargin top] color];
}


//: #pragma mark - Event response
#pragma mark - Event response

//: - (void)dismissTipLabel {
- (void)magnitudeBar {
    //: self.tipLabel.hidden = YES;
    self.tipLabel.hidden = YES;
}

//: #pragma mark - FUBeautyComponentDelegate
#pragma mark - AfterContent

//: - (void)beautyComponentViewHeightDidChange:(CGFloat)height {
- (void)holdering:(CGFloat)height {
    // 美颜视图高度变化时需要更新拍照/录制按钮的位置
//    [self updateBottomConstraintsOfCaptureButton:height];
}

//: - (void)beautyComponentDidTouchDownComparison {
- (void)downwardlyShould {
    //: self.viewModel.rendering = NO;
    self.viewModel.rendering = NO;
}

//: - (void)beautyComponentDidTouchUpComparison {
- (void)grayEnd {
    //: self.viewModel.rendering = YES;
    self.viewModel.rendering = YES;
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
        //: [FUBeautyViewController cancelPreviousPerformRequestsWithTarget:self selector:@selector(dismissTipLabel) object:nil];
        [ActionViewController cancelPreviousPerformRequestsWithTarget:self selector:@selector(magnitudeBar) object:nil];
        //: [self performSelector:@selector(dismissTipLabel) withObject:nil afterDelay:1];
        [self performSelector:@selector(magnitudeBar) withObject:nil afterDelay:1];
    //: });
    });
}

//: #pragma mark - FUHeadButtonViewDelegate
#pragma mark - FUHeadButtonViewDelegate

//: - (void)headButtonViewBackAction:(UIButton *)btn {
- (void)date:(UIButton *)btn {
//    [[RandomMargin sharedManager] saveBeauty];
//    [super headButtonViewBackAction:btn];
}

//: @end
@end