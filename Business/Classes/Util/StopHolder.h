// __DEBUG__
// __CLOSE_PRINT__
//
//  StopHolder.h
//  NIM
//
//  Created by Netease on 15/8/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESCADisplayLinkHolder;
@class StopHolder;

//: @protocol NTESCADisplayLinkHolderDelegate <NSObject>
@protocol ViewMessage <NSObject>

//: - (void)onDisplayLinkFire:(NTESCADisplayLinkHolder *)holder
- (void)custom:(StopHolder *)holder
                 //: duration:(NSTimeInterval)duration
                 link:(NSTimeInterval)duration
              //: displayLink:(CADisplayLink *)displayLink;
              request:(CADisplayLink *)displayLink;

//: @end
@end


//: @interface NTESCADisplayLinkHolder : NSObject
@interface StopHolder : NSObject

//: @property (nonatomic,weak ) id<NTESCADisplayLinkHolderDelegate> delegate;
@property (nonatomic,weak ) id<ViewMessage> delegate;
//: @property (nonatomic,assign) NSInteger frameInterval;
@property (nonatomic,assign) NSInteger frameInterval;

//: - (void)startCADisplayLinkWithDelegate: (id<NTESCADisplayLinkHolderDelegate>)delegate;
- (void)component: (id<ViewMessage>)delegate;

//: - (void)stop;
- (void)sound;

//: @end
@end