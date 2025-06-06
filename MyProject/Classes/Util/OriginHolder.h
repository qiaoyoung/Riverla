// __DEBUG__
// __CLOSE_PRINT__
//
//  OriginHolder.h
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//
//M80TimerHolder，管理某个Timer，功能为
//1.隐藏NSTimer,使得NSTimer只能retain M80TimerHolder
//2.对于非repeats的Timer,执行一次后自动释放Timer
//3.对于repeats的Timer,需要持有M80TimerHolder的对象在析构时调用[M80TimerHolder stopTimer]

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESTimerHolder;
@class OriginHolder;

//: @protocol NTESTimerHolderDelegate <NSObject>
@protocol TingLayer <NSObject>
//: - (void)onNTESTimerFired:(NTESTimerHolder *)holder;
- (void)values:(OriginHolder *)holder;
//: @end
@end

//: @interface NTESTimerHolder : NSObject
@interface OriginHolder : NSObject
//: @property (nonatomic,weak) id<NTESTimerHolderDelegate> timerDelegate;
@property (nonatomic,weak) id<TingLayer> timerDelegate;

//: - (void)startTimer:(NSTimeInterval)seconds
- (void)message:(NSTimeInterval)seconds
          //: delegate:(id<NTESTimerHolderDelegate>)delegate
          content:(id<TingLayer>)delegate
           //: repeats:(BOOL)repeats;
           title:(BOOL)repeats;

//: - (void)stopTimer;
- (void)handleTop;
//: @end
@end