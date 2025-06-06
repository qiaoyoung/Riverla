// __DEBUG__
// __CLOSE_PRINT__
//
//  PraiseView.h
//  FULiveDemo
//
//  Created by 项林平 on 2022/10/19.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol FUSegmentedControlDelegate <NSObject>
@protocol TitleDelegate <NSObject>

//: @optional
@optional
//: - (BOOL)segmentedControlShouldSelectItemAtIndex:(NSUInteger)index;
- (BOOL)lats:(NSUInteger)index;

//: - (void)segmentedControlDidSelectAtIndex:(NSUInteger)index;
- (void)segmented:(NSUInteger)index;

//: @end
@end

//: @interface FUSegmentedControl : UIView
@interface PraiseView : UIView

//: @property (nonatomic, strong, nullable) NSArray<NSString *> *items;
@property (nonatomic, strong, nullable) NSArray<NSString *> *items;

//: @property (nonatomic, strong) UIColor *titleColor;
@property (nonatomic, strong) UIColor *titleColor;

//: @property (nonatomic, strong) UIColor *selectedTitleColor;
@property (nonatomic, strong) UIColor *selectedTitleColor;

//: @property (nonatomic, strong) UIFont *titleFont;
@property (nonatomic, strong) UIFont *titleFont;

//: @property (nonatomic, assign) NSUInteger selectedIndex;
@property (nonatomic, assign) NSUInteger selectedIndex;

//: @property (nonatomic, weak) id <FUSegmentedControlDelegate> delegate;
@property (nonatomic, weak) id <TitleDelegate> delegate;

//: - (instancetype)initWithFrame:(CGRect)frame items:(nullable NSArray<NSString *> *)items;
- (instancetype)initWithStartSend:(CGRect)frame loadTing:(nullable NSArray<NSString *> *)items;

//: - (void)refreshUI;
- (void)red;

//: @end
@end

//: @interface FUSegmentedCell : UICollectionViewCell
@interface BuildViewCell : UICollectionViewCell

//: @property (nonatomic, strong, readonly) UILabel *textLabel;
@property (nonatomic, strong, readonly) UILabel *textLabel;

//: @property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIColor *textColor;

//: @property (nonatomic, strong) UIColor *selectedTextColor;
@property (nonatomic, strong) UIColor *selectedTextColor;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END