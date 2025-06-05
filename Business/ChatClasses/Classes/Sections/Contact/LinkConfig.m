
#import <Foundation/Foundation.h>
typedef struct {
    Byte employ;
    Byte *polishOn;
    unsigned int twin;
    bool lag;
} RepresentationData;

NSString *StringFromRepresentationData(RepresentationData *data);


//: select_contact
RepresentationData kStr_adviserName = (RepresentationData){95, (Byte []){44, 58, 51, 58, 60, 43, 0, 60, 48, 49, 43, 62, 60, 43, 116}, 14, false};


//: 选择超限
RepresentationData kStr_spaShadowValue = (RepresentationData){7, (Byte []){238, 135, 142, 225, 140, 174, 239, 177, 130, 238, 158, 151, 28}, 12, false};


//: 选择群组
RepresentationData kStr_dualRelativelyName = (RepresentationData){89, (Byte []){176, 217, 208, 191, 210, 240, 190, 231, 253, 190, 226, 221, 67}, 12, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LinkConfig.m
// Notice
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectConfig.h"
#import "LinkConfig.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "UserGroupedData.h"
#import "InheritanceData.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "FFFKitInfoFetchOption.h"
#import "Option.h"
//: #import "FFFKitInfo.h"
#import "OriginBy.h"

//: @implementation NIMContactFriendSelectConfig : NSObject
@implementation CloseBack : NSObject

//: - (BOOL)isMutiSelected{
- (BOOL)compartment{
    //: return self.needMutiSelected;
    return self.needMutiSelected;
}

//: - (NSString *)title{
- (NSString *)toTing{
    //: return [FFFLanguageManager getTextWithKey:@"select_contact"];
    return [TeamManager sizeKey:StringFromRepresentationData(&kStr_adviserName)];
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)showColor{
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
- (NSString *)messageMessage{
    //: return @"选择超限".nim_localized;
    return StringFromRepresentationData(&kStr_spaShadowValue).positionMenu;
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)of:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    InheritanceData *groupedData = [[InheritanceData alloc] init];
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
    NSArray *friend_uids = [self m:myFriendArray];
    //: for (NSString *uid in friend_uids) {
    for (NSString *uid in friend_uids) {
        //: NIMGroupUser *user = [[NIMGroupUser alloc] initWithUserId:uid];
        UsufructuaryUser *user = [[UsufructuaryUser alloc] initWith:uid];
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
- (NSArray *)m:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(timeSelected)]) {
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
- (OriginBy *)will:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    OriginBy *info = nil;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:nil];
    info = [[Notice fullKit] value:selectedId manager:nil];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamMemberSelectConfig : NSObject
@implementation AppLength : NSObject

//: - (NSInteger)maxSelectedNum{
- (NSInteger)showColor{
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
- (NSString *)toTing{
    //: return [FFFLanguageManager getTextWithKey:@"select_contact"];
    return [TeamManager sizeKey:StringFromRepresentationData(&kStr_adviserName)];
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)messageMessage{
    //: return @"选择超限".nim_localized;
    return StringFromRepresentationData(&kStr_spaShadowValue).positionMenu;
}

//: - (void)getTeamContactDataWithTeamId:(NSString *)teamID
- (void)teamCenter:(NSString *)teamID
                            //: teamType:(NIMKitTeamType)teamType
                            chemicalElement:(NIMKitTeamType)teamType
                            //: handler:(NIMContactDataProviderHandler)handler {
                            somebodyPush:(NIMContactDataProviderHandler)handler {
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
                [weakSelf more:teamID
                                      //: uids:uids
                                      toProcessTeamUids:uids
                                   //: handler:handler];
                                   ting:handler];
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
                [weakSelf more:teamID
                                      //: uids:uids
                                      toProcessTeamUids:uids
                                   //: handler:handler];
                                   ting:handler];
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
- (void)more:(NSString *)teamId
                    //: uids:(NSMutableArray *)uids
                    toProcessTeamUids:(NSMutableArray *)uids
                 //: handler:(NIMContactDataProviderHandler)handler {
                 ting:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    InheritanceData *groupedData = [[InheritanceData alloc] init];
    //: NSMutableArray *membersArr = @[].mutableCopy;
    NSMutableArray *membersArr = @[].mutableCopy;
    //: NSArray *member_uids = [self filterData:uids];
    NSArray *member_uids = [self name:uids];
    //: for (NSString *uid in member_uids) {
    for (NSString *uid in member_uids) {
        //: NIMGroupTeamMember *user = [[NIMGroupTeamMember alloc] initWithUserId:uid
        IconFlush *user = [[IconFlush alloc] initWithToData:uid
                                                                       //: session:_session];
                                                                       value:_session];
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
- (void)of:(NIMContactDataProviderHandler)handler {
    //: [self getTeamContactDataWithTeamId:_teamId
    [self teamCenter:_teamId
                              //: teamType:_teamType
                              chemicalElement:_teamType
                               //: handler:handler];
                               somebodyPush:handler];
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)name:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(timeSelected)]) {
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
- (OriginBy *)will:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    OriginBy *info = nil;
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    Option *option = [[Option alloc] init];
    //: option.session = _session;
    option.session = _session;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:option];
    info = [[Notice fullKit] value:selectedId manager:option];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamSelectConfig : NSObject
@implementation InsertConfig : NSObject

//: - (NSString *)title{
- (NSString *)toTing{
    //: return @"选择群组".nim_localized;
    return StringFromRepresentationData(&kStr_dualRelativelyName).positionMenu;
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)showColor{
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
- (NSString *)messageMessage{
    //: return @"选择超限".nim_localized;
    return StringFromRepresentationData(&kStr_spaShadowValue).positionMenu;
}

//: - (NSArray *)getTeamIdsWithTeamType:(NIMKitTeamType)teamType {
- (NSArray *)breedOnBack:(NIMKitTeamType)teamType {
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
    return [self value:uids];
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)of:(NIMContactDataProviderHandler)handler {
    //: NSArray *tids = [self getTeamIdsWithTeamType:_teamType];
    NSArray *tids = [self breedOnBack:_teamType];
    //: if (tids.count == 0) {
    if (tids.count == 0) {
        //: return;
        return;
    }

    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    InheritanceData *groupedData = [[InheritanceData alloc] init];
    //: NSMutableArray <id <NIMGroupMemberProtocol>>*members = @[].mutableCopy;
    NSMutableArray <id <BoardMemberLayer>>*members = @[].mutableCopy;
    //: for (NSString *tid in tids) {
    for (NSString *tid in tids) {
        //: NIMGroupTeam *team = [[NIMGroupTeam alloc] initWithTeamId:tid teamType:_teamType];
        AtTeamBy *team = [[AtTeamBy alloc] initWithDateType:tid atPressed:_teamType];
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
- (NSArray *)value:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(timeSelected)]) {
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
- (OriginBy *)will:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    OriginBy *info = nil;
    //: if (_teamType == NIMKitTeamTypeNomal) {
    if (_teamType == NIMKitTeamTypeNomal) {
        //: info = [[MyUserKit sharedKit] infoByTeam:selectedId option:nil];
        info = [[Notice fullKit] title:selectedId commence:nil];
    //: } else if (_teamType == NIMKitTeamTypeSuper) {
    } else if (_teamType == NIMKitTeamTypeSuper) {
        //: info = [[MyUserKit sharedKit] infoBySuperTeam:selectedId option:nil];
        info = [[Notice fullKit] withOption:selectedId spaceOption:nil];
    }
    //: return info;
    return info;
}

//: @end
@end

Byte *RepresentationDataToByte(RepresentationData *data) {
    if (data->lag) return data->polishOn;
    for (int i = 0; i < data->twin; i++) {
        data->polishOn[i] ^= data->employ;
    }
    data->polishOn[data->twin] = 0;
    data->lag = true;
    return data->polishOn;
}

NSString *StringFromRepresentationData(RepresentationData *data) {
    return [NSString stringWithUTF8String:(char *)RepresentationDataToByte(data)];
}
