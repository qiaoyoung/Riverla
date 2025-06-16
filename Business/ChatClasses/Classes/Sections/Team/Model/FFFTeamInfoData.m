//
//  TeamInfoData.m
//  NIM
//
//  Created by chris on 15/6/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "FFFTeamInfoData.h"
#import "FFFSpellingCenter.h"

@implementation FFFTeamInfoData

- (instancetype)initWithTeam:(NIMTeam *)team{
    self = [super init];
    if (self) {
        _teamId = team.teamId;
        _teamName = team.teamName;
        _iconId = @"contact_group_header";
    }
    return self;
}

- (NSString *)groupTitle{
    NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.teamName].capitalizedString;
    unichar character = [title characterAtIndex:0];
    if (character >= 'A' && character <= 'Z') {
        return title;
    }else{
        return @"#";
    }

}

- (NSString *)memberId{
    return self.teamId;
}

- (id)sortKey{
    return [[FFFSpellingCenter sharedCenter] spellingForString:self.teamName].shortSpelling;
}

- (NSString *)usrId{
    return self.teamId;
}

- (NSString *)nick{
    return self.teamName;
}

- (NSString *)showName{
    return self.teamName;
}


@end
