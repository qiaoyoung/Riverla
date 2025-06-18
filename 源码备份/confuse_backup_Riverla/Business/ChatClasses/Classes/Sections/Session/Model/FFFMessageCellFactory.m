//
//  FFFMessageCellMaker.m
// MyUserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import "FFFMessageCellFactory.h"
#import "FFFMessageModel.h"
#import "FFFTimestampModel.h"
#import "FFFSessionAudioContentView.h"
#import "MyUserKit.h"
#import "FFFKitAudioCenter.h"
#import "UIViewNimKit.h"

@interface FFFMessageCellFactory()

@end

@implementation FFFMessageCellFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)dealloc
{
    
}

- (FFFMessageCell *)cellInTable:(UITableView*)tableView
                 forMessageMode:(FFFMessageModel *)model
{
    id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    NSString *identity = [layoutConfig cellContent:model];
    FFFMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    if (!cell) {
        NSString *clz = @"FFFAdvancedMessageCell";
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }    
    return (FFFMessageCell *)cell;
}

- (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
                            forTimeModel:(FFFTimestampModel *)model
{
    NSString *identity = @"time";
    FFFSessionTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    if (!cell) {
        NSString *clz = @"FFFSessionTimestampCell";
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    [cell refreshData:model];
    return (FFFSessionTimestampCell *)cell;
}

@end
