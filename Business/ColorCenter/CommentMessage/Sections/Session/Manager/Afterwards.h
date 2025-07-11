// __DEBUG__
// __CLOSE_PRINT__
//
//  Afterwards.h
// Afterwards
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//
//! Project version number for NIMKit.

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFLanguageManager.h"
#import "ItemManager.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFKitInfo.h"
#import "MarginThanInfo.h"
//: #import "FFFMediaItem.h"            //多媒体面板对象
#import "ImageRecent.h"            //多媒体面板对象
//: #import "FFFMessageModel.h"         //message Wrapper
#import "StochasticProcessTeam.h"         //message Wrapper
//: #import "FFFKitMessageProvider.h"
#import "TitleWireProvider.h"
//: #import "UserCellConfig.h"           //message cell配置协议
#import "UserCellConfig.h"           //message cell配置协议
//: #import "UserInputProtocol.h"        //输入框回调
#import "UserInputProtocol.h"        //输入框回调
//: #import "FFFKitDataProvider.h"      //APP内容提供器
#import "ViewShowText.h"      //APP内容提供器
//: #import "UserMessageCellProtocol.h"  //message cell事件回调
#import "UserMessageCellProtocol.h"  //message cell事件回调
//: #import "FFFSessionConfig.h"        //会话页面配置
#import "FrameConfig.h"        //会话页面配置
//: #import "FFFKitEvent.h"             //点击事件封装类
#import "KitOperation.h"             //点击事件封装类
//: #import "FFFCellLayoutConfig.h"
#import "TitleConfig.h"
//: #import "FFFSessionMessageContentView.h"
#import "CypherView.h"
//: #import "FFFKitConfig.h"
#import "ReplyTable.h"
//: #import "FFFSessionViewController.h"
#import "StopViewController.h"
//: #import "FFFSessionListViewController.h"
#import "TransformViewController.h"
//: #import "FFFKitIndependentModeExtraInfo.h"
#import "SearchedArray.h"
//: #import "UserChatUIManagerProtocol.h"
#import "UserChatUIManagerProtocol.h"
//: #import "FFFCollectionViewLeftAlignedLayout.h"
#import "ScaleViewLayout.h"
//: #import "FFFKitQuickCommentUtil.h"
#import "ActionUtil.h"

//: extern double NIMKitVersionNumber;
extern double kLet_messageData;

//! Project version string for NIMKit.
//: extern const unsigned char NIMKitVersionString[];
extern const unsigned char kLet_cornerPathTitle[];

// In this header, you should import all the public headers of your framework using statements like #import <NIMKit/PublicHeader.h>



/**
 *  基础Model
 */




/**
 *  协议
 */
/**
 *  消息cell的视觉模板
 */


/**
 *  UI 配置器
 */


/**
 *  会话页
 */


/**
 *  会话列表页
 */


/*
 *  独立聊天室模式下需注入的信息
 */



/**
 * 聊天常用UI方法
 */


/**
 * 快捷评论
 */



//: @interface MyUserKit : NSObject
@interface Afterwards : NSObject

//: + (instancetype)sharedKit;
+ (instancetype)blue;

/**
 *  注册自定义的排版配置，通过注册自定义排版配置来实现自定义消息的定制化排版
 */
//: - (void)registerLayoutConfig:(FFFCellLayoutConfig *)layoutConfig;
- (void)pull:(TitleConfig *)layoutConfig;

/**
 *  返回当前的排版配置
 */
//: - (id<FFFCellLayoutConfig>)layoutConfig;
- (id<TitleConfig>)layoutConfig;

/**
 *  UI 配置器
 */
//: @property (nonatomic,strong) FFFKitConfig *config;
@property (nonatomic,strong) ReplyTable *config;

/**
 *  内容提供者，由上层开发者注入。如果没有则使用默认 provider
 */
//: @property (nonatomic,strong) id<FFFKitDataProvider> provider;
@property (nonatomic,strong) id<ViewShowText> provider;

/**
 *  由于在独立聊天室模式下, IM 部分服务不可用，需要上层注入一些额外信息供组件显示使用。 默认为 nil，上层在独立聊天室模式下注入，注入时需要创建此对象并注入对象相关字段信息。
 *
 *  此字段需要配合默认的 ViewShowText ( CloseItem ) 使用，如果上层自己定义了 provider ， 则忽略此字段。
 */
//: @property (nonatomic,strong) FFFKitIndependentModeExtraInfo *independentModeExtraInfo;
@property (nonatomic,strong) SearchedArray *independentModeExtraInfo;

/**
 * 聊天模块常用UI方法
 */
//: @property (nonatomic, readonly) id<FFFChatUIManager> chatUIManager;
@property (nonatomic, readonly) id<TableArrayKey> chatUIManager;

/**
 *  NIMKit表情资源所在的 bundle 名称。
 */
//: @property (nonatomic, copy) NSBundle *emoticonBundle;
@property (nonatomic, copy) NSBundle *emoticonBundle;

/**
 *  NIMKit语言所在Bundle, 启动的时候根据系统语言会选择对应的语言包，后面用户可替换
 */
//: @property (nonatomic, strong) NSBundle * languageBundle;
@property (nonatomic, strong) NSBundle * languageBundle;

/**
 *  NIMKit语言所在Table，默认 language
 */
//: @property (nonatomic, copy) NSString * languageTable;
@property (nonatomic, copy) NSString * languageTable;

/**
 *  NIMKit语言所在Table，默认 获取系统语言
 */
//: @property (nonatomic, copy) NSString * defaultLanguage;
@property (nonatomic, copy) NSString * defaultLanguage;

/**
 *  用户信息变更通知接口
 *
 *  @param userIds 用户 id 集合
 */
//: - (void)notfiyUserInfoChanged:(NSArray *)userIds;
- (void)maxBy:(NSArray *)userIds;

/**
 *  群信息变更通知接口
 *
 *  @param teamIds 群 id 集合
 */
//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type;
- (void)omit:(NSString *)teamId data:(NIMKitTeamType)type;


/**
 *  群成员变更通知接口
 *
 *  @param teamIds 群id
 */
//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type;
- (void)message:(NSString *)teamId max:(NIMKitTeamType)type;

/**
 *  返回用户信息
 */
//: - (FFFKitInfo *)infoByUser:(NSString *)userId
- (MarginThanInfo *)put:(NSString *)userId
                    //: option:(FFFKitInfoFetchOption *)option;
                    button:(EmptyKey *)option;

/**
 *  返回群信息
 */
//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId
- (MarginThanInfo *)communication:(NSString *)teamId
                    //: option:(FFFKitInfoFetchOption *)option;
                    bar:(EmptyKey *)option;

/**
 *  返回群信息
 */
//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId
- (MarginThanInfo *)notInfo:(NSString *)teamId
                         //: option:(FFFKitInfoFetchOption *)option;
                         crop_strong:(EmptyKey *)option;

/**
 *  @param message 被回复的消息
 *
 *  @return 格式化的内容
 */
//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message;
- (NSString *)bottommed:(NIMMessage *)message;

//: @end
@end
