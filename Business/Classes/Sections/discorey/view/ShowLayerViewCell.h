// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowLayerViewCell.h
//  Riverla
//
//  Created by mac on 2025/3/31.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "disCorveyListModel.h"
#import "disCorveyListModel.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol DiscorveyCellDelegate <NSObject>
@protocol ChangeCenter <NSObject>

//: - (void)didTouchButton:(disCorveyListModel *)model;
- (void)touchWith:(disCorveyListModel *)model;
//: - (void)didTouchMoreButton:(UIButton*)sender modle:(disCorveyListModel *)model;
- (void)circleModle:(UIButton*)sender max:(disCorveyListModel *)model;
//- (void)didTouchBlockButton:(disCorveyListModel *)model;
//- (void)didTouchReportButton:(disCorveyListModel *)model;

//: @end
@end

//: @interface DisCorveyTableViewCell : UITableViewCell
@interface ShowLayerViewCell : UITableViewCell

//: @property (nonatomic,strong) UIView *picView;
@property (nonatomic,strong) UIView *picView;
//: @property (nonatomic,strong) UIImageView *avater;
@property (nonatomic,strong) UIImageView *avater;
//: @property (nonatomic,strong) UILabel *labName;
@property (nonatomic,strong) UILabel *labName;
//: @property (nonatomic,strong) UIImageView *sex;
@property (nonatomic,strong) UIImageView *sex;
//: @property (nonatomic,strong) UIButton *btnLike;
@property (nonatomic,strong) UIButton *btnLike;
//: @property (nonatomic,strong) UIButton *btnMore;
@property (nonatomic,strong) UIButton *btnMore;
//: @property (nonatomic,strong) UIButton *btnDelete;
@property (nonatomic,strong) UIButton *btnDelete;

//: @property (nonatomic,strong) UIView *btnView;
@property (nonatomic,strong) UIView *btnView;

//: @property (nonatomic,weak) id<DiscorveyCellDelegate> delegate;
@property (nonatomic,weak) id<ChangeCenter> delegate;

//: @property (nonatomic,strong) disCorveyListModel *model;
@property (nonatomic,strong) disCorveyListModel *model;

//- (void)refreshDate:(NSDictionary *)info;
//: - (void)refreshDateModel:(disCorveyListModel *)model isMyLog:(BOOL)isMy;
- (void)title:(disCorveyListModel *)model human:(BOOL)isMy;



//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END