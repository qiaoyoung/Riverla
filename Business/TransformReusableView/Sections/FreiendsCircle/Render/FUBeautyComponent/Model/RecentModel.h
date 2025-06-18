// __DEBUG__
// __CLOSE_PRINT__
//
//  RecentModel.h
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/7/8.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <FURenderKit/FURenderKit.h>
#import <FURenderKit/FURenderKit.h>
//: #import "FUBeautyDefine.h"
#import "FUBeautyDefine.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FUBeautySkinModel : NSObject
@interface RecentModel : NSObject

//: @property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *name;

//: @property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *imageName;
/// 美肤类型
//: @property (nonatomic, assign) FUBeautySkin type;
@property (nonatomic, assign) FUBeautySkin type;
/// 当前值
//: @property (nonatomic, assign) float currentValue;
@property (nonatomic, assign) float currentValue;
/// 默认值
//: @property (nonatomic, assign) float defaultValue;
@property (nonatomic, assign) float defaultValue;
/// 默认值是否中位数
//: @property (nonatomic, assign) BOOL defaultValueInMiddle;
@property (nonatomic, assign) BOOL defaultValueInMiddle;
/// 实际值对应0.0-1.0的倍率
//: @property (nonatomic, assign) NSInteger ratio;
@property (nonatomic, assign) NSInteger ratio;
/// 设备性能等级要求
//: @property (nonatomic, assign) FUDevicePerformanceLevel performanceLevel;
@property (nonatomic, assign) FUDevicePerformanceLevel performanceLevel;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END