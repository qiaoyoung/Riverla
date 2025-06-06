
#import <Foundation/Foundation.h>

NSString *StringFromEmitData(Byte *data);


//: head_default
Byte kStr_spareSelectValue[] = {17, 12, 29, 8, 55, 94, 196, 238, 133, 130, 126, 129, 124, 129, 130, 131, 126, 146, 137, 145, 203};


//: 未知消息
Byte kStr_contributorText[] = {69, 12, 83, 9, 189, 84, 252, 46, 99, 57, 239, 253, 58, 242, 248, 57, 9, 219, 57, 212, 2, 233};


//: invalid mode
Byte kStr_agoValue[] = {1, 12, 95, 4, 200, 205, 213, 192, 203, 200, 195, 127, 204, 206, 195, 196, 203};


//: [自定义消息]
Byte kStr_cattleText[] = {45, 17, 81, 13, 115, 80, 111, 88, 8, 44, 166, 108, 242, 172, 57, 216, 251, 54, 255, 235, 53, 10, 218, 55, 7, 217, 55, 210, 0, 174, 36};


//: invalid type
Byte kStr_mouthItemData[] = {41, 12, 62, 9, 97, 177, 42, 121, 244, 167, 172, 180, 159, 170, 167, 162, 94, 178, 183, 174, 163, 170};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataBy.m
// Notice
//
//  Created by chris on 2016/10/31.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #pragma mark - kit data request
#pragma mark - kit data request

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "FFFKitDataProviderImpl.h"
#import "DataBy.h"
//: #import "FFFKitInfoFetchOption.h"
#import "Option.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Notice.h"

//: @interface NIMKitDataRequest : NSObject
@interface KitRequest : NSObject

//: @property (nonatomic,strong) NSMutableSet *failedUserIds;
@property (nonatomic,strong) NSMutableSet *failedUserIds;

//: @property (nonatomic,assign) NSInteger maxMergeCount; 
@property (nonatomic,assign) NSInteger maxMergeCount; //最大合并数

//: - (void)requestUserIds:(NSArray *)userIds;
- (void)labelOptionRequest:(NSArray *)userIds;

//: @end
@end


//: @implementation NIMKitDataRequest{
@implementation KitRequest{
    //: NSMutableArray *_requstUserIdArray; 
    NSMutableArray *_requstUserIdArray; //待请求池
    //: BOOL _isRequesting;
    BOOL _isRequesting;
}

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _failedUserIds = [[NSMutableSet alloc] init];
        _failedUserIds = [[NSMutableSet alloc] init];
        //: _requstUserIdArray = [[NSMutableArray alloc] init];
        _requstUserIdArray = [[NSMutableArray alloc] init];
    }
    //: return self;
    return self;
}


//: - (void)requestUserIds:(NSArray *)userIds
- (void)labelOptionRequest:(NSArray *)userIds
{
    //: for (NSString *userId in userIds)
    for (NSString *userId in userIds)
    {
        //: if (![_requstUserIdArray containsObject:userId] && ![_failedUserIds containsObject:userId])
        if (![_requstUserIdArray containsObject:userId] && ![_failedUserIds containsObject:userId])
        {
            //: [_requstUserIdArray addObject:userId];
            [_requstUserIdArray addObject:userId];
        }
    }
    //: [self request];
    [self tip];
}


