// __DEBUG__
// __CLOSE_PRINT__
//
//  LightView.h
//  FUCommonUIComponent
//
//  Created by 项林平 on 2022/6/24.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FUItemsView;
@class LightView;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FUItemsViewDelegate <NSObject>
@protocol IndependentDelegate <NSObject>

//: @optional
@optional

//: - (void)itemsView:(FUItemsView *)itemsView didSelectItemAtIndex:(NSInteger)index;
- (void)colorOn:(LightView *)itemsView progressIndex:(NSInteger)index;

//: @end
@end

//: @interface FUItemsView : UIView
@interface LightView : UIView

/// 数据源
/// @discussion 外部传入的icon名数组，查找不到icon会展示空白
//: @property (nonatomic, copy) NSArray<NSString *> *items;
@property (nonatomic, copy) NSArray<NSString *> *items;

/// 当前选中索引
/// @discussion 默认为 -1，-1为取消选中
//: @property (nonatomic, assign) NSInteger selectedIndex;
@property (nonatomic, assign) NSInteger selectedIndex;

//: @property (nonatomic, weak) id<FUItemsViewDelegate> delegate;
@property (nonatomic, weak) id<IndependentDelegate> delegate;

/// 初始化
/// @param frame Frame
/// @param topSpacing 顶部预留空间，默认为0
//: - (instancetype)initWithFrame:(CGRect)frame topSpacing:(CGFloat)topSpacing;
- (instancetype)initWithRecent:(CGRect)frame label:(CGFloat)topSpacing;

/// 开始当前选中项动画
/// @note 开始动画后无法选择其他项
//: - (void)startAnimation;
- (void)dateTool;

/// 结束当前选中项动画
/// @note 结束动画后可以继续选择其他项
//: - (void)stopAnimation;
- (void)totaleractAnimation;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END