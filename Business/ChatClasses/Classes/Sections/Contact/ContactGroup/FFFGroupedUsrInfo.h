// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFGroupedUsrInfo.h
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactDefines.h"
#import "FFFContactDefines.h"
//: #import "MyUserKit.h"
#import "Notice.h"

//: @interface NIMGroupUser:NSObject<NIMGroupMemberProtocol>
@interface UsufructuaryUser:NSObject<BoardMemberLayer>

//: @property (nonatomic,readonly) FFFKitInfo *info;
@property (nonatomic,readonly) OriginBy *info;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWith:(NSString *)userId;

//: @end
@end

//: @interface NIMGroupTeamMember:NSObject<NIMGroupMemberProtocol>
@interface IconFlush:NSObject<BoardMemberLayer>

//: @property (nonatomic,readonly) FFFKitInfo *info;
@property (nonatomic,readonly) OriginBy *info;

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithToData:(NSString *)userId
                       //: session:(NIMSession *)session;
                       value:(NIMSession *)session;

//: @end
@end


//: @interface NIMGroupTeam:NSObject<NIMGroupMemberProtocol>
@interface AtTeamBy:NSObject<BoardMemberLayer>

//: @property (nonatomic,readonly) FFFKitInfo *info;
@property (nonatomic,readonly) OriginBy *info;

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithDateType:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType;
                      atPressed:(NIMKitTeamType)teamType;

//: @end
@end