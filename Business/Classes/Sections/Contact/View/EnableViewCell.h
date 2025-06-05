// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableViewCell.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFAvatarImageView;
@class ViewControl;
//: @class NTESContactDataMember;
@class InfoClick;


//: @protocol NTESUserListCellDelegate <NSObject>
@protocol AtColorWith <NSObject>

//: - (void)didTouchUserListAvatar:(NSString *)userId;
- (void)dates:(NSString *)userId;

//: @end
@end

//: @interface NTESUserListCell : UITableViewCell
@interface EnableViewCell : UITableViewCell

//: @property (nonatomic,strong) FFFAvatarImageView * avatarImageView;
@property (nonatomic,strong) ViewControl * avatarImageView;

//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<AtColorWith> delegate;

//: - (void)refreshWithMember:(NTESContactDataMember *)member;
- (void)screenBy:(InfoClick *)member;

//: @end
@end