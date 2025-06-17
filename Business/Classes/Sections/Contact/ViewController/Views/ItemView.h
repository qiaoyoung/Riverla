// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemView.h
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFContactDefines.h"
#import "FFFContactDefines.h"
//: #import "FFFKitInfo.h"
#import "MarginThanInfo.h"
//: #import "NTESContactDataMember.h"
#import "SupportMember.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESUserListCellDelegate <NSObject>
@protocol SearchedThan <NSObject>

//: - (void)didTouchMessageButton:(NSString *)memberId;
- (void)showTotal:(NSString *)memberId;

//: @end
@end

//: @interface NTESFriendListTableViewCell : UITableViewCell
@interface ItemView : UITableViewCell

//: @property(nonatomic, strong) UIImageView *iconImageView;
@property(nonatomic, strong) UIImageView *iconImageView;
//: @property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIButton *messageBtn;
@property (nonatomic,strong) UIButton *messageBtn;
//: @property (nonatomic,strong) UIButton *videoBtn;
@property (nonatomic,strong) UIButton *videoBtn;

//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: + (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)with:(UITableView *)tableView;

//: + (CGFloat)getCellHeight:(NSDictionary*)information;
+ (CGFloat)glom:(NSDictionary*)information;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)asDomainImage:(id<TingProtocol>)member;

//: - (void)reloadUserItem:(NIMUser *)user;
- (void)kit:(NIMUser *)user;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)color:(NIMTeam *)team;

//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<SearchedThan> delegate;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END