
#import <Foundation/Foundation.h>

NSString *StringFromUniverseData(Byte *data);        


//: group_info_activity_op_failed
Byte kStr_paleValue[] = {39, 29, 2, 8, 84, 107, 44, 106, 101, 112, 109, 115, 110, 93, 103, 108, 100, 109, 93, 95, 97, 114, 103, 116, 103, 114, 119, 93, 109, 110, 93, 100, 95, 103, 106, 99, 98, 166};


//: user_info_avtivity_upload_avatar_failed
Byte kStr_emptyFindText[] = {99, 39, 96, 4, 21, 19, 5, 18, 255, 9, 14, 6, 15, 255, 1, 22, 20, 9, 22, 9, 20, 25, 255, 21, 16, 12, 15, 1, 4, 255, 1, 22, 1, 20, 1, 18, 255, 6, 1, 9, 12, 5, 4, 167};


//: nimkit.teamlist.data
Byte kStr_decreaseText[] = {89, 20, 24, 13, 192, 78, 103, 234, 185, 125, 25, 221, 64, 86, 81, 85, 83, 81, 92, 22, 92, 77, 73, 85, 84, 81, 91, 92, 22, 76, 73, 92, 73, 62};


//: user_profile_avtivity_user_info_update_failed
Byte kStr_approveCruValue[] = {46, 45, 39, 13, 190, 200, 186, 160, 2, 27, 8, 161, 27, 78, 76, 62, 75, 56, 73, 75, 72, 63, 66, 69, 62, 56, 58, 79, 77, 66, 79, 66, 77, 82, 56, 78, 76, 62, 75, 56, 66, 71, 63, 72, 56, 78, 73, 61, 58, 77, 62, 56, 63, 58, 66, 69, 62, 61, 187};


//: attach
Byte kStr_booTodayValue[] = {78, 6, 66, 9, 155, 84, 207, 231, 248, 31, 50, 50, 31, 33, 38, 135};


//: modify_activity_modify_success
Byte kStr_recessionVoiceValue[] = {63, 30, 68, 11, 168, 63, 26, 215, 231, 79, 212, 41, 43, 32, 37, 34, 53, 27, 29, 31, 48, 37, 50, 37, 48, 53, 27, 41, 43, 32, 37, 34, 53, 27, 47, 49, 31, 31, 33, 47, 47, 96};


//: 邀请成功，等待验证
Byte kStr_lagText[] = {38, 27, 65, 4, 168, 65, 63, 167, 110, 118, 165, 71, 79, 164, 73, 94, 174, 123, 75, 166, 108, 72, 164, 125, 68, 168, 105, 75, 167, 110, 64, 25};


//: postscript
Byte kStr_toxicFiceName[] = {4, 10, 19, 11, 208, 176, 182, 187, 236, 230, 224, 93, 92, 96, 97, 96, 80, 95, 86, 93, 97, 212};


//: 邀请失败
Byte kStr_properText[] = {39, 12, 16, 6, 215, 177, 217, 114, 112, 216, 159, 167, 213, 148, 161, 216, 164, 149, 164};


//: 超大群未开放该功能
Byte kStr_ingredientAideValue[] = {43, 27, 48, 9, 109, 199, 21, 232, 87, 184, 134, 85, 181, 116, 119, 183, 142, 116, 182, 108, 122, 181, 140, 80, 182, 100, 142, 184, 127, 117, 181, 90, 111, 184, 83, 141, 11};


//: 你已经不在群里
Byte kStr_sateName[] = {85, 21, 98, 6, 20, 17, 130, 91, 62, 131, 85, 80, 133, 89, 45, 130, 86, 43, 131, 58, 70, 133, 92, 66, 135, 37, 42, 202};


//: 邀请成功
Byte kStr_keyOptionContent[] = {47, 12, 19, 9, 86, 41, 216, 188, 188, 214, 111, 109, 213, 156, 164, 211, 117, 125, 210, 119, 140, 69};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithReply.m
// Afterwards
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamListDataManager.h"
#import "WithReply.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: NSString *const kNIMTeamListDataTeamInfoUpdate = @"kNIMTeamListDataTeamInfoUpdate";
NSString *const kLet_tipActiveValue = @"kNIMTeamListDataTeamInfoUpdate";
//: NSString *const kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
NSString *const kLet_contentValue = @"kNIMTeamListDataTeamMembersChanged";

//: @interface FFFTeamListDataManager ()<NIMTeamManagerDelegate>
@interface WithReply ()<NIMTeamManagerDelegate>

//: @property (nonatomic, strong) NIMTeam *team;
@property (nonatomic, strong) NIMTeam *team;

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic, strong) NSMutableArray <FFFTeamCardMemberItem *> *members;
@property (nonatomic, strong) NSMutableArray <FrameMemberItem *> *members;

//: @property (nonatomic, strong) NIMTeamMember *myTeamInfo;
@property (nonatomic, strong) NIMTeamMember *myTeamInfo;

//: @property (nonatomic, strong) FFFTeamCardMemberItem *myCard;
@property (nonatomic, strong) FrameMemberItem *myCard;

//: @end
@end

//: @implementation FFFTeamListDataManager
@implementation WithReply

//: - (void)dealloc {
- (void)dealloc {
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager removeDelegate:self];
        [[NIMSDK sharedSDK].superTeamManager removeDelegate:self];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager removeDelegate:self];
        [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    }
}

//: - (instancetype)initWithTeam:(NIMTeam *)team session:(NIMSession *)session {
- (instancetype)initWithCountInfo:(NIMTeam *)team top:(NIMSession *)session {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _team = team;
        _team = team;
        //: _session = session;
        _session = session;
        //: if (team.type == NIMTeamTypeSuper) {
        if (team.type == NIMTeamTypeSuper) {
            //: [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
            [[NIMSDK sharedSDK].superTeamManager addDelegate:self];
        //: } else {
        } else {
            //: [[NIMSDK sharedSDK].teamManager addDelegate:self];
            [[NIMSDK sharedSDK].teamManager addDelegate:self];
        }
        //: [self reloadMyTeamInfo];
        [self option];
    }
    //: return self;
    return self;
}

