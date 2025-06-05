// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthViewController.h
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/8.
//
//#import <FUBeautyComponent/FUBeautyComponent.h>

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FUImageRenderViewModel.h"
#import "ClickModel.h"

//: typedef void(^SpeicephotoImageBackBlock) (NSArray *imgArray);
typedef void(^SpeicephotoImageBackBlock) (NSArray *imgArray);

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FUImageRenderViewController : UIViewController<FUImageRenderViewModelDelegate>
@interface LengthViewController : UIViewController<MarginDelegate>

//: @property (nonatomic, strong, readonly) FUGLDisplayView *renderView;
@property (nonatomic, strong, readonly) FUGLDisplayView *renderView;
/// 人脸/人体/手势检测提示标签
//: @property (nonatomic, strong, readonly) UILabel *noTrackLabel;
@property (nonatomic, strong, readonly) UILabel *noTrackLabel;
/// 额外操作提示标签
//: @property (nonatomic, strong, readonly) UILabel *tipLabel;
@property (nonatomic, strong, readonly) UILabel *tipLabel;

//: @property (nonatomic, strong, readonly) FUImageRenderViewModel *viewModel;
@property (nonatomic, strong, readonly) ClickModel *viewModel;

//: - (instancetype)initWithViewModel:(FUImageRenderViewModel *)viewModel;
- (instancetype)initWithJumpstart:(ClickModel *)viewModel;

/// 更新保存按钮距离屏幕底部的距离
//: - (void)updateBottomConstraintsOfDownloadButton:(CGFloat)constant;
- (void)size:(CGFloat)constant;

//: @property (nonatomic, copy) SpeicephotoImageBackBlock speiceimgBackBlock;
@property (nonatomic, copy) SpeicephotoImageBackBlock speiceimgBackBlock;

//: @property (nonatomic, strong) NSMutableArray *photoArray;
@property (nonatomic, strong) NSMutableArray *photoArray;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END