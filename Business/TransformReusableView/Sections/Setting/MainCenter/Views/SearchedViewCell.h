// __DEBUG__
// __CLOSE_PRINT__
//
//  SearchedViewCell.h
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "NTESContactDataMember.h"
#import "SupportMember.h"
//: #import "UserCardDataSourceProtocol.h"
#import "UserCardDataSourceProtocol.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol NTESUserListCellDelegate <NSObject>
@protocol SearchedThan <NSObject>

//: - (void)didTouchCancleButton:(NTESContactDataMember *)dataMemeber;
- (void)addTitle:(SupportMember *)dataMemeber;
//- (void)didTouchUserListAvatar:(NSString *)userId;
//: - (void)didTouchTeamCancleButton:(NIMTeamMember *)teamMemeber;
- (void)cardinalled:(NIMTeamMember *)teamMemeber;

//: @end
@end

//: @interface NTESBlackListTableViewCell : UITableViewCell
@interface SearchedViewCell : UITableViewCell

//: + (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)beyondView:(UITableView *)tableView;

//: @property(nonatomic, strong) UILabel *labName;
@property(nonatomic, strong) UILabel *labName;
//: @property (nonatomic,strong) UIImageView * avatarImageView;
@property (nonatomic,strong) UIImageView * avatarImageView;
//: @property (nonatomic,strong) UIButton *cancleBtn;
@property (nonatomic,strong) UIButton *cancleBtn;

//: @property (nonatomic,strong) NTESContactDataMember *member;
@property (nonatomic,strong) SupportMember *member;
//: - (void)refreshWithMember:(NTESContactDataMember *)member;
- (void)whenOrHuddler:(SupportMember *)member;
//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<SearchedThan> delegate;

//: @property (nonatomic,assign) BOOL isteam;
@property (nonatomic,assign) BOOL isteam;
//: @property (nonatomic,strong) NIMTeamMember *data;
@property (nonatomic,strong) NIMTeamMember *data;
//: - (void)refreshData:(NIMTeamMember *)data;
- (void)title:(NIMTeamMember *)data;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
