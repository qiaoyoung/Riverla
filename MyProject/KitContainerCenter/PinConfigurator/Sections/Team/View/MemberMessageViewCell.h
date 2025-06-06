// __DEBUG__
// __CLOSE_PRINT__
//
//  MemberMessageViewCell.h
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "MyUserKit.h"
#import "Notice.h"

//: extern NSString *const kTeamMember;
extern NSString *const let_messageName;
//: extern NSString *const kTeamMemberInfo;
extern NSString *const let_closeData;

//: @protocol FFFTeamMemberListCellActionDelegate <NSObject>
@protocol ByDelegate <NSObject>

//: - (void)didSelectAddOpeartor;
- (void)domainSub;

//: @end
@end


//: @interface FFFTeamMemberListCell : UITableViewCell
@interface MemberMessageViewCell : UITableViewCell


//: @property(nonatomic, assign) BOOL disableInvite;
@property(nonatomic, assign) BOOL disableInvite;

//: @property(nonatomic, assign) NSInteger maxShowMemberCount;
@property(nonatomic, assign) NSInteger maxShowMemberCount;

//: @property(nonatomic, strong) NSMutableArray <NSDictionary *> *infos;
@property(nonatomic, strong) NSMutableArray <NSDictionary *> *infos;

//: @property(nonatomic, weak) id<FFFTeamMemberListCellActionDelegate>delegate;
@property(nonatomic, weak) id<ByDelegate>delegate;

//: @end
@end