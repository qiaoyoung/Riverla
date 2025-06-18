
#import <Foundation/Foundation.h>

NSString *StringFromFrameAideFindData(Byte *data);


//: select_contact
Byte kStr_cousinOxygenName[] = {17, 14, 10, 127, 245, 125, 212, 215, 69, 203, 116, 99, 97, 116, 110, 111, 99, 95, 116, 99, 101, 108, 101, 115, 161};


//: 选择超限
Byte kStr_emptyBeefData[] = {17, 12, 4, 37, 144, 153, 233, 133, 182, 232, 169, 139, 230, 137, 128, 233, 90};


//: 选择群组
Byte kStr_keySateContent[] = {45, 12, 12, 3, 144, 105, 166, 65, 94, 128, 183, 185, 132, 187, 231, 164, 190, 231, 169, 139, 230, 137, 128, 233, 175};

// __DEBUG__
// __CLOSE_PRINT__
//
//  UndersurfacePoint.m
// Afterwards
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectConfig.h"
#import "UndersurfacePoint.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "UserGlobalMacro.h"
#import "UserGlobalMacro.h"
//: #import "UserGroupedData.h"
#import "ElementData.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "FFFKitInfoFetchOption.h"
#import "EmptyKey.h"
//: #import "FFFKitInfo.h"
#import "MarginThanInfo.h"

//: @implementation NIMContactFriendSelectConfig : NSObject
@implementation AtConfig : NSObject

//: - (BOOL)isMutiSelected{
- (BOOL)table{
    //: return self.needMutiSelected;
    return self.needMutiSelected;
}

//: - (NSString *)title{
- (NSString *)exceptWith{
    //: return [FFFLanguageManager getTextWithKey:@"select_contact"];
    return [ItemManager sessionInformation:StringFromFrameAideFindData(kStr_cousinOxygenName)];
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)maxEnable{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)dripModel{
    //: return @"选择超限".nim_localized;
    return StringFromFrameAideFindData(kStr_emptyBeefData).textKey;
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)eyeContactTeam:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    ElementData *groupedData = [[ElementData alloc] init];
    //: NSMutableArray *myFriendArray = @[].mutableCopy;
    NSMutableArray *myFriendArray = @[].mutableCopy;
    //: NSMutableArray *data = [NIMSDK sharedSDK].userManager.myFriends.mutableCopy;
    NSMutableArray *data = [NIMSDK sharedSDK].userManager.myFriends.mutableCopy;
    //: NSMutableArray *members = @[].mutableCopy;
    NSMutableArray *members = @[].mutableCopy;

    //: for (NIMUser *user in data) {
    for (NIMUser *user in data) {
        //: [myFriendArray addObject:user.userId];
        [myFriendArray addObject:user.userId];
    }
    //: NSArray *friend_uids = [self filterData:myFriendArray];
    NSArray *friend_uids = [self at:myFriendArray];
    //: for (NSString *uid in friend_uids) {
    for (NSString *uid in friend_uids) {
        //: NIMGroupUser *user = [[NIMGroupUser alloc] initWithUserId:uid];
        HumanitySize *user = [[HumanitySize alloc] initWithFrame:uid];
        //: [members addObject:user];
        [members addObject:user];
    }
    //: groupedData.members = members;
    groupedData.members = members;
    //: if (members) {
    if (members) {
        //: [members removeAllObjects];
        [members removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)at:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(accountTing)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (FFFKitInfo *)getInfoById:(NSString *)selectedId {
- (MarginThanInfo *)view:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    MarginThanInfo *info = nil;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:nil];
    info = [[Afterwards blue] put:selectedId button:nil];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamMemberSelectConfig : NSObject
@implementation RecentJoinerMessage : NSObject

//: - (NSInteger)maxSelectedNum{
- (NSInteger)maxEnable{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)title{
- (NSString *)exceptWith{
    //: return [FFFLanguageManager getTextWithKey:@"select_contact"];
    return [ItemManager sessionInformation:StringFromFrameAideFindData(kStr_cousinOxygenName)];
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)dripModel{
    //: return @"选择超限".nim_localized;
    return StringFromFrameAideFindData(kStr_emptyBeefData).textKey;
}

//: - (void)getTeamContactDataWithTeamId:(NSString *)teamID
- (void)spacingBegin:(NSString *)teamID
                            //: teamType:(NIMKitTeamType)teamType
                            breed:(NIMKitTeamType)teamType
                            //: handler:(NIMContactDataProviderHandler)handler {
                            click:(NIMContactDataProviderHandler)handler {
    //: __weak __typeof(&*self) weakSelf = self;;
    __weak __typeof(&*self) weakSelf = self;;
    //: NSMutableArray <NSString *>*uids = [NSMutableArray array];
    NSMutableArray <NSString *>*uids = [NSMutableArray array];
    //: if (teamType == NIMKitTeamTypeNomal) { 
    if (teamType == NIMKitTeamTypeNomal) { //普通群组
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamID
        [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamID
                                              //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                              completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: if (!error) {
            if (!error) {
                //: for (NIMTeamMember *member in members) {
                for (NIMTeamMember *member in members) {
                    //: if (member.userId) {
                    if (member.userId) {
                        //: [uids addObject:member.userId];
                        [uids addObject:member.userId];
                    }
                }
                //: [weakSelf didProcessTeamId:teamID
                [weakSelf team:teamID
                                      //: uids:uids
                                      abstractHide:uids
                                   //: handler:handler];
                                   address:handler];
            }
        //: }];
        }];
    //: } else if (teamType == NIMKitTeamTypeSuper) { 
    } else if (teamType == NIMKitTeamTypeSuper) { //超大群组
        //: NIMTeamFetchMemberOption *option = [[NIMTeamFetchMemberOption alloc] init];
        NIMTeamFetchMemberOption *option = [[NIMTeamFetchMemberOption alloc] init];
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamID option:option completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamID option:option completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: if (!error) {
            if (!error) {
                //: for (NIMTeamMember *member in members) {
                for (NIMTeamMember *member in members) {
                    //: if (member.userId) {
                    if (member.userId) {
                        //: [uids addObject:member.userId];
                        [uids addObject:member.userId];
                    }
                }
                //: [weakSelf didProcessTeamId:teamID
                [weakSelf team:teamID
                                      //: uids:uids
                                      abstractHide:uids
                                   //: handler:handler];
                                   address:handler];
            }
        //: }];
        }];
    //: } else {
    } else {
        //: if (handler) {
        if (handler) {
            //: handler(nil, nil);
            handler(nil, nil);
        }
    }
}

