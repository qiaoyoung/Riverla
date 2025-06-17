// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMUtil.h
// Afterwards
//
//  Created by chris on 15/8/10.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @interface FFFKitUtil : NSObject
@interface PopUtil : NSObject

//: + (NSString *)showNick:(NSString *)uid inMessage:(NIMMessage *)message;
+ (NSString *)selectionMessage:(NSString *)uid complete:(NIMMessage *)message;

//: + (NSString *)showNick:(NSString *)uid inSession:(NIMSession *)session;
+ (NSString *)size:(NSString *)uid surplus:(NIMSession *)session;

//: + (NSString *)showTime:(NSTimeInterval)msglastTime showDetail:(BOOL)showDetail;
+ (NSString *)max:(NSTimeInterval)msglastTime exampleOff:(BOOL)showDetail;

//: + (NSString *)messageTipContent:(NIMMessage *)message;
+ (NSString *)visualImage:(NIMMessage *)message;

//: + (NSString *)durationTextWithSeconds:(NSTimeInterval)seconds;
+ (NSString *)communication:(NSTimeInterval)seconds;

//: + (BOOL)canEditTeamInfo:(NIMTeamMember *)member;
+ (BOOL)when:(NIMTeamMember *)member;

//: + (BOOL)canInviteMemberToTeam:(NIMTeamMember *)member;
+ (BOOL)inside:(NIMTeamMember *)member;

//: + (BOOL)canEditSuperTeamInfo:(NIMTeamMember *)member;
+ (BOOL)shared:(NIMTeamMember *)member;

//: + (BOOL)canInviteMemberToSuperTeam:(NIMTeamMember *)member;
+ (BOOL)color:(NIMTeamMember *)member;

//: @end
@end