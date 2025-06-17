// __DEBUG__
// __CLOSE_PRINT__
//
//  RecentThanHolder.m
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTimerHolder.h"
#import "RecentThanHolder.h"

//: @interface NTESTimerHolder ()
@interface RecentThanHolder ()
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

//: @implementation NTESTimerHolder
@implementation RecentThanHolder

//: - (void)dealloc
- (void)dealloc
{
    //: [self stopTimer];
    [self with];
}

//: - (void)startTimer: (NSTimeInterval)seconds
- (void)startInsideTab: (NSTimeInterval)seconds
          //: delegate: (id<NTESTimerHolderDelegate>)delegate
          sass: (id<EmptyDelegate>)delegate
           //: repeats: (BOOL)repeats
           lyric: (BOOL)repeats
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
- (void)with
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
    //: if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(onNTESTimerFired:)])
    if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(recordingFired:)])
    {
        //: [_timerDelegate onNTESTimerFired:self];
        [_timerDelegate recordingFired:self];
    }
}

//: @end
@end