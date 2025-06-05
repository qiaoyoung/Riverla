// __DEBUG__
// __CLOSE_PRINT__
//
//  PassePartoutView.h
//  FULiveDemo
//
//  Created by 项林平 on 2021/9/26.
//  Copyright © 2021 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FUSegmentBar;
@class PassePartoutView;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FUSegmentBarDelegate <NSObject>
@protocol GinMillSegmentByCustom <NSObject>

//: - (void)segmentBar:(FUSegmentBar *)segmentBar didSelectItemAtIndex:(NSUInteger)index;
- (void)straightaway:(PassePartoutView *)segmentBar at:(NSUInteger)index;

//: @optional
@optional
//: - (BOOL)segmentBar:(FUSegmentBar *)segmentBar shouldSelectItemAtIndex:(NSInteger)index;
- (BOOL)replyBar:(PassePartoutView *)segmentBar ting:(NSInteger)index;

//: - (BOOL)segmentBar:(FUSegmentBar *)segmentBar shouldDisableItemAtIndex:(NSInteger)index;
- (BOOL)lipFullMoonBunglePress:(PassePartoutView *)segmentBar colorShow:(NSInteger)index;

//: @end
@end

//: @interface FUSegmentBarConfigurations : NSObject
@interface CipherConfigurations : NSObject

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
@interface PassePartoutView : UIView

//: @property (nonatomic, weak) id<FUSegmentBarDelegate> delegate;
@property (nonatomic, weak) id<GinMillSegmentByCustom> delegate;

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
- (instancetype)initWithConfiguration:(CGRect)frame first:(NSArray<NSString *> *)titles nonsolidColourConfiguration:(nullable CipherConfigurations *)configuration;

/// 选中指定索引项
/// @param index 索引
//: - (void)selectItemAtIndex:(NSInteger)index;
- (void)componentImage:(NSInteger)index;

//: - (void)refresh;
- (void)withRefresh;

//: @end
@end

//: @interface FUSegmentsBarCell : UICollectionViewCell
@interface TextInfoReusableView : UICollectionViewCell

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