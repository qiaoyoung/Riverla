// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxEmpty.h
//  FULiveDemo
//
//  Created by 项林平 on 2022/7/15.
//  Copyright © 2022 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FURenderViewModelDelegate <NSObject>
@protocol ReplyEnable <NSObject>

//: @optional
@optional
//: - (void)renderWillInputPixelBuffer:(CVPixelBufferRef)pixelBuffer;
- (void)childed:(CVPixelBufferRef)pixelBuffer;

//: - (void)renderDidOutputDebugInformations:(NSString *)informations;
- (void)halogening:(NSString *)informations;
/// 跟踪状态
//: - (void)renderShouldCheckDetectingStatus:(FUDetectingParts)parts;
- (void)renderLengthMagnituderyStatus:(FUDetectingParts)parts;

//: @end
@end

//: @interface FURenderViewModel : NSObject
@interface MaxEmpty : NSObject

/// 是否渲染，默认为YES
//: @property (nonatomic, assign, getter=isRendering) BOOL rendering;
@property (nonatomic, assign, getter=isRendering) BOOL rendering;
/// 最大支持人脸数量，默认为4
//: @property (nonatomic, assign) NSInteger maxFaceNumber;
@property (nonatomic, assign) NSInteger maxFaceNumber;
/// 最大支持人体数量，默认为4
//: @property (nonatomic, assign) NSInteger maxHumanNumber;
@property (nonatomic, assign) NSInteger maxHumanNumber;
/// 需要跟踪的部位，默认为FUDetectingPartsFace
//: @property (nonatomic, assign) FUDetectingParts detectingParts;
@property (nonatomic, assign) FUDetectingParts detectingParts;

/// 模块
//: @property (nonatomic, assign, readonly) FUModule module;
@property (nonatomic, assign, readonly) FUModule module;
/// 需要加载的AI模型，默认为FUAIModelTypeFace
//: @property (nonatomic, assign, readonly) FUAIModelType necessaryAIModelTypes;
@property (nonatomic, assign, readonly) FUAIModelType necessaryAIModelTypes;
/// 是否自动加载AI模型，默认为YES
//: @property (nonatomic, assign, readonly) BOOL loadAIModelAutomatically;
@property (nonatomic, assign, readonly) BOOL loadAIModelAutomatically;
/// 是否支持拍照和视频录制，默认YES
//: @property (nonatomic, assign, readonly) BOOL supportCaptureAndRecording;
@property (nonatomic, assign, readonly) BOOL supportCaptureAndRecording;
/// 是否支持图片或者视频渲染，默认为NO
//: @property (nonatomic, assign, readonly) BOOL supportMediaRendering;
@property (nonatomic, assign, readonly) BOOL supportMediaRendering;
/// 是否支持分辨率选择，默认为NO
//: @property (nonatomic, assign, readonly) BOOL supportPresetSelection;
@property (nonatomic, assign, readonly) BOOL supportPresetSelection;
/// 是否支持切换相机输出格式，默认为YES
//: @property (nonatomic, assign, readonly) BOOL supportSwitchingOutputFormat;
@property (nonatomic, assign, readonly) BOOL supportSwitchingOutputFormat;
/// 相机分辨率
//: @property (nonatomic, copy, readonly) AVCaptureSessionPreset capturePreset;
@property (nonatomic, copy, readonly) AVCaptureSessionPreset capturePreset;
/// 相机前后置摄像头
//: @property (nonatomic, assign, readonly) AVCaptureDevicePosition captureDevicePostion;
@property (nonatomic, assign, readonly) AVCaptureDevicePosition captureDevicePostion;
/// 支持的分辨率
//: @property (nonatomic, copy, readonly) NSArray<AVCaptureSessionPreset> *presets;
@property (nonatomic, copy, readonly) NSArray<AVCaptureSessionPreset> *presets;
/// 显示的分辨率数组
//: @property (nonatomic, copy, readonly) NSArray<NSString *> *presetTitles;
@property (nonatomic, copy, readonly) NSArray<NSString *> *presetTitles;
/// 是否支持10秒视频录制，默认为YES
//: @property (nonatomic, assign, readonly) BOOL supportVideoRecording;
@property (nonatomic, assign, readonly) BOOL supportVideoRecording;
/// 是否需要加载美颜，默认为YES
//: @property (nonatomic, assign, readonly) BOOL needsLoadingBeauty;
@property (nonatomic, assign, readonly) BOOL needsLoadingBeauty;
/// 人脸是否完整（临时处理海报换脸问题）
//: @property (nonatomic, assign, readonly) BOOL trackedCompleteFace;
@property (nonatomic, assign, readonly) BOOL trackedCompleteFace;
/// 输入buffer宽度
//: @property (nonatomic, assign, readonly) CGFloat inputBufferWidth;
@property (nonatomic, assign, readonly) CGFloat inputBufferWidth;
/// 输入buffer高度
//: @property (nonatomic, assign, readonly) CGFloat inputBufferHeight;
@property (nonatomic, assign, readonly) CGFloat inputBufferHeight;
/// 拍照和录制视频按钮到屏幕底部距离
//: @property (nonatomic, assign, readonly) CGFloat captureButtonBottomConstant;
@property (nonatomic, assign, readonly) CGFloat captureButtonBottomConstant;

//: @property (nonatomic, weak) id<FURenderViewModelDelegate> delegate;
@property (nonatomic, weak) id<ReplyEnable> delegate;

/// 开始相机采集渲染
/// @param renderView GLView
//: - (void)startCameraWithRenderView:(FUGLDisplayView *)renderView;
- (void)title:(FUGLDisplayView *)renderView;

/// 停止相机
//: - (void)stopCamera;
- (void)version;

/// 切换相机输出格式
//: - (void)switchCameraOutputFormat;
- (void)commentFormat;

/// 切换相机分辨率
/// @param preset 分辨率
/// @param handler 硬件不支持分辨率回调
//: - (void)switchCapturePreset:(AVCaptureSessionPreset)preset unsupportedPresetHandler:(nullable void (^)(void))handler;
- (void)quadrant:(AVCaptureSessionPreset)preset showFor:(nullable void (^)(void))handler;

/// 切换相机前后置摄像头
/// @param front 是否前置
/// @param handler 硬件不支持当前分辨率回调
//: - (void)switchCameraBetweenFrontAndRear:(BOOL)front unsupportedPresetHandler:(nullable void (^)(void))handler;
- (void)skim:(BOOL)front menuHandler:(nullable void (^)(void))handler;

/// 切换相机对焦模式
/// @param mode 对焦模式
//: - (void)switchCameraFocusMode:(FUCaptureCameraFocusMode)mode;
- (void)barOnImage:(FUCaptureCameraFocusMode)mode;

/// 相机对焦
/// @param point 对焦点
//: - (void)setCameraFocusPoint:(CGPoint)point;
- (void)setMessage:(CGPoint)point;

/// 设置相机曝光度
/// @param value 曝光度
//: - (void)setCameraExposureValue:(CGFloat)value;
- (void)setViewIn:(CGFloat)value;

/// 恢复相机对焦和曝光模式
//: - (void)resetCameraFocusAndExposureMode;
- (void)at;

/// 相机恢复默认设置
//: - (void)resetCameraSettings;
- (void)barrelhouse;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END