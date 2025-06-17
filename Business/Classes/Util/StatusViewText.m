
#import <Foundation/Foundation.h>

NSString *StringFromEndData(Byte *data);


//: withRequest
Byte kStr_casualtyValue[] = {13, 11, 11, 77, 192, 126, 183, 233, 54, 150, 59, 116, 115, 101, 117, 113, 101, 82, 104, 116, 105, 119, 89};


//: video_chat_push.mp3
Byte kStr_hugeConfirmValue[] = {70, 19, 11, 26, 228, 43, 91, 85, 53, 66, 108, 51, 112, 109, 46, 104, 115, 117, 112, 95, 116, 97, 104, 99, 95, 111, 101, 100, 105, 118, 72};

// __DEBUG__
// __CLOSE_PRINT__
//
//  StatusViewText.m
//  NIM
//
//  Created by amao on 2017/5/4.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESAVNotifier.h"
#import "StatusViewText.h"
//: #import "NTESGlobalMacro.h"
#import "NTESGlobalMacro.h"

//: @import AudioToolbox;
@import AudioToolbox;


//: static void VibrateCompletion(SystemSoundID soundID, void *data)
static void VibrateCompletion(SystemSoundID soundID, void *data)
{
    //: id notifier = (__bridge id)data;
    id notifier = (__bridge id)data;
    //: if([notifier isKindOfClass:[NTESAVNotifier class]])
    if([notifier isKindOfClass:[StatusViewText class]])
    {
        //: SEL selector = NSSelectorFromString(@"vibrate");
        SEL selector = NSSelectorFromString(StringFromEndData(kStr_casualtyValue));
        //: SuppressPerformSelectorLeakWarning([(NTESAVNotifier *)notifier performSelector:selector withObject:nil afterDelay:1.0]);
        SuppressPerformSelectorLeakWarning([(StatusViewText *)notifier performSelector:selector withObject:nil afterDelay:1.0]);
    }
}

//: @interface NTESAVNotifier ()
@interface StatusViewText ()
//: @property (nonatomic,strong) UILocalNotification *currentNotification;
@property (nonatomic,strong) UILocalNotification *currentNotification;
//: @property (nonatomic,assign) BOOL shouldStopVibrate;
@property (nonatomic,assign) BOOL shouldStopVibrate;
//: @property (nonatomic,assign) NSInteger vibrateCount;
@property (nonatomic,assign) NSInteger vibrateCount;

//: @end
@end

//: @implementation NTESAVNotifier
@implementation StatusViewText
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(willEnterForeground:)
                                                 selector:@selector(childs:)
                                                     //: name:UIApplicationWillEnterForegroundNotification
                                                     name:UIApplicationWillEnterForegroundNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)start:(NSString *)text
- (void)itemStart:(NSString *)text
{
    //: if ([[UIApplication sharedApplication] applicationState] != UIApplicationStateBackground)
    if ([[UIApplication sharedApplication] applicationState] != UIApplicationStateBackground)
    {
        //: return;
        return;
    }
    //: [self stop];
    [self show];
    //: _vibrateCount = 0;
    _vibrateCount = 0;
    //: _shouldStopVibrate = NO;
    _shouldStopVibrate = NO;
    //: [self raiseNotification:text];
    [self standardPoint:text];
    //: [self vibrate];
    [self withRequest];

}

//: - (void)stop
- (void)show
{
    //: if (_currentNotification)
    if (_currentNotification)
    {
        //: [[UIApplication sharedApplication] cancelLocalNotification:_currentNotification];
        [[UIApplication sharedApplication] cancelLocalNotification:_currentNotification];
        //: _currentNotification = nil;
        _currentNotification = nil;
    }
    //: _shouldStopVibrate = YES;
    _shouldStopVibrate = YES;
}

//: - (void)willEnterForeground:(NSNotification *)notification
- (void)childs:(NSNotification *)notification
{
    //: [self stop];
    [self show];
}

//: - (void)vibrate
- (void)withRequest
{
    //: if (!_shouldStopVibrate)
    if (!_shouldStopVibrate)
    {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, NULL, NULL, VibrateCompletion, (__bridge void *)self);
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, NULL, NULL, VibrateCompletion, (__bridge void *)self);

        //: _vibrateCount++;
        _vibrateCount++;
        //: if (_vibrateCount >= 15)
        if (_vibrateCount >= 15)
        {
            //: _shouldStopVibrate = YES;
            _shouldStopVibrate = YES;
        }
    }
}

//: - (void)raiseNotification:(NSString *)text
- (void)standardPoint:(NSString *)text
{
    //: _currentNotification = [[UILocalNotification alloc] init];
    _currentNotification = [[UILocalNotification alloc] init];
    //: _currentNotification.soundName = @"video_chat_push.mp3";
    _currentNotification.soundName = StringFromEndData(kStr_hugeConfirmValue);
    //: _currentNotification.alertBody = text;
    _currentNotification.alertBody = text;

    //: [[UIApplication sharedApplication] presentLocalNotificationNow:_currentNotification];
    [[UIApplication sharedApplication] presentLocalNotificationNow:_currentNotification];
}
//: @end
@end

Byte * EndDataToCache(Byte *data) {
    int statusRealize = data[0];
    int storeFind = data[1];
    int regular = data[2];
    if (!statusRealize) return data + regular;
    for (int i = 0; i < storeFind / 2; i++) {
        int begin = regular + i;
        int end = regular + storeFind - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[regular + storeFind] = 0;
    return data + regular;
}

NSString *StringFromEndData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)EndDataToCache(data)];
}  
