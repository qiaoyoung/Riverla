// __DEBUG__
// __CLOSE_PRINT__
//
//  OriginHolder.m
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTimerHolder.h"
#import "OriginHolder.h"

//: @interface NTESTimerHolder ()
@interface OriginHolder ()
{
    //: NSTimer *_timer;
    NSTimer *_timer;
    //: BOOL _repeats;
    BOOL _repeats;
}
//: - (void)onTimer: (NSTimer *)timer;
- (void)extraSecret: (NSTimer *)timer;
//: @end
@end

//: @implementation NTESTimerHolder
@implementation OriginHolder

//: - (void)dealloc
- (void)dealloc
{
    //: [self stopTimer];
    [self handleTop];
}

//: - (void)startTimer: (NSTimeInterval)seconds
- (void)message: (NSTimeInterval)seconds
          //: delegate: (id<NTESTimerHolderDelegate>)delegate
          content: (id<TingLayer>)delegate
           //: repeats: (BOOL)repeats
           title: (BOOL)repeats
{
    //: _timerDelegate = delegate;
    _timerDelegate = delegate;
    //: _repeats = repeats;
    _repeats = repeats;
    //: if (_timer)
    if (_timer)
    {
        //: [_timer invalidate];
        [_timer invalidate];
        //: _timer = nil;
        _timer = nil;
    }
    //: _timer = [NSTimer scheduledTimerWithTimeInterval:seconds
    _timer = [NSTimer scheduledTimerWithTimeInterval:seconds
                                              //: target:self
                                              target:self
                                            //: selector:@selector(onTimer:)
                                            selector:@selector(extraSecret:)
                                            //: userInfo:nil
                                            userInfo:nil
                                             //: repeats:repeats];
                                             repeats:repeats];
}

//: - (void)stopTimer
- (void)handleTop
{
    //: [_timer invalidate];
    [_timer invalidate];
    //: _timer = nil;
    _timer = nil;
    //: _timerDelegate = nil;
    _timerDelegate = nil;
}

//: - (void)onTimer: (NSTimer *)timer
- (void)extraSecret: (NSTimer *)timer
{
    //: if (!_repeats)
    if (!_repeats)
    {
        //: _timer = nil;
        _timer = nil;
    }
    //: if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(onNTESTimerFired:)])
    if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(values:)])
    {
        //: [_timerDelegate onNTESTimerFired:self];
        [_timerDelegate values:self];
    }
}

//: @end
@end