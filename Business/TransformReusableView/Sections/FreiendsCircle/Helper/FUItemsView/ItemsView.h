// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemsView.h
//  FUCommonUIComponent
//
//  Created by 项林平 on 2022/6/24.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FUItemsView;
@class ItemsView;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FUItemsViewDelegate <NSObject>
@protocol LightUserDelegate <NSObject>

//: @optional
@optional

//: - (void)itemsView:(FUItemsView *)itemsView didSelectItemAtIndex:(NSInteger)index;
- (void)message:(ItemsView *)itemsView mentalPicture:(NSInteger)index;

//: @end
@end

//: @interface FUItemsView : UIView
@interface ItemsView : UIView

/// 数据源
/// @discussion 外部传入的icon名数组，查找不到icon会展示空白
//: @property (nonatomic, copy) NSArray<NSString *> *items;
@property (nonatomic, copy) NSArray<NSString *> *items;

/// 当前选中索引
/// @discussion 默认为 -1，-1为取消选中
//: @property (nonatomic, assign) NSInteger selectedIndex;
@property (nonatomic, assign) NSInteger selectedIndex;

//: @property (nonatomic, weak) id<FUItemsViewDelegate> delegate;
@property (nonatomic, weak) id<LightUserDelegate> delegate;

/// 初始化
/// @param frame Frame
/// @param topSpacing 顶部预留空间，默认为0
//: - (instancetype)initWithFrame:(CGRect)frame topSpacing:(CGFloat)topSpacing;
- (instancetype)initWithDelve:(CGRect)frame loadFloat:(CGFloat)topSpacing;

/// 开始当前选中项动画
/// @note 开始动画后无法选择其他项
//: - (void)startAnimation;
- (void)untilLanguage;

/// 结束当前选中项动画
/// @note 结束动画后可以继续选择其他项
//: - (void)stopAnimation;
- (void)length;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END