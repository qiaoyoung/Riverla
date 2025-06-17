// __DEBUG__
// __CLOSE_PRINT__
//
//  CellView.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFAvatarImageView;
@class StatusWithControl;
//: @class NTESContactDataMember;
@class SupportMember;


//: @protocol NTESUserListCellDelegate <NSObject>
@protocol SearchedThan <NSObject>

//: - (void)didTouchUserListAvatar:(NSString *)userId;
- (void)dateAvatar:(NSString *)userId;

//: @end
@end

//: @interface NTESUserListCell : UITableViewCell
@interface CellView : UITableViewCell

//: @property (nonatomic,strong) FFFAvatarImageView * avatarImageView;
@property (nonatomic,strong) StatusWithControl * avatarImageView;

//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<SearchedThan> delegate;

//: - (void)refreshWithMember:(NTESContactDataMember *)member;
- (void)restoreMember:(SupportMember *)member;

//: @end
@end