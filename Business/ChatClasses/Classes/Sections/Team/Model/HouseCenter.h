// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamInfoData.h
//  NIM
//
//  Created by chris on 15/6/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "ViewUsrInfoData.h"
#import "ViewUsrInfoData.h"

//: @interface FFFTeamInfoData : NSObject<NIMGroupMemberProtocol>
@interface HouseCenter : NSObject<BoardMemberLayer>

//: @property (nonatomic, copy) NSString *teamId;
@property (nonatomic, copy) NSString *teamId;
//: @property (nonatomic, copy) NSString *iconId;
@property (nonatomic, copy) NSString *iconId;
//: @property (nonatomic, copy) NSString *teamName;
@property (nonatomic, copy) NSString *teamName;


//: - (instancetype)initWithTeam:(NIMTeam *)team;
- (instancetype)initWithRecording:(NIMTeam *)team;

//: @end
@end
