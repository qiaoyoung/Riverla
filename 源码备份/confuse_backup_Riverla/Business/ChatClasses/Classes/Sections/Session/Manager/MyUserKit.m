//
// MyUserKit.m
// MyUserKit
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

#import "MyUserKit.h"
#import "FFFKitTimerHolder.h"
#import "FFFKitNotificationFirer.h"
#import "FFFKitDataProviderImpl.h"
#import "FFFCellLayoutConfig.h"
#import "FFFKitInfoFetchOption.h"
#import "NSBundle+MyUserKit.h"
#import "NSString+MyUserKit.h"
#import "FFFChatUIManager.h"

extern NSString *const NIMKitUserInfoHasUpdatedNotification;
extern NSString *const NIMKitTeamInfoHasUpdatedNotification;


@interface MyUserKit(){
    NSRegularExpression *_urlRegex;
}
@property (nonatomic,strong)    FFFKitNotificationFirer *firer;
@property (nonatomic,strong)    id<FFFCellLayoutConfig> layoutConfig;
@end


@implementation MyUserKit
- (instancetype)init
{
    if (self = [super init]) {
        _firer = [[FFFKitNotificationFirer alloc] init];
        _provider = [[FFFKitDataProviderImpl alloc] init];   //默认使用 MyUserKit 的实现
        _layoutConfig = [[FFFCellLayoutConfig alloc] init];
        [self preloadNIMKitBundleResource];
    }
    return self;
}

+ (instancetype)sharedKit
{
    static MyUserKit *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[MyUserKit alloc] init];
    });
    return instance;
}

- (void)registerLayoutConfig:(FFFCellLayoutConfig *)layoutConfig
{
    if ([layoutConfig isKindOfClass:[FFFCellLayoutConfig class]])
    {
        self.layoutConfig = layoutConfig;
    }
    else
    {
        NSAssert(0, @"class should be subclass of NIMLayoutConfig");
    }
}

- (NSBundle *)emoticonBundle {
    if (!_emoticonBundle) {
        _emoticonBundle = [NSBundle nim_defaultEmojiBundle];
    }
    return _emoticonBundle;
}

- (NSBundle *)languageBundle {
    if (!_languageBundle) {
        _languageBundle = [NSBundle nim_defaultLanguageBundle];
    }
    return _languageBundle;
}

- (id<FFFChatUIManager>)chatUIManager
{
    return FFFChatUIManager.sharedManager;
}

- (id<FFFCellLayoutConfig>)layoutConfig
{
    return _layoutConfig;
}

- (FFFKitConfig *)config
{
    //不要放在 MyUserKit 初始化里面，因为 UIConfig 初始化会使用 NIMKit, 防止死循环
    if (!_config)
    {
        _config = [[FFFKitConfig alloc] init];
    }
    return _config;
}

- (void)notfiyUserInfoChanged:(NSArray *)userIds{
    if (!userIds.count) {
        return;
    }
    for (NSString *userId in userIds) {
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
        info.session = session;
        info.notificationName = NIMKitUserInfoHasUpdatedNotification;
        [self.firer addFireInfo:info];
    }
}

- (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type
{
    NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    if (teamId.length) {
        NIMSession *session = nil;
        if (type == NIMKitTeamTypeNomal) {
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        } else if (type == NIMKitTeamTypeSuper) {
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        info.session = session;
    }
    info.notificationName = NIMKitTeamInfoHasUpdatedNotification;
    [self.firer addFireInfo:info];
}

- (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type
{
    NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    if (teamId.length) {
        NIMSession *session = nil;
        if (type == NIMKitTeamTypeNomal) {
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        } else if (type == NIMKitTeamTypeSuper) {
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        info.session = session;
    }
    extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    [self.firer addFireInfo:info];
}

- (FFFKitInfo *)infoByUser:(NSString *)userId option:(FFFKitInfoFetchOption *)option
{
    FFFKitInfo *info = nil;
    if (self.provider && [self.provider respondsToSelector:@selector(infoByUser:option:)]) {
        info = [self.provider infoByUser:userId option:option];
    }
    return info;
}

- (FFFKitInfo *)infoByTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
{
    FFFKitInfo *info = nil;
    if (self.provider && [self.provider respondsToSelector:@selector(infoByTeam:option:)]) {
        info = [self.provider infoByTeam:teamId option:option];
    }
    return info;

}

- (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
{
    FFFKitInfo *info = nil;
    if (self.provider && [self.provider respondsToSelector:@selector(infoBySuperTeam:option:)]) {
        info = [self.provider infoBySuperTeam:teamId option:option];
    }
    return info;
    
}

- (void)preloadNIMKitBundleResource {
    dispatch_async(dispatch_get_main_queue(), ^{
        [[FFFInputEmoticonManager sharedManager] start];
    });
}

- (NSString *)replyedContentWithMessage:(NIMMessage *)message
{
    NSString *info = nil;

    if (!message)
    {
        return @"\"未知消息\"".nim_localized;
    }
    
    if (self.provider && [self.provider respondsToSelector:@selector(replyedContentWithMessage:)]) {
        info = [self.provider replyedContentWithMessage:message];
    }
    return info;
}

@end



