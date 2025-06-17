
#import <Foundation/Foundation.h>

NSString *StringFromImageData(Byte *data);


//: face_rect
Byte kStr_withGenerateData[] = {70, 9, 8, 109, 151, 1, 192, 99, 116, 99, 101, 114, 95, 101, 99, 97, 102, 171};


//: 1080x1920
Byte kStr_backgroundText[] = {20, 9, 5, 124, 110, 48, 50, 57, 49, 120, 48, 56, 48, 49, 122};


//: 720x1280
Byte kStr_viewObjectValue[] = {94, 8, 6, 238, 243, 32, 48, 56, 50, 49, 120, 48, 50, 55, 43};


//: resolution:\n%dx%d\nfps: %d\nrender time:\n%.0fms
Byte kStr_sizeMobileText[] = {97, 45, 10, 54, 174, 163, 109, 185, 63, 197, 115, 109, 102, 48, 46, 37, 10, 58, 101, 109, 105, 116, 32, 114, 101, 100, 110, 101, 114, 10, 100, 37, 32, 58, 115, 112, 102, 10, 100, 37, 120, 100, 37, 10, 58, 110, 111, 105, 116, 117, 108, 111, 115, 101, 114, 245};


//: 480x640
Byte kStr_bottomFormatData[] = {25, 7, 8, 71, 61, 41, 110, 71, 48, 52, 54, 120, 48, 56, 52, 223};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxEmpty.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/7/15.
//  Copyright © 2022 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FURenderViewModel.h"
#import "MaxEmpty.h"

//: @interface FURenderViewModel ()<FURenderKitDelegate, FUCaptureCameraDataSource>
@interface MaxEmpty ()<FURenderKitDelegate, FUCaptureCameraDataSource>

/// 缓存渲染线程的人脸中心点
//: @property (nonatomic, assign) CGPoint faceCenter;
@property (nonatomic, assign) CGPoint faceCenter;
//: @property (nonatomic, assign) BOOL trackedCompleteFace;
@property (nonatomic, assign) BOOL trackedCompleteFace;
//: @property (nonatomic, assign) CGFloat inputBufferWidth;
@property (nonatomic, assign) CGFloat inputBufferWidth;
//: @property (nonatomic, assign) CGFloat inputBufferHeight;
@property (nonatomic, assign) CGFloat inputBufferHeight;

//: @end
@end

//: @implementation FURenderViewModel {
@implementation MaxEmpty {
    // 计算帧率相关变量
    //: CFAbsoluteTime startTime, lastCalculateTime;
    CFAbsoluteTime startTime, lastCalculateTime;
    //: int rate;
    int rate;
    //: NSTimeInterval currentCalculateTime;
    NSTimeInterval currentCalculateTime;
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.rendering = YES;
        self.rendering = YES;
        //: self.maxFaceNumber = 4;
        self.maxFaceNumber = 4;
        //: self.maxHumanNumber = 4;
        self.maxHumanNumber = 4;
        //: self.detectingParts = FUDetectingPartsFace;
        self.detectingParts = FUDetectingPartsFace;

        //: [FURenderKit shareRenderKit].delegate = self;
        [FURenderKit shareRenderKit].delegate = self;
        //: [FURenderKit shareRenderKit].captureCamera.dataSource = self;
        [FURenderKit shareRenderKit].captureCamera.dataSource = self;

        //: if ((self.necessaryAIModelTypes & FUAIModelTypeFace) && self.loadAIModelAutomatically) {
        if ((self.necessaryAIModelTypes & FUAIModelTypeFace) && self.loadAIModelAutomatically) {
            // 加载人脸AI模型
            //: [FURenderKitManager loadFaceAIModel];
            [SearchedTingName needView];
        }
        //: if ((self.necessaryAIModelTypes & FUAIModelTypeHuman) && self.loadAIModelAutomatically) {
        if ((self.necessaryAIModelTypes & FUAIModelTypeHuman) && self.loadAIModelAutomatically) {
            // 加载人体AI模型
            //: [FURenderKitManager loadHumanAIModel:FUHumanSegmentationModeCPUCommon];
            [SearchedTingName indicator:FUHumanSegmentationModeCPUCommon];
        }
        //: if ((self.necessaryAIModelTypes & FUAIModelTypeHand) && self.loadAIModelAutomatically) {
        if ((self.necessaryAIModelTypes & FUAIModelTypeHand) && self.loadAIModelAutomatically) {
            // 加载手势AI模型
            //: [FURenderKitManager loadHandAIModel];
            [SearchedTingName title];
            // 设置未跟踪到手势时每次检测的间隔帧数为3
            //: [FUAIKit setHandDetectEveryFramesWhenNoHand:3];
            [FUAIKit setHandDetectEveryFramesWhenNoHand:3];
        }
        // 设置设备性能相关细项
        //: [[FURenderKitManager sharedManager] setDevicePerformanceDetails];
        [[SearchedTingName grayish] metacarpus];
    }
    //: return self;
    return self;
}

