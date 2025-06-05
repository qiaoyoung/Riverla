// __DEBUG__
// __CLOSE_PRINT__
//
//  ByViewCell.h
//  Riverla
//
//  Created by mac on 2025/4/7.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol RecommendfriendCellDelegate <NSObject>
@protocol RecommendfriendFlushCompartmentIndependent <NSObject>

//: - (void)didTouchAdddButton:(NSString *)memberId;
- (void)languaged:(NSString *)memberId;

//: @end
@end

//: @interface RecommendfriendTableViewCell : UITableViewCell
@interface ByViewCell : UITableViewCell

//: @property(nonatomic, strong) UIImageView *avaterImg;
@property(nonatomic, strong) UIImageView *avaterImg;
//: @property(nonatomic, strong) UILabel *labName;
@property(nonatomic, strong) UILabel *labName;
//: @property(nonatomic, strong) UIButton *btnAdd;
@property(nonatomic, strong) UIButton *btnAdd;

//: @property (nonatomic,weak) id<RecommendfriendCellDelegate> delegate;
@property (nonatomic,weak) id<RecommendfriendFlushCompartmentIndependent> delegate;

//: @property(nonatomic, strong) NSString *userId;
@property(nonatomic, strong) NSString *userId;
//: - (void)refreshWithModel:(NSDictionary *)userItem;
- (void)along:(NSDictionary *)userItem;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END