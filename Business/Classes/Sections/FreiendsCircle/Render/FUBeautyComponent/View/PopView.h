// __DEBUG__
// __CLOSE_PRINT__
//
//  PopView.h
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/6/21.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FUBeautyFilterViewModel.h"
#import "ToStatus.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FUBeautyFilterViewDelegate <NSObject>
@protocol AnalogDigitalConverterSupport <NSObject>

/// 滤镜变化
//: - (void)beautyFilterViewDidChangeFilter:(NSString *)name;
- (void)beautyGreenStrain:(NSString *)name;

//: @end
@end

//: @interface FUBeautyFilterView : UIView
@interface PopView : UIView

//: @property (nonatomic, strong) FUSlider *filterSlider;
@property (nonatomic, strong) HeaderSlider *filterSlider;

//: @property (nonatomic, strong) UICollectionView *filterCollectionView;
@property (nonatomic, strong) UICollectionView *filterCollectionView;

//: @property (nonatomic, strong) FUBeautyFilterViewModel *viewModel;
@property (nonatomic, strong) ToStatus *viewModel;

//: @property (nonatomic, weak) id<FUBeautyFilterViewDelegate> delegate;
@property (nonatomic, weak) id<AnalogDigitalConverterSupport> delegate;

//: - (instancetype)initWithFrame:(CGRect)frame viewModel:(FUBeautyFilterViewModel *)viewModel;
- (instancetype)initWithFrame:(CGRect)frame state:(ToStatus *)viewModel;

//: @end
@end

//: @interface FUBeautyFilterCell : UICollectionViewCell
@interface LowlinessReusableView : UICollectionViewCell

//: @property (nonatomic, strong, readonly) UIImageView *imageView;
@property (nonatomic, strong, readonly) UIImageView *imageView;
//: @property (nonatomic, strong, readonly) UILabel *textLabel;
@property (nonatomic, strong, readonly) UILabel *textLabel;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END