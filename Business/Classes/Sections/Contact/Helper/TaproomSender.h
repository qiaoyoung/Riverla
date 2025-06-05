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
@interface TaproomSender : NSObject

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session;
- (void)viewSession:(NSString *)content dateOnSession:(NIMSession *)session;

//: - (void)sendTypingState:(NIMSession *)session;
- (void)state:(NIMSession *)session;

//: - (void)sendCallNotification:(NIMTeam *)team
- (void)parent:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    arrayBlueSearched:(NSString *)roomName
                     //: members:(NSArray *)members;
                     nim:(NSArray *)members;

//: @end
@end