//: - (void)request
- (void)tip
{
    //: static NSUInteger MaxBatchReuqestCount = 10;
    static NSUInteger MaxBatchReuqestCount = 10;
    //: if (_isRequesting || [_requstUserIdArray count] == 0) {
    if (_isRequesting || [_requstUserIdArray count] == 0) {
        //: return;
        return;
    }
    //: _isRequesting = YES;
    _isRequesting = YES;
    //: NSArray *userIds = [_requstUserIdArray count] > MaxBatchReuqestCount ?
    NSArray *userIds = [_requstUserIdArray count] > MaxBatchReuqestCount ?
    //: [_requstUserIdArray subarrayWithRange:NSMakeRange(0, MaxBatchReuqestCount)] : [_requstUserIdArray copy];
    [_requstUserIdArray subarrayWithRange:NSMakeRange(0, MaxBatchReuqestCount)] : [_requstUserIdArray copy];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].userManager fetchUserInfos:userIds
    [[NIMSDK sharedSDK].userManager fetchUserInfos:userIds
                                        //: completion:^(NSArray *users, NSError *error) {
                                        completion:^(NSArray *users, NSError *error) {
                                            //: [weakSelf afterReuquest:userIds];
                                            [weakSelf messageLength:userIds];
                                            //: if (!error && users.count)
                                            if (!error && users.count)
                                            {
                                                //: [[MyUserKit sharedKit] notfiyUserInfoChanged:userIds];
                                                [[Notice fullKit] with:userIds];
                                            }
                                            //: else if ([weakSelf shouldAddToFailedUsers:error])
                                            else if ([weakSelf button:error])
                                            {
                                                //: [weakSelf.failedUserIds addObjectsFromArray:userIds];
                                                [weakSelf.failedUserIds addObjectsFromArray:userIds];
                                            }
                                        //: }];
                                        }];
}

//: - (void)afterReuquest:(NSArray *)userIds
- (void)messageLength:(NSArray *)userIds
{
    //: _isRequesting = NO;
    _isRequesting = NO;
    //: [_requstUserIdArray removeObjectsInArray:userIds];
    [_requstUserIdArray removeObjectsInArray:userIds];
    //: [self request];
    [self tip];

}

//: - (BOOL)shouldAddToFailedUsers:(NSError *)error
- (BOOL)button:(NSError *)error
{
    //没有错误这种异常情况走到这个路径里也不对，不再请求
    //: return error.code != NIMRemoteErrorCodeTimeoutError || !error;
    return error.code != NIMRemoteErrorCodeTimeoutError || !error;
}

//: @end
@end

//: #pragma mark - data provider impl
#pragma mark - data provider impl

//: @interface FFFKitDataProviderImpl()<NIMUserManagerDelegate,
@interface DataBy()<NIMUserManagerDelegate,
                                    //: NIMTeamManagerDelegate,
                                    NIMTeamManagerDelegate,
                                    //: NIMLoginManagerDelegate,
                                    NIMLoginManagerDelegate,
                                    //: NIMTeamManagerDelegate>
                                    NIMTeamManagerDelegate>

//: @property (nonatomic,strong) UIImage *defaultUserAvatar;
@property (nonatomic,strong) UIImage *defaultUserAvatar;

//: @property (nonatomic,strong) UIImage *defaultTeamAvatar;
@property (nonatomic,strong) UIImage *defaultTeamAvatar;

//: @property (nonatomic,strong) NIMKitDataRequest *request;
@property (nonatomic,strong) KitRequest *request;

//: @end
@end


//: @implementation FFFKitDataProviderImpl
@implementation DataBy

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _request = [[NIMKitDataRequest alloc] init];
        _request = [[KitRequest alloc] init];
        //: _request.maxMergeCount = 20;
        _request.maxMergeCount = 20;
        //: [[NIMSDK sharedSDK].userManager addDelegate:self];
        [[NIMSDK sharedSDK].userManager addDelegate:self];
        //: [[NIMSDK sharedSDK].teamManager addDelegate:self];
        [[NIMSDK sharedSDK].teamManager addDelegate:self];
        //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
        [[NIMSDK sharedSDK].loginManager addDelegate:self];
        //: [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
        [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
}


//: #pragma mark - public api
#pragma mark - public api
//: - (FFFKitInfo *)infoByUser:(NSString *)userId
- (OriginBy *)value:(NSString *)userId
                    //: option:(FFFKitInfoFetchOption *)option
                    manager:(Option *)option
{
    //: NIMSession *session = option.message.session?:option.session;
    NIMSession *session = option.message.session?:option.session;
    //: FFFKitInfo *info = [self infoByUser:userId session:session option:option];
    OriginBy *info = [self signal:userId result_strong:session section:option];
    //: return info;
    return info;
}