//: #pragma mark - Instance methods
#pragma mark - Instance methods

//: - (void)startCameraWithRenderView:(FUGLDisplayView *)renderView {
- (void)title:(FUGLDisplayView *)renderView {
    // 需要音频轨道
    //: [FURenderKit shareRenderKit].internalCameraSetting.needsAudioTrack = YES;
    [FURenderKit shareRenderKit].internalCameraSetting.needsAudioTrack = YES;
    //: [[FURenderKit shareRenderKit] startInternalCamera];
    [[FURenderKit shareRenderKit] startInternalCamera];
    //: [FURenderKit shareRenderKit].glDisplayView = renderView;
    [FURenderKit shareRenderKit].glDisplayView = renderView;
}

//: - (void)stopCamera {
- (void)version {
    //: [[FURenderKit shareRenderKit] stopInternalCamera];
    [[FURenderKit shareRenderKit] stopInternalCamera];
    //: [FURenderKit shareRenderKit].glDisplayView = nil;
    [FURenderKit shareRenderKit].glDisplayView = nil;
}

//: - (void)switchCameraOutputFormat {
- (void)commentFormat {
    //: OSType format = [FURenderKit shareRenderKit].internalCameraSetting.format == kCVPixelFormatType_32BGRA ? kCVPixelFormatType_420YpCbCr8BiPlanarFullRange : kCVPixelFormatType_32BGRA;
    OSType format = [FURenderKit shareRenderKit].internalCameraSetting.format == kCVPixelFormatType_32BGRA ? kCVPixelFormatType_420YpCbCr8BiPlanarFullRange : kCVPixelFormatType_32BGRA;
    //: [FURenderKit shareRenderKit].internalCameraSetting.format = format;
    [FURenderKit shareRenderKit].internalCameraSetting.format = format;
}

//: - (void)switchCapturePreset:(AVCaptureSessionPreset)preset unsupportedPresetHandler:(void (^)(void))handler {
- (void)quadrant:(AVCaptureSessionPreset)preset showFor:(void (^)(void))handler {
    //: if (![FURenderKit shareRenderKit].captureCamera) {
    if (![FURenderKit shareRenderKit].captureCamera) {
        //: return;
        return;
    }
    //: FUCaptureCamera *camera = [FURenderKit shareRenderKit].captureCamera;
    FUCaptureCamera *camera = [FURenderKit shareRenderKit].captureCamera;
    //: if ([camera changeSessionPreset:preset]) {
    if ([camera changeSessionPreset:preset]) {
        //: [FURenderKit shareRenderKit].internalCameraSetting.sessionPreset = preset;
        [FURenderKit shareRenderKit].internalCameraSetting.sessionPreset = preset;
    //: } else {
    } else {
        // 硬件不支持该分辨率
        //: if (handler) {
        if (handler) {
            //: handler();
            handler();
        }
    }
}

