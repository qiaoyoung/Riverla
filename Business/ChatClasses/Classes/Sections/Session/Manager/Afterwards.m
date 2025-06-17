
#import <Foundation/Foundation.h>

NSString *StringFromBrigData(Byte *data);


//: class should be subclass of NIMLayoutConfig
Byte kStr_ayeBooData[] = {75, 43, 3, 103, 105, 102, 110, 111, 67, 116, 117, 111, 121, 97, 76, 77, 73, 78, 32, 102, 111, 32, 115, 115, 97, 108, 99, 98, 117, 115, 32, 101, 98, 32, 100, 108, 117, 111, 104, 115, 32, 115, 115, 97, 108, 99, 186};


//: \"未知消息\"
Byte kStr_atFileName[] = {15, 14, 12, 241, 110, 208, 33, 246, 143, 42, 86, 42, 34, 175, 129, 230, 136, 182, 230, 165, 159, 231, 170, 156, 230, 34, 64};

// __DEBUG__
// __CLOSE_PRINT__
//
// Afterwards.m
// Afterwards
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "FFFKitTimerHolder.h"
#import "RandomHolder.h"
//: #import "FFFKitNotificationFirer.h"
#import "SearchedPhoto.h"
//: #import "FFFKitDataProviderImpl.h"
#import "CloseItem.h"
//: #import "FFFCellLayoutConfig.h"
#import "TitleConfig.h"
//: #import "FFFKitInfoFetchOption.h"
#import "EmptyKey.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Afterwards.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Afterwards.h"
//: #import "FFFChatUIManager.h"
#import "TableArrayKey.h"

//: extern NSString *const NIMKitUserInfoHasUpdatedNotification;
extern NSString *const kLet_borderText;
//: extern NSString *const NIMKitTeamInfoHasUpdatedNotification;
extern NSString *const kLet_windowUserValue;


//: @interface MyUserKit(){
@interface Afterwards(){
    //: NSRegularExpression *_urlRegex;
    NSRegularExpression *_urlRegex;
}
//: @property (nonatomic,strong) FFFKitNotificationFirer *firer;
@property (nonatomic,strong) SearchedPhoto *firer;
//: @property (nonatomic,strong) id<FFFCellLayoutConfig> layoutConfig;
@property (nonatomic,strong) id<TitleConfig> layoutConfig;
//: @end
@end


//: @implementation MyUserKit
@implementation Afterwards
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _firer = [[FFFKitNotificationFirer alloc] init];
        _firer = [[SearchedPhoto alloc] init];
        //: _provider = [[FFFKitDataProviderImpl alloc] init]; 
        _provider = [[CloseItem alloc] init]; //默认使用 Afterwards 的实现
        //: _layoutConfig = [[FFFCellLayoutConfig alloc] init];
        _layoutConfig = [[TitleConfig alloc] init];
        //: [self preloadNIMKitBundleResource];
        [self source];
    }
    //: return self;
    return self;
}

//: + (instancetype)sharedKit
+ (instancetype)blue
{
    //: static MyUserKit *instance = nil;
    static Afterwards *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[MyUserKit alloc] init];
        instance = [[Afterwards alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)registerLayoutConfig:(FFFCellLayoutConfig *)layoutConfig
- (void)pull:(TitleConfig *)layoutConfig
{
    //: if ([layoutConfig isKindOfClass:[FFFCellLayoutConfig class]])
    if ([layoutConfig isKindOfClass:[TitleConfig class]])
    {
        //: self.layoutConfig = layoutConfig;
        self.layoutConfig = layoutConfig;
    }
    //: else
    else
    {
        //: NSAssert(0, @"class should be subclass of NIMLayoutConfig");
        NSAssert(0, StringFromBrigData(kStr_ayeBooData));
    }
}

//: - (NSBundle *)emoticonBundle {
- (NSBundle *)emoticonBundle {
    //: if (!_emoticonBundle) {
    if (!_emoticonBundle) {
        //: _emoticonBundle = [NSBundle nim_defaultEmojiBundle];
        _emoticonBundle = [NSBundle tag];
    }
    //: return _emoticonBundle;
    return _emoticonBundle;
}

//: - (NSBundle *)languageBundle {
- (NSBundle *)languageBundle {
    //: if (!_languageBundle) {
    if (!_languageBundle) {
        //: _languageBundle = [NSBundle nim_defaultLanguageBundle];
        _languageBundle = [NSBundle withFile];
    }
    //: return _languageBundle;
    return _languageBundle;
}

//: - (id<FFFChatUIManager>)chatUIManager
- (id<TableArrayKey>)chatUIManager
{
    //: return FFFChatUIManager.sharedManager;
    return TableArrayKey.image;
}

//: - (id<FFFCellLayoutConfig>)layoutConfig
- (id<TitleConfig>)layoutConfig
{
    //: return _layoutConfig;
    return _layoutConfig;
}

//: - (FFFKitConfig *)config
- (ReplyTable *)config
{
    //不要放在 Afterwards 初始化里面，因为 UIConfig 初始化会使用 NIMKit, 防止死循环
    //: if (!_config)
    if (!_config)
    {
        //: _config = [[FFFKitConfig alloc] init];
        _config = [[ReplyTable alloc] init];
    }
    //: return _config;
    return _config;
}

//: - (void)notfiyUserInfoChanged:(NSArray *)userIds{
- (void)maxBy:(NSArray *)userIds{
    //: if (!userIds.count) {
    if (!userIds.count) {
        //: return;
        return;
    }
    //: for (NSString *userId in userIds) {
    for (NSString *userId in userIds) {
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
        FrameBubblePop *info = [[FrameBubblePop alloc] init];
        //: info.session = session;
        info.session = session;
        //: info.notificationName = NIMKitUserInfoHasUpdatedNotification;
        info.notificationName = kLet_borderText;
        //: [self.firer addFireInfo:info];
        [self.firer videoInfo:info];
    }
}

//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)omit:(NSString *)teamId data:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    FrameBubblePop *info = [[FrameBubblePop alloc] init];
    //: if (teamId.length) {
    if (teamId.length) {
        //: NIMSession *session = nil;
        NIMSession *session = nil;
        //: if (type == NIMKitTeamTypeNomal) {
        if (type == NIMKitTeamTypeNomal) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        //: } else if (type == NIMKitTeamTypeSuper) {
        } else if (type == NIMKitTeamTypeSuper) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        //: info.session = session;
        info.session = session;
    }
    //: info.notificationName = NIMKitTeamInfoHasUpdatedNotification;
    info.notificationName = kLet_windowUserValue;
    //: [self.firer addFireInfo:info];
    [self.firer videoInfo:info];
}

