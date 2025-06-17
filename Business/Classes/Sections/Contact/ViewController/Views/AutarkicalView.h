// __DEBUG__
// __CLOSE_PRINT__
//
//  AutarkicalView.h
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
@protocol ViewDelegate <NSObject>

//: - (void)didTouchAdddButton:(NSString *)memberId;
- (void)pressedSession:(NSString *)memberId;

//: @end
@end

//: @interface RecommendfriendTableViewCell : UITableViewCell
@interface AutarkicalView : UITableViewCell

//: @property(nonatomic, strong) UIImageView *avaterImg;
@property(nonatomic, strong) UIImageView *avaterImg;
//: @property(nonatomic, strong) UILabel *labName;
@property(nonatomic, strong) UILabel *labName;
//: @property(nonatomic, strong) UIButton *btnAdd;
@property(nonatomic, strong) UIButton *btnAdd;

//: @property (nonatomic,weak) id<RecommendfriendCellDelegate> delegate;
@property (nonatomic,weak) id<ViewDelegate> delegate;

//: @property(nonatomic, strong) NSString *userId;
@property(nonatomic, strong) NSString *userId;
//: - (void)refreshWithModel:(NSDictionary *)userItem;
- (void)modelBubble:(NSDictionary *)userItem;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END