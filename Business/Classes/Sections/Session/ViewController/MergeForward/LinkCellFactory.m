
#import <Foundation/Foundation.h>

NSString *StringFromShoutData(Byte *data);


//: time_ntes
Byte kStr_drinkBelieValue[] = {29, 9, 62, 4, 178, 167, 171, 163, 157, 172, 178, 163, 177, 192};


//: _ntes
Byte kStr_evolveName[] = {28, 5, 95, 7, 166, 111, 171, 190, 205, 211, 196, 210, 37};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LinkCellFactory.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageCellFactory.h"
#import "LinkCellFactory.h"

//: @implementation NTESMessageCellFactory
@implementation LinkCellFactory

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (RecentMessageCell *)compartment:(UITableView*)tableView
                         //: forMessageMode:(FFFMessageModel *)model {
                         lengthSegment:(MaxLink *)model {
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<KeyChange> layoutConfig = [[Notice fullKit] layoutConfig];
    //: NSString *identity = [[layoutConfig cellContent:model] stringByAppendingString:@"_ntes"];
    NSString *identity = [[layoutConfig data:model] stringByAppendingString:StringFromShoutData(kStr_evolveName)];
    //: FFFMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    CompartmentInputView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESMergeMessageCell";
        NSString *clz = @"RecentMessageCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (NTESMergeMessageCell *)cell;
    return (RecentMessageCell *)cell;
}

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (NoticeMarginView *)limit:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model {
                            inwardModel:(IndexIcon *)model {
    //: NSString *identity = @"time_ntes";
    NSString *identity = StringFromShoutData(kStr_drinkBelieValue);
    //: NTESTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    NoticeMarginView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESTimestampCell";
        NSString *clz = @"NoticeMarginView";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell telecom:model];
    //: return (NTESTimestampCell *)cell;
    return (NoticeMarginView *)cell;
}

//: @end
@end

Byte * ShoutDataToCache(Byte *data) {
    int letter = data[0];
    int alienPretty = data[1];
    Byte gray = data[2];
    int daughter = data[3];
    if (!letter) return data + daughter;
    for (int i = daughter; i < daughter + alienPretty; i++) {
        int value = data[i] - gray;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[daughter + alienPretty] = 0;
    return data + daughter;
}

NSString *StringFromShoutData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ShoutDataToCache(data)];
}
