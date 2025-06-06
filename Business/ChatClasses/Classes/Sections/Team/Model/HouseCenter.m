
#import <Foundation/Foundation.h>

NSString *StringFromPatData(Byte *data);        


//: contact_group_header
Byte kStr_approachViewValue[] = {56, 20, 97, 12, 255, 50, 204, 193, 185, 190, 62, 82, 2, 14, 13, 19, 0, 2, 19, 254, 6, 17, 14, 20, 15, 254, 7, 4, 0, 3, 4, 17, 157};

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
#import "HouseCenter.h"
//: #import "FFFSpellingCenter.h"
#import "TeamIndex.h"

//: @implementation FFFTeamInfoData
@implementation HouseCenter

//: - (instancetype)initWithTeam:(NIMTeam *)team{
- (instancetype)initWithRecording:(NIMTeam *)team{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = team.teamId;
        _teamId = team.teamId;
        //: _teamName = team.teamName;
        _teamName = team.teamName;
        //: _iconId = @"contact_group_header";
        _iconId = StringFromPatData(kStr_approachViewValue);
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)groupTitle{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.teamName].capitalizedString;
    NSString *title = [[TeamIndex table] button:self.teamName].capitalizedString;
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
- (NSString *)memberId{
    //: return self.teamId;
    return self.teamId;
}

//: - (id)sortKey{
- (id)sortKey{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:self.teamName].shortSpelling;
    return [[TeamIndex table] imageName:self.teamName].shortSpelling;
}

//: - (NSString *)usrId{
- (NSString *)voice{
    //: return self.teamId;
    return self.teamId;
}

//: - (NSString *)nick{
- (NSString *)clearAction{
    //: return self.teamName;
    return self.teamName;
}

//: - (NSString *)showName{
- (NSString *)showName{
    //: return self.teamName;
    return self.teamName;
}


//: @end
@end

Byte * PatDataToCache(Byte *data) {
    int lameRev = data[0];
    int electricRima = data[1];
    Byte fessPress = data[2];
    int increase = data[3];
    if (!lameRev) return data + increase;
    for (int i = increase; i < increase + electricRima; i++) {
        int value = data[i] + fessPress;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[increase + electricRima] = 0;
    return data + increase;
}

NSString *StringFromPatData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PatDataToCache(data)];
}
