// __DEBUG__
// __CLOSE_PRINT__
//
//  FuturismView.h
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/6/21.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FUBeautyFilterViewModel.h"
#import "IndexModel.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FUBeautyFilterViewDelegate <NSObject>
@protocol UserRecent <NSObject>

/// 滤镜变化
//: - (void)beautyFilterViewDidChangeFilter:(NSString *)name;
- (void)deleteVideo:(NSString *)name;

//: @end
@end

//: @interface FUBeautyFilterView : UIView
@interface FuturismView : UIView

//: @property (nonatomic, strong) FUSlider *filterSlider;
@property (nonatomic, strong) ChildSlider *filterSlider;

//: @property (nonatomic, strong) UICollectionView *filterCollectionView;
@property (nonatomic, strong) UICollectionView *filterCollectionView;

//: @property (nonatomic, strong) FUBeautyFilterViewModel *viewModel;
@property (nonatomic, strong) IndexModel *viewModel;

//: @property (nonatomic, weak) id<FUBeautyFilterViewDelegate> delegate;
@property (nonatomic, weak) id<UserRecent> delegate;

//: - (instancetype)initWithFrame:(CGRect)frame viewModel:(FUBeautyFilterViewModel *)viewModel;
- (instancetype)initWithColor:(CGRect)frame dismissGreen:(IndexModel *)viewModel;

//: @end
@end

//: @interface FUBeautyFilterCell : UICollectionViewCell
@interface BlockViewCell : UICollectionViewCell

//: @property (nonatomic, strong, readonly) UIImageView *imageView;
@property (nonatomic, strong, readonly) UIImageView *imageView;
//: @property (nonatomic, strong, readonly) UILabel *textLabel;
@property (nonatomic, strong, readonly) UILabel *textLabel;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END