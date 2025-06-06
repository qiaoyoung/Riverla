
#import <Foundation/Foundation.h>
typedef struct {
    Byte consumerName;
    Byte *priorVan;
    unsigned int liver;
    bool leap;
	int tractionSet;
	int discusDrink;
} LothData;

NSString *StringFromLothData(LothData *data);


//: %d FPS
LothData kStr_afraidContent = (LothData){245, (Byte []){208, 145, 213, 179, 165, 166, 10}, 6, false, 32, 12};


//: Menlo
LothData kStr_scaredName = (LothData){155, (Byte []){214, 254, 245, 247, 244, 189}, 5, false, 230, 218};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxMView.m
//  NIM
//
//  Created by chris on 15/11/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFPSLabel.h"
#import "MaxMView.h"

//: @implementation NTESFPSLabel{
@implementation MaxMView{
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
    _font = [UIFont fontWithName:StringFromLothData(&kStr_scaredName) size:13];
    //: _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
    _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(withing:)];
    //: [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    //: return self;
    return self;
}

//: - (void)invalidate
- (void)disabled
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
- (void)withing:(CADisplayLink *)link {
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
    self.text = [NSString stringWithFormat:StringFromLothData(&kStr_afraidContent),(int)round(fps)];
}

//: @end
@end

Byte *LothDataToByte(LothData *data) {
    if (data->leap) return data->priorVan;
    for (int i = 0; i < data->liver; i++) {
        data->priorVan[i] ^= data->consumerName;
    }
    data->priorVan[data->liver] = 0;
    data->leap = true;
	if (data->liver >= 2) {
		data->tractionSet = data->priorVan[0];
		data->discusDrink = data->priorVan[1];
	}
    return data->priorVan;
}

NSString *StringFromLothData(LothData *data) {
    return [NSString stringWithUTF8String:(char *)LothDataToByte(data)];
}
