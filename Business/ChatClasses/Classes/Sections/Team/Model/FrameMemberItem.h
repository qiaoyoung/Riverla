// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamCardMemberItem.h
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFCardDataSourceProtocol.h"
#import "FFFCardDataSourceProtocol.h"

//: @interface NIMCardMemberItem : NSObject<FFFKitCardHeaderData>
@interface ItemMessage : NSObject<FFFKitCardHeaderData>

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @end
@end

//: @interface FFFTeamCardMemberItem : NSObject<FFFKitCardHeaderData>
@interface FrameMemberItem : NSObject<FFFKitCardHeaderData>

//: @property (nonatomic, readonly) NIMTeamMember *member;
@property (nonatomic, readonly) NIMTeamMember *member;

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;
@property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;

//: - (instancetype)initWithMember:(NIMTeamMember *)member
- (instancetype)initWithBringHomeSize:(NIMTeamMember *)member
                      //: teamType:(NIMTeamType)teamType;
                      streetSmart:(NIMTeamType)teamType;

//: @end
@end