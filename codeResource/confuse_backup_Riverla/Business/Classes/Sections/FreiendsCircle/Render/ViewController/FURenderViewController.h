//
//  FURenderViewController.h
//  FULiveDemo
//
//  Created by 项林平 on 2022/7/19.
//  Copyright © 2022 FaceUnity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "FUBeautyDefine.h"
#import "FUCaptureButton.h"
#import "FURenderViewModel.h"
#import "FUBeautySkinViewModel.h"
#import "FUBeautyViewModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^SpeiceImageBackBlock) (NSArray *imgArray);

@interface FURenderViewController : UIViewController<FURenderViewModelDelegate, FUCaptureButtonDelegate>

/// 渲染视图
@property (nonatomic, strong, readonly) FUGLDisplayView *renderView;
/// 人脸/人体/手势检测提示标签
@property (nonatomic, strong, readonly) UILabel *noTrackLabel;
/// 额外操作提示标签
@property (nonatomic, strong, readonly) UILabel *tipLabel;

@property (nonatomic, strong, readonly) FURenderViewModel *viewModel;
@property (nonatomic, strong, readonly) FUBeautyViewModel *beautyviewModel;
@property (nonatomic, strong) FUBeautySkinViewModel *skinviewModel;

- (instancetype)initWithViewModel:(FURenderViewModel *)viewModel;

/// 更新拍照/录制按钮到屏幕底部的距离
- (void)updateBottomConstraintsOfCaptureButton:(CGFloat)constant;

@property (nonatomic, copy) SpeiceImageBackBlock speiceBackBlock;

@property (nonatomic, strong) NSMutableArray *photoArray;
@property (nonatomic, assign) NSInteger photoNum;

@end

NS_ASSUME_NONNULL_END
