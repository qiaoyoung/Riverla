
#import <Foundation/Foundation.h>

NSString *StringFromImageShowData(Byte *data);        


//: test_configurations
Byte kStr_pinFileTitle[] = {8, 19, 61, 11, 53, 53, 47, 253, 113, 20, 158, 55, 40, 54, 55, 34, 38, 50, 49, 41, 44, 42, 56, 53, 36, 55, 44, 50, 49, 54, 106};


//: plist
Byte kStr_rowViewValue[] = {56, 5, 76, 12, 36, 187, 194, 115, 249, 167, 92, 43, 36, 32, 29, 39, 40, 15};


//: ai_hand_processor
Byte kStr_enableTextData[] = {73, 17, 24, 7, 227, 140, 239, 73, 81, 71, 80, 73, 86, 76, 71, 88, 90, 87, 75, 77, 91, 91, 87, 90, 71};


//: controller_cpp
Byte kStr_canBubbleData[] = {53, 14, 41, 6, 249, 106, 58, 70, 69, 75, 73, 70, 67, 67, 60, 73, 54, 58, 71, 71, 247};


//: ai_face_processor
Byte kStr_videoData[] = {15, 17, 51, 13, 219, 149, 247, 203, 66, 76, 221, 180, 247, 46, 54, 44, 51, 46, 48, 50, 44, 61, 63, 60, 48, 50, 64, 64, 60, 63, 166};


//: ai_human_processor
Byte kStr_insertFileData[] = {4, 18, 78, 7, 140, 107, 96, 19, 27, 17, 26, 39, 31, 19, 32, 17, 34, 36, 33, 21, 23, 37, 37, 33, 36, 211};


//: bundle
Byte kStr_myContent[] = {94, 6, 71, 9, 240, 99, 117, 239, 45, 27, 46, 39, 29, 37, 30, 129};


//: 点位开关
Byte kStr_backgroundBubbleTimeValue[] = {48, 12, 36, 8, 26, 5, 83, 29, 195, 94, 149, 192, 153, 105, 193, 152, 92, 193, 97, 143, 132};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SearchedTingName.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/7/22.
//

// __M_A_C_R_O__
//: #import "FURenderKitManager.h"
#import "SearchedTingName.h"
//: #import "authpack.h"
#import "authpack.h"

//: @interface FURenderKitManager ()
@interface SearchedTingName ()

//: @property (nonatomic, assign) FUDevicePerformanceLevel devicePerformanceLevel;
@property (nonatomic, assign) FUDevicePerformanceLevel devicePerformanceLevel;

//: @property (nonatomic, copy) NSDictionary *configurations;
@property (nonatomic, copy) NSDictionary *configurations;

//: @end
@end

//: @implementation FURenderKitManager
@implementation SearchedTingName

