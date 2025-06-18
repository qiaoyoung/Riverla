// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactInfoCell.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "UserContactDefines.h"
#import "UserContactDefines.h"
//: #import "FFFKitInfo.h"
#import "MarginThanInfo.h"

//: @protocol FFFContactDataCellDelegate <NSObject>
@protocol CompartmentItemMetadataContactDelegate <NSObject>

//: - (void)onPressAvatar:(NSString *)memberId;
- (void)videoOfCan:(NSString *)memberId;

//: @end
@end

//: @class FFFAvatarImageView;
@class StatusWithControl;

//: @interface FFFContactDataCell : UITableViewCell
@interface BankViewCell : UITableViewCell

//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: @property (nonatomic,strong) FFFAvatarImageView * avatarImageView;
@property (nonatomic,strong) StatusWithControl * avatarImageView;
//: @property (nonatomic,strong) UILabel *labName;
@property (nonatomic,strong) UILabel *labName;
//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @property (nonatomic,weak) id<FFFContactDataCellDelegate> delegate;
@property (nonatomic,weak) id<CompartmentItemMetadataContactDelegate> delegate;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)show:(id<TingProtocol>)member;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)input:(NIMTeam *)team;

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member;
- (void)nowadays:(id<TingProtocol>)member;

//: @end
@end
