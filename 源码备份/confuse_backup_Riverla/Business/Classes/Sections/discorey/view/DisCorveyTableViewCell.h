//
//  DisCorveyTableViewCell.h
//  Riverla
//
//  Created by mac on 2025/3/31.
//  Copyright © 2025 Riverla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "disCorveyListModel.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DiscorveyCellDelegate <NSObject>

- (void)didTouchButton:(disCorveyListModel *)model;
- (void)didTouchMoreButton:(UIButton*)sender modle:(disCorveyListModel *)model;
//- (void)didTouchBlockButton:(disCorveyListModel *)model;
//- (void)didTouchReportButton:(disCorveyListModel *)model;

@end

@interface DisCorveyTableViewCell : UITableViewCell

@property (nonatomic,strong) UIView *picView;
@property (nonatomic,strong) UIImageView *avater;
@property (nonatomic,strong) UILabel *labName;
@property (nonatomic,strong) UIImageView *sex;
@property (nonatomic,strong) UIButton *btnLike;
@property (nonatomic,strong) UIButton *btnMore;
@property (nonatomic,strong) UIButton *btnDelete;

@property (nonatomic,strong) UIView *btnView;

@property (nonatomic,weak) id<DiscorveyCellDelegate> delegate;

@property (nonatomic,strong) disCorveyListModel *model;

//- (void)refreshDate:(NSDictionary *)info;
- (void)refreshDateModel:(disCorveyListModel *)model isMyLog:(BOOL)isMy;



@end

NS_ASSUME_NONNULL_END
