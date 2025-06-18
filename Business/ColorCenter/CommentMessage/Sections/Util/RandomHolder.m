// __DEBUG__
// __CLOSE_PRINT__
//
//  RandomHolder.m
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitTimerHolder.h"
#import "RandomHolder.h"

//: @interface FFFKitTimerHolder ()
@interface RandomHolder ()
{
    //: NSTimer *_timer;
    NSTimer *_timer;
    //: BOOL _repeats;
    BOOL _repeats;
}
//: - (void)onTimer: (NSTimer *)timer;
- (void)containerses: (NSTimer *)timer;
//: @end
@end

//: @implementation FFFKitTimerHolder
@implementation RandomHolder

//: - (void)dealloc
- (void)dealloc
{
    //: [self stopTimer];
    [self present];
}

//: - (void)startTimer: (NSTimeInterval)seconds
- (void)begin: (NSTimeInterval)seconds
          //: delegate: (id<FFFKitTimerHolderDelegate>)delegate
          computerFileContentImage: (id<OnAfter>)delegate
           //: repeats: (BOOL)repeats
           repeats: (BOOL)repeats
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
                                            selector:@selector(containerses:)
                                            //: userInfo:nil
                                            userInfo:nil
                                             //: repeats:repeats];
                                             repeats:repeats];
}

//: - (void)stopTimer
- (void)present
{
    //: [_timer invalidate];
    [_timer invalidate];
    //: _timer = nil;
    _timer = nil;
    //: _timerDelegate = nil;
    _timerDelegate = nil;
}

//: - (void)onTimer: (NSTimer *)timer
- (void)containerses: (NSTimer *)timer
{
    //: if (!_repeats)
    if (!_repeats)
    {
        //: _timer = nil;
        _timer = nil;
    }
    //: if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(onNIMKitTimerFired:)])
    if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(recording:)])
    {
        //: [_timerDelegate onNIMKitTimerFired:self];
        [_timerDelegate recording:self];
    }
}

//: @end
@end