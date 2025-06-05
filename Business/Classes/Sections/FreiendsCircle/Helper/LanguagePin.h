// __DEBUG__
// __CLOSE_PRINT__
//
//  LanguagePin.h
//  FULiveDemo
//
//  Created by 项林平 on 2022/7/22.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <FURenderKit/FURenderKit.h>
#import <FURenderKit/FURenderKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FURenderKitManager : NSObject
@interface LanguagePin : NSObject

/// 当前设备性能等级
//: @property (nonatomic, assign, readonly) FUDevicePerformanceLevel devicePerformanceLevel;
@property (nonatomic, assign, readonly) FUDevicePerformanceLevel devicePerformanceLevel;
/// 测试配置
//: @property (nonatomic, copy, readonly) NSDictionary *configurations;
@property (nonatomic, copy, readonly) NSDictionary *configurations;
/// 是否需要点位开关
//: @property (nonatomic, assign, readonly) BOOL showsLandmarks;
@property (nonatomic, assign, readonly) BOOL showsLandmarks;

//: + (instancetype)sharedManager;
+ (instancetype)titleUser;

/// 初始化FURenderKit
//: - (void)setupRenderKit;
- (void)text;

/// 销毁FURenderKit
//: - (void)destoryRenderKit;
- (void)position;

/// 设置设备性能相关细项
//: - (void)setDevicePerformanceDetails;
- (void)disableTo;

/// 加载人脸AI模型
//: + (void)loadFaceAIModel;
+ (void)language;

/// 加载人体AI模型
//: + (void)loadHumanAIModel:(FUHumanSegmentationMode)mode;
+ (void)high:(FUHumanSegmentationMode)mode;

/// 加载手势AI模型
//: + (void)loadHandAIModel;
+ (void)pack;

/// 检测是否有人脸
//: + (BOOL)faceTracked;
+ (BOOL)text;

/// 检测是否有人体
//: + (BOOL)humanTracked;
+ (BOOL)hominineExtra;

/// 检测是否有手势
//: + (BOOL)handTracked;
+ (BOOL)eleven;

/// 设置最大人脸数量
//: + (void)setMaxFaceNumber:(NSInteger)number;
+ (void)setRange:(NSInteger)number;

/// 设置最大人体数量
//: + (void)setMaxHumanNumber:(NSInteger)number;
+ (void)setShowIconView:(NSInteger)number;

/// 更新美颜磨皮效果（根据人脸检测置信度设置不同磨皮效果）
//: + (void)updateBeautyBlurEffect;
+ (void)assemblage;

/// 重置面部跟踪结果
//: + (void)resetTrackedResult;
+ (void)gray;

/// 设置人脸检测模式
//: + (void)setFaceProcessorDetectMode:(FUFaceProcessorDetectMode)mode;
+ (void)setTingOf:(FUFaceProcessorDetectMode)mode;

/// 设置人体检测模式
//: + (void)setHumanProcessorDetectMode:(FUHumanProcessorDetectMode)mode;
+ (void)setPacket:(FUHumanProcessorDetectMode)mode;

/// 清除所有资源
//: + (void)clearItems;
+ (void)forwards;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END