//
//  FFFUsrInfoData.h
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "FFFContactDefines.h"
@class FFFKitInfo;

@interface NeeyoUsrInfo : NSObject <NIMGroupMemberProtocol>

@property (nonatomic,strong) FFFKitInfo *info;

- (BOOL)isFriend;

@end
