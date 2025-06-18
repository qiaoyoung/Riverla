// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESGroupedUsrInfo.m
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UserGroupedUsrInfo.h"
#import "UserGroupedUsrInfo.h"
//: #import "FFFSpellingCenter.h"
#import "WithCenter.h"
//: #import "FFFKitInfoFetchOption.h"
#import "EmptyKey.h"

//: @interface NIMGroupUser()
@interface HumanitySize()

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) FFFKitInfo *info;
@property (nonatomic,strong) MarginThanInfo *info;

//: @end
@end

//: @implementation NIMGroupUser
@implementation HumanitySize

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithFrame:(NSString *)userId{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
        //: _info = [[MyUserKit sharedKit] infoByUser:userId option:nil];
        _info = [[Afterwards blue] put:userId button:nil];
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)groupTitle{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[WithCenter center] headerLetter:self.info.showName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (NSString *)showName{
- (NSString *)showName{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)memberId{
    //: return self.userId;
    return self.userId;
}

//: - (id)sortKey{
- (id)sortKey{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[WithCenter center] tap:self.info.showName].shortSpelling;
}

//: - (UIImage *)avatarImage {
- (UIImage *)text {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}


//: - (NSString *)avatarUrlString {
- (NSString *)team {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}


//: @end
@end

//: @interface NIMGroupTeamMember()
@interface BottomMember()

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) FFFKitInfo *info;
@property (nonatomic,strong) MarginThanInfo *info;

//: @end
@end

//: @implementation NIMGroupTeamMember
@implementation BottomMember

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithKeepContext:(NSString *)userId
                       //: session:(NIMSession *)session {
                       tingEnable:(NIMSession *)session {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        EmptyKey *option = [[EmptyKey alloc] init];
        //: option.session = session;
        option.session = session;
        //: _info = [[MyUserKit sharedKit] infoByUser:userId option:option];
        _info = [[Afterwards blue] put:userId button:option];
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)groupTitle{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    NSString *title = [[WithCenter center] headerLetter:self.showName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (id)sortKey{
- (id)sortKey{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:self.showName].shortSpelling;
    return [[WithCenter center] tap:self.showName].shortSpelling;
}

//: - (NSString *)showName{
- (NSString *)showName{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)memberId{
    //: return self.userId;
    return self.userId;
}

//: - (UIImage *)avatarImage {
- (UIImage *)text {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrlString {
- (NSString *)team {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: @end
@end

//: @interface NIMGroupTeam()
@interface SecondaryMajorsPowerhouseIndex()

//: @property (nonatomic,copy) NSString *teamId;
@property (nonatomic,copy) NSString *teamId;
//: @property (nonatomic,strong) FFFKitInfo *info;
@property (nonatomic,strong) MarginThanInfo *info;

//: @end
@end

//: @implementation NIMGroupTeam
@implementation SecondaryMajorsPowerhouseIndex

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithMessage:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType {
                      visualisation:(NIMKitTeamType)teamType {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = teamId;
        _teamId = teamId;
        //: if (teamType == NIMKitTeamTypeNomal) {
        if (teamType == NIMKitTeamTypeNomal) {
            //: _info = [[MyUserKit sharedKit] infoByTeam:teamId option:nil];
            _info = [[Afterwards blue] communication:teamId bar:nil];
        //: } else if (teamType == NIMKitTeamTypeSuper) {
        } else if (teamType == NIMKitTeamTypeSuper) {
            //: _info = [[MyUserKit sharedKit] infoBySuperTeam:teamId option:nil];
            _info = [[Afterwards blue] notInfo:teamId crop_strong:nil];
        }
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)groupTitle{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    NSString *title = [[WithCenter center] headerLetter:self.showName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (id)sortKey{
- (id)sortKey{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:[self showName]].shortSpelling;
    return [[WithCenter center] tap:[self showName]].shortSpelling;
}

//: - (NSString *)showName{
- (NSString *)showName{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)memberId{
    //: return self.teamId;
    return self.teamId;
}

//: - (UIImage *)avatarImage {
- (UIImage *)text {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrlString {
- (NSString *)team {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: @end
@end
