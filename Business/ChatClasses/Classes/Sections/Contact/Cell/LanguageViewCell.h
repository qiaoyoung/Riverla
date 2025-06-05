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
//: #import "FFFContactDefines.h"
#import "FFFContactDefines.h"
//: #import "FFFKitInfo.h"
#import "OriginBy.h"

//: @protocol FFFContactDataCellDelegate <NSObject>
@protocol TingBlockMax <NSObject>

//: - (void)onPressAvatar:(NSString *)memberId;
- (void)levelsing:(NSString *)memberId;

//: @end
@end

//: @class FFFAvatarImageView;
@class ViewControl;

//: @interface FFFContactDataCell : UITableViewCell
@interface LanguageViewCell : UITableViewCell

//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: @property (nonatomic,strong) FFFAvatarImageView * avatarImageView;
@property (nonatomic,strong) ViewControl * avatarImageView;
//: @property (nonatomic,strong) UILabel *labName;
@property (nonatomic,strong) UILabel *labName;
//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @property (nonatomic,weak) id<FFFContactDataCellDelegate> delegate;
@property (nonatomic,weak) id<TingBlockMax> delegate;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)multi:(id<BoardMemberLayer>)member;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)sizeOn:(NIMTeam *)team;

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member;
- (void)title:(id<BoardMemberLayer>)member;

//: @end
@end