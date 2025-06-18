// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCustomSysNotiSender.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESCustomSysNotificationSender : NSObject
@interface KeySender : NSObject

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session;
- (void)aggregation:(NSString *)content tap:(NIMSession *)session;

//: - (void)sendTypingState:(NIMSession *)session;
- (void)menuView:(NIMSession *)session;

//: - (void)sendCallNotification:(NIMTeam *)team
- (void)message:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    cubicle:(NSString *)roomName
                     //: members:(NSArray *)members;
                     falseTextMembers:(NSArray *)members;

//: @end
@end