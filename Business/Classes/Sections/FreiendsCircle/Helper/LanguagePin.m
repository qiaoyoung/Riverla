
#import <Foundation/Foundation.h>

NSString *StringFromFlushShowData(Byte *data);        


//: test_configurations
Byte kStr_victorTitle[] = {81, 19, 96, 6, 11, 189, 20, 5, 19, 20, 255, 3, 15, 14, 6, 9, 7, 21, 18, 1, 20, 9, 15, 14, 19, 26};


//: controller_cpp
Byte kStr_normalShadowKnifeValue[] = {75, 14, 84, 13, 39, 3, 82, 29, 45, 87, 33, 87, 141, 15, 27, 26, 32, 30, 27, 24, 24, 17, 30, 11, 15, 28, 28, 23};


//: ai_human_processor
Byte kStr_retailContent[] = {84, 18, 3, 9, 50, 75, 20, 141, 105, 94, 102, 92, 101, 114, 106, 94, 107, 92, 109, 111, 108, 96, 98, 112, 112, 108, 111, 235};


//: 点位开关
Byte kStr_materData[] = {50, 12, 11, 6, 140, 27, 220, 119, 174, 217, 178, 130, 218, 177, 117, 218, 122, 168, 64};


//: plist
Byte kStr_vacationText[] = {11, 5, 14, 14, 110, 138, 249, 240, 92, 42, 198, 21, 139, 152, 98, 94, 91, 101, 102, 1};


//: ai_hand_processor
Byte kStr_taName[] = {49, 17, 66, 4, 31, 39, 29, 38, 31, 44, 34, 29, 46, 48, 45, 33, 35, 49, 49, 45, 48, 75};


//: ai_face_processor
Byte kStr_ohStationValue[] = {85, 17, 97, 6, 36, 232, 0, 8, 254, 5, 0, 2, 4, 254, 15, 17, 14, 2, 4, 18, 18, 14, 17, 147};


//: bundle
Byte kStr_prettyName[] = {14, 6, 24, 4, 74, 93, 86, 76, 84, 77, 176};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LanguagePin.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/7/22.
//

// __M_A_C_R_O__
//: #import "FURenderKitManager.h"
#import "LanguagePin.h"
//: #import "authpack.h"
#import "authpack.h"

//: @interface FURenderKitManager ()
@interface LanguagePin ()

//: @property (nonatomic, assign) FUDevicePerformanceLevel devicePerformanceLevel;
@property (nonatomic, assign) FUDevicePerformanceLevel devicePerformanceLevel;

//: @property (nonatomic, copy) NSDictionary *configurations;
@property (nonatomic, copy) NSDictionary *configurations;

//: @end
@end

//: @implementation FURenderKitManager
@implementation LanguagePin

