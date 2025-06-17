// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeView.h
//  FULiveDemo
//
//  Created by 项林平 on 2021/9/26.
//  Copyright © 2021 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FUSegmentBar;
@class RangeView;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FUSegmentBarDelegate <NSObject>
@protocol SelectedAt <NSObject>

//: - (void)segmentBar:(FUSegmentBar *)segmentBar didSelectItemAtIndex:(NSUInteger)index;
- (void)lineItem:(RangeView *)segmentBar distance:(NSUInteger)index;

//: @optional
@optional
//: - (BOOL)segmentBar:(FUSegmentBar *)segmentBar shouldSelectItemAtIndex:(NSInteger)index;
- (BOOL)colorSegmentBar:(RangeView *)segmentBar disable:(NSInteger)index;

//: - (BOOL)segmentBar:(FUSegmentBar *)segmentBar shouldDisableItemAtIndex:(NSInteger)index;
- (BOOL)nameSource:(RangeView *)segmentBar withReload:(NSInteger)index;

//: @end
@end

//: @interface FUSegmentBarConfigurations : NSObject
@interface HideConfigurations : NSObject

/// 普通颜色
//: @property (nonatomic, strong) UIColor *normalTitleColor;
@property (nonatomic, strong) UIColor *normalTitleColor;
/// 选中状态颜色
//: @property (nonatomic, strong) UIColor *selectedTitleColor;
@property (nonatomic, strong) UIColor *selectedTitleColor;
/// 无法选中状态颜色
//: @property (nonatomic, strong) UIColor *disabledTitleColor;
@property (nonatomic, strong) UIColor *disabledTitleColor;
/// 字体
//: @property (nonatomic, strong) UIFont *titleFont;
@property (nonatomic, strong) UIFont *titleFont;

//: @end
@end

//: @interface FUSegmentBar : UIView
@interface RangeView : UIView

//: @property (nonatomic, weak) id<FUSegmentBarDelegate> delegate;
@property (nonatomic, weak) id<SelectedAt> delegate;

/// 当前选中项索引
/// @discussion 默认为-1，-1为取消选中
//: @property (nonatomic, assign, readonly) NSInteger selectedIndex;
@property (nonatomic, assign, readonly) NSInteger selectedIndex;

/// Unavailable initializer

//: + (instancetype)new UNAVAILABLE_ATTRIBUTE;
+ (instancetype)new UNAVAILABLE_ATTRIBUTE;

//: - (instancetype)init UNAVAILABLE_ATTRIBUTE;
- (instancetype)init UNAVAILABLE_ATTRIBUTE;

//: - (instancetype)initWithFrame:(CGRect)frame UNAVAILABLE_ATTRIBUTE;
- (instancetype)initWithFrame:(CGRect)frame UNAVAILABLE_ATTRIBUTE;

/// 初始化
/// @param frame frame
/// @param titles SegmentsTitle数组
/// @param configuration 配置信息
//: - (instancetype)initWithFrame:(CGRect)frame titles:(NSArray<NSString *> *)titles configuration:(nullable FUSegmentBarConfigurations *)configuration;
- (instancetype)initWithSegment:(CGRect)frame mediaShow:(NSArray<NSString *> *)titles name:(nullable HideConfigurations *)configuration;

/// 选中指定索引项
/// @param index 索引
//: - (void)selectItemAtIndex:(NSInteger)index;
- (void)awayWithoutQuantitativeRelationFullCalorimetry:(NSInteger)index;

//: - (void)refresh;
- (void)red;

//: @end
@end

//: @interface FUSegmentsBarCell : UICollectionViewCell
@interface CompartmentReusableView : UICollectionViewCell

//: @property (nonatomic, strong) UILabel *segmentTitleLabel;
@property (nonatomic, strong) UILabel *segmentTitleLabel;
//: @property (nonatomic, strong) UIColor *segmentNormalTitleColor;
@property (nonatomic, strong) UIColor *segmentNormalTitleColor;
//: @property (nonatomic, strong) UIColor *segmentSelectedTitleColor;
@property (nonatomic, strong) UIColor *segmentSelectedTitleColor;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END