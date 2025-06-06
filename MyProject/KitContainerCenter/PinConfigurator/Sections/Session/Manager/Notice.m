
#import <Foundation/Foundation.h>
typedef struct {
    Byte thespian;
    Byte *cozy;
    unsigned int alleyStanding;
    bool politicianBedroom;
	int honorOf;
} AloneUponData;

NSString *StringFromAloneUponData(AloneUponData *data);


//: \"未知消息\"
AloneUponData kStr_pureAhData = (AloneUponData){71, (Byte []){101, 161, 219, 237, 160, 216, 226, 161, 241, 207, 161, 198, 232, 101, 4}, 14, false, 235};


//: class should be subclass of NIMLayoutConfig
AloneUponData kStr_magiData = (AloneUponData){29, (Byte []){126, 113, 124, 110, 110, 61, 110, 117, 114, 104, 113, 121, 61, 127, 120, 61, 110, 104, 127, 126, 113, 124, 110, 110, 61, 114, 123, 61, 83, 84, 80, 81, 124, 100, 114, 104, 105, 94, 114, 115, 123, 116, 122, 18}, 43, false, 201};

// __DEBUG__
// __CLOSE_PRINT__
//
// Notice.m
// Notice
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "FFFKitTimerHolder.h"
#import "BarHolder.h"
//: #import "FFFKitNotificationFirer.h"
#import "OnOrigin.h"
//: #import "FFFKitDataProviderImpl.h"
#import "DataBy.h"
//: #import "FFFCellLayoutConfig.h"
#import "KeyChange.h"
//: #import "FFFKitInfoFetchOption.h"
#import "Option.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Notice.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Notice.h"
//: #import "FFFChatUIManager.h"
#import "PresentAction.h"

//: extern NSString *const let_windowTeamLabelTitle;
extern NSString *const let_windowTeamLabelTitle;
//: extern NSString *const let_textBottomName;
extern NSString *const let_textBottomName;


//: @interface MyUserKit(){
@interface Notice(){
    //: NSRegularExpression *_urlRegex;
    NSRegularExpression *_urlRegex;
}
//: @property (nonatomic,strong) FFFKitNotificationFirer *firer;
@property (nonatomic,strong) OnOrigin *firer;
//: @property (nonatomic,strong) id<FFFCellLayoutConfig> layoutConfig;
@property (nonatomic,strong) id<KeyChange> layoutConfig;
//: @end
@end


//: @implementation MyUserKit
@implementation Notice
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _firer = [[FFFKitNotificationFirer alloc] init];
        _firer = [[OnOrigin alloc] init];
        //: _provider = [[FFFKitDataProviderImpl alloc] init]; 
        _provider = [[DataBy alloc] init]; //默认使用 Notice 的实现
        //: _layoutConfig = [[FFFCellLayoutConfig alloc] init];
        _layoutConfig = [[KeyChange alloc] init];
        //: [self preloadNIMKitBundleResource];
        [self at];
    }
    //: return self;
    return self;
}

//: + (instancetype)sharedKit
+ (instancetype)fullKit
{
    //: static MyUserKit *instance = nil;
    static Notice *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[MyUserKit alloc] init];
        instance = [[Notice alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)registerLayoutConfig:(FFFCellLayoutConfig *)layoutConfig
- (void)trademark:(KeyChange *)layoutConfig
{
    //: if ([layoutConfig isKindOfClass:[FFFCellLayoutConfig class]])
    if ([layoutConfig isKindOfClass:[KeyChange class]])
    {
        //: self.layoutConfig = layoutConfig;
        self.layoutConfig = layoutConfig;
    }
    //: else
    else
    {
        //: NSAssert(0, @"class should be subclass of NIMLayoutConfig");
        NSAssert(0, StringFromAloneUponData(&kStr_magiData));
    }
}

//: - (NSBundle *)emoticonBundle {
- (NSBundle *)emoticonBundle {
    //: if (!_emoticonBundle) {
    if (!_emoticonBundle) {
        //: _emoticonBundle = [NSBundle nim_defaultEmojiBundle];
        _emoticonBundle = [NSBundle send];
    }
    //: return _emoticonBundle;
    return _emoticonBundle;
}

//: - (NSBundle *)languageBundle {
- (NSBundle *)languageBundle {
    //: if (!_languageBundle) {
    if (!_languageBundle) {
        //: _languageBundle = [NSBundle nim_defaultLanguageBundle];
        _languageBundle = [NSBundle bundle];
    }
    //: return _languageBundle;
    return _languageBundle;
}

//: - (id<FFFChatUIManager>)chatUIManager
- (id<PresentAction>)chatUIManager
{
    //: return FFFChatUIManager.sharedManager;
    return PresentAction.mutual;
}

//: - (id<FFFCellLayoutConfig>)layoutConfig
- (id<KeyChange>)layoutConfig
{
    //: return _layoutConfig;
    return _layoutConfig;
}

//: - (FFFKitConfig *)config
- (ChildBar *)config
{
    //不要放在 Notice 初始化里面，因为 UIConfig 初始化会使用 NIMKit, 防止死循环
    //: if (!_config)
    if (!_config)
    {
        //: _config = [[FFFKitConfig alloc] init];
        _config = [[ChildBar alloc] init];
    }
    //: return _config;
    return _config;
}

//: - (void)notfiyUserInfoChanged:(NSArray *)userIds{
- (void)with:(NSArray *)userIds{
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
        LinkRecent *info = [[LinkRecent alloc] init];
        //: info.session = session;
        info.session = session;
        //: info.notificationName = let_windowTeamLabelTitle;
        info.notificationName = let_windowTeamLabelTitle;
        //: [self.firer addFireInfo:info];
        [self.firer user:info];
    }
}

