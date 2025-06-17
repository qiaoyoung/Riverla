
#import <Foundation/Foundation.h>

NSString *StringFromGuessData(Byte *data);


//: Menlo
Byte kStr_hugeVoiceData[] = {33, 5, 10, 14, 167, 194, 90, 125, 112, 93, 133, 219, 93, 174, 87, 111, 120, 118, 121, 238};


//: %d FPS
Byte kStr_cruiseData[] = {13, 6, 11, 12, 34, 15, 73, 123, 48, 162, 188, 143, 48, 111, 43, 81, 91, 94, 205};

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexView.m
//  NIM
//
//  Created by chris on 15/11/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFPSLabel.h"
#import "IndexView.h"

//: @implementation NTESFPSLabel{
@implementation IndexView{
    //: CADisplayLink *_link;
    CADisplayLink *_link;
    //: NSUInteger _count;
    NSUInteger _count;
    //: NSTimeInterval _lastTime;
    NSTimeInterval _lastTime;
    //: UIFont *_font;
    UIFont *_font;
}


//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (frame.size.width == 0 && frame.size.height == 0) {
    if (frame.size.width == 0 && frame.size.height == 0) {
        //: frame.size = CGSizeMake(70, 20);
        frame.size = CGSizeMake(70, 20);
    }
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];

    //: self.textAlignment = NSTextAlignmentCenter;
    self.textAlignment = NSTextAlignmentCenter;
    //: self.userInteractionEnabled = NO;
    self.userInteractionEnabled = NO;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: _font = [UIFont fontWithName:@"Menlo" size:13];
    _font = [UIFont fontWithName:StringFromGuessData(kStr_hugeVoiceData) size:13];
    //: _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
    _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(asLast:)];
    //: [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    //: return self;
    return self;
}

//: - (void)invalidate
- (void)vertical
{
    //: [_link invalidate];
    [_link invalidate];
}

//: - (CGSize)sizeThatFits:(CGSize)size {
- (CGSize)sizeThatFits:(CGSize)size {
    //: return CGSizeMake(70, 20);;
    return CGSizeMake(70, 20);;
}

//: - (void)tick:(CADisplayLink *)link {
- (void)asLast:(CADisplayLink *)link {
    //: if (_lastTime == 0) {
    if (_lastTime == 0) {
        //: _lastTime = link.timestamp;
        _lastTime = link.timestamp;
        //: return;
        return;
    }

    //: _count++;
    _count++;
    //: NSTimeInterval delta = link.timestamp - _lastTime;
    NSTimeInterval delta = link.timestamp - _lastTime;
    //: if (delta < 1) return;
    if (delta < 1) return;
    //: _lastTime = link.timestamp;
    _lastTime = link.timestamp;
    //: float fps = _count / delta;
    float fps = _count / delta;
    //: _count = 0;
    _count = 0;


    //: self.text = [NSString stringWithFormat:@"%d FPS",(int)round(fps)];
    self.text = [NSString stringWithFormat:StringFromGuessData(kStr_cruiseData),(int)round(fps)];
}

//: @end
@end

Byte * GuessDataToCache(Byte *data) {
    int telegram = data[0];
    int textOutside = data[1];
    Byte fleshWithinBooValue = data[2];
    int tornContent = data[3];
    if (!telegram) return data + tornContent;
    for (int i = tornContent; i < tornContent + textOutside; i++) {
        int value = data[i] - fleshWithinBooValue;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[tornContent + textOutside] = 0;
    return data + tornContent;
}

NSString *StringFromGuessData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)GuessDataToCache(data)];
}
