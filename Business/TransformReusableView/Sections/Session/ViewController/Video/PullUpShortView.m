
#import <Foundation/Foundation.h>

NSString *StringFromWillData(Byte *data);


//: AVLayerVideoGravityResizeAspect
Byte kStr_afterData[] = {4, 31, 5, 54, 178, 116, 99, 101, 112, 115, 65, 101, 122, 105, 115, 101, 82, 121, 116, 105, 118, 97, 114, 71, 111, 101, 100, 105, 86, 114, 101, 121, 97, 76, 86, 65, 138};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PullUpShortView.m
//  NIM
//
//  Created by Genning-Work on 2019/10/25.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESAVPlayerView.h"
#import "PullUpShortView.h"

//: @implementation NTESAVPlayerView
@implementation PullUpShortView
{
    //: NSString* _videoFillMode;
    NSString* _videoFillMode;
}

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _videoFillMode = @"AVLayerVideoGravityResizeAspect";
        _videoFillMode = StringFromWillData(kStr_afterData);
        // Initialization code
    }
    //: return self;
    return self;
}

//: + (Class)layerClass
+ (Class)layerClass
{
    //: return [AVPlayerLayer class];
    return [AVPlayerLayer class];
}

//: - (AVPlayer*)player
- (AVPlayer*)player
{
    //: return [(AVPlayerLayer*)[self layer] player];
    return [(AVPlayerLayer*)[self layer] player];
}

//: - (void)setPlayer:(AVPlayer*)player
- (void)setPlayer:(AVPlayer*)player
{
    //: if ([self player] != player) {
    if ([self player] != player) {
        //: [(AVPlayerLayer*)[self layer] setPlayer:player];
        [(AVPlayerLayer*)[self layer] setPlayer:player];
        //: [self setVideoFillMode:_videoFillMode];
        [self setHeader:_videoFillMode];
    }
}

/* Specifies how the video is displayed within a player layer’s bounds.
 (AVLayerVideoGravityResizeAspect is default) */
//: - (void)setVideoFillMode:(NSString *)fillMode
- (void)setHeader:(NSString *)fillMode
{
    //: _videoFillMode = fillMode;
    _videoFillMode = fillMode;

    //: AVPlayerLayer *playerLayer = (AVPlayerLayer*)[self layer];
    AVPlayerLayer *playerLayer = (AVPlayerLayer*)[self layer];
    //: playerLayer.videoGravity = fillMode;
    playerLayer.videoGravity = fillMode;
}

//: - (void)setContentMode:(UIViewContentMode)contentMode
- (void)setContentMode:(UIViewContentMode)contentMode
{
    //: [super setContentMode:contentMode];
    [super setContentMode:contentMode];

    //: switch (contentMode) {
    switch (contentMode) {
        //: case UIViewContentModeScaleToFill:
        case UIViewContentModeScaleToFill:
            //: [self setVideoFillMode:AVLayerVideoGravityResize];
            [self setHeader:AVLayerVideoGravityResize];
            //: break;
            break;
        //: case UIViewContentModeCenter:
        case UIViewContentModeCenter:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspect];
            [self setHeader:AVLayerVideoGravityResizeAspect];
            //: break;
            break;
        //: case UIViewContentModeScaleAspectFill:
        case UIViewContentModeScaleAspectFill:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspectFill];
            [self setHeader:AVLayerVideoGravityResizeAspectFill];
            //: break;
            break;
        //: case UIViewContentModeScaleAspectFit:
        case UIViewContentModeScaleAspectFit:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspect];
            [self setHeader:AVLayerVideoGravityResizeAspect];
        //: default:
        default:
            //: break;
            break;
    }
}

//: @end
@end

Byte * WillDataToCache(Byte *data) {
    int stack = data[0];
    int voxChange = data[1];
    int thoughtImage = data[2];
    if (!stack) return data + thoughtImage;
    for (int i = 0; i < voxChange / 2; i++) {
        int begin = thoughtImage + i;
        int end = thoughtImage + voxChange - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[thoughtImage + voxChange] = 0;
    return data + thoughtImage;
}

NSString *StringFromWillData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WillDataToCache(data)];
}  
