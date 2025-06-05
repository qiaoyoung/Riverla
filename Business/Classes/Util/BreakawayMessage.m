// __DEBUG__
// __CLOSE_PRINT__
//
//  BreakawayMessage.m
//  NIM
//
//  Created by Netease on 15/8/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCADisplayLinkHolder.h"
#import "BreakawayMessage.h"

//: @implementation NTESCADisplayLinkHolder
@implementation BreakawayMessage
{
    //: CADisplayLink *_displayLink;
    CADisplayLink *_displayLink;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _frameInterval = 1;
        _frameInterval = 1;
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [self stop];
    [self actionPerformance];
    //: _delegate = nil;
    _delegate = nil;
}

//: - (void)startCADisplayLinkWithDelegate:(id<NTESCADisplayLinkHolderDelegate>)delegate
- (void)sendAdd:(id<MarginMDelegate>)delegate
{
    //: _delegate = delegate;
    _delegate = delegate;
    //: [self stop];
    [self actionPerformance];
    //: _displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(onDisplayLink:)];
    _displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(valueLocation:)];
    //: [_displayLink setFrameInterval:_frameInterval];
    [_displayLink setFrameInterval:_frameInterval];
    //: [_displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    [_displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
}

//: - (void)stop
- (void)actionPerformance
{
    //: if (_displayLink){
    if (_displayLink){
        //: [_displayLink invalidate];
        [_displayLink invalidate];
        //: _displayLink = nil;
        _displayLink = nil;
    }
}

//: - (void)onDisplayLink: (CADisplayLink *) displayLink
- (void)valueLocation: (CADisplayLink *) displayLink
{
    //: if (_delegate && [_delegate respondsToSelector:@selector(onDisplayLinkFire:duration:displayLink:)]){
    if (_delegate && [_delegate respondsToSelector:@selector(fileLink:message:container:)]){
        //: [_delegate onDisplayLinkFire:self
        [_delegate fileLink:self
                            //: duration:displayLink.duration
                            message:displayLink.duration
                         //: displayLink:displayLink];
                         container:displayLink];
    }
}

//: @end
@end