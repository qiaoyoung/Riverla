//
//  FFFMemberGroupView.h
// MyUserKit
//
//  Created by chris on 15/10/15.
//  Copyright © 2015年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FFFCardDataSourceProtocol.h"

@protocol FFFMemberGroupViewDelegate <NSObject>
@optional

- (void)didSelectMemberId:(NSString *)uid;

- (void)didSelectRemoveButtonWithMemberId:(NSString *)uid;

- (void)didSelectOperator:(NIMKitCardHeaderOpeator )opera;

@end

@interface NIMMemebrGroupData : NSObject

@property (nonatomic,strong) NSString *userId;

@property (nonatomic,assign) NIMKitCardHeaderOpeator opera;

@property (nonatomic,readonly) BOOL isMyUserId;

@end

@interface FFFMemberGroupView : UIView

@property (nonatomic,strong) UICollectionView *collectionView;

@property (nonatomic,readonly) BOOL showAddOperator;

@property (nonatomic,readonly) BOOL showRemoveOperator;

@property (nonatomic,assign) BOOL enableRemove;

@property (nonatomic,weak) id<FFFMemberGroupViewDelegate> delegate;

- (void)refreshDatas:(NSArray <NIMMemebrGroupData *> *)datas operators:(NIMKitCardHeaderOpeator)operators;

- (void)setTitle:(NSString *)title forOperator:(NIMKitCardHeaderOpeator)opera;

@end
