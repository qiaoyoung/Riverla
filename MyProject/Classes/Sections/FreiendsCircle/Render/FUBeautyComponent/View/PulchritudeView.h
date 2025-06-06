// __DEBUG__
// __CLOSE_PRINT__
//
//  PulchritudeView.h
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/6/21.
//
//  美肤&美型视图

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FUBeautySkinViewModel.h"
#import "MarginPopRecent.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FUBeautySkinView : UIView
@interface PulchritudeView : UIView

//: - (instancetype)initWithFrame:(CGRect)frame viewModel:(FUBeautySkinViewModel *)viewModel;
- (instancetype)initWithElect:(CGRect)frame cyclorama:(MarginPopRecent *)viewModel;

//: - (void)refreshSubviews;
- (void)color;

//: @end
@end

//: @interface FUBeautySkinCell : UICollectionViewCell
@interface CenterActionView : UICollectionViewCell

//: @property (nonatomic, strong, readonly) UIImageView *imageView;
@property (nonatomic, strong, readonly) UIImageView *imageView;

//: @property (nonatomic, strong, readonly) UILabel *textLabel;
@property (nonatomic, strong, readonly) UILabel *textLabel;
/// 是否允许选择
//: @property (nonatomic, assign) BOOL disabled;
@property (nonatomic, assign) BOOL disabled;

//: @property (nonatomic, assign) BOOL defaultInMiddle;
@property (nonatomic, assign) BOOL defaultInMiddle;

//: @property (nonatomic, assign) double currentValue;
@property (nonatomic, assign) double currentValue;

//: @property (nonatomic, assign) double defaultValue;
@property (nonatomic, assign) double defaultValue;

//: @property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *imageName;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END