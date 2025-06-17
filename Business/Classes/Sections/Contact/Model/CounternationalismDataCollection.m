// __DEBUG__
// __CLOSE_PRINT__
//
//  CounternationalismDataCollection.m
//  NIM
//
//  Created by Xuhui on 15/3/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESGroupedContacts.h"
#import "CounternationalismDataCollection.h"
//: #import "NTESContactDataMember.h"
#import "SupportMember.h"

//: @interface NTESGroupedContacts ()
@interface CounternationalismDataCollection ()

//: @end
@end

//: @implementation NTESGroupedContacts
@implementation CounternationalismDataCollection

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if(self) {
    if(self) {
        //: self.groupTitleComparator = ^NSComparisonResult(NSString *title1, NSString *title2) {
        self.groupTitleComparator = ^NSComparisonResult(NSString *title1, NSString *title2) {
            //: if ([title1 isEqualToString:@"#"]) {
            if ([title1 isEqualToString:@"#"]) {
                //: return NSOrderedDescending;
                return NSOrderedDescending;
            }
            //: if ([title2 isEqualToString:@"#"]) {
            if ([title2 isEqualToString:@"#"]) {
                //: return NSOrderedAscending;
                return NSOrderedAscending;
            }
            //: return [title1 compare:title2];
            return [title1 compare:title2];
        //: };
        };
        //: self.groupMemberComparator = ^NSComparisonResult(NSString *key1, NSString *key2) {
        self.groupMemberComparator = ^NSComparisonResult(NSString *key1, NSString *key2) {
            //: return [key1 compare:key2];
            return [key1 compare:key2];
        //: };
        };
        //: [self update];
        [self model];
    }
    //: return self;
    return self;
}

//: - (void)update{
- (void)model{
    //: NSMutableArray *contacts = [NSMutableArray array];
    NSMutableArray *contacts = [NSMutableArray array];
    //: for (NIMUser *user in [NIMSDK sharedSDK].userManager.myFriends) {
    for (NIMUser *user in [NIMSDK sharedSDK].userManager.myFriends) {
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:user.userId option:nil];
        MarginThanInfo *info = [[Afterwards blue] put:user.userId button:nil];
        //: NTESContactDataMember *contact = [[NTESContactDataMember alloc] init];
        SupportMember *contact = [[SupportMember alloc] init];
        //: contact.info = info;
        contact.info = info;
        //: [contacts addObject:contact];
        [contacts addObject:contact];
    }
    //: [self setMembers:contacts];
    [self setMembers:contacts];
}


//: @end
@end