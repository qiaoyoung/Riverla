//
//  NTESContactInfoCell.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FFFContactDefines.h"
#import "FFFKitInfo.h"

@protocol FFFContactDataCellDelegate <NSObject>

- (void)onPressAvatar:(NSString *)memberId;

@end

@class FFFAvatarImageView;

@interface FFFContactDataCell : UITableViewCell

@property (nonatomic,copy) NSString *memberId;

@property (nonatomic,strong) FFFAvatarImageView * avatarImageView;
@property (nonatomic,strong) UILabel *labName;
@property (nonatomic,strong) UIButton *accessoryBtn;

@property (nonatomic,weak) id<FFFContactDataCellDelegate> delegate;

- (void)refreshUser:(id<NIMGroupMemberProtocol>)member;

- (void)refreshTeam:(NIMTeam *)team;

- (void)refreshItem:(id<NIMGroupMemberProtocol>)member;

@end
