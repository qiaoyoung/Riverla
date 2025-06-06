// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardHeaderCell.h
//  NIM
//
//  Created by chris on 15/3/7.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "ViewCardDataSourceProtocol.h"
#import "ViewCardDataSourceProtocol.h"

//: @class FFFAvatarImageView;
@class ViewControl;
//: @protocol FFFCardHeaderCellDelegate;
@protocol NameIndex;



//: @interface FFFCardHeaderCell : UICollectionViewCell
@interface RecentBarViewCell : UICollectionViewCell

//: @property (nonatomic,strong) FFFAvatarImageView *imageView;
@property (nonatomic,strong) ViewControl *imageView;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;

//: @property (nonatomic,weak) id<FFFCardHeaderCellDelegate>delegate;
@property (nonatomic,weak) id<NameIndex>delegate;

//: @property (nonatomic,readonly) id<FFFKitCardHeaderData> data;
@property (nonatomic,readonly) id<FFFKitCardHeaderData> data;

//: - (void)refreshData:(id<FFFKitCardHeaderData>)data;
- (void)server:(id<FFFKitCardHeaderData>)data;

//: @end
@end


//: @protocol FFFCardHeaderCellDelegate <NSObject>
@protocol NameIndex <NSObject>

//: - (void)cellDidSelected:(FFFCardHeaderCell*)cell;
- (void)moded:(RecentBarViewCell*)cell;


//: @optional
@optional
//: - (void)cellShouldBeRemoved:(FFFCardHeaderCell*)cell;
- (void)need:(RecentBarViewCell*)cell;

//: @end
@end