//: - (NSMutableArray *)memberIds {
- (NSMutableArray *)memberIds {
    //: NSMutableArray *ret = [NSMutableArray array];
    NSMutableArray *ret = [NSMutableArray array];
    //: [_members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [_members enumerateObjectsUsingBlock:^(FrameMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if (obj.userId) {
        if (obj.userId) {
            //: [ret addObject:obj.userId];
            [ret addObject:obj.userId];
        }
    //: }];
    }];
    //: return ret;
    return ret;
}

//: - (FFFTeamCardMemberItem *)memberWithUserId:(NSString *)userId {
- (FrameMemberItem *)soulCenter:(NSString *)userId {
    //: __block FFFTeamCardMemberItem *ret = nil;
    __block FrameMemberItem *ret = nil;
    //: [_members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [_members enumerateObjectsUsingBlock:^(FrameMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if ([obj.userId isEqualToString:userId]) {
        if ([obj.userId isEqualToString:userId]) {
            //: ret = obj;
            ret = obj;
            //: *stop = YES;
            *stop = YES;
        }
    //: }];
    }];
    //: return ret;
    return ret;
}

//: #pragma mark - Function
#pragma mark - Function
//: - (NSString *)myAccount {
- (NSString *)myAccount {
    //: return [[NIMSDK sharedSDK].loginManager currentAccount];
    return [[NIMSDK sharedSDK].loginManager currentAccount];
}

