// __DEBUG__
// __CLOSE_PRINT__
//
//  KitContainerCenter.h
// Notice
//
//  Created by chris on 2017/1/13.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NIMMessage;
@class NIMMessage;

//: @interface FFFKitAudioCenter : NSObject
@interface KitContainerCenter : NSObject

//: @property (nonatomic,strong) NIMMessage *currentPlayingMessage;
@property (nonatomic,strong) NIMMessage *currentPlayingMessage;

//: + (instancetype)instance;
+ (instancetype)userInstance;

//: - (void)play:(NIMMessage *)message;
- (void)afterComment:(NIMMessage *)message;

//: @end
@end