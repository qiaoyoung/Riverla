//
//  FFFKitEvent.h
// NeeyoKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <NIMSDK/NIMSDK.h>
#import "FFFMessageModel.h"

@interface FFFKitEvent : NSObject

@property (nonatomic,copy) NSString *eventName;

@property (nonatomic,strong) FFFMessageModel *messageModel;

@property (nonatomic,strong) id data;

@end




extern NSString *const FFFKitEventNameTapContent;
extern NSString *const FFFKitEventNameTapLabelLink;
extern NSString *const FFFKitEventNameTapAudio;

extern NSString *const FFFKitEventNameTapRepliedContent;

