// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexModel.h
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/7/7.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FUBeautyFilterModel.h"
#import "GoodLooksShow.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FUBeautyFilterViewModel : NSObject
@interface IndexModel : NSObject

//: @property (nonatomic, copy, readonly) NSArray<FUBeautyFilterModel *> *beautyFilters;
@property (nonatomic, copy, readonly) NSArray<GoodLooksShow *> *beautyFilters;
/// 选中滤镜索引
//: @property (nonatomic, assign) NSInteger selectedIndex;
@property (nonatomic, assign) NSInteger selectedIndex;

/// 保存滤镜数据到本地
//: - (void)saveFitersPersistently;
- (void)userPersistently;

/// 设置当前滤镜
//: - (void)setCurrentFilter;
- (void)subFilter;

/// 设置滤镜程度
/// @param value 程度值
//: - (void)setFilterValue:(double)value;
- (void)setSizeValue:(double)value;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END