//: - (void)switchCameraBetweenFrontAndRear:(BOOL)front unsupportedPresetHandler:(void (^)(void))handler {
- (void)skim:(BOOL)front menuHandler:(void (^)(void))handler {
    //: if (![FURenderKit shareRenderKit].captureCamera) {
    if (![FURenderKit shareRenderKit].captureCamera) {
        //: return;
        return;
    }
    //: FUCaptureCamera *camera = [FURenderKit shareRenderKit].captureCamera;
    FUCaptureCamera *camera = [FURenderKit shareRenderKit].captureCamera;
    //: if (![camera supportsAVCaptureSessionPreset:front]) {
    if (![camera supportsAVCaptureSessionPreset:front]) {
        // 硬件不支持分辨率
        //: if (handler) {
        if (handler) {
            //: handler();
            handler();
        }
    //: } else {
    } else {
        //: [FURenderKit shareRenderKit].internalCameraSetting.position = front ? AVCaptureDevicePositionFront : AVCaptureDevicePositionBack;
        [FURenderKit shareRenderKit].internalCameraSetting.position = front ? AVCaptureDevicePositionFront : AVCaptureDevicePositionBack;
    }
}

//: - (void)switchCameraFocusMode:(FUCaptureCameraFocusMode)mode {
- (void)barOnImage:(FUCaptureCameraFocusMode)mode {
    //: if (![FURenderKit shareRenderKit].captureCamera) {
    if (![FURenderKit shareRenderKit].captureCamera) {
        //: return;
        return;
    }
    //: [[FURenderKit shareRenderKit].captureCamera cameraChangeMode:mode];
    [[FURenderKit shareRenderKit].captureCamera cameraChangeMode:mode];
}

//: - (void)setCameraFocusPoint:(CGPoint)point {
- (void)setMessage:(CGPoint)point {
    //: if (![FURenderKit shareRenderKit].captureCamera) {
    if (![FURenderKit shareRenderKit].captureCamera) {
        //: return;
        return;
    }
    //: [[FURenderKit shareRenderKit].captureCamera focusWithMode:AVCaptureFocusModeAutoFocus exposeWithMode:AVCaptureExposureModeAutoExpose atDevicePoint:point monitorSubjectAreaChange:YES];
    [[FURenderKit shareRenderKit].captureCamera focusWithMode:AVCaptureFocusModeAutoFocus exposeWithMode:AVCaptureExposureModeAutoExpose atDevicePoint:point monitorSubjectAreaChange:YES];
}

//: - (void)setCameraExposureValue:(CGFloat)value {
- (void)setViewIn:(CGFloat)value {
    //: if (![FURenderKit shareRenderKit].captureCamera) {
    if (![FURenderKit shareRenderKit].captureCamera) {
        //: return;
        return;
    }
    //: [[FURenderKit shareRenderKit].captureCamera setExposureValue:value];
    [[FURenderKit shareRenderKit].captureCamera setExposureValue:value];
}

//: - (void)resetCameraFocusAndExposureMode {
- (void)at {
    //: if (![FURenderKit shareRenderKit].captureCamera) {
    if (![FURenderKit shareRenderKit].captureCamera) {
        //: return;
        return;
    }
    //: [[FURenderKit shareRenderKit].captureCamera resetFocusAndExposureModes];
    [[FURenderKit shareRenderKit].captureCamera resetFocusAndExposureModes];
}

//: - (void)resetCameraSettings {
- (void)barrelhouse {
    //: [FURenderKit shareRenderKit].internalCameraSetting.sessionPreset = AVCaptureSessionPreset1280x720;
    [FURenderKit shareRenderKit].internalCameraSetting.sessionPreset = AVCaptureSessionPreset1280x720;
    //: [FURenderKit shareRenderKit].internalCameraSetting.position = AVCaptureDevicePositionFront;
    [FURenderKit shareRenderKit].internalCameraSetting.position = AVCaptureDevicePositionFront;
    //: [FURenderKit shareRenderKit].internalCameraSetting.format = kCVPixelFormatType_32BGRA;
    [FURenderKit shareRenderKit].internalCameraSetting.format = kCVPixelFormatType_32BGRA;
}

//: #pragma mark - Private methods
#pragma mark - Private methods

