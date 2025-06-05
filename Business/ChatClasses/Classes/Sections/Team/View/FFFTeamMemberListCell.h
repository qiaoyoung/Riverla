//
//  FFFTeamMemberListCell.h
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <NIMSDK/NIMSDK.h>
#import "NeeyoKit.h"

extern NSString *const kTeamMember;
extern NSString *const kTeamMemberInfo;

@protocol FFFTeamMemberListCellActionDelegate <NSObject>

- (void)didSelectAddOpeartor;

@end


@interface FFFTeamMemberListCell : UITableViewCell


@property(nonatomic, assign) BOOL disableInvite;

@property(nonatomic, assign) NSInteger maxShowMemberCount;

@property(nonatomic, strong) NSMutableArray <NSDictionary *> *infos;

@property(nonatomic, weak) id<FFFTeamMemberListCellActionDelegate>delegate;

@end
