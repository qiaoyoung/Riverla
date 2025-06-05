// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexBar.h
// Notice
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
#import "MaxLink.h"

//: @interface FFFKitEvent : NSObject
@interface IndexBar : NSObject

//: @property (nonatomic,copy) NSString *eventName;
@property (nonatomic,copy) NSString *eventName;

//: @property (nonatomic,strong) FFFMessageModel *messageModel;
@property (nonatomic,strong) MaxLink *messageModel;

//: @property (nonatomic,strong) id data;
@property (nonatomic,strong) id data;

//: @end
@end




//: extern NSString *const FFFKitEventNameTapContent;
extern NSString *const let_arrowData;
//: extern NSString *const FFFKitEventNameTapLabelLink;
extern NSString *const let_moveCommentData;
//: extern NSString *const FFFKitEventNameTapAudio;
extern NSString *const let_managerTitle;

//: extern NSString *const FFFKitEventNameTapRepliedContent;
extern NSString *const let_pullTitle;