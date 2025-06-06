// __DEBUG__
// __CLOSE_PRINT__
//
//  BarHolder.h
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

//: @class FFFKitTimerHolder;
@class BarHolder;

//: @protocol FFFKitTimerHolderDelegate <NSObject>
@protocol MoveEvaluate <NSObject>
//: - (void)onNIMKitTimerFired:(FFFKitTimerHolder *)holder;
- (void)changes:(BarHolder *)holder;
//: @end
@end

//: @interface FFFKitTimerHolder : NSObject
@interface BarHolder : NSObject
//: @property (nonatomic,weak) id<FFFKitTimerHolderDelegate> timerDelegate;
@property (nonatomic,weak) id<MoveEvaluate> timerDelegate;

//: - (void)startTimer:(NSTimeInterval)seconds
- (void)name:(NSTimeInterval)seconds
          //: delegate:(id<FFFKitTimerHolderDelegate>)delegate
          up:(id<MoveEvaluate>)delegate
           //: repeats:(BOOL)repeats;
           from:(BOOL)repeats;

//: - (void)stopTimer;
- (void)empty;
//: @end
@end