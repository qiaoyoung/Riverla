// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonViewController.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/10.
//

// __M_A_C_R_O__
//: #import "FUBeautyImageRenderViewController.h"
#import "ButtonViewController.h"
//: #import "FUBeautyComponentManager.h"
#import "RandomMargin.h"

//: @interface FUBeautyImageRenderViewController ()<FUBeautyComponentDelegate>
@interface ButtonViewController ()<AfterContent>

//: @end
@end

//: @implementation FUBeautyImageRenderViewController
@implementation ButtonViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
}

//: - (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];

    // // 添加美颜视图
    //: [[FUBeautyComponentManager sharedManager] addComponentViewToView:self.view];
    [[RandomMargin top] notLanguage:self.view];
    //: [FUBeautyComponentManager sharedManager].delegate = self;
    [RandomMargin top].delegate = self;

    // 更新保存按钮位置
    //: [self updateBottomConstraintsOfDownloadButton:[FUBeautyComponentManager sharedManager].componentViewHeight];
    [self style:[RandomMargin top].componentViewHeight];
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
    //: [self updateBottomConstraintsOfDownloadButton:height];
    [self style:height];
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
        //: [FUBeautyImageRenderViewController cancelPreviousPerformRequestsWithTarget:self selector:@selector(dismissTipLabel) object:nil];
        [ButtonViewController cancelPreviousPerformRequestsWithTarget:self selector:@selector(magnitudeBar) object:nil];
        //: [self performSelector:@selector(dismissTipLabel) withObject:nil afterDelay:1];
        [self performSelector:@selector(magnitudeBar) withObject:nil afterDelay:1];
    //: });
    });
}

//: @end
@end