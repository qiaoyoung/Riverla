// __DEBUG__
// __CLOSE_PRINT__
//
//  UsrInfoData.m
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFUsrInfoData.h"
#import "FFFUsrInfoData.h"
//: #import "FFFSpellingCenter.h"
#import "WithCenter.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @implementation RiverlaUsrInfo
@implementation ItemInfo

//: - (BOOL)isFriend {
- (BOOL)should {
    //: NSArray *friends = [NIMSDK sharedSDK].userManager.myFriends;
    NSArray *friends = [NIMSDK sharedSDK].userManager.myFriends;
    //: for (NIMUser *user in friends) {
    for (NIMUser *user in friends) {
        //: if ([user.userId isEqualToString:self.info.infoId]) {
        if ([user.userId isEqualToString:self.info.infoId]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (NSString *)groupTitle {
- (NSString *)session {
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

//: - (NSString *)memberId{
- (NSString *)roundCell{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)showName{
- (NSString *)requestShow{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)avatarUrlString {
- (NSString *)team {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (UIImage *)avatarImage {
- (UIImage *)text {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (id)sortKey {
- (id)push {
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[WithCenter center] tap:self.info.showName].shortSpelling;
}

//: @end
@end