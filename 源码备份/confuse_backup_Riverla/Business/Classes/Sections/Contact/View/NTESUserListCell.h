//
//  NTESUserListCell.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FFFAvatarImageView;
@class NTESContactDataMember;


@protocol NTESUserListCellDelegate <NSObject>

- (void)didTouchUserListAvatar:(NSString *)userId;

@end

@interface NTESUserListCell : UITableViewCell

@property (nonatomic,strong) FFFAvatarImageView * avatarImageView;

@property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;

- (void)refreshWithMember:(NTESContactDataMember *)member;

@end
