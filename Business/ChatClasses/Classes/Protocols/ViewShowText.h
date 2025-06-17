// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewShowText.h
// Afterwards
//
//  Created by amao on 8/13/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: @class NIMSession;
@class NIMSession;
//: @class FFFKitInfo;
@class MarginThanInfo;
//: @class FFFKitInfoFetchOption;
@class EmptyKey;
//: @class NIMMessage;
@class NIMMessage;

//: @protocol FFFKitDataProvider <NSObject>
@protocol ViewShowText <NSObject>

//: @optional
@optional

/**
 *  上层提供用户信息的接口
 *
 *  @param userId  用户ID
 *  @param option  获取选项
 *
 *  @return 用户信息
 */
//: - (FFFKitInfo *)infoByUser:(NSString *)userId
- (MarginThanInfo *)put:(NSString *)userId
                    //: option:(FFFKitInfoFetchOption *)option;
                    button:(EmptyKey *)option;


/**
 *  上层提供群组信息的接口
 *
 *  @param teamId 群组ID
 *  @param option 获取选项
 *
 *  @return 群组信息
 */
//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId
- (MarginThanInfo *)communication:(NSString *)teamId
                    //: option:(FFFKitInfoFetchOption *)option;
                    bar:(EmptyKey *)option;

/**
 *  上层提供超大群组信息的接口
 *
 *  @param teamId 群组ID
 *  @param option 获取选项
 *
 *  @return 群组信息
 */
//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId
- (MarginThanInfo *)notInfo:(NSString *)teamId
                         //: option:(FFFKitInfoFetchOption *)option;
                         crop_strong:(EmptyKey *)option;

/**
*  上层提供被回复消息内容给统一格式的接口
*
*  @param message 被回复的消息
*
*  @return 回复展示内容
*/
//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message;
- (NSString *)bottommed:(NIMMessage *)message;

//: @end
@end