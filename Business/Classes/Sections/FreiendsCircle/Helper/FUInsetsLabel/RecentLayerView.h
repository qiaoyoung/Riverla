// __DEBUG__
// __CLOSE_PRINT__
//
//  RecentLayerView.h
//  FUCommonUIComponent
//
//  Created by 项林平 on 2022/6/20.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FUInsetsLabel : UILabel
@interface RecentLayerView : UILabel

//: - (instancetype)initWithFrame:(CGRect)frame insets:(UIEdgeInsets)insets;
- (instancetype)initWithAssumedTitleInsets:(CGRect)frame background:(UIEdgeInsets)insets;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END