//: + (instancetype)sharedManager {
+ (instancetype)grayish {
    //: static FURenderKitManager *instance = nil;
    static SearchedTingName *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FURenderKitManager alloc] init];
        instance = [[SearchedTingName alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)setupRenderKit {
- (void)subKind {
    //: [FURenderKit setLogLevel:FU_LOG_LEVEL_ERROR];
    [FURenderKit setLogLevel:FU_LOG_LEVEL_ERROR];

    //: FUSetupConfig *setupConfig = [[FUSetupConfig alloc] init];
    FUSetupConfig *setupConfig = [[FUSetupConfig alloc] init];
    //: setupConfig.authPack = FUAuthPackMake(g_auth_package, sizeof(g_auth_package));
    setupConfig.authPack = FUAuthPackMake(kLet_resultData, sizeof(kLet_resultData));
    //: NSString *controllerPath = [[NSBundle mainBundle] pathForResource:@"controller_cpp" ofType:@"bundle"];
    NSString *controllerPath = [[NSBundle mainBundle] pathForResource:StringFromImageShowData(kStr_canBubbleData) ofType:StringFromImageShowData(kStr_myContent)];
    //: if (controllerPath) {
    if (controllerPath) {
        //: setupConfig.controllerPath = controllerPath;
        setupConfig.controllerPath = controllerPath;
    }
    // 初始化 FURenderKit
    //: [FURenderKit setupWithSetupConfig:setupConfig];
    [FURenderKit setupWithSetupConfig:setupConfig];

    // 设置缓存目录
    //: [FURenderKit setCacheDirectory:NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject];
    [FURenderKit setCacheDirectory:NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject];
    // 算法耗时统计
//    [FURenderKit setFrameTimeProfileEnable:YES];
//    [FURenderKit setFrameTimeProfileReportDetailsEnable:YES];
//    // 算法耗时统计输出到控制台
//    [FURenderKit setFrameTimeProfileAutoReportToConsole];
//    // 算法耗时统计输出到文件
//    [FURenderKit setFrameTimeProfileAutoReportToFile:[FUDocumentPath stringByAppendingPathComponent:[NSString stringWithFormat:@"FUFrameTime %@.txt", FUCurrentDateString()]]];

//    // 舌头
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"tongue" ofType:@"bundle"];
//    [FUAIKit loadTongueMode:path];

    //: self.devicePerformanceLevel = [FURenderKit devicePerformanceLevel];
    self.devicePerformanceLevel = [FURenderKit devicePerformanceLevel];
    //: if (self.devicePerformanceLevel <= FUDevicePerformanceLevelLow) {
    if (self.devicePerformanceLevel <= FUDevicePerformanceLevelLow) {
        // 打开动态质量
        //: [FURenderKit setDynamicQualityControlEnabled:YES];
        [FURenderKit setDynamicQualityControlEnabled:YES];
    }
}

//: - (void)destoryRenderKit {
- (void)beanbagKit {
    //: [FURenderKit destroy];
    [FURenderKit destroy];
}

//: - (void)setDevicePerformanceDetails {
- (void)metacarpus {
    // 设置人脸算法质量
    //: [FUAIKit shareKit].faceProcessorFaceLandmarkQuality = self.devicePerformanceLevel >= FUDevicePerformanceLevelHigh ? FUFaceProcessorFaceLandmarkQualityHigh : FUFaceProcessorFaceLandmarkQualityMedium;
    [FUAIKit shareKit].faceProcessorFaceLandmarkQuality = self.devicePerformanceLevel >= FUDevicePerformanceLevelHigh ? FUFaceProcessorFaceLandmarkQualityHigh : FUFaceProcessorFaceLandmarkQualityMedium;
    // 设置是遮挡是否使用高精度模型（人脸算法质量为High时才生效）
//    [FUAIKit shareKit].faceProcessorFaceLandmarkQuality = FUFaceProcessorFaceLandmarkQualityHigh ;

    // 设置小脸检测是否打开
    //: [FUAIKit shareKit].faceProcessorDetectSmallFace = self.devicePerformanceLevel >= FUDevicePerformanceLevelHigh;
    [FUAIKit shareKit].faceProcessorDetectSmallFace = self.devicePerformanceLevel >= FUDevicePerformanceLevelHigh;
}

//: + (void)loadFaceAIModel {
+ (void)needView {
    //: FUDevicePerformanceLevel level = [FURenderKitManager sharedManager].devicePerformanceLevel;
    FUDevicePerformanceLevel level = [SearchedTingName grayish].devicePerformanceLevel;
    //: FUFaceAlgorithmConfig config = FUFaceAlgorithmConfigEnableAll;
    FUFaceAlgorithmConfig config = FUFaceAlgorithmConfigEnableAll;
    //: if (level < FUDevicePerformanceLevelHigh) {
    if (level < FUDevicePerformanceLevelHigh) {
        // 关闭所有效果
        //: config = FUFaceAlgorithmConfigDisableAll;
        config = FUFaceAlgorithmConfigDisableAll;
    //: } else if (level < FUDevicePerformanceLevelVeryHigh) {
    } else if (level < FUDevicePerformanceLevelVeryHigh) {
        // 关闭皮肤分割、祛斑痘和 ARMeshV2 人种分类
        //: config = FUFaceAlgorithmConfigDisableSkinSegAndDelSpot;
        config = FUFaceAlgorithmConfigDisableSkinSegAndDelSpot;
    //: } else if (level < FUDevicePerformanceLevelExcellent) {
    } else if (level < FUDevicePerformanceLevelExcellent) {
        //: config = FUFaceAlgorithmConfigDisableSkinSeg;
        config = FUFaceAlgorithmConfigDisableSkinSeg;
    }
    //: [FUAIKit setFaceAlgorithmConfig:config];
    [FUAIKit setFaceAlgorithmConfig:config];

//    NSString *faceAIPath = [[NSBundle mainBundle] pathForResource:@"ai_face_processor" ofType:@"bundle"];
//    [FUAIKit loadAIModeWithAIType:FUAITYPE_FACEPROCESSOR dataPath:faceAIPath];

    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: NSString *faceAIPath = [[NSBundle mainBundle] pathForResource:@"ai_face_processor" ofType:@"bundle"];
        NSString *faceAIPath = [[NSBundle mainBundle] pathForResource:StringFromImageShowData(kStr_videoData) ofType:StringFromImageShowData(kStr_myContent)];
        //: [FUAIKit loadAIModeWithAIType:FUAITYPE_FACEPROCESSOR dataPath:faceAIPath];
        [FUAIKit loadAIModeWithAIType:FUAITYPE_FACEPROCESSOR dataPath:faceAIPath];
    //: });
    });
}