//: - (void)updateFaceCenterPoint {
- (void)color {
    //: CGPoint center = CGPointMake(0.5, 0.5);
    CGPoint center = CGPointMake(0.5, 0.5);
    //: if ([FURenderKitManager faceTracked] && [FURenderKit shareRenderKit].captureCamera) {
    if ([SearchedTingName visage] && [FURenderKit shareRenderKit].captureCamera) {
        //: center = [self trackedFaceCenter];
        center = [self image];
        //: if ([FURenderKit shareRenderKit].captureCamera.isFrontCamera) {
        if ([FURenderKit shareRenderKit].captureCamera.isFrontCamera) {
            //: center = CGPointMake(center.y, center.x);
            center = CGPointMake(center.y, center.x);
        //: } else {
        } else {
            //: center = CGPointMake(center.y, 1 - center.x);
            center = CGPointMake(center.y, 1 - center.x);
        }
    }
    //: self.faceCenter = center;
    self.faceCenter = center;
}

//: - (CGPoint)trackedFaceCenter {
- (CGPoint)image {
    // 获取人脸信息
    //: float rect[4];
    float rect[4];
    //: [FUAIKit getFaceInfo:0 name:@"face_rect" pret:rect number:4];
    [FUAIKit getFaceInfo:0 name:StringFromImageData(kStr_withGenerateData) pret:rect number:4];
    //: CGFloat minX = rect[0];
    CGFloat minX = rect[0];
    //: CGFloat minY = rect[1];
    CGFloat minY = rect[1];
    //: CGFloat maxX = rect[2];
    CGFloat maxX = rect[2];
    //: CGFloat maxY = rect[3];
    CGFloat maxY = rect[3];
    // 判断人脸是否完整
    //: if (minX < 0 || minY < 0 || maxX > self.inputBufferWidth || maxY > self.inputBufferHeight) {
    if (minX < 0 || minY < 0 || maxX > self.inputBufferWidth || maxY > self.inputBufferHeight) {
        //: self.trackedCompleteFace = NO;
        self.trackedCompleteFace = NO;
    //: } else {
    } else {
        //: self.trackedCompleteFace = YES;
        self.trackedCompleteFace = YES;
    }
    // 计算中心点的坐标
    //: CGFloat centerX = (minX + maxX) * 0.5;
    CGFloat centerX = (minX + maxX) * 0.5;
    //: CGFloat centerY = (minY + maxY) * 0.5;
    CGFloat centerY = (minY + maxY) * 0.5;
    // 转换坐标
    //: centerX = centerX / self.inputBufferWidth;
    centerX = centerX / self.inputBufferWidth;
    //: centerY = centerY / self.inputBufferHeight;
    centerY = centerY / self.inputBufferHeight;
    //: return CGPointMake(centerX, centerY);
    return CGPointMake(centerX, centerY);
}

//: #pragma mark - FURenderKitDelegate
#pragma mark - FURenderKitDelegate

//: - (BOOL)renderKitShouldDoRender {
- (BOOL)renderKitShouldDoRender {
    //: return self.rendering;
    return self.rendering;
}

//: - (void)renderKitWillRenderFromRenderInput:(FURenderInput *)renderInput {
- (void)renderKitWillRenderFromRenderInput:(FURenderInput *)renderInput {
    //: if (renderInput.pixelBuffer != NULL) {
    if (renderInput.pixelBuffer != NULL) {
        //: CVPixelBufferLockBaseAddress(renderInput.pixelBuffer, 0);
        CVPixelBufferLockBaseAddress(renderInput.pixelBuffer, 0);
        //: self.inputBufferWidth = CVPixelBufferGetWidth(renderInput.pixelBuffer);
        self.inputBufferWidth = CVPixelBufferGetWidth(renderInput.pixelBuffer);
        //: self.inputBufferHeight = CVPixelBufferGetHeight(renderInput.pixelBuffer);
        self.inputBufferHeight = CVPixelBufferGetHeight(renderInput.pixelBuffer);
        //: CVPixelBufferUnlockBaseAddress(renderInput.pixelBuffer, 0);
        CVPixelBufferUnlockBaseAddress(renderInput.pixelBuffer, 0);
    }
    //: [FURenderKitManager updateBeautyBlurEffect];
    [SearchedTingName airBubble];
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(renderWillInputPixelBuffer:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(childed:)]) {
        //: [self.delegate renderWillInputPixelBuffer:renderInput.pixelBuffer];
        [self.delegate childed:renderInput.pixelBuffer];
    }
    //: startTime = CFAbsoluteTimeGetCurrent();
    startTime = CFAbsoluteTimeGetCurrent();
}

