
#import <Foundation/Foundation.h>

NSString *StringFromVictimData(Byte *data);


//: contact_group_header
Byte kStr_colorFlushName[] = {22, 20, 12, 236, 32, 18, 89, 181, 181, 183, 229, 221, 114, 101, 100, 97, 101, 104, 95, 112, 117, 111, 114, 103, 95, 116, 99, 97, 116, 110, 111, 99, 41};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamInfoData.m
//  NIM
//
//  Created by chris on 15/6/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamInfoData.h"
#import "StatusTitleData.h"
//: #import "FFFSpellingCenter.h"
#import "WithCenter.h"

//: @implementation FFFTeamInfoData
@implementation StatusTitleData

//: - (instancetype)initWithTeam:(NIMTeam *)team{
- (instancetype)initWithComplete:(NIMTeam *)team{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = team.teamId;
        _teamId = team.teamId;
        //: _teamName = team.teamName;
        _teamName = team.teamName;
        //: _iconId = @"contact_group_header";
        _iconId = StringFromVictimData(kStr_colorFlushName);
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)session{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.teamName].capitalizedString;
    NSString *title = [[WithCenter center] headerLetter:self.teamName].capitalizedString;
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

//: - (NSString *)memberId{
- (NSString *)roundCell{
    //: return self.teamId;
    return self.teamId;
}

//: - (id)sortKey{
- (id)push{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:self.teamName].shortSpelling;
    return [[WithCenter center] tap:self.teamName].shortSpelling;
}

//: - (NSString *)usrId{
- (NSString *)sight{
    //: return self.teamId;
    return self.teamId;
}

//: - (NSString *)nick{
- (NSString *)colorNick{
    //: return self.teamName;
    return self.teamName;
}

//: - (NSString *)showName{
- (NSString *)requestShow{
    //: return self.teamName;
    return self.teamName;
}


//: @end
@end

Byte * VictimDataToCache(Byte *data) {
    int suspectSizeAye = data[0];
    int totalKey = data[1];
    int charolais = data[2];
    if (!suspectSizeAye) return data + charolais;
    for (int i = 0; i < totalKey / 2; i++) {
        int begin = charolais + i;
        int end = charolais + totalKey - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[charolais + totalKey] = 0;
    return data + charolais;
}

NSString *StringFromVictimData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)VictimDataToCache(data)];
}  
