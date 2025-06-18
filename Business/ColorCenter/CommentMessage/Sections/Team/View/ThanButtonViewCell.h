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
#import "Afterwards.h"
//: #import "UserCardDataSourceProtocol.h"
#import "UserCardDataSourceProtocol.h"

//: @class FFFAvatarImageView;
@class StatusWithControl;
//: @protocol FFFCardHeaderCellDelegate;
@protocol ElectronicNameDelegate;



//: @interface FFFCardHeaderCell : UICollectionViewCell
@interface ThanButtonViewCell : UICollectionViewCell

//: @property (nonatomic,strong) FFFAvatarImageView *imageView;
@property (nonatomic,strong) StatusWithControl *imageView;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;

//: @property (nonatomic,weak) id<FFFCardHeaderCellDelegate>delegate;
@property (nonatomic,weak) id<ElectronicNameDelegate>delegate;

//: @property (nonatomic,readonly) id<FFFKitCardHeaderData> data;
@property (nonatomic,readonly) id<FFFKitCardHeaderData> data;

//: - (void)refreshData:(id<FFFKitCardHeaderData>)data;
- (void)aggregation:(id<FFFKitCardHeaderData>)data;

//: @end
@end


//: @protocol FFFCardHeaderCellDelegate <NSObject>
@protocol ElectronicNameDelegate <NSObject>

//: - (void)cellDidSelected:(FFFCardHeaderCell*)cell;
- (void)upSelected:(ThanButtonViewCell*)cell;


//: @optional
@optional
//: - (void)cellShouldBeRemoved:(FFFCardHeaderCell*)cell;
- (void)compartmenting:(ThanButtonViewCell*)cell;

//: @end
@end
