// __DEBUG__
// __CLOSE_PRINT__
//
//  MLinkViewController.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/10.
//

// __M_A_C_R_O__
//: #import "FUBeautyImageRenderViewController.h"
#import "MLinkViewController.h"
//: #import "FUBeautyComponentManager.h"
#import "NonsolidColorTeam.h"

//: @interface FUBeautyImageRenderViewController ()<FUBeautyComponentDelegate>
@interface MLinkViewController ()<CellDelegate>

//: @end
@end

//: @implementation FUBeautyImageRenderViewController
@implementation MLinkViewController

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
    [[NonsolidColorTeam success] button:self.view];
    //: [FUBeautyComponentManager sharedManager].delegate = self;
    [NonsolidColorTeam success].delegate = self;

    // 更新保存按钮位置
    //: [self updateBottomConstraintsOfDownloadButton:[FUBeautyComponentManager sharedManager].componentViewHeight];
    [self size:[NonsolidColorTeam success].componentViewHeight];
}

//: #pragma mark - Event response
#pragma mark - Event response

//: - (void)dismissTipLabel {
- (void)tipBottom {
    //: self.tipLabel.hidden = YES;
    self.tipLabel.hidden = YES;
}


//: #pragma mark - FUBeautyComponentDelegate
#pragma mark - CellDelegate

//: - (void)beautyComponentViewHeightDidChange:(CGFloat)height {
- (void)beautyKey:(CGFloat)height {
    // 美颜视图高度变化时需要更新拍照/录制按钮的位置
    //: [self updateBottomConstraintsOfDownloadButton:height];
    [self size:height];
}

//: - (void)beautyComponentDidTouchDownComparison {
- (void)tablePage {
    //: self.viewModel.rendering = NO;
    self.viewModel.rendering = NO;
}

//: - (void)beautyComponentDidTouchUpComparison {
- (void)outsideTitle {
    //: self.viewModel.rendering = YES;
    self.viewModel.rendering = YES;
}

//: - (void)beautyComponentNeedsDisplayPromptContent:(NSString *)content {
- (void)celled:(NSString *)content {
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
        [MLinkViewController cancelPreviousPerformRequestsWithTarget:self selector:@selector(tipBottom) object:nil];
        //: [self performSelector:@selector(dismissTipLabel) withObject:nil afterDelay:1];
        [self performSelector:@selector(tipBottom) withObject:nil afterDelay:1];
    //: });
    });
}

//: @end
@end