//: + (instancetype)sharedManager {
+ (instancetype)titleUser {
    //: static FURenderKitManager *instance = nil;
    static LanguagePin *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FURenderKitManager alloc] init];
        instance = [[LanguagePin alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)setupRenderKit {
- (void)text {
    //: [FURenderKit setLogLevel:FU_LOG_LEVEL_ERROR];
    [FURenderKit setLogLevel:FU_LOG_LEVEL_ERROR];

    //: FUSetupConfig *setupConfig = [[FUSetupConfig alloc] init];
    FUSetupConfig *setupConfig = [[FUSetupConfig alloc] init];
    //: setupConfig.authPack = FUAuthPackMake(g_auth_package, sizeof(g_auth_package));
    setupConfig.authPack = FUAuthPackMake(let_imageValue, sizeof(let_imageValue));
    //: NSString *controllerPath = [[NSBundle mainBundle] pathForResource:@"controller_cpp" ofType:@"bundle"];
    NSString *controllerPath = [[NSBundle mainBundle] pathForResource:StringFromFlushShowData(kStr_normalShadowKnifeValue) ofType:StringFromFlushShowData(kStr_prettyName)];
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
- (void)position {
    //: [FURenderKit destroy];
    [FURenderKit destroy];
}

//: - (void)setDevicePerformanceDetails {
- (void)disableTo {
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
+ (void)language {
    //: FUDevicePerformanceLevel level = [FURenderKitManager sharedManager].devicePerformanceLevel;
    FUDevicePerformanceLevel level = [LanguagePin titleUser].devicePerformanceLevel;
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
        NSString *faceAIPath = [[NSBundle mainBundle] pathForResource:StringFromFlushShowData(kStr_ohStationValue) ofType:StringFromFlushShowData(kStr_prettyName)];
        //: [FUAIKit loadAIModeWithAIType:FUAITYPE_FACEPROCESSOR dataPath:faceAIPath];
        [FUAIKit loadAIModeWithAIType:FUAITYPE_FACEPROCESSOR dataPath:faceAIPath];
    //: });
    });
}

//: + (void)loadHumanAIModel:(FUHumanSegmentationMode)mode {
+ (void)high:(FUHumanSegmentationMode)mode {
    //: NSString *bodyAIPath = [[NSBundle mainBundle] pathForResource:@"ai_human_processor" ofType:@"bundle"];
    NSString *bodyAIPath = [[NSBundle mainBundle] pathForResource:StringFromFlushShowData(kStr_retailContent) ofType:StringFromFlushShowData(kStr_prettyName)];
    //: [FUAIKit loadAIHumanModelWithDataPath:bodyAIPath segmentationMode:mode];
    [FUAIKit loadAIHumanModelWithDataPath:bodyAIPath segmentationMode:mode];
}

//: + (void)loadHandAIModel {
+ (void)pack {
    //: NSString *handAIPath = [[NSBundle mainBundle] pathForResource:@"ai_hand_processor" ofType:@"bundle"];
    NSString *handAIPath = [[NSBundle mainBundle] pathForResource:StringFromFlushShowData(kStr_taName) ofType:StringFromFlushShowData(kStr_prettyName)];
    //: [FUAIKit loadAIModeWithAIType:FUAITYPE_HANDGESTURE dataPath:handAIPath];
    [FUAIKit loadAIModeWithAIType:FUAITYPE_HANDGESTURE dataPath:handAIPath];
}

//: + (BOOL)faceTracked {
+ (BOOL)text {
    //: return [FUAIKit aiFaceProcessorNums] > 0;
    return [FUAIKit aiFaceProcessorNums] > 0;
}

//: + (BOOL)humanTracked {
+ (BOOL)hominineExtra {
    //: return [FUAIKit aiHumanProcessorNums] > 0;
    return [FUAIKit aiHumanProcessorNums] > 0;
}

//: + (BOOL)handTracked {
+ (BOOL)eleven {
    //: return [FUAIKit aiHandDistinguishNums] > 0;
    return [FUAIKit aiHandDistinguishNums] > 0;
}

//: + (void)setMaxFaceNumber:(NSInteger)number {
+ (void)setRange:(NSInteger)number {
    //: [FUAIKit shareKit].maxTrackFaces = (int)number;
    [FUAIKit shareKit].maxTrackFaces = (int)number;
}

//: + (void)setMaxHumanNumber:(NSInteger)number {
+ (void)setShowIconView:(NSInteger)number {
    //: [FUAIKit shareKit].maxTrackBodies = (int)number;
    [FUAIKit shareKit].maxTrackBodies = (int)number;
}

//: + (void)updateBeautyBlurEffect {
+ (void)assemblage {
    //: if (![FURenderKit shareRenderKit].beauty || ![FURenderKit shareRenderKit].beauty.enable) {
    if (![FURenderKit shareRenderKit].beauty || ![FURenderKit shareRenderKit].beauty.enable) {
        //: return;
        return;
    }
    //: if ([FURenderKitManager sharedManager].devicePerformanceLevel >= FUDevicePerformanceLevelHigh) {
    if ([LanguagePin titleUser].devicePerformanceLevel >= FUDevicePerformanceLevelHigh) {
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
+ (void)gray {
    //: [FUAIKit resetTrackedResult];
    [FUAIKit resetTrackedResult];
}

//: + (void)setFaceProcessorDetectMode:(FUFaceProcessorDetectMode)mode {
+ (void)setTingOf:(FUFaceProcessorDetectMode)mode {
    //: [FUAIKit shareKit].faceProcessorDetectMode = mode;
    [FUAIKit shareKit].faceProcessorDetectMode = mode;
}

//: + (void)setHumanProcessorDetectMode:(FUHumanProcessorDetectMode)mode {
+ (void)setPacket:(FUHumanProcessorDetectMode)mode {
    //: [FUAIKit shareKit].humanProcessorDetectMode = mode;
    [FUAIKit shareKit].humanProcessorDetectMode = mode;
}

//: + (void)clearItems {
+ (void)forwards {
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
        NSString *path = [[NSBundle mainBundle] pathForResource:StringFromFlushShowData(kStr_victorTitle) ofType:StringFromFlushShowData(kStr_vacationText)];
        //: _configurations = [NSDictionary dictionaryWithContentsOfFile:path];
        _configurations = [NSDictionary dictionaryWithContentsOfFile:path];
    }
    //: return _configurations;
    return _configurations;
}

//: - (BOOL)showsLandmarks {
- (BOOL)showsLandmarks {
    //: return [self.configurations[@"点位开关"] boolValue];
    return [self.configurations[StringFromFlushShowData(kStr_materData)] boolValue];
}

//: @end
@end

Byte * FlushShowDataToCache(Byte *data) {
    int colorName = data[0];
    int obviouslyInquiry = data[1];
    Byte discusGoing = data[2];
    int dateCheek = data[3];
    if (!colorName) return data + dateCheek;
    for (int i = dateCheek; i < dateCheek + obviouslyInquiry; i++) {
        int value = data[i] + discusGoing;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[dateCheek + obviouslyInquiry] = 0;
    return data + dateCheek;
}

NSString *StringFromFlushShowData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FlushShowDataToCache(data)];
}
