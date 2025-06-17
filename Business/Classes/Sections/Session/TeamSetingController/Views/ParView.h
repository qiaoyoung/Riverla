// __DEBUG__
// __CLOSE_PRINT__
//
//  ParView.h
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "FFFCardDataSourceProtocol.h"
#import "FFFCardDataSourceProtocol.h"

//: @class FFFAvatarImageView;
@class StatusWithControl;


//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NIMMemberCardCellDelegate <NSObject>
@protocol MaxRecent <NSObject>

//: - (void)cellShouldBeMute:(NSString *)uid mute:(BOOL)mute;
- (void)name:(NSString *)uid managerPin:(BOOL)mute;
//: - (void)cellShouldBeRemoved:(NSString *)uid;
- (void)compartmenting:(NSString *)uid;

//: @end
@end


//: @interface FFFGroupMemberTableViewCell : UITableViewCell
@interface ParView : UITableViewCell


//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *subtitleLabel;
@property (nonatomic,strong) UILabel *subtitleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;
//: @property (nonatomic,strong) UIButton *muteBtn;
@property (nonatomic,strong) UIButton *muteBtn;


//: @property (nonatomic,strong) NSString *userId;
@property (nonatomic,strong) NSString *userId;

//: - (void)reloadWithUserId:(NSString *)UserId;
- (void)press:(NSString *)UserId;

//: + (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)behindMedia:(UITableView *)tableView;

//: @property (nonatomic,weak) id<NIMMemberCardCellDelegate>delegate;
@property (nonatomic,weak) id<MaxRecent>delegate;

//: @end
@end





//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END