//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)message:(NSString *)teamId manager:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    LinkRecent *info = [[LinkRecent alloc] init];
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
    //: info.notificationName = let_textBottomName;
    info.notificationName = let_textBottomName;
    //: [self.firer addFireInfo:info];
    [self.firer user:info];
}

//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)memebers:(NSString *)teamId at:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    LinkRecent *info = [[LinkRecent alloc] init];
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
    //: extern NSString *let_rootContent;
    extern NSString *let_rootContent;
    //: info.notificationName = let_rootContent;
    info.notificationName = let_rootContent;
    //: [self.firer addFireInfo:info];
    [self.firer user:info];
}

//: - (FFFKitInfo *)infoByUser:(NSString *)userId option:(FFFKitInfoFetchOption *)option
- (OriginBy *)value:(NSString *)userId manager:(Option *)option
{
    //: FFFKitInfo *info = nil;
    OriginBy *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByUser:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(value:manager:)]) {
        //: info = [self.provider infoByUser:userId option:option];
        info = [self.provider value:userId manager:option];
    }
    //: return info;
    return info;
}

//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (OriginBy *)title:(NSString *)teamId commence:(Option *)option
{
    //: FFFKitInfo *info = nil;
    OriginBy *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(title:commence:)]) {
        //: info = [self.provider infoByTeam:teamId option:option];
        info = [self.provider title:teamId commence:option];
    }
    //: return info;
    return info;

}

//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (OriginBy *)withOption:(NSString *)teamId spaceOption:(Option *)option
{
    //: FFFKitInfo *info = nil;
    OriginBy *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoBySuperTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(withOption:spaceOption:)]) {
        //: info = [self.provider infoBySuperTeam:teamId option:option];
        info = [self.provider withOption:teamId spaceOption:option];
    }
    //: return info;
    return info;

}

//: - (void)preloadNIMKitBundleResource {
- (void)at {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[FFFInputEmoticonManager sharedManager] start];
        [[AppManager administrator] with];
    //: });
    });
}

//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message
- (NSString *)cipherMessage:(NIMMessage *)message
{
    //: NSString *info = nil;
    NSString *info = nil;

    //: if (!message)
    if (!message)
    {
        //: return @"\"未知消息\"".nim_localized;
        return StringFromAloneUponData(&kStr_pureAhData).positionMenu;
    }

    //: if (self.provider && [self.provider respondsToSelector:@selector(replyedContentWithMessage:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(cipherMessage:)]) {
        //: info = [self.provider replyedContentWithMessage:message];
        info = [self.provider cipherMessage:message];
    }
    //: return info;
    return info;
}

//: @end
@end

Byte *AloneUponDataToByte(AloneUponData *data) {
    if (data->politicianBedroom) return data->cozy;
    for (int i = 0; i < data->alleyStanding; i++) {
        data->cozy[i] ^= data->thespian;
    }
    data->cozy[data->alleyStanding] = 0;
    data->politicianBedroom = true;
	if (data->alleyStanding >= 1) {
		data->honorOf = data->cozy[0];
	}
    return data->cozy;
}

NSString *StringFromAloneUponData(AloneUponData *data) {
    return [NSString stringWithUTF8String:(char *)AloneUponDataToByte(data)];
}