//: - (void)reloadMyTeamInfo {
- (void)option {
    //: NSString *userId = [self myAccount];
    NSString *userId = [self myAccount];
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: if (self.team.type == NIMTeamTypeSuper) {
    if (self.team.type == NIMTeamTypeSuper) {
        //: self.myTeamInfo = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
        self.myTeamInfo = [[NIMSDK sharedSDK].superTeamManager teamMember:userId
                                                                   //: inTeam:teamId];
                                                                   inTeam:teamId];
    //: } else {
    } else {
        //: self.myTeamInfo = [[NIMSDK sharedSDK].teamManager teamMember:userId
        self.myTeamInfo = [[NIMSDK sharedSDK].teamManager teamMember:userId
                                                          //: inTeam:teamId];
                                                          inTeam:teamId];
    }
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)addMemberItem:(FFFTeamCardMemberItem *)item {
- (void)totalShow:(FrameMemberItem *)item {
    //: if (!item) {
    if (!item) {
        //: return;
        return;
    }
    //: switch (item.userType) {
    switch (item.userType) {
        //: case NIMTeamMemberTypeOwner:
        case NIMTeamMemberTypeOwner:
        {
            //: [_members insertObject:item atIndex:0];
            [_members insertObject:item atIndex:0];
            //: break;
            break;
        }
        //: default:
        default:
            //: [_members addObject:item];
            [_members addObject:item];
            //: break;
            break;
    }
}

//: - (void)removeMemberItem:(NSString *)userId {
- (void)emptyExtract:(NSString *)userId {
    //: for (FFFTeamCardMemberItem *obj in _members) {
    for (FrameMemberItem *obj in _members) {
        //: if ([obj.userId isEqualToString:userId]) {
        if ([obj.userId isEqualToString:userId]) {
            //: [_members removeObject:obj];
            [_members removeObject:obj];
            //: break;
            break;
        }
    }
}

//: - (void)addMembers:(NSArray <NIMTeamMember *>*)members {
- (void)add:(NSArray <NIMTeamMember *>*)members {
    //: if (!_members) {
    if (!_members) {
        //: _members = [NSMutableArray array];
        _members = [NSMutableArray array];
    }

    //: for (NIMTeamMember *member in members) {
    for (NIMTeamMember *member in members) {
        //: FFFTeamCardMemberItem *item = [[FFFTeamCardMemberItem alloc] initWithMember:member
        FrameMemberItem *item = [[FrameMemberItem alloc] initWithBringHomeSize:member
                                                                           //: teamType:_team.type];
                                                                           streetSmart:_team.type];

        //: [self addMemberItem:item];
        [self totalShow:item];
    }
}

//: - (void)removeMembers:(NSArray <NSString *> *)userIds {
- (void)statuteTitleItem:(NSArray <NSString *> *)userIds {
    //: for (NSString *userId in userIds) {
    for (NSString *userId in userIds) {
        //: [self removeMemberItem:userId];
        [self emptyExtract:userId];
    }
}

//: - (NIMTeamMember*)teamInfo:(NSString*)uid{
- (NIMTeamMember*)user:(NSString*)uid{
    //: for (FFFTeamCardMemberItem *member in _members) {
    for (FrameMemberItem *member in _members) {
        //: if ([member.userId isEqualToString:uid]) {
        if ([member.userId isEqualToString:uid]) {
            //: return member.member;
            return member.member;
        }
    }
    //: return nil;
    return nil;
}

//: - (void)setMyTeamInfo:(NIMTeamMember *)myTeamInfo {
- (void)setMyTeamInfo:(NIMTeamMember *)myTeamInfo {
    //: _myTeamInfo = myTeamInfo;
    _myTeamInfo = myTeamInfo;
    //: _myCard = [[FFFTeamCardMemberItem alloc] initWithMember:myTeamInfo
    _myCard = [[FrameMemberItem alloc] initWithBringHomeSize:myTeamInfo
                                                   //: teamType:_team.type];
                                                   streetSmart:_team.type];
}


//: - (void)updateMembersWithOption:(FFFMembersFetchOption *)option
- (void)last:(RecentBottomOption *)option
                        //: members:(NSArray <NIMTeamMember *> *)members {
                        modify_strong:(NSArray <NIMTeamMember *> *)members {
    //: if (!_members) {
    if (!_members) {
        //: _members = [NSMutableArray array];
        _members = [NSMutableArray array];
    }

    //: if (option.isRefresh) {
    if (option.isRefresh) {
        //: [_members removeAllObjects];
        [_members removeAllObjects];

        //: for (NIMTeamMember *member in members) {
        for (NIMTeamMember *member in members) {
            //: NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: if ([member.userId isEqualToString:currentAccount]) {
            if ([member.userId isEqualToString:currentAccount]) {
                //: self.myTeamInfo = member;
                self.myTeamInfo = member;
            }

            //: FFFTeamCardMemberItem *item = [[FFFTeamCardMemberItem alloc] initWithMember:member
            FrameMemberItem *item = [[FrameMemberItem alloc] initWithBringHomeSize:member
                                                                               //: teamType:_team.type];
                                                                               streetSmart:_team.type];
            //: [self addMemberItem:item];
            [self totalShow:item];
        }
    //: } else {
    } else {
        //: NSInteger start = _members.count - option.offset;
        NSInteger start = _members.count - option.offset;
        //: for (NSInteger i = start; i < members.count; i++) {
        for (NSInteger i = start; i < members.count; i++) {
            //: NIMTeamMember *member = members[i];
            NIMTeamMember *member = members[i];

            //: NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *currentAccount = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: if ([member.userId isEqualToString:currentAccount]) {
            if ([member.userId isEqualToString:currentAccount]) {
                //: self.myTeamInfo = member;
                self.myTeamInfo = member;
            }

            //: FFFTeamCardMemberItem *item = [[FFFTeamCardMemberItem alloc] initWithMember:member
            FrameMemberItem *item = [[FrameMemberItem alloc] initWithBringHomeSize:member
                                                                               //: teamType:_team.type];
                                                                               streetSmart:_team.type];
            //: [self addMemberItem:item];
            [self totalShow:item];
        }
    }
}

//: #pragma mark - Handle
#pragma mark - Handle
//: - (void)handleUnsupport:(NIMTeamListDataBlock)completion {
- (void)line:(NIMTeamListDataBlock)completion {
    //: NSError *error = [NSError errorWithDomain:@"nimkit.teamlist.data"
    NSError *error = [NSError errorWithDomain:StringFromUniverseData(kStr_decreaseText)
                                         //: code:0x1000
                                         code:0x1000
                                     //: userInfo:@{NSLocalizedDescriptionKey : @"超大群未开放该功能".nim_localized}];
                                     userInfo:@{NSLocalizedDescriptionKey : StringFromUniverseData(kStr_ingredientAideValue).textKey}];
    //: if (completion) {
    if (completion) {
        //: completion(error, @"超大群未开放该功能".nim_localized);
        completion(error, StringFromUniverseData(kStr_ingredientAideValue).textKey);
    }
}


//: - (void)handleAddUsers:(NSError *)error
- (void)memebers:(NSError *)error
              //: memebers:(NSArray<NIMTeamMember *> *)members
              handleMaxCompletion:(NSArray<NIMTeamMember *> *)members
            //: completion:(NIMTeamListDataBlock)completion {
            voteIn:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: if (self.team.type == NIMTeamTypeNormal) { 
        if (self.team.type == NIMTeamTypeNormal) { //高级群需要验证，普通群直接进
            //: [self addMembers:members];
            [self add:members];
            //: msg = [FFFLanguageManager getTextWithKey:@"邀请成功"];
            msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_keyOptionContent)];
        //: } else {
        } else {
            //: if (self.team.beInviteMode == NIMTeamBeInviteModeNeedAuth) {
            if (self.team.beInviteMode == NIMTeamBeInviteModeNeedAuth) {
                //: msg = [FFFLanguageManager getTextWithKey:@"邀请成功，等待验证"];
                msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_lagText)];
            //: } else {
            } else {
                //: [self addMembers:members];
                [self add:members];
                //: msg = [FFFLanguageManager getTextWithKey:@"邀请成功"];
                msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_keyOptionContent)];
            }
        }
    //: } else {
    } else {
        //: msg = [NSString stringWithFormat:@"%@ :%zd",[FFFLanguageManager getTextWithKey:@"邀请失败"],error.code];
        msg = [NSString stringWithFormat:@"%@ :%zd",[ItemManager sessionInformation:StringFromUniverseData(kStr_properText)],error.code];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleKickUsers:(NSArray *)userIds
- (void)ginMill:(NSArray *)userIds
                  //: error:(NSError *)error
                  segment:(NSError *)error
             //: completion:(NIMTeamListDataBlock)completion {
             fillIn:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self removeMembers:userIds];
        [self statuteTitleItem:userIds];
    //: } else {
    } else {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamAnnouncement:(NSString *)content
- (void)jointCamera:(NSString *)content
                               //: error:(NSError *)error
                               lightCompletion:(NSError *)error
                          //: completion:(NIMTeamListDataBlock)completion {
                          care:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.announcement = content;
        self.team.announcement = content;
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamAvatar:(NSString *)urlString
- (void)complete:(NSString *)urlString
                         //: error:(NSError *)error
                         secretEnable:(NSError *)error
                    //: completion:(NIMTeamListDataBlock)completion {
                    video:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_approveCruValue)];
    //: } else {
    } else {
        //: self.team.avatarUrl = urlString;
        self.team.avatarUrl = urlString;
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamName:(NSString *)name
- (void)team:(NSString *)name
                       //: error:(NSError *)error
                       red:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  contentCompletion:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.teamName = name;
        self.team.teamName = name;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_recessionVoiceValue)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamNick:(NSString *)nick
- (void)handleShadow:(NSString *)nick
                       //: error:(NSError *)error
                       reloadCompletion:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  length:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.myTeamInfo.nickname = nick;
        self.myTeamInfo.nickname = nick;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_recessionVoiceValue)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamIntro:(NSString *)intro
- (void)achromaticColour:(NSString *)intro
                        //: error:(NSError *)error
                        slipUp:(NSError *)error
                   //: completion:(NIMTeamListDataBlock)completion {
                   file:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.intro = intro;
        self.team.intro = intro;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_recessionVoiceValue)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamMute:(NSError *)error