//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId
- (OriginBy *)title:(NSString *)teamId
                    //: option:(FFFKitInfoFetchOption *)option
                    commence:(Option *)option
{
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:teamId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:teamId];
    //: FFFKitInfo *info = [[FFFKitInfo alloc] init];
    OriginBy *info = [[OriginBy alloc] init];
    //: info.showName = team.teamName;
    info.showName = team.teamName;
    //: info.infoId = teamId;
    info.infoId = teamId;
    //: info.avatarImage = self.defaultTeamAvatar;
    info.avatarImage = self.defaultTeamAvatar;
    //: info.avatarUrlString = team.thumbAvatarUrl;
    info.avatarUrlString = team.thumbAvatarUrl;
    //: return info;
    return info;
}

//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId
- (OriginBy *)withOption:(NSString *)teamId
                         //: option:(FFFKitInfoFetchOption *)option
                         spaceOption:(Option *)option
{
    //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:teamId];
    NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:teamId];
    //: FFFKitInfo *info = [[FFFKitInfo alloc] init];
    OriginBy *info = [[OriginBy alloc] init];
    //: info.showName = team.teamName;
    info.showName = team.teamName;
    //: info.infoId = teamId;
    info.infoId = teamId;
    //: info.avatarImage = self.defaultTeamAvatar;
    info.avatarImage = self.defaultTeamAvatar;
    //: info.avatarUrlString = team.thumbAvatarUrl;
    info.avatarUrlString = team.thumbAvatarUrl;
    //: return info;
    return info;
}

//: - (NSString *)replyedContentWithMessage:(NIMMessage *)replyedMessage
- (NSString *)cipherMessage:(NIMMessage *)replyedMessage
{
    //: NIMMessageType messageType = replyedMessage.messageType;
    NIMMessageType messageType = replyedMessage.messageType;
    //: NSString *content = @"未知消息".nim_localized;
    NSString *content = StringFromEmitData(kStr_contributorText).positionMenu;
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    Option *option = [[Option alloc] init];
    //: option.message = replyedMessage;
    option.message = replyedMessage;
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:replyedMessage.from option:option];
    OriginBy *info = [[Notice fullKit] value:replyedMessage.from manager:option];
    //: NSString *from = info.showName;
    NSString *from = info.showName;
    //: switch (messageType) {
    switch (messageType) {
        //: case NIMMessageTypeText:
        case NIMMessageTypeText:
            //: content = replyedMessage.text;
            content = replyedMessage.text;
            //: break;
            break;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: content = @"[图片]".nim_localized;
            content = @"[图片]".positionMenu;
            //: break;
            break;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: content = @"[视频]".nim_localized;
            content = @"[视频]".positionMenu;
            //: break;
            break;
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: content = @"[文件]".nim_localized;
            content = @"[文件]".positionMenu;
            //: break;
            break;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: content = @"[位置]".nim_localized;
            content = @"[位置]".positionMenu;
            //: break;
            break;
        //: case NIMMessageTypeNotification:
        case NIMMessageTypeNotification:
            //: content = @"[通知]".nim_localized;
            content = @"[通知]".positionMenu;
            //: break;
            break;
        //: case NIMMessageTypeTip:
        case NIMMessageTypeTip:
            //: content = @"[提示]".nim_localized;
            content = @"[提示]".positionMenu;
            //: break;
            break;
        //: case NIMMessageTypeAudio:
        case NIMMessageTypeAudio:
            //: content = @"[语音]".nim_localized;
            content = @"[语音]".positionMenu;
            //: break;
            break;
        //: case NIMMessageTypeCustom:
        case NIMMessageTypeCustom:
            //: content = @"[自定义消息]".nim_localized;
            content = StringFromEmitData(kStr_cattleText).positionMenu;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

//    if (content.length > 0)
//    {
//        content = [NSString stringWithFormat:@"“%@”".nim_localized, content];
//    }
    //: return content;
    return content;
}

