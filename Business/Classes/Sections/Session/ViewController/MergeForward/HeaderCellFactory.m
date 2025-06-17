
#import <Foundation/Foundation.h>

NSString *StringFromAdjournData(Byte *data);        


//: time_ntes
Byte kStr_nimData[] = {18, 9, 3, 10, 146, 207, 198, 192, 104, 193, 113, 102, 106, 98, 92, 107, 113, 98, 112, 73};


//: _ntes
Byte kStr_barText[] = {10, 5, 59, 13, 219, 29, 83, 150, 178, 168, 223, 118, 61, 36, 51, 57, 42, 56, 130};

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeaderCellFactory.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageCellFactory.h"
#import "HeaderCellFactory.h"

//: @implementation NTESMessageCellFactory
@implementation HeaderCellFactory

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (CloseMessageCell *)inscription:(UITableView*)tableView
                         //: forMessageMode:(FFFMessageModel *)model {
                         compartmentData:(StochasticProcessTeam *)model {
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<TitleConfig> layoutConfig = [[Afterwards blue] layoutConfig];
    //: NSString *identity = [[layoutConfig cellContent:model] stringByAppendingString:@"_ntes"];
    NSString *identity = [[layoutConfig aggregationTableColor:model] stringByAppendingString:StringFromAdjournData(kStr_barText)];
    //: FFFMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    ImageViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESMergeMessageCell";
        NSString *clz = @"CloseMessageCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (NTESMergeMessageCell *)cell;
    return (CloseMessageCell *)cell;
}

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (PickApartViewCell *)ting:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model {
                            specialSession:(ModelTimestampSupport *)model {
    //: NSString *identity = @"time_ntes";
    NSString *identity = StringFromAdjournData(kStr_nimData);
    //: NTESTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    PickApartViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESTimestampCell";
        NSString *clz = @"PickApartViewCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell end:model];
    //: return (NTESTimestampCell *)cell;
    return (PickApartViewCell *)cell;
}

//: @end
@end

Byte * AdjournDataToCache(Byte *data) {
    int indexMessage = data[0];
    int requestDevice = data[1];
    Byte find = data[2];
    int top = data[3];
    if (!indexMessage) return data + top;
    for (int i = top; i < top + requestDevice; i++) {
        int value = data[i] + find;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[top + requestDevice] = 0;
    return data + top;
}

NSString *StringFromAdjournData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AdjournDataToCache(data)];
}