- (void)cropContent:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  baseballTeam:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_recessionVoiceValue)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)modifyTing:(NIMTeamJoinMode)mode
                           //: error:(NSError *)error
                           keyCompletion:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      complete:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.joinMode = mode;
        self.team.joinMode = mode;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_recessionVoiceValue)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)tingRestore:(NIMTeamInviteMode)mode
                             //: error:(NSError *)error
                             title:(NSError *)error
                        //: completion:(NIMTeamListDataBlock)completion {
                        whiteNim:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.inviteMode = mode;
        self.team.inviteMode = mode;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_recessionVoiceValue)];
    //: } else {
    } else {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)crew:(NIMTeamUpdateInfoMode)mode
                           //: error:(NSError *)error
                           factoidInvite:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      ammunitionDataBlock:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.updateInfoMode = mode;
        self.team.updateInfoMode = mode;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_recessionVoiceValue)];
    //: } else {
    } else {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)keyMedia:(NIMTeamBeInviteMode)mode
                               //: error:(NSError *)error
                               messageCompletion:(NSError *)error
                          //: completion:(NIMTeamListDataBlock)completion {
                          invite:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: self.team.beInviteMode = mode;
        self.team.beInviteMode = mode;
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_recessionVoiceValue)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateTeamNotifyState:(NIMTeamNotifyState)state
- (void)changeTag:(NIMTeamNotifyState)state
                              //: error:(NSError *)error
                              view:(NSError *)error
                         //: completion:(NIMTeamListDataBlock)completion {
                         menu:(NIMTeamListDataBlock)completion {
    //: __block NSString *msg = nil;
    __block NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleAddManagers:(NSArray *)userIds
- (void)ting:(NSArray *)userIds
                    //: error:(NSError *)error
                    visualisationScale:(NSError *)error
               //: completion:(NIMTeamListDataBlock)completion {
               completion:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: __block BOOL isChanged = NO;
    __block BOOL isChanged = NO;
    //: if (!error) {
    if (!error) {
        //: for (NSString *userId in userIds) {
        for (NSString *userId in userIds) {
            //: [self.members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [self.members enumerateObjectsUsingBlock:^(FrameMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if ([obj.userId isEqualToString:userId]) {
                if ([obj.userId isEqualToString:userId]) {
                    //: obj.userType = NIMTeamMemberTypeManager;
                    obj.userType = NIMTeamMemberTypeManager;
                    //: isChanged = YES;
                    isChanged = YES;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
        }

        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_recessionVoiceValue)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}


//: - (void)handleRemoveManagers:(NSArray *)userIds
- (void)errorCompletion:(NSArray *)userIds
                       //: error:(NSError *)error
                       completionFull:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  size:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: for (NSString *userId in userIds) {
        for (NSString *userId in userIds) {
            //: [self.members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [self.members enumerateObjectsUsingBlock:^(FrameMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if ([obj.userId isEqualToString:userId]) {
                if ([obj.userId isEqualToString:userId]) {
                    //: obj.userType = NIMTeamMemberTypeNormal;
                    obj.userType = NIMTeamMemberTypeNormal;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
        }
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_recessionVoiceValue)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleTransferOwner:(NSString *)userId
- (void)juggleBeCompletionTitle:(NSString *)userId
                      //: leave:(BOOL)leave
                      title:(BOOL)leave
                      //: error:(NSError *)error
                      dismiss:(NSError *)error
                 //: completion:(NIMTeamListDataBlock)completion {
                 timeContent:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: NIMTeamMember *memberInfo = [self teamInfo:userId];
        NIMTeamMember *memberInfo = [self user:userId];
        //: memberInfo.type = NIMTeamMemberTypeOwner;
        memberInfo.type = NIMTeamMemberTypeOwner;
        //: if (leave && userId) {
        if (leave && userId) {
            //: [self removeMembers:@[userId]];
            [self statuteTitleItem:@[userId]];
        }
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_recessionVoiceValue)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }

    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpdateUserNick:(NSString *)userId
