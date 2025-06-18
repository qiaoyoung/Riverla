// __DEBUG__
// __CLOSE_PRINT__
//
//  SearchedTingName.h
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
@interface SearchedTingName : NSObject

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
+ (instancetype)grayish;

/// 初始化FURenderKit
//: - (void)setupRenderKit;
- (void)subKind;

/// 销毁FURenderKit
//: - (void)destoryRenderKit;
- (void)beanbagKit;

/// 设置设备性能相关细项
//: - (void)setDevicePerformanceDetails;
- (void)metacarpus;

/// 加载人脸AI模型
//: + (void)loadFaceAIModel;
+ (void)needView;

/// 加载人体AI模型
//: + (void)loadHumanAIModel:(FUHumanSegmentationMode)mode;
+ (void)indicator:(FUHumanSegmentationMode)mode;

/// 加载手势AI模型
//: + (void)loadHandAIModel;
+ (void)title;

/// 检测是否有人脸
//: + (BOOL)faceTracked;
+ (BOOL)visage;

/// 检测是否有人体
//: + (BOOL)humanTracked;
+ (BOOL)keySearch;

/// 检测是否有手势
//: + (BOOL)handTracked;
+ (BOOL)beforeColor;

/// 设置最大人脸数量
//: + (void)setMaxFaceNumber:(NSInteger)number;
+ (void)setSetCount:(NSInteger)number;

/// 设置最大人体数量
//: + (void)setMaxHumanNumber:(NSInteger)number;
+ (void)setHumanlike:(NSInteger)number;

/// 更新美颜磨皮效果（根据人脸检测置信度设置不同磨皮效果）
//: + (void)updateBeautyBlurEffect;
+ (void)airBubble;

/// 重置面部跟踪结果
//: + (void)resetTrackedResult;
+ (void)should;

/// 设置人脸检测模式
//: + (void)setFaceProcessorDetectMode:(FUFaceProcessorDetectMode)mode;
+ (void)setDoTo:(FUFaceProcessorDetectMode)mode;

/// 设置人体检测模式
//: + (void)setHumanProcessorDetectMode:(FUHumanProcessorDetectMode)mode;
+ (void)setUser:(FUHumanProcessorDetectMode)mode;

/// 清除所有资源
//: + (void)clearItems;
+ (void)atMessage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END