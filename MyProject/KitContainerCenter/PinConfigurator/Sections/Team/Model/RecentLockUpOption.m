// __DEBUG__
// __CLOSE_PRINT__
//
//  RecentLockUpOption.m
// Notice
//
//  Created by Netease on 2019/7/15.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMembersFetchOption.h"
#import "RecentLockUpOption.h"

//: @implementation FFFMembersFetchOption
@implementation RecentLockUpOption

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _offset = 0;
        _offset = 0;
        //: _count = -1;
        _count = -1;
        //: _isRefresh = YES;
        _isRefresh = YES;
    }
    //: return self;
    return self;
}

//: @end
@end