// __DEBUG__
// __CLOSE_PRINT__
//
//  TingModel.h
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/7/27.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <FURenderKit/FURenderKit.h>
#import <FURenderKit/FURenderKit.h>
//: #import "FUBeautySkinModel.h"
#import "RecentModel.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FUBeautySkinViewModel : NSObject
@interface TingModel : NSObject

//: @property (nonatomic, copy, readonly) NSArray<FUBeautySkinModel *> *beautySkins;
@property (nonatomic, copy, readonly) NSArray<RecentModel *> *beautySkins;

/// 是否所有值都是默认
//: @property (nonatomic, assign, readonly) BOOL isDefaultValue;
@property (nonatomic, assign, readonly) BOOL isDefaultValue;
/// 皮肤分割开关，默认为NO
//: @property (nonatomic, assign) BOOL skinSegmentationEnabled;
@property (nonatomic, assign) BOOL skinSegmentationEnabled;
/// 当前选中索引，默认为-1
//: @property (nonatomic, assign) NSInteger selectedIndex;
@property (nonatomic, assign) NSInteger selectedIndex;
/// 需要根据高低端机适配
//: @property (nonatomic, assign) FUDevicePerformanceLevel performanceLevel;
@property (nonatomic, assign) FUDevicePerformanceLevel performanceLevel;

/// 保存美肤数据到本地
//: - (void)saveSkinsPersistently;
- (void)humanPull;

/// 设置单项美肤值
/// @param value 当前选中单项的值
//: - (void)setSkinValue:(double)value;
- (void)setText:(double)value;

/// 设置当前所有美肤值
//: - (void)setAllSkinValues;
- (void)towardName;

/// 恢复所有美肤值为默认
//: - (void)recoverAllSkinValuesToDefault;
- (void)clearDefault;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END