- (void)modifyCompletion:(NSString *)userId
                        //: nick:(NSString *)nick
                        nick:(NSString *)nick
                       //: error:(NSError *)error
                       of:(NSError *)error
                  //: completion:(NIMTeamListDataBlock)completion {
                  parent:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self.members enumerateObjectsUsingBlock:^(FFFTeamCardMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self.members enumerateObjectsUsingBlock:^(FrameMemberItem * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([obj.userId isEqualToString:userId]) {
            if ([obj.userId isEqualToString:userId]) {
                //: obj.member.nickname = nick;
                obj.member.nickname = nick;
                //: *stop = YES;
                *stop = YES;
            }
        //: }];
        }];
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_recessionVoiceValue)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleUpateUserMuteState:(NSError *)error
- (void)blue:(NSError *)error
                      //: completion:(NIMTeamListDataBlock)completion {
                      mute:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_recessionVoiceValue)];
    //: }else{
    }else{
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleFetchTeamMembers:(NSArray <NIMTeamMember *> *)members
- (void)view:(NSArray <NIMTeamMember *> *)members
                        //: option:(FFFMembersFetchOption *)option
                        quantityRange:(RecentBottomOption *)option
                         //: error:(NSError *)error
                         lengthPage:(NSError *)error
                    //: completion:(NIMTeamListDataBlock)completion{
                    ting:(NIMTeamListDataBlock)completion{
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (!error) {
    if (!error) {
        //: [self updateMembersWithOption:option members:members];
        [self last:option modify_strong:members];
    //: } else if (error.code == NIMRemoteErrorCodeTeamNotMember
    } else if (error.code == NIMRemoteErrorCodeTeamNotMember
               //: || error.code == NIMRemoteErrorCodeNotInTeam) {
               || error.code == NIMRemoteErrorCodeNotInTeam) {
        //: msg = @"你已经不在群里".nim_localized;
        msg = StringFromUniverseData(kStr_sateName).textKey;
    //: } else {
    } else {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: - (void)handleFetchMuteTeamMembers:(NSArray <NIMTeamMember *> *)members
- (void)nameState:(NSArray <NIMTeamMember *> *)members
                             //: error:(NSError *)error
                             questionCompletion:(NSError *)error
                        //: completion:(NIMTeamMuteListDataBlock)completion {
                        color:(NIMTeamMuteListDataBlock)completion {
    //: NSMutableArray *items = nil;
    NSMutableArray *items = nil;
    //: if (!error) {
    if (!error) {
        //: items = [NSMutableArray array];
        items = [NSMutableArray array];
        //: for (NIMTeamMember *member in members) {
        for (NIMTeamMember *member in members) {
            //: FFFTeamCardMemberItem *item = [[FFFTeamCardMemberItem alloc] initWithMember:member
            FrameMemberItem *item = [[FrameMemberItem alloc] initWithBringHomeSize:member
                                                                               //: teamType:_team.type];
                                                                               streetSmart:_team.type];
            //: [items addObject:item];
            [items addObject:item];
        }
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, items);
        completion(error, items);
    }
}

//: - (void)handleWithError:(NSError *)error
- (void)tingCompletion:(NSError *)error
             //: completion:(NIMTeamListDataBlock)completion {
             maxCancelDataBlock:(NIMTeamListDataBlock)completion {
    //: NSString *msg = nil;
    NSString *msg = nil;
    //: if (error) {
    if (error) {
        //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
        msg = [ItemManager sessionInformation:StringFromUniverseData(kStr_paleValue)];
    }
    //: if (completion) {
    if (completion) {
        //: completion(error, msg);
        completion(error, msg);
    }
}

//: #pragma mark - <FFFTeamOperation>
#pragma mark - <RecentHigh>
//: - (void)addUsers:(NSArray *)userIds
- (void)event:(NSArray *)userIds
            //: info:(NSDictionary *)info
            segment:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)block {
      addTable:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: NSString *postscript = info[@"postscript"];
    NSString *postscript = info[StringFromUniverseData(kStr_toxicFiceName)];
    //: NSString *attach = info[@"attach"];
    NSString *attach = info[StringFromUniverseData(kStr_booTodayValue)];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager addUsers:userIds
        [[NIMSDK sharedSDK].superTeamManager addUsers:userIds
                                               //: toTeam:teamId
                                               toTeam:teamId
                                           //: postscript:postscript
                                           postscript:postscript
                                               //: attach:attach
                                               attach:attach
                                           //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                           completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleAddUsers:error
            [weakSelf memebers:error
                            //: memebers:members
                            handleMaxCompletion:members
                          //: completion:block];
                          voteIn:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager addUsers:userIds
        [[NIMSDK sharedSDK].teamManager addUsers:userIds
                                          //: toTeam:teamId
                                          toTeam:teamId
                                      //: postscript:postscript
                                      postscript:postscript
                                          //: attach:attach
                                          attach:attach
                                      //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                      completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleAddUsers:error
            [weakSelf memebers:error
                            //: memebers:members
                            handleMaxCompletion:members
                          //: completion:block];
                          voteIn:block];
        //: }];
        }];
    }
}

//: - (void)kickUsers:(NSArray *)userIds
- (void)inputText:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)block {
       lozenge:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager kickUsers:userIds
        [[NIMSDK sharedSDK].superTeamManager kickUsers:userIds
                                              //: fromTeam:teamId
                                              fromTeam:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [wself handleKickUsers:userIds
            [wself ginMill:userIds
                             //: error:error
                             segment:error
                        //: completion:block];
                        fillIn:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager kickUsers:userIds
        [[NIMSDK sharedSDK].teamManager kickUsers:userIds
                                         //: fromTeam:teamId
                                         fromTeam:teamId
                                       //: completion:^(NSError *error) {
                                       completion:^(NSError *error) {
            //: [wself handleKickUsers:userIds
            [wself ginMill:userIds
                             //: error:error
                             segment:error
                        //: completion:block];
                        fillIn:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)tableGame:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)block {
                    scaleDataBlock:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: NSString *announcement = content ?: @"";
    NSString *announcement = content ?: @"";
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamAnnouncement:announcement
        [[NIMSDK sharedSDK].superTeamManager updateTeamAnnouncement:announcement
                                                             //: teamId:teamId
                                                             teamId:teamId
                                                         //: completion:^(NSError * _Nullable error) {
                                                         completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamAnnouncement:announcement
            [weakSelf jointCamera:announcement
                                             //: error:error
                                             lightCompletion:error
                                        //: completion:block];
                                        care:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:announcement
        [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:announcement
                                                        //: teamId:teamId
                                                        teamId:teamId
                                                    //: completion:^(NSError * _Nullable error) {
                                                    completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamAnnouncement:announcement
            [weakSelf jointCamera:announcement
                                             //: error:error
                                             lightCompletion:error
                                        //: completion:block];
                                        care:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)successLanguage:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)block {
              can:(NIMTeamListDataBlock)block {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:nil completion:^(NSString *urlString, NSError *error) {
    [[NIMSDK sharedSDK].resourceManager upload:filePath progress:nil completion:^(NSString *urlString, NSError *error) {
        //: if (!error && urlString && wself) {
        if (!error && urlString && wself) {

            //: if (wself.team.type == NIMTeamTypeSuper) {
            if (wself.team.type == NIMTeamTypeSuper) {
                    //: [[NIMSDK sharedSDK].superTeamManager updateTeamAvatar:urlString
                    [[NIMSDK sharedSDK].superTeamManager updateTeamAvatar:urlString
                                                                   //: teamId:wself.team.teamId
                                                                   teamId:wself.team.teamId
                                                               //: completion:^(NSError * _Nullable error) {
                                                               completion:^(NSError * _Nullable error) {
                    //: [wself handleUpdateTeamAvatar:urlString error:error completion:block];
                    [wself complete:urlString secretEnable:error video:block];
                //: }];
                }];
            //: } else {
            } else {
                //: [[NIMSDK sharedSDK].teamManager updateTeamAvatar:urlString
                [[NIMSDK sharedSDK].teamManager updateTeamAvatar:urlString
                                                          //: teamId:wself.team.teamId
                                                          teamId:wself.team.teamId
                                                      //: completion:^(NSError * _Nullable error) {
                                                      completion:^(NSError * _Nullable error) {
                    //: [wself handleUpdateTeamAvatar:urlString error:error completion:block];
                    [wself complete:urlString secretEnable:error video:block];
                //: }];
                }];
            }
        //: } else {
        } else {
            //: if (block) {
            if (block) {
                //: block(error, [FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]);
                block(error, [ItemManager sessionInformation:StringFromUniverseData(kStr_emptyFindText)]);
            }
        }
    //: }];
    }];
}

//: - (void)updateTeamName:(NSString *)name
- (void)file:(NSString *)name
            //: completion:(NIMTeamListDataBlock)block {
            with:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamName:name
        [[NIMSDK sharedSDK].superTeamManager updateTeamName:name
                                                     //: teamId:teamId
                                                     teamId:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamName:name
            [weakSelf team:name
                                     //: error:error
                                     red:error
                                //: completion:block];
                                contentCompletion:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamName:name
        [[NIMSDK sharedSDK].teamManager updateTeamName:name
                                                //: teamId:teamId
                                                teamId:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamName:name
            [weakSelf team:name
                                     //: error:error
                                     red:error
                                //: completion:block];
                                contentCompletion:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamNick:(NSString *)nick
- (void)basketballTeamFor:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)block {
            demonstrate:(NIMTeamListDataBlock)block {
    //: NSString *currentUserId = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *currentUserId = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateUserNick:currentUserId
        [[NIMSDK sharedSDK].superTeamManager updateUserNick:currentUserId
                                                    //: newNick:nick
                                                    newNick:nick
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNick:nick
            [weakSelf handleShadow:nick
                                     //: error:error
                                     reloadCompletion:error
                                //: completion:block];
                                length:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateUserNick:currentUserId
        [[NIMSDK sharedSDK].teamManager updateUserNick:currentUserId
                                               //: newNick:nick
                                               newNick:nick
                                                //: inTeam:teamId
                                                inTeam:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNick:nick
            [weakSelf handleShadow:nick
                                     //: error:error
                                     reloadCompletion:error
                                //: completion:block];
                                length:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamIntro:(NSString *)intro
- (void)towardBubble:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)block {
             titleCompletion:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamIntro:intro
        [[NIMSDK sharedSDK].superTeamManager updateTeamIntro:intro
                                                      //: teamId:teamId
                                                      teamId:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamIntro:intro
            [weakSelf achromaticColour:intro
                                      //: error:error
                                      slipUp:error
                                 //: completion:block];
                                 file:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamIntro:intro
        [[NIMSDK sharedSDK].teamManager updateTeamIntro:intro
                                                 //: teamId:teamId
                                                 teamId:teamId
                                             //: completion:^(NSError *error) {
                                             completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamIntro:intro
            [weakSelf achromaticColour:intro
                                      //: error:error
                                      slipUp:error
                                 //: completion:block];
                                 file:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamMute:(BOOL)mute
- (void)dateCompletion:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)block {
            option:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
                                                      //: inTeam:teamId
                                                      inTeam:teamId
                                                  //: completion:^(NSError * _Nullable error) {
                                                  completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamMute:error
            [weakSelf cropContent:error
                                //: completion:block];
                                baseballTeam:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:mute
        [[NIMSDK sharedSDK].teamManager updateMuteState:mute
                                                 //: inTeam:teamId
                                                 inTeam:teamId
                                             //: completion:^(NSError * _Nullable error) {
                                             completion:^(NSError * _Nullable error) {
            //: [weakSelf handleUpdateTeamMute:error
            [weakSelf cropContent:error
                                //: completion:block];
                                baseballTeam:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)on:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)block {
                thread:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;

    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamJoinMode:mode
        [[NIMSDK sharedSDK].superTeamManager updateTeamJoinMode:mode
                                                         //: teamId:teamId
                                                         teamId:teamId
                                                     //: completion:^(NSError *error) {
                                                     completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamJoinMode:mode
            [weakSelf modifyTing:mode
                                         //: error:error
                                         keyCompletion:error
                                    //: completion:block];
                                    complete:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamJoinMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamJoinMode:mode
                                                    //: teamId:teamId
                                                    teamId:teamId
                                                //: completion:^(NSError *error) {
                                                completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamJoinMode:mode
            [weakSelf modifyTing:mode
                                         //: error:error
                                         keyCompletion:error
                                    //: completion:block];
                                    complete:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)invite:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)block {
                  color:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self line:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamInviteMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamInviteMode:mode
                                                      //: teamId:teamId
                                                      teamId:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamInviteMode:mode
            [weakSelf tingRestore:mode
                                           //: error:error
                                           title:error
                                      //: completion:block];
                                      whiteNim:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)genus:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)block {
                should:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self line:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamUpdateInfoMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamUpdateInfoMode:mode
                                                          //: teamId:teamId
                                                          teamId:teamId
                                                      //: completion:^(NSError *error) {
                                                      completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamInfoMode:mode
            [weakSelf crew:mode
                                         //: error:error
                                         factoidInvite:error
                                    //: completion:block];
                                    ammunitionDataBlock:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)sizeTeam:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)block {
                    customTitle:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateTeamBeInviteMode:mode
        [[NIMSDK sharedSDK].superTeamManager updateTeamBeInviteMode:mode
                                                             //: teamId:teamId
                                                             teamId:teamId
                                                         //: completion:^(NSError *error) {
                                                         completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamBeInviteMode:mode
            [weakSelf keyMedia:mode
                                             //: error:error
                                             messageCompletion:error
                                        //: completion:block];
                                        invite:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateTeamBeInviteMode:mode
        [[NIMSDK sharedSDK].teamManager updateTeamBeInviteMode:mode
                                                        //: teamId:teamId
                                                        teamId:teamId
                                                    //: completion:^(NSError *error) {
                                                    completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamBeInviteMode:mode
            [weakSelf keyMedia:mode
                                             //: error:error
                                             messageCompletion:error
                                        //: completion:block];
                                        invite:block];
        //: }];
        }];
    }
}

//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)cell:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)block {
                   length:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateNotifyState:state
        [[NIMSDK sharedSDK].superTeamManager updateNotifyState:state
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNotifyState:state
            [weakSelf changeTag:state
                                            //: error:error
                                            view:error
                                       //: completion:block];
                                       menu:block];
         //: }];
         }];
    //: } else {
    } else {
        //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:state
        [[[NIMSDK sharedSDK] teamManager] updateNotifyState:state
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateTeamNotifyState:state
            [weakSelf changeTag:state
                                            //: error:error
                                            view:error
                                       //: completion:block];
                                       menu:block];
         //: }];
         }];
    }
}

//: - (void)addManagers:(NSArray *)userIds
- (void)behindData:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)block {
         enable:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager addManagersToTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager addManagersToTeam:teamId
                                                         //: users:userIds
                                                         users:userIds
                                                    //: completion:^(NSError *error) {
                                                    completion:^(NSError *error) {
            //: [weakSelf handleAddManagers:userIds
            [weakSelf ting:userIds
                                  //: error:error
                                  visualisationScale:error
                             //: completion:block];
                             completion:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager addManagersToTeam:teamId
        [[NIMSDK sharedSDK].teamManager addManagersToTeam:teamId
                                                    //: users:userIds
                                                    users:userIds
                                               //: completion:^(NSError *error) {
                                               completion:^(NSError *error) {
            //: [weakSelf handleAddManagers:userIds
            [weakSelf ting:userIds
                                  //: error:error
                                  visualisationScale:error
                             //: completion:block];
                             completion:block];
        //: }];
        }];
    }
}

//: - (void)removeManagers:(NSArray *)userIds
- (void)tinkle:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)block {
            file:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager removeManagersFromTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager removeManagersFromTeam:teamId
                                                              //: users:userIds
                                                              users:userIds
                                                         //: completion:^(NSError *error) {
                                                         completion:^(NSError *error) {
            //: [weakSelf handleRemoveManagers:userIds
            [weakSelf errorCompletion:userIds
                                     //: error:error
                                     completionFull:error
                                //: completion:block];
                                size:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager removeManagersFromTeam:teamId
        [[NIMSDK sharedSDK].teamManager removeManagersFromTeam:teamId
                                                         //: users:userIds
                                                         users:userIds
                                                    //: completion:^(NSError *error) {
                                                    completion:^(NSError *error) {
            //: [weakSelf handleRemoveManagers:userIds
            [weakSelf errorCompletion:userIds
                                     //: error:error
                                     completionFull:error
                                //: completion:block];
                                size:block];
        //: }];
        }];
    }
}

//: - (void)transferOwnerWithUserId:(NSString *)userId
- (void)value:(NSString *)userId
                          //: leave:(BOOL)leave
                          voiceCompletion:(BOOL)leave
                     //: completion:(NIMTeamListDataBlock)block {
                     range:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager transferManagerWithTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager transferManagerWithTeam:teamId
                                                          //: newOwnerId:userId
                                                          newOwnerId:userId
                                                             //: isLeave:leave
                                                             isLeave:leave
                                                          //: completion:^(NSError *error) {
                                                          completion:^(NSError *error) {
            //: [weakSelf handleTransferOwner:userId
            [weakSelf juggleBeCompletionTitle:userId
                                    //: leave:leave
                                    title:leave
                                    //: error:error
                                    dismiss:error
                               //: completion:block];
                               timeContent:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager transferManagerWithTeam:teamId
        [[NIMSDK sharedSDK].teamManager transferManagerWithTeam:teamId
                                                     //: newOwnerId:userId
                                                     newOwnerId:userId
                                                        //: isLeave:leave
                                                        isLeave:leave
                                                     //: completion:^(NSError *error) {
                                                     completion:^(NSError *error) {
            //: [weakSelf handleTransferOwner:userId
            [weakSelf juggleBeCompletionTitle:userId
                                    //: leave:leave
                                    title:leave
                                    //: error:error
                                    dismiss:error
                               //: completion:block];
                               timeContent:block];
        //: }];
        }];
    }
}



//: - (void)updateUserNick:(NSString *)userId
- (void)label:(NSString *)userId
                  //: nick:(NSString *)nick
                  doUtilizer:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)block {
            title:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager updateUserNick:userId
        [[NIMSDK sharedSDK].superTeamManager updateUserNick:userId
                                                    //: newNick:nick
                                                    newNick:nick
                                                     //: inTeam:teamId
                                                     inTeam:teamId
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
            //: [weakSelf handleUpdateUserNick:userId
            [weakSelf modifyCompletion:userId
                                      //: nick:nick
                                      nick:nick
                                     //: error:error
                                     of:error
                                //: completion:block];
                                parent:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateUserNick:userId
        [[NIMSDK sharedSDK].teamManager updateUserNick:userId
                                               //: newNick:nick
                                               newNick:nick
                                                //: inTeam:teamId
                                                inTeam:teamId
                                            //: completion:^(NSError *error) {
                                            completion:^(NSError *error) {
            //: [weakSelf handleUpdateUserNick:userId
            [weakSelf modifyCompletion:userId
                                      //: nick:nick
                                      nick:nick
                                     //: error:error
                                     of:error
                                //: completion:block];
                                parent:block];
        //: }];
        }];
    }
}

//: - (void)updateUserMuteState:(NSString *)userId
- (void)by:(NSString *)userId
                       //: mute:(BOOL)mute
                       packetCompletion:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)block {
                 sessionAdd:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: NSMutableArray *users = [NSMutableArray array];
        NSMutableArray *users = [NSMutableArray array];
        //: if (userId) {
        if (userId) {
            //: [users addObject:userId];
            [users addObject:userId];
        }
        //: [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:mute
                                                      //: userIds:users
                                                      userIds:users
                                                       //: inTeam:teamId
                                                       inTeam:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [weakSelf handleUpateUserMuteState:error
            [weakSelf blue:error
                                    //: completion:block];
                                    mute:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:mute
        [[NIMSDK sharedSDK].teamManager updateMuteState:mute
                                                 //: userId:userId
                                                 userId:userId
                                                 //: inTeam:teamId
                                                 inTeam:teamId
                                             //: completion:^(NSError *error) {
                                             completion:^(NSError *error) {
            //: [weakSelf handleUpateUserMuteState:error
            [weakSelf blue:error
                                    //: completion:block];
                                    mute:block];
         //: }];
         }];
    }
}

//: - (void)fetchTeamMembersWithOption:(FFFMembersFetchOption *)option
- (void)image:(RecentBottomOption *)option
                        //: completion:(NIMTeamListDataBlock)block {
                        titleSuccessDataBlock:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: NIMTeamFetchMemberOption *sdkOption = [[NIMTeamFetchMemberOption alloc] init];
        NIMTeamFetchMemberOption *sdkOption = [[NIMTeamFetchMemberOption alloc] init];
        //: sdkOption.offset = option.offset;
        sdkOption.offset = option.offset;
        //: sdkOption.count = option.count;
        sdkOption.count = option.count;
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamId
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamId
                                                       //: option:sdkOption
                                                       option:sdkOption
                                                   //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                                   completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleFetchTeamMembers:members
            [weakSelf view:members
                          //: option:option
                          quantityRange:option
                           //: error:error
                           lengthPage:error
                      //: completion:block];
                      ting:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamId
        [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamId
                                              //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                              completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: option.isRefresh = YES; 
            option.isRefresh = YES; //高级群全更新
            //: [weakSelf handleFetchTeamMembers:members
            [weakSelf view:members
                                      //: option:option
                                      quantityRange:option
                                       //: error:error
                                       lengthPage:error
                                  //: completion:block];
                                  ting:block];
        //: }];
        }];
    }
}

//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)block {
- (void)key:(NIMTeamMuteListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId
                                                        //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                                        completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleFetchMuteTeamMembers:members
            [weakSelf nameState:members
                                           //: error:error
                                           questionCompletion:error
                                      //: completion:block];
                                      color:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId
        [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId
                                                   //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                                   completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: [weakSelf handleFetchMuteTeamMembers:members
            [weakSelf nameState:members
                                           //: error:error
                                           questionCompletion:error
                                      //: completion:block];
                                      color:block];
        //: }];
        }];
    }
}

//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)block {
- (void)quitTag:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager quitTeam:teamId
        [[NIMSDK sharedSDK].superTeamManager quitTeam:teamId
                                           //: completion:^(NSError *error) {
                                           completion:^(NSError *error) {
            //: [weakSelf handleWithError:error
            [weakSelf tingCompletion:error
                           //: completion:block];
                           maxCancelDataBlock:block];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager quitTeam:teamId
        [[NIMSDK sharedSDK].teamManager quitTeam:teamId
                                      //: completion:^(NSError *error) {
                                      completion:^(NSError *error) {
            //: [weakSelf handleWithError:error
            [weakSelf tingCompletion:error
                           //: completion:block];
                           maxCancelDataBlock:block];
        //: }];
        }];
    }
}

//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)block {
- (void)message:(NIMTeamListDataBlock)block {
    //: NSString *teamId = _team.teamId;
    NSString *teamId = _team.teamId;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (_team.type == NIMTeamTypeSuper) {
    if (_team.type == NIMTeamTypeSuper) {
        //: [self handleUnsupport:block];
        [self line:block];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager dismissTeam:teamId
        [[NIMSDK sharedSDK].teamManager dismissTeam:teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {
            //: [weakSelf handleWithError:error completion:block];
            [weakSelf tingCompletion:error maxCancelDataBlock:block];
        //: }];
        }];
    }
}

//: #pragma mark - <FFFTeamMemberListDataSource>
#pragma mark - <FitSource>
//: - (NSInteger)memberNumber {
- (NSInteger)length {
    //: return [_team memberNumber];
    return [_team memberNumber];
}

//: #pragma mark - <NIMTeamManagerDelegate>
#pragma mark - <NIMTeamManagerDelegate>
//: - (void)onTeamUpdated:(NIMTeam *)team {
- (void)onTeamUpdated:(NIMTeam *)team {
    //: if (![team.teamId isEqualToString:_team.teamId]) {
    if (![team.teamId isEqualToString:_team.teamId]) {
        //: return;
        return;
    }
    //: _team = team;
    _team = team;
    //: [[NSNotificationCenter defaultCenter] postNotificationName:kNIMTeamListDataTeamInfoUpdate object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:kLet_tipActiveValue object:nil];
}

//: - (void)onTeamMemberChanged:(NIMTeam *)team {
- (void)onTeamMemberChanged:(NIMTeam *)team {
    //: if (![team.teamId isEqualToString:_team.teamId]) {
    if (![team.teamId isEqualToString:_team.teamId]) {
        //: return;
        return;
    }
    //: _team = team;
    _team = team;
    //: FFFMembersFetchOption *option = [[FFFMembersFetchOption alloc] init];
    RecentBottomOption *option = [[RecentBottomOption alloc] init];
    //: option.count = _members.count + 50;
    option.count = _members.count + 50;
    //: option.offset = 0;
    option.offset = 0;
    //: [self fetchTeamMembersWithOption:option completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
    [self image:option titleSuccessDataBlock:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: if (error) {
        if (error) {
            //: NSLog(@"warning: teamupdate user failed because userid is empty");
        //: } else {
        } else {
            //: [[NSNotificationCenter defaultCenter] postNotificationName:kNIMTeamListDataTeamMembersChanged object:nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:kLet_contentValue object:nil];
        }
    //: }];
    }];
}

//: @end
@end

Byte * UniverseDataToCache(Byte *data) {
    int viewHarshTitle = data[0];
    int retreatGross = data[1];
    Byte sizeHero = data[2];
    int withinDish = data[3];
    if (!viewHarshTitle) return data + withinDish;
    for (int i = withinDish; i < withinDish + retreatGross; i++) {
        int value = data[i] + sizeHero;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[withinDish + retreatGross] = 0;
    return data + withinDish;
}

NSString *StringFromUniverseData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)UniverseDataToCache(data)];
}