//: #pragma mark - 用户信息拼装
#pragma mark - 用户信息拼装
//会话中用户信息
//: - (FFFKitInfo *)infoByUser:(NSString *)userId
- (OriginBy *)signal:(NSString *)userId
                   //: session:(NIMSession *)session
                   result_strong:(NIMSession *)session
                    //: option:(FFFKitInfoFetchOption *)option
                    section:(Option *)option
{
    //: NIMSessionType sessionType = session.sessionType;
    NIMSessionType sessionType = session.sessionType;
    //: FFFKitInfo *info;
    OriginBy *info;

    //: switch (sessionType) {
    switch (sessionType) {
        //: case NIMSessionTypeP2P:
        case NIMSessionTypeP2P:
        {
            //: info = [self userInfoInP2P:userId option:option];
            info = [self soul:userId coveredOption:option];
        }
            //: break;
            break;
        //: case NIMSessionTypeTeam:
        case NIMSessionTypeTeam:
        {
            //: info = [self userInfo:userId inTeam:session.sessionId option:option];
            info = [self indexSuccessDismiss:userId medianItem:session.sessionId propagandaLimit:option];
        }
            //: break;
            break;
        //: case NIMSessionTypeChatroom:
        case NIMSessionTypeChatroom:
        {
            //: info = [self userInfo:userId inChatroom:session.sessionId option:option];
            info = [self rowOption:userId appose:session.sessionId should:option];
        }
            //: break;
            break;
        //: case NIMSessionTypeSuperTeam:
        case NIMSessionTypeSuperTeam:
        {
            //: info = [self userInfo:userId inSuperTeam:session.sessionId option:option];
            info = [self at:userId month:session.sessionId restrain:option];
            //: break;
            break;
        }
        //: default:
        default:
            //: NSAssert(0, @"invalid type");
            NSAssert(0, StringFromEmitData(kStr_mouthItemData));
            //: break;
            break;
    }

    //: if (!info)
    if (!info)
    {
        //: if (!userId.length)
        if (!userId.length)
        {
            //: NSLog(@"warning: fetch user failed because userid is empty");
        }
        //: else
        else
        {
            //: [self.request requestUserIds:@[userId]];
            [self.request labelOptionRequest:@[userId]];
        }

        //: info = [[FFFKitInfo alloc] init];
        info = [[OriginBy alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;
        //: info.showName = userId; 
        info.showName = userId; //默认值
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}



//: #pragma mark - P2P 用户信息
#pragma mark - P2P 用户信息
//: - (FFFKitInfo *)userInfoInP2P:(NSString *)userId
- (OriginBy *)soul:(NSString *)userId
                       //: option:(FFFKitInfoFetchOption *)option
                       coveredOption:(Option *)option
{
    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    //: NIMUserInfo *userInfo = user.userInfo;
    NIMUserInfo *userInfo = user.userInfo;
    //: FFFKitInfo *info;
    OriginBy *info;
    //: if (userInfo)
    if (userInfo)
    {
        //: info = [[FFFKitInfo alloc] init];
        info = [[OriginBy alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;
        //: NSString *name = [self nicknameWithUser:user
        NSString *name = [self languageOption:user
                                           //: nick:nil
                                           nick:nil
                                         //: option:option];
                                         length_strong:option];
        //: info.showName = name?:@"";
        info.showName = name?:@"";
        //: info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}


//: #pragma mark - 群组用户信息
#pragma mark - 群组用户信息
//: - (FFFKitInfo *)userInfo:(NSString *)userId
- (OriginBy *)indexSuccessDismiss:(NSString *)userId
                  //: inTeam:(NSString *)teamId
                  medianItem:(NSString *)teamId
                  //: option:(FFFKitInfoFetchOption *)option
                  propagandaLimit:(Option *)option
{
    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    //: NIMUserInfo *userInfo = user.userInfo;
    NIMUserInfo *userInfo = user.userInfo;
    //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userId
    NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userId
                                                                 //: inTeam:teamId];
                                                                 inTeam:teamId];

    //: FFFKitInfo *info;
    OriginBy *info;

    //: if (userInfo || member)
    if (userInfo || member)
    {
        //: info = [[FFFKitInfo alloc] init];
        info = [[OriginBy alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;

        //: NSString *name = [self nicknameWithUser:user
        NSString *name = [self languageOption:user
                                           //: nick:member.nickname
                                           nick:member.nickname
                                         //: option:option];
                                         length_strong:option];
        //: info.showName = name?:@"";
        info.showName = name?:@"";
        //: info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}

//: #pragma mark - 超大群用户信息
#pragma mark - 超大群用户信息
//: - (FFFKitInfo *)userInfo:(NSString *)userId
- (OriginBy *)at:(NSString *)userId
             //: inSuperTeam:(NSString *)teamId
             month:(NSString *)teamId
                  //: option:(FFFKitInfoFetchOption *)option
                  restrain:(Option *)option
{
    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    //: NIMUserInfo *userInfo = user.userInfo;
    NIMUserInfo *userInfo = user.userInfo;
    //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
    NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
                                                                      //: inTeam:teamId];
                                                                      inTeam:teamId];

    //: FFFKitInfo *info;
    OriginBy *info;

    //: if (userInfo || member)
    if (userInfo || member)
    {
        //: info = [[FFFKitInfo alloc] init];
        info = [[OriginBy alloc] init];
        //: info.infoId = userId;
        info.infoId = userId;

        //: NSString *name = [self nicknameWithUser:user
        NSString *name = [self languageOption:user
                                           //: nick:member.nickname
                                           nick:member.nickname
                                         //: option:option];
                                         length_strong:option];
        //: info.showName = name?:@"";
        info.showName = name?:@"";
        //: info.avatarUrlString = userInfo.thumbAvatarUrl;
        info.avatarUrlString = userInfo.thumbAvatarUrl;
        //: info.avatarImage = self.defaultUserAvatar;
        info.avatarImage = self.defaultUserAvatar;
    }
    //: return info;
    return info;
}


//: #pragma mark - 聊天室用户信息
#pragma mark - 聊天室用户信息
//: - (FFFKitInfo *)userInfo:(NSString *)userId
- (OriginBy *)rowOption:(NSString *)userId
              //: inChatroom:(NSString *)roomId
              appose:(NSString *)roomId
                  //: option:(FFFKitInfoFetchOption *)option
                  should:(Option *)option
{
    //: FFFKitInfo *info = [[FFFKitInfo alloc] init];
    OriginBy *info = [[OriginBy alloc] init];
    //: info.infoId = userId;
    info.infoId = userId;
    //: NIMMessageChatroomExtension *ext = [option.message.messageExt isKindOfClass:[NIMMessageChatroomExtension class]] ?
    NIMMessageChatroomExtension *ext = [option.message.messageExt isKindOfClass:[NIMMessageChatroomExtension class]] ?
    //: (NIMMessageChatroomExtension *)option.message.messageExt : nil;
    (NIMMessageChatroomExtension *)option.message.messageExt : nil;
    //: if (ext)
    if (ext)
    {
        //: info.showName = ext.roomNickname;
        info.showName = ext.roomNickname;
        //: info.avatarUrlString = ext.roomAvatar;
        info.avatarUrlString = ext.roomAvatar;
    }
    //: else if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    else if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    {
        //: NIMSDKAuthMode mode = [[NIMSDK sharedSDK].chatroomManager chatroomAuthMode:roomId];
        NIMSDKAuthMode mode = [[NIMSDK sharedSDK].chatroomManager chatroomAuthMode:roomId];

        //: switch (mode) {
        switch (mode) {
            //: case NIMSDKAuthModeChatroom:
            case NIMSDKAuthModeChatroom:
            {
//                NSAssert([Notice sharedKit].independentModeExtraInfo, @"in mode NIMSDKAuthModeChatroom , must has independentModeExtraInfo");
                //: info.showName = [MyUserKit sharedKit].independentModeExtraInfo.myChatroomNickname;
                info.showName = [Notice fullKit].independentModeExtraInfo.myChatroomNickname;
                //: info.avatarUrlString = [MyUserKit sharedKit].independentModeExtraInfo.myChatroomAvatar;
                info.avatarUrlString = [Notice fullKit].independentModeExtraInfo.myChatroomAvatar;
            }
                //: break;
                break;
            //: case NIMSDKAuthModeIM:
            case NIMSDKAuthModeIM:
            {
                //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                //: info.showName = user.userInfo.nickName;
                info.showName = user.userInfo.nickName;
                //: info.avatarUrlString = user.userInfo.thumbAvatarUrl;
                info.avatarUrlString = user.userInfo.thumbAvatarUrl;
            }
                //: break;
                break;
            //: default:
            default:
            {
                //: NSAssert(0, @"invalid mode");
                NSAssert(0, StringFromEmitData(kStr_agoValue));
            }
                //: break;
                break;
        }
    }

    //: info.avatarImage = self.defaultUserAvatar;
    info.avatarImage = self.defaultUserAvatar;
    //: return info;
    return info;
}

//昵称优先级
//: - (NSString *)nicknameWithUser:(NIMUser *)user
- (NSString *)languageOption:(NIMUser *)user
                          //: nick:(NSString *)nick
                          nick:(NSString *)nick
                        //: option:(FFFKitInfoFetchOption *)option
                        length_strong:(Option *)option
{
    //: NSString *name = nil;
    NSString *name = nil;
    //: do{
    do{
        //: if (!option.forbidaAlias && [user.alias length])
        if (!option.forbidaAlias && [user.alias length])
        {
            //: name = user.alias;
            name = user.alias;
            //: break;
            break;
        }
        //: if (nick && [nick length])
        if (nick && [nick length])
        {
            //: name = nick;
            name = nick;
            //: break;
            break;
        }

        //: if ([user.userInfo.nickName length])
        if ([user.userInfo.nickName length])
        {
            //: name = user.userInfo.nickName;
            name = user.userInfo.nickName;
            //: break;
            break;
        }
    //: }while (0);
    }while (0);
    //: return name;
    return name;
}

//: #pragma mark - avatar
#pragma mark - avatar
//: - (UIImage *)defaultTeamAvatar
- (UIImage *)defaultTeamAvatar
{
    //: if (!_defaultTeamAvatar)
    if (!_defaultTeamAvatar)
    {
        //: _defaultTeamAvatar = [UIImage imageNamed:@"head_default"];
        _defaultTeamAvatar = [UIImage imageNamed:StringFromEmitData(kStr_spareSelectValue)];
    }
    //: return _defaultTeamAvatar;
    return _defaultTeamAvatar;
}

//: - (UIImage *)defaultUserAvatar
- (UIImage *)defaultUserAvatar
{
    //: if (!_defaultUserAvatar)
    if (!_defaultUserAvatar)
    {
        //: _defaultUserAvatar = [UIImage imageNamed:@"head_default"];
        _defaultUserAvatar = [UIImage imageNamed:StringFromEmitData(kStr_spareSelectValue)];
    }
    //: return _defaultUserAvatar;
    return _defaultUserAvatar;
}




//将个人信息和群组信息变化通知给 Notice 。
//如果您的应用不托管个人信息给云信，则需要您自行在上层监听个人信息变动，并将变动通知给 NIMKit。

//: #pragma mark - NIMUserManagerDelegate
#pragma mark - NIMUserManagerDelegate

//: - (void)onFriendChanged:(NIMUser *)user
- (void)onFriendChanged:(NIMUser *)user
{
    //: [self notifyUser:user];
    [self lineUser:user];
}

//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: [self notifyUser:user];
    [self lineUser:user];
}

//: - (void)notifyUser:(NIMUser *)user
- (void)lineUser:(NIMUser *)user
{
    //: if (!user)
    if (!user)
    {
        //: NSLog(@"warning: notify user failed because user is empty");
    }
    //: else
    else
    {
        //: [[MyUserKit sharedKit] notfiyUserInfoChanged:@[user.userId]];
        [[Notice fullKit] with:@[user.userId]];
    }

}

//: #pragma mark - NIMTeamManagerDelegate
#pragma mark - NIMTeamManagerDelegate
//: - (void)onTeamAdded:(NIMTeam *)team
- (void)onTeamAdded:(NIMTeam *)team
{
    //: [self notifyTeamInfo:team];
    [self cancel:team];
}

//: - (void)onTeamUpdated:(NIMTeam *)team
- (void)onTeamUpdated:(NIMTeam *)team
{
    //: [self notifyTeamInfo:team];
    [self cancel:team];
}

//: - (void)onTeamRemoved:(NIMTeam *)team
- (void)onTeamRemoved:(NIMTeam *)team
{
    //: [self notifyTeamInfo:team];
    [self cancel:team];
}

//: - (void)onTeamMemberChanged:(NIMTeam *)team
- (void)onTeamMemberChanged:(NIMTeam *)team
{
    //: [self notifyTeamMember:team];
    [self name:team];
}

//: - (void)notifyTeamInfo:(NIMTeam *)team
- (void)cancel:(NIMTeam *)team
{
    //: if (!team.teamId.length)
    if (!team.teamId.length)
    {
        //: NSLog(@"warning: notify teamid failed because teamid is empty");
    }
    //: else
    else
    {
        //: switch (team.type) {
        switch (team.type) {
            //: case NIMTeamTypeNormal:
            case NIMTeamTypeNormal:
            //: case NIMTeamTypeAdvanced:
            case NIMTeamTypeAdvanced:
                //: [[MyUserKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeNomal];
                [[Notice fullKit] message:team.teamId manager:NIMKitTeamTypeNomal];
                //: break;
                break;
            //: case NIMTeamTypeSuper:
            case NIMTeamTypeSuper:
                //: [[MyUserKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeSuper];
                [[Notice fullKit] message:team.teamId manager:NIMKitTeamTypeSuper];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    }
}

//: - (void)notifyTeamMember:(NIMTeam *)team
- (void)name:(NIMTeam *)team
{
    //: if (!team.teamId.length)
    if (!team.teamId.length)
    {
        //: NSLog(@"warning: notify team member failed because teamid is empty");
    }
    //: else
    else
    {
        //: switch (team.type) {
        switch (team.type) {
            //: case NIMTeamTypeNormal:
            case NIMTeamTypeNormal:
            //: case NIMTeamTypeAdvanced:
            case NIMTeamTypeAdvanced:
                //: [[MyUserKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeNomal];
                [[Notice fullKit] message:team.teamId manager:NIMKitTeamTypeNomal];
                //: break;
                break;
            //: case NIMTeamTypeSuper:
            case NIMTeamTypeSuper:
                //: [[MyUserKit sharedKit] notifyTeamInfoChanged:team.teamId type:NIMKitTeamTypeSuper];
                [[Notice fullKit] message:team.teamId manager:NIMKitTeamTypeSuper];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    }
}

//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step
- (void)onLogin:(NIMLoginStep)step
{
    //: if (step == NIMLoginStepSyncOK) {
    if (step == NIMLoginStepSyncOK) {
        //: [[MyUserKit sharedKit] notifyTeamInfoChanged:nil type:NIMKitTeamTypeNomal];
        [[Notice fullKit] message:nil manager:NIMKitTeamTypeNomal];
        //: [[MyUserKit sharedKit] notifyTeamMemebersChanged:nil type:NIMKitTeamTypeNomal];
        [[Notice fullKit] memebers:nil at:NIMKitTeamTypeNomal];
    }
}



//: @end
@end

Byte * EmitDataToCache(Byte *data) {
    int foam = data[0];
    int gnosisQuick = data[1];
    Byte civilCattle = data[2];
    int coloration = data[3];
    if (!foam) return data + coloration;
    for (int i = coloration; i < coloration + gnosisQuick; i++) {
        int value = data[i] - civilCattle;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[coloration + gnosisQuick] = 0;
    return data + coloration;
}

NSString *StringFromEmitData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)EmitDataToCache(data)];
}