//: + (void)loadHumanAIModel:(FUHumanSegmentationMode)mode {
+ (void)indicator:(FUHumanSegmentationMode)mode {
    //: NSString *bodyAIPath = [[NSBundle mainBundle] pathForResource:@"ai_human_processor" ofType:@"bundle"];
    NSString *bodyAIPath = [[NSBundle mainBundle] pathForResource:StringFromImageShowData(kStr_insertFileData) ofType:StringFromImageShowData(kStr_myContent)];
    //: [FUAIKit loadAIHumanModelWithDataPath:bodyAIPath segmentationMode:mode];
    [FUAIKit loadAIHumanModelWithDataPath:bodyAIPath segmentationMode:mode];
}

//: + (void)loadHandAIModel {
+ (void)title {
    //: NSString *handAIPath = [[NSBundle mainBundle] pathForResource:@"ai_hand_processor" ofType:@"bundle"];
    NSString *handAIPath = [[NSBundle mainBundle] pathForResource:StringFromImageShowData(kStr_enableTextData) ofType:StringFromImageShowData(kStr_myContent)];
    //: [FUAIKit loadAIModeWithAIType:FUAITYPE_HANDGESTURE dataPath:handAIPath];
    [FUAIKit loadAIModeWithAIType:FUAITYPE_HANDGESTURE dataPath:handAIPath];
}

//: + (BOOL)faceTracked {
+ (BOOL)visage {
    //: return [FUAIKit aiFaceProcessorNums] > 0;
    return [FUAIKit aiFaceProcessorNums] > 0;
}

//: + (BOOL)humanTracked {
+ (BOOL)keySearch {
    //: return [FUAIKit aiHumanProcessorNums] > 0;
    return [FUAIKit aiHumanProcessorNums] > 0;
}

//: + (BOOL)handTracked {
+ (BOOL)beforeColor {
    //: return [FUAIKit aiHandDistinguishNums] > 0;
    return [FUAIKit aiHandDistinguishNums] > 0;
}

//: + (void)setMaxFaceNumber:(NSInteger)number {
+ (void)setSetCount:(NSInteger)number {
    //: [FUAIKit shareKit].maxTrackFaces = (int)number;
    [FUAIKit shareKit].maxTrackFaces = (int)number;
}

//: + (void)setMaxHumanNumber:(NSInteger)number {
+ (void)setHumanlike:(NSInteger)number {
    //: [FUAIKit shareKit].maxTrackBodies = (int)number;
    [FUAIKit shareKit].maxTrackBodies = (int)number;
}