//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)message:(NSString *)teamId max:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    FrameBubblePop *info = [[FrameBubblePop alloc] init];
    //: if (teamId.length) {
    if (teamId.length) {
        //: NIMSession *session = nil;
        NIMSession *session = nil;
        //: if (type == NIMKitTeamTypeNomal) {
        if (type == NIMKitTeamTypeNomal) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        //: } else if (type == NIMKitTeamTypeSuper) {
        } else if (type == NIMKitTeamTypeSuper) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        //: info.session = session;
        info.session = session;
    }
    //: extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    //: info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    //: [self.firer addFireInfo:info];
    [self.firer videoInfo:info];
}

//: - (FFFKitInfo *)infoByUser:(NSString *)userId option:(FFFKitInfoFetchOption *)option
- (MarginThanInfo *)put:(NSString *)userId button:(EmptyKey *)option
{
    //: FFFKitInfo *info = nil;
    MarginThanInfo *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByUser:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(put:button:)]) {
        //: info = [self.provider infoByUser:userId option:option];
        info = [self.provider put:userId button:option];
    }
    //: return info;
    return info;
}

//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (MarginThanInfo *)communication:(NSString *)teamId bar:(EmptyKey *)option
{
    //: FFFKitInfo *info = nil;
    MarginThanInfo *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(communication:bar:)]) {
        //: info = [self.provider infoByTeam:teamId option:option];
        info = [self.provider communication:teamId bar:option];
    }
    //: return info;
    return info;

}

//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (MarginThanInfo *)notInfo:(NSString *)teamId crop_strong:(EmptyKey *)option
{
    //: FFFKitInfo *info = nil;
    MarginThanInfo *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoBySuperTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(notInfo:crop_strong:)]) {
        //: info = [self.provider infoBySuperTeam:teamId option:option];
        info = [self.provider notInfo:teamId crop_strong:option];
    }
    //: return info;
    return info;

}

//: - (void)preloadNIMKitBundleResource {
- (void)source {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[FFFInputEmoticonManager sharedManager] start];
        [[ViewManager common] date];
    //: });
    });
}

//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message
- (NSString *)bottommed:(NIMMessage *)message
{
    //: NSString *info = nil;
    NSString *info = nil;

    //: if (!message)
    if (!message)
    {
        //: return @"\"未知消息\"".nim_localized;
        return StringFromBrigData(kStr_atFileName).textKey;
    }

    //: if (self.provider && [self.provider respondsToSelector:@selector(replyedContentWithMessage:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(bottommed:)]) {
        //: info = [self.provider replyedContentWithMessage:message];
        info = [self.provider bottommed:message];
    }
    //: return info;
    return info;
}

//: @end
@end

Byte * BrigDataToCache(Byte *data) {
    int casualtyBalance = data[0];
    int fileSize = data[1];
    int imageContent = data[2];
    if (!casualtyBalance) return data + imageContent;
    for (int i = 0; i < fileSize / 2; i++) {
        int begin = imageContent + i;
        int end = imageContent + fileSize - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[imageContent + fileSize] = 0;
    return data + imageContent;
}

NSString *StringFromBrigData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BrigDataToCache(data)];
}  
