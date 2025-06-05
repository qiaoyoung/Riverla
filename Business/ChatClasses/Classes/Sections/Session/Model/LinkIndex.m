
#import <Foundation/Foundation.h>

NSString *StringFromArticularyData(Byte *data);


//: time
Byte kStr_awarenessTitle[] = {25, 4, 92, 13, 78, 1, 193, 27, 35, 251, 181, 199, 84, 208, 197, 201, 193, 58};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.m
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCellFactory.h"
#import "LinkIndex.h"
//: #import "FFFMessageModel.h"
#import "MaxLink.h"
//: #import "FFFTimestampModel.h"
#import "IndexIcon.h"
//: #import "FFFSessionAudioContentView.h"
#import "AggregationNameView.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "FFFKitAudioCenter.h"
#import "KitContainerCenter.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface FFFMessageCellFactory()
@interface LinkIndex()

//: @end
@end

//: @implementation FFFMessageCellFactory
@implementation LinkIndex

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{

}

//: - (FFFMessageCell *)cellInTable:(UITableView*)tableView
- (CompartmentInputView *)place:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model
                 reply:(MaxLink *)model
{
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
    //: NSString *identity = [layoutConfig cellContent:model];
    NSString *identity = [layoutConfig data:model];
    //: FFFMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    CompartmentInputView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"FFFAdvancedMessageCell";
        NSString *clz = @"PopTextView";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (FFFMessageCell *)cell;
    return (CompartmentInputView *)cell;
}

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (MMaxView *)showBubbleModel:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model
                            red:(IndexIcon *)model
{
    //: NSString *identity = @"time";
    NSString *identity = StringFromArticularyData(kStr_awarenessTitle);
    //: FFFSessionTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    MMaxView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"FFFSessionTimestampCell";
        NSString *clz = @"MMaxView";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell telecom:model];
    //: return (FFFSessionTimestampCell *)cell;
    return (MMaxView *)cell;
}

//: @end
@end

Byte * ArticularyDataToCache(Byte *data) {
    int reportCard = data[0];
    int kitBeach = data[1];
    Byte archer = data[2];
    int rift = data[3];
    if (!reportCard) return data + rift;
    for (int i = rift; i < rift + kitBeach; i++) {
        int value = data[i] - archer;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[rift + kitBeach] = 0;
    return data + rift;
}

NSString *StringFromArticularyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ArticularyDataToCache(data)];
}