//: + (void)updateBeautyBlurEffect {
+ (void)airBubble {
    //: if (![FURenderKit shareRenderKit].beauty || ![FURenderKit shareRenderKit].beauty.enable) {
    if (![FURenderKit shareRenderKit].beauty || ![FURenderKit shareRenderKit].beauty.enable) {
        //: return;
        return;
    }
    //: if ([FURenderKitManager sharedManager].devicePerformanceLevel >= FUDevicePerformanceLevelHigh) {
    if ([SearchedTingName grayish].devicePerformanceLevel >= FUDevicePerformanceLevelHigh) {
        // 根据人脸置信度设置不同磨皮效果
        //: CGFloat score = [FUAIKit fuFaceProcessorGetConfidenceScore:0];
        CGFloat score = [FUAIKit fuFaceProcessorGetConfidenceScore:0];
        //: if (score > 0.95) {
        if (score > 0.95) {
            //: [FURenderKit shareRenderKit].beauty.blurType = 3;
            [FURenderKit shareRenderKit].beauty.blurType = 3;
            //: [FURenderKit shareRenderKit].beauty.blurUseMask = YES;
            [FURenderKit shareRenderKit].beauty.blurUseMask = YES;
        //: } else {
        } else {
            //: [FURenderKit shareRenderKit].beauty.blurType = 2;
            [FURenderKit shareRenderKit].beauty.blurType = 2;
            //: [FURenderKit shareRenderKit].beauty.blurUseMask = NO;
            [FURenderKit shareRenderKit].beauty.blurUseMask = NO;
        }
    //: } else {
    } else {
        // 设置精细磨皮效果
        //: [FURenderKit shareRenderKit].beauty.blurType = 2;
        [FURenderKit shareRenderKit].beauty.blurType = 2;
        //: [FURenderKit shareRenderKit].beauty.blurUseMask = NO;
        [FURenderKit shareRenderKit].beauty.blurUseMask = NO;
    }
}

//: + (void)resetTrackedResult {
+ (void)should {
    //: [FUAIKit resetTrackedResult];
    [FUAIKit resetTrackedResult];
}

//: + (void)setFaceProcessorDetectMode:(FUFaceProcessorDetectMode)mode {
+ (void)setDoTo:(FUFaceProcessorDetectMode)mode {
    //: [FUAIKit shareKit].faceProcessorDetectMode = mode;
    [FUAIKit shareKit].faceProcessorDetectMode = mode;
}

//: + (void)setHumanProcessorDetectMode:(FUHumanProcessorDetectMode)mode {
+ (void)setUser:(FUHumanProcessorDetectMode)mode {
    //: [FUAIKit shareKit].humanProcessorDetectMode = mode;
    [FUAIKit shareKit].humanProcessorDetectMode = mode;
}

//: + (void)clearItems {
+ (void)atMessage {
    //: [FUAIKit unloadAllAIMode];
    [FUAIKit unloadAllAIMode];
    //: [FURenderKit clear];
    [FURenderKit clear];
}

//: - (NSDictionary *)configurations {
- (NSDictionary *)configurations {
    //: if (!_configurations) {
    if (!_configurations) {
        //: NSString *path = [[NSBundle mainBundle] pathForResource:@"test_configurations" ofType:@"plist"];
        NSString *path = [[NSBundle mainBundle] pathForResource:StringFromImageShowData(kStr_pinFileTitle) ofType:StringFromImageShowData(kStr_rowViewValue)];
        //: _configurations = [NSDictionary dictionaryWithContentsOfFile:path];
        _configurations = [NSDictionary dictionaryWithContentsOfFile:path];
    }
    //: return _configurations;
    return _configurations;
}

//: - (BOOL)showsLandmarks {
- (BOOL)showsLandmarks {
    //: return [self.configurations[@"点位开关"] boolValue];
    return [self.configurations[StringFromImageShowData(kStr_backgroundBubbleTimeValue)] boolValue];
}

//: @end
@end

Byte * ImageShowDataToCache(Byte *data) {
    int imageColor = data[0];
    int objectAdd = data[1];
    Byte sessionPin = data[2];
    int instanceKey = data[3];
    if (!imageColor) return data + instanceKey;
    for (int i = instanceKey; i < instanceKey + objectAdd; i++) {
        int value = data[i] + sessionPin;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[instanceKey + objectAdd] = 0;
    return data + instanceKey;
}

NSString *StringFromImageShowData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ImageShowDataToCache(data)];
}
