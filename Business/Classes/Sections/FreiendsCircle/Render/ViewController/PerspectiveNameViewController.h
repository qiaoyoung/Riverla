// __DEBUG__
// __CLOSE_PRINT__
//
//  PerspectiveNameViewController.h
//  FULiveDemo
//
//  Created by 项林平 on 2022/7/19.
//  Copyright © 2022 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "FUBeautyDefine.h"
#import "FUBeautyDefine.h"
//: #import "FUCaptureButton.h"
#import "TelecastingView.h"
//: #import "FURenderViewModel.h"
#import "GenerateNotice.h"
//: #import "FUBeautySkinViewModel.h"
#import "MarginPopRecent.h"
//: #import "FUBeautyViewModel.h"
#import "UserViewModel.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^SpeiceImageBackBlock) (NSArray *imgArray);
typedef void(^SpeiceImageBackBlock) (NSArray *imgArray);

//: @interface FURenderViewController : UIViewController<FURenderViewModelDelegate, FUCaptureButtonDelegate>
@interface PerspectiveNameViewController : UIViewController<ChangeDelegate, PictureColor>

/// 渲染视图
//: @property (nonatomic, strong, readonly) FUGLDisplayView *renderView;
@property (nonatomic, strong, readonly) FUGLDisplayView *renderView;
/// 人脸/人体/手势检测提示标签
//: @property (nonatomic, strong, readonly) UILabel *noTrackLabel;
@property (nonatomic, strong, readonly) UILabel *noTrackLabel;
/// 额外操作提示标签
//: @property (nonatomic, strong, readonly) UILabel *tipLabel;
@property (nonatomic, strong, readonly) UILabel *tipLabel;

//: @property (nonatomic, strong, readonly) FURenderViewModel *viewModel;
@property (nonatomic, strong, readonly) GenerateNotice *viewModel;
//: @property (nonatomic, strong, readonly) FUBeautyViewModel *beautyviewModel;
@property (nonatomic, strong, readonly) UserViewModel *beautyviewModel;
//: @property (nonatomic, strong) FUBeautySkinViewModel *skinviewModel;
@property (nonatomic, strong) MarginPopRecent *skinviewModel;

//: - (instancetype)initWithViewModel:(FURenderViewModel *)viewModel;
- (instancetype)initWithDuringTable:(GenerateNotice *)viewModel;

/// 更新拍照/录制按钮到屏幕底部的距离
//: - (void)updateBottomConstraintsOfCaptureButton:(CGFloat)constant;
- (void)dataConverter:(CGFloat)constant;

//: @property (nonatomic, copy) SpeiceImageBackBlock speiceBackBlock;
@property (nonatomic, copy) SpeiceImageBackBlock speiceBackBlock;

//: @property (nonatomic, strong) NSMutableArray *photoArray;
@property (nonatomic, strong) NSMutableArray *photoArray;
//: @property (nonatomic, assign) NSInteger photoNum;
@property (nonatomic, assign) NSInteger photoNum;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END