//: - (void)renderKitDidRenderToOutput:(FURenderOutput *)renderOutput {
- (void)renderKitDidRenderToOutput:(FURenderOutput *)renderOutput {
    //: CFAbsoluteTime endTime = CFAbsoluteTimeGetCurrent();
    CFAbsoluteTime endTime = CFAbsoluteTimeGetCurrent();
    // 加一帧占用时间
    //: currentCalculateTime += (endTime - startTime);
    currentCalculateTime += (endTime - startTime);
    // 加帧数
    //: rate += 1;
    rate += 1;
    //: if (endTime - lastCalculateTime >= 1) {
    if (endTime - lastCalculateTime >= 1) {
        // 一秒钟计算一次
        //: int width = (int)CVPixelBufferGetWidth(renderOutput.pixelBuffer);
        int width = (int)CVPixelBufferGetWidth(renderOutput.pixelBuffer);
        //: int height = (int)CVPixelBufferGetHeight(renderOutput.pixelBuffer);
        int height = (int)CVPixelBufferGetHeight(renderOutput.pixelBuffer);
        //: NSString *debugString = [NSString stringWithFormat:@"resolution:\n%dx%d\nfps: %d\nrender time:\n%.0fms", width, height, rate, currentCalculateTime * 1000 / rate];
        NSString *debugString = [NSString stringWithFormat:StringFromImageData(kStr_sizeMobileText), width, height, rate, currentCalculateTime * 1000 / rate];
        //: if (self.delegate && [self.delegate respondsToSelector:@selector(renderDidOutputDebugInformations:)]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(halogening:)]) {
            //: [self.delegate renderDidOutputDebugInformations:debugString];
            [self.delegate halogening:debugString];
        }
        // 恢复计算数据
        //: lastCalculateTime = endTime;
        lastCalculateTime = endTime;
        //: currentCalculateTime = 0;
        currentCalculateTime = 0;
        //: rate = 0;
        rate = 0;
    }

    // 更新人脸中心点
    //: [self updateFaceCenterPoint];
    [self color];

    //: if (self.detectingParts != FUDetectingPartsNone) {
    if (self.detectingParts != FUDetectingPartsNone) {
        // 需要检查人脸/人体/手势检测状态
        //: if (self.delegate && [self.delegate respondsToSelector:@selector(renderShouldCheckDetectingStatus:)]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(renderLengthMagnituderyStatus:)]) {
            //: [self.delegate renderShouldCheckDetectingStatus:self.detectingParts];
            [self.delegate renderLengthMagnituderyStatus:self.detectingParts];
        }
    }
}

//: #pragma mark - FUCaptureCameraDataSource
#pragma mark - FUCaptureCameraDataSource

//: - (CGPoint)fuCaptureFaceCenterInImage:(FUCaptureCamera *)camera {
- (CGPoint)fuCaptureFaceCenterInImage:(FUCaptureCamera *)camera {
    //: return self.faceCenter;
    return self.faceCenter;
}

//: #pragma mark - Setters
#pragma mark - Setters

//: - (void)setMaxFaceNumber:(NSInteger)maxFaceNumber {
- (void)setMaxFaceNumber:(NSInteger)maxFaceNumber {
    //: if (_maxFaceNumber == maxFaceNumber) {
    if (_maxFaceNumber == maxFaceNumber) {
        //: return;
        return;
    }
    //: _maxFaceNumber = maxFaceNumber;
    _maxFaceNumber = maxFaceNumber;
    //: [FURenderKitManager setMaxFaceNumber:maxFaceNumber];
    [SearchedTingName setSetCount:maxFaceNumber];
}

//: - (void)setMaxHumanNumber:(NSInteger)maxHumanNumber {
- (void)setMaxHumanNumber:(NSInteger)maxHumanNumber {
    //: if (_maxHumanNumber == maxHumanNumber) {
    if (_maxHumanNumber == maxHumanNumber) {
        //: return;
        return;
    }
    //: _maxHumanNumber = maxHumanNumber;
    _maxHumanNumber = maxHumanNumber;
    //: [FURenderKitManager setMaxHumanNumber:maxHumanNumber];
    [SearchedTingName setHumanlike:maxHumanNumber];
}

