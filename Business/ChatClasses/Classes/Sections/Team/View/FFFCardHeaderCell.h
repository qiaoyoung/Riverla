//
//  TeamCardHeaderCell.h
//  NIM
//
//  Created by chris on 15/3/7.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyUserKit.h"
#import "FFFCardDataSourceProtocol.h"
@class FFFAvatarImageView;
@protocol FFFCardHeaderCellDelegate;



@interface FFFCardHeaderCell : UICollectionViewCell

@property (nonatomic,strong) FFFAvatarImageView *imageView;

@property (nonatomic,strong) UIImageView *roleImageView;

@property (nonatomic,strong) UILabel *titleLabel;

@property (nonatomic,strong) UIButton *removeBtn;

@property (nonatomic,weak) id<FFFCardHeaderCellDelegate>delegate;

@property (nonatomic,readonly) id<FFFKitCardHeaderData> data;

- (void)refreshData:(id<FFFKitCardHeaderData>)data;

@end


@protocol FFFCardHeaderCellDelegate <NSObject>

- (void)cellDidSelected:(FFFCardHeaderCell*)cell;


@optional
- (void)cellShouldBeRemoved:(FFFCardHeaderCell*)cell;

@end
