
#import <Foundation/Foundation.h>
typedef struct {
    Byte refreshQuick;
    Byte *geneSuspect;
    unsigned int scoop;
    bool deject;
	int benefitRation;
	int significanceDestruct;
} BarData;

NSString *StringFromBarData(BarData *data);


//: time
BarData kStr_burningContent = (BarData){200, (Byte []){188, 161, 165, 173, 187}, 4, false, 10, 15};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.m
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCellFactory.h"
#import "ThanFactory.h"
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"
//: #import "FFFTimestampModel.h"
#import "ModelTimestampSupport.h"
//: #import "FFFSessionAudioContentView.h"
#import "LightTitleView.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "FFFKitAudioCenter.h"
#import "ColorCenter.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface FFFMessageCellFactory()
@interface ThanFactory()

//: @end
@end

//: @implementation FFFMessageCellFactory
@implementation ThanFactory

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
- (ImageViewCell *)notTableMessage:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model
                 voice:(StochasticProcessTeam *)model
{
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<TitleConfig> layoutConfig = [[Afterwards blue] layoutConfig];
    //: NSString *identity = [layoutConfig cellContent:model];
    NSString *identity = [layoutConfig aggregationTableColor:model];
    //: FFFMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    ImageViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"FFFAdvancedMessageCell";
        NSString *clz = @"BatteryMessageCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (FFFMessageCell *)cell;
    return (ImageViewCell *)cell;
}

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (TitleViewCell *)sub:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model
                            collection:(ModelTimestampSupport *)model
{
    //: NSString *identity = @"time";
    NSString *identity = StringFromBarData(&kStr_burningContent);
    //: FFFSessionTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    TitleViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"FFFSessionTimestampCell";
        NSString *clz = @"TitleViewCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell end:model];
    //: return (FFFSessionTimestampCell *)cell;
    return (TitleViewCell *)cell;
}

//: @end
@end

Byte *BarDataToByte(BarData *data) {
    if (data->deject) return data->geneSuspect;
    for (int i = 0; i < data->scoop; i++) {
        data->geneSuspect[i] ^= data->refreshQuick;
    }
    data->geneSuspect[data->scoop] = 0;
    data->deject = true;
	if (data->scoop >= 2) {
		data->benefitRation = data->geneSuspect[0];
		data->significanceDestruct = data->geneSuspect[1];
	}
    return data->geneSuspect;
}

NSString *StringFromBarData(BarData *data) {
    return [NSString stringWithUTF8String:(char *)BarDataToByte(data)];
}