//: #pragma mark - Overriding attributes
#pragma mark - Overriding attributes

//: - (FUAIModelType)necessaryAIModelTypes {
- (FUAIModelType)necessaryAIModelTypes {
    //: return FUAIModelTypeFace;
    return FUAIModelTypeFace;
}

//: - (BOOL)loadAIModelAutomatically {
- (BOOL)loadAIModelAutomatically {
    //: return YES;
    return YES;
}

//: - (BOOL)supportCaptureAndRecording {
- (BOOL)supportCaptureAndRecording {
    //: return YES;
    return YES;
}

//: - (BOOL)supportMediaRendering {
- (BOOL)supportMediaRendering {
    //: return NO;
    return NO;
}

//: - (BOOL)supportPresetSelection {
- (BOOL)supportPresetSelection {
    //: return NO;
    return NO;
}

//: - (BOOL)supportSwitchingOutputFormat {
- (BOOL)supportSwitchingOutputFormat {
    //: return YES;
    return YES;
}

//: - (BOOL)supportVideoRecording {
- (BOOL)supportVideoRecording {
    //: return YES;
    return YES;
}

//: - (NSArray<AVCaptureSessionPreset> *)presets {
- (NSArray<AVCaptureSessionPreset> *)presets {
    //: return @[AVCaptureSessionPreset640x480, AVCaptureSessionPreset1280x720, AVCaptureSessionPreset1920x1080];
    return @[AVCaptureSessionPreset640x480, AVCaptureSessionPreset1280x720, AVCaptureSessionPreset1920x1080];
}

//: - (NSArray<NSString *> *)presetTitles {
- (NSArray<NSString *> *)presetTitles {
    //: NSMutableArray *titles = [[NSMutableArray alloc] init];
    NSMutableArray *titles = [[NSMutableArray alloc] init];
    //: for (AVCaptureSessionPreset preset in self.presets) {
    for (AVCaptureSessionPreset preset in self.presets) {
        //: if (preset == AVCaptureSessionPreset640x480) {
        if (preset == AVCaptureSessionPreset640x480) {
            //: [titles addObject:@"480x640"];
            [titles addObject:StringFromImageData(kStr_bottomFormatData)];
        //: } else if (preset == AVCaptureSessionPreset1280x720) {
        } else if (preset == AVCaptureSessionPreset1280x720) {
            //: [titles addObject:@"720x1280"];
            [titles addObject:StringFromImageData(kStr_viewObjectValue)];
        //: } else if (preset == AVCaptureSessionPreset1920x1080) {
        } else if (preset == AVCaptureSessionPreset1920x1080) {
            //: [titles addObject:@"1080x1920"];
            [titles addObject:StringFromImageData(kStr_backgroundText)];
        }
    }
    //: return [titles copy];
    return [titles copy];
}

//: - (BOOL)needsLoadingBeauty {
- (BOOL)needsLoadingBeauty {
    //: return YES;
    return YES;
}

//: - (CGFloat)captureButtonBottomConstant {
- (CGFloat)captureButtonBottomConstant {
    //: return FUHeightIncludeBottomSafeArea(10);
    return FUHeightIncludeBottomSafeArea(10);
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (AVCaptureSessionPreset)capturePreset {
- (AVCaptureSessionPreset)capturePreset {
    //: return [FURenderKit shareRenderKit].internalCameraSetting.sessionPreset;
    return [FURenderKit shareRenderKit].internalCameraSetting.sessionPreset;
}

//: - (AVCaptureDevicePosition)captureDevicePostion {
- (AVCaptureDevicePosition)captureDevicePostion {
    //: return [FURenderKit shareRenderKit].internalCameraSetting.position;
    return [FURenderKit shareRenderKit].internalCameraSetting.position;
}

//: @end
@end

Byte * ImageDataToCache(Byte *data) {
    int showIndex = data[0];
    int blueAt = data[1];
    int tinkle = data[2];
    if (!showIndex) return data + tinkle;
    for (int i = 0; i < blueAt / 2; i++) {
        int begin = tinkle + i;
        int end = tinkle + blueAt - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[tinkle + blueAt] = 0;
    return data + tinkle;
}

NSString *StringFromImageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ImageDataToCache(data)];
}  
