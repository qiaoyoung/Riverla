// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyView.h
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
#import "Afterwards.h"

//: extern NSString *const kTeamMember;
extern NSString *const kLet_keyName;
//: extern NSString *const kTeamMemberInfo;
extern NSString *const kLet_bottomContent;

//: @protocol FFFTeamMemberListCellActionDelegate <NSObject>
@protocol ListColor <NSObject>

//: - (void)didSelectAddOpeartor;
- (void)progressUser;

//: @end
@end


//: @interface FFFTeamMemberListCell : UITableViewCell
@interface KeyView : UITableViewCell


//: @property(nonatomic, assign) BOOL disableInvite;
@property(nonatomic, assign) BOOL disableInvite;

//: @property(nonatomic, assign) NSInteger maxShowMemberCount;
@property(nonatomic, assign) NSInteger maxShowMemberCount;

//: @property(nonatomic, strong) NSMutableArray <NSDictionary *> *infos;
@property(nonatomic, strong) NSMutableArray <NSDictionary *> *infos;

//: @property(nonatomic, weak) id<FFFTeamMemberListCellActionDelegate>delegate;
@property(nonatomic, weak) id<ListColor>delegate;

//: @end
@end