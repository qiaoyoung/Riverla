// __DEBUG__
// __CLOSE_PRINT__
//
//  KitOperation.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"

//: @interface FFFKitEvent : NSObject
@interface KitOperation : NSObject

//: @property (nonatomic,copy) NSString *eventName;
@property (nonatomic,copy) NSString *eventName;

//: @property (nonatomic,strong) FFFMessageModel *messageModel;
@property (nonatomic,strong) StochasticProcessTeam *messageModel;

//: @property (nonatomic,strong) id data;
@property (nonatomic,strong) id data;

//: @end
@end




//: extern NSString *const FFFKitEventNameTapContent;
extern NSString *const kLet_valueContextName;
//: extern NSString *const FFFKitEventNameTapLabelLink;
extern NSString *const kLet_channelValue;
//: extern NSString *const FFFKitEventNameTapAudio;
extern NSString *const kLet_trackName;

//: extern NSString *const FFFKitEventNameTapRepliedContent;
extern NSString *const kLet_joinData;