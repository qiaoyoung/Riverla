//
//  NTESGroupedUsrInfo.m
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "FFFGroupedUsrInfo.h"
#import "FFFSpellingCenter.h"
#import "FFFKitInfoFetchOption.h"

@interface NIMGroupUser()

@property (nonatomic,copy)   NSString *userId;
@property (nonatomic,strong) FFFKitInfo *info;

@end

@implementation NIMGroupUser

- (instancetype)initWithUserId:(NSString *)userId{
    self = [super init];
    if (self) {
        _userId = userId;
        _info = [[MyUserKit sharedKit] infoByUser:userId option:nil];
    }
    return self;
}

- (NSString *)groupTitle{
    NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    unichar character = [title characterAtIndex:0];
    if (character >= 'A' && character <= 'Z') {
        return title;
    }else{
        return @"#";
    }
}

- (NSString *)showName{
    return self.info.showName;
}

- (NSString *)memberId{
    return self.userId;
}

- (id)sortKey{
    return [[FFFSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
}

- (UIImage *)avatarImage {
    return self.info.avatarImage;
}


- (NSString *)avatarUrlString {
    return self.info.avatarUrlString;
}


@end

@interface NIMGroupTeamMember()

@property (nonatomic,copy) NSString *userId;
@property (nonatomic,strong) FFFKitInfo *info;

@end

@implementation NIMGroupTeamMember

- (instancetype)initWithUserId:(NSString *)userId
                       session:(NIMSession *)session {
    self = [super init];
    if (self) {
        _userId = userId;
        FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        option.session = session;
        _info = [[MyUserKit sharedKit] infoByUser:userId option:option];
    }
    return self;
}

- (NSString *)groupTitle{
    NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    unichar character = [title characterAtIndex:0];
    if (character >= 'A' && character <= 'Z') {
        return title;
    }else{
        return @"#";
    }
}

- (id)sortKey{
    return [[FFFSpellingCenter sharedCenter] spellingForString:self.showName].shortSpelling;
}

- (NSString *)showName{
    return self.info.showName;
}

- (NSString *)memberId{
    return self.userId;
}

- (UIImage *)avatarImage {
    return self.info.avatarImage;
}

- (NSString *)avatarUrlString {
    return self.info.avatarUrlString;
}

@end

@interface NIMGroupTeam()

@property (nonatomic,copy) NSString *teamId;
@property (nonatomic,strong) FFFKitInfo *info;

@end

@implementation NIMGroupTeam

- (instancetype)initWithTeamId:(NSString *)teamId
                      teamType:(NIMKitTeamType)teamType {
    self = [super init];
    if (self) {
        _teamId = teamId;
        if (teamType == NIMKitTeamTypeNomal) {
            _info = [[MyUserKit sharedKit] infoByTeam:teamId option:nil];
        } else if (teamType == NIMKitTeamTypeSuper) {
            _info = [[MyUserKit sharedKit] infoBySuperTeam:teamId option:nil];
        }
    }
    return self;
}

- (NSString *)groupTitle{
    NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    unichar character = [title characterAtIndex:0];
    if (character >= 'A' && character <= 'Z') {
        return title;
    }else{
        return @"#";
    }
}

- (id)sortKey{
    return [[FFFSpellingCenter sharedCenter] spellingForString:[self showName]].shortSpelling;
}

- (NSString *)showName{
    return self.info.showName;
}

- (NSString *)memberId{
    return self.teamId;
}

- (UIImage *)avatarImage {
    return self.info.avatarImage;
}

- (NSString *)avatarUrlString {
    return self.info.avatarUrlString;
}

@end