//: - (void)didProcessTeamId:(NSString *)teamId
- (void)team:(NSString *)teamId
                    //: uids:(NSMutableArray *)uids
                    abstractHide:(NSMutableArray *)uids
                 //: handler:(NIMContactDataProviderHandler)handler {
                 address:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    ElementData *groupedData = [[ElementData alloc] init];
    //: NSMutableArray *membersArr = @[].mutableCopy;
    NSMutableArray *membersArr = @[].mutableCopy;
    //: NSArray *member_uids = [self filterData:uids];
    NSArray *member_uids = [self color:uids];
    //: for (NSString *uid in member_uids) {
    for (NSString *uid in member_uids) {
        //: NIMGroupTeamMember *user = [[NIMGroupTeamMember alloc] initWithUserId:uid
        BottomMember *user = [[BottomMember alloc] initWithKeepContext:uid
                                                                       //: session:_session];
                                                                       tingEnable:_session];
        //: [membersArr addObject:user];
        [membersArr addObject:user];
    }
    //: groupedData.members = membersArr;
    groupedData.members = membersArr;
    //: if (membersArr) {
    if (membersArr) {
        //: [membersArr removeAllObjects];
        [membersArr removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)eyeContactTeam:(NIMContactDataProviderHandler)handler {
    //: [self getTeamContactDataWithTeamId:_teamId
    [self spacingBegin:_teamId
                              //: teamType:_teamType
                              breed:_teamType
                               //: handler:handler];
                               click:handler];
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)color:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(accountTing)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (FFFKitInfo *)getInfoById:(NSString *)selectedId {
- (MarginThanInfo *)view:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    MarginThanInfo *info = nil;
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    EmptyKey *option = [[EmptyKey alloc] init];
    //: option.session = _session;
    option.session = _session;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:option];
    info = [[Afterwards blue] put:selectedId button:option];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamSelectConfig : NSObject
@implementation EyeContactConfig : NSObject

//: - (NSString *)title{
- (NSString *)exceptWith{
    //: return @"选择群组".nim_localized;
    return StringFromFrameAideFindData(kStr_keySateContent).textKey;
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)maxEnable{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)dripModel{
    //: return @"选择超限".nim_localized;
    return StringFromFrameAideFindData(kStr_emptyBeefData).textKey;
}

//: - (NSArray *)getTeamIdsWithTeamType:(NIMKitTeamType)teamType {
- (NSArray *)info:(NIMKitTeamType)teamType {
    //: NSMutableArray *uids = [NSMutableArray array];
    NSMutableArray *uids = [NSMutableArray array];
    //: NSMutableArray *team_data = nil;
    NSMutableArray *team_data = nil;
    //: if (teamType == NIMKitTeamTypeNomal) {
    if (teamType == NIMKitTeamTypeNomal) {
        //: team_data = [[NIMSDK sharedSDK].teamManager.allMyTeams mutableCopy];
        team_data = [[NIMSDK sharedSDK].teamManager.allMyTeams mutableCopy];
    //: } else if (teamType == NIMKitTeamTypeSuper) {
    } else if (teamType == NIMKitTeamTypeSuper) {
        //: team_data = [[NIMSDK sharedSDK].superTeamManager.allMyTeams mutableCopy];
        team_data = [[NIMSDK sharedSDK].superTeamManager.allMyTeams mutableCopy];
    }

    //: for (NIMTeam *team in team_data) {
    for (NIMTeam *team in team_data) {
        //: if (team.teamId) {
        if (team.teamId) {
            //: [uids addObject:team.teamId];
            [uids addObject:team.teamId];
        }
    }
    //: return [self filterData:uids];
    return [self block:uids];
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)eyeContactTeam:(NIMContactDataProviderHandler)handler {
    //: NSArray *tids = [self getTeamIdsWithTeamType:_teamType];
    NSArray *tids = [self info:_teamType];
    //: if (tids.count == 0) {
    if (tids.count == 0) {
        //: return;
        return;
    }

    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    ElementData *groupedData = [[ElementData alloc] init];
    //: NSMutableArray <id <NIMGroupMemberProtocol>>*members = @[].mutableCopy;
    NSMutableArray <id <TingProtocol>>*members = @[].mutableCopy;
    //: for (NSString *tid in tids) {
    for (NSString *tid in tids) {
        //: NIMGroupTeam *team = [[NIMGroupTeam alloc] initWithTeamId:tid teamType:_teamType];
        SecondaryMajorsPowerhouseIndex *team = [[SecondaryMajorsPowerhouseIndex alloc] initWithMessage:tid visualisation:_teamType];
        //: [members addObject:team];
        [members addObject:team];
    }
    //: groupedData.members = members;
    groupedData.members = members;
    //: if (members) {
    if (members) {
        //: [members removeAllObjects];
        [members removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)block:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(accountTing)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (FFFKitInfo *)getInfoById:(NSString *)selectedId {
- (MarginThanInfo *)view:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    MarginThanInfo *info = nil;
    //: if (_teamType == NIMKitTeamTypeNomal) {
    if (_teamType == NIMKitTeamTypeNomal) {
        //: info = [[MyUserKit sharedKit] infoByTeam:selectedId option:nil];
        info = [[Afterwards blue] communication:selectedId bar:nil];
    //: } else if (_teamType == NIMKitTeamTypeSuper) {
    } else if (_teamType == NIMKitTeamTypeSuper) {
        //: info = [[MyUserKit sharedKit] infoBySuperTeam:selectedId option:nil];
        info = [[Afterwards blue] notInfo:selectedId crop_strong:nil];
    }
    //: return info;
    return info;
}

//: @end
@end

Byte * FrameAideFindDataToCache(Byte *data) {
    int toVoice = data[0];
    int blueLip = data[1];
    int restoreAide = data[2];
    if (!toVoice) return data + restoreAide;
    for (int i = 0; i < blueLip / 2; i++) {
        int begin = restoreAide + i;
        int end = restoreAide + blueLip - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[restoreAide + blueLip] = 0;
    return data + restoreAide;
}

NSString *StringFromFrameAideFindData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FrameAideFindDataToCache(data)];
}  
