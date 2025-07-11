// __DEBUG__
// __CLOSE_PRINT__
//
//  RandomMargin.h
//  RandomMargin
//
//  Created by 项林平 on 2022/6/10.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FUBeautySkinView.h"
#import "AnalogDigitalConverterView.h"
//: #import "FUBeautyFilterView.h"
#import "PopView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FUBeautyComponentDelegate <NSObject>
@protocol AfterContent <NSObject>

//: @optional
@optional
//: - (void)beautyComponentViewHeightDidChange:(CGFloat)height;
- (void)holdering:(CGFloat)height;

//: - (void)beautyComponentDidTouchDownComparison;
- (void)downwardlyShould;

//: - (void)beautyComponentDidTouchUpComparison;
- (void)grayEnd;
/// 提示
//: - (void)beautyComponentNeedsDisplayPromptContent:(NSString *)content;
- (void)glamorLikeCollectionContent:(NSString *)content;

//: @end
@end

//: @interface FUBeautyComponentManager : NSObject
@interface RandomMargin : NSObject

//: @property (nonatomic, weak) id<FUBeautyComponentDelegate> delegate;
@property (nonatomic, weak) id<AfterContent> delegate;
/// 美颜视图总高度
//: @property (nonatomic, assign, readonly) CGFloat componentViewHeight;
@property (nonatomic, assign, readonly) CGFloat componentViewHeight;
/// 美颜视图选中功能索引，默认-1，-1表示未选中
//: @property (nonatomic, assign, readonly) NSInteger selectedIndex;
@property (nonatomic, assign, readonly) NSInteger selectedIndex;

//: @property (nonatomic, strong) FUBeautySkinView *beautySkinView;
@property (nonatomic, strong) AnalogDigitalConverterView *beautySkinView;
//: @property (nonatomic, strong) FUBeautyFilterView *beautyFilterView;
@property (nonatomic, strong) PopView *beautyFilterView;

//: @property (nonatomic, strong) FUBeautySkinViewModel *beautySkinViewModel;
@property (nonatomic, strong) TingModel *beautySkinViewModel;
//: @property (nonatomic, strong) FUBeautyFilterViewModel *beautyFilterViewModel;
@property (nonatomic, strong) ToStatus *beautyFilterViewModel;

//: + (instancetype)sharedManager;
+ (instancetype)top;

/// 销毁
//: + (void)destory;
+ (void)color;

/// 在目标视图中添加美颜组件视图（固定位置为目标视图底部）
/// @param view 目标视图
//: - (void)addComponentViewToView:(UIView *)view;
- (void)notLanguage:(UIView *)view;

/// 在父视图中移除美颜组件视图
//: - (void)removeComponentView;
- (void)title;

/// 加载美颜效果
/// @param filePath 美颜 bundle 文件路径
//: - (void)loadBeautyForFilePath:(NSString *)filePath;
- (void)appearMenuVertical:(NSString *)filePath;

/// 卸载当前加载的美颜
//: - (void)unloadBeauty;
- (void)domain;

/// 保存当前美颜数据到本地
//: - (void)saveBeauty;
- (void)color;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END