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
//: #import "ViewCardDataSourceProtocol.h"
#import "ViewCardDataSourceProtocol.h"

//: @interface NIMCardMemberItem : NSObject<FFFKitCardHeaderData>
@interface FaceMessageApp : NSObject<FFFKitCardHeaderData>

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @end
@end

//: @interface FFFTeamCardMemberItem : NSObject<FFFKitCardHeaderData>
@interface PunchCardShow : NSObject<FFFKitCardHeaderData>

//: @property (nonatomic, readonly) NIMTeamMember *member;
@property (nonatomic, readonly) NIMTeamMember *member;

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;
@property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;

//: - (instancetype)initWithMember:(NIMTeamMember *)member
- (instancetype)initWithImage:(NIMTeamMember *)member
                      //: teamType:(NIMTeamType)teamType;
                      typeInitWithMemberSecondText:(NIMTeamType)teamType;

//: @end
@end
