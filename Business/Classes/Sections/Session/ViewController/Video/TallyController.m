
#import <Foundation/Foundation.h>

NSString *StringFromWithShowData(Byte *data);        


//: playbackBufferEmpty
Byte kStr_sharedValueDisabledData[] = {8, 19, 19, 13, 142, 62, 150, 161, 100, 160, 68, 56, 51, 93, 89, 78, 102, 79, 78, 80, 88, 47, 98, 83, 83, 82, 95, 50, 90, 93, 97, 102, 147};


//: currentItem
Byte kStr_mustData[] = {7, 11, 10, 12, 184, 189, 119, 245, 91, 197, 210, 101, 89, 107, 104, 104, 91, 100, 106, 63, 106, 91, 99, 104};


//: playable
Byte kStr_lengthText[] = {8, 8, 64, 14, 171, 100, 127, 71, 46, 46, 153, 24, 99, 18, 48, 44, 33, 57, 33, 34, 44, 37, 35};


//: rate
Byte kStr_controlReferName[] = {3, 4, 7, 4, 107, 90, 109, 94, 139};


//: player item cancelled
Byte kStr_referData[] = {85, 21, 33, 4, 79, 75, 64, 88, 68, 81, 255, 72, 83, 68, 76, 255, 66, 64, 77, 66, 68, 75, 75, 68, 67, 132};


//: status
Byte kStr_findData[] = {14, 6, 15, 11, 98, 72, 254, 76, 21, 105, 10, 100, 101, 82, 101, 102, 100, 145};


//: AVMoviePlayer
Byte kStr_frameValue[] = {73, 13, 43, 10, 116, 21, 52, 103, 90, 12, 22, 43, 34, 68, 75, 62, 58, 37, 65, 54, 78, 58, 71, 165};


//: loadedTimeRanges
Byte kStr_requestText[] = {7, 16, 96, 8, 252, 8, 20, 83, 12, 15, 1, 4, 5, 4, 244, 9, 13, 5, 242, 1, 14, 7, 5, 19, 206};


//: playbackBufferFull
Byte kStr_buttonText[] = {10, 18, 41, 12, 47, 248, 83, 25, 105, 115, 217, 213, 71, 67, 56, 80, 57, 56, 58, 66, 25, 76, 61, 61, 60, 73, 29, 76, 67, 67, 119};


//: current player item is nil
Byte kStr_buttonContent[] = {99, 26, 33, 13, 66, 81, 207, 183, 18, 194, 30, 127, 17, 66, 84, 81, 81, 68, 77, 83, 255, 79, 75, 64, 88, 68, 81, 255, 72, 83, 68, 76, 255, 72, 82, 255, 77, 72, 75, 61};


//: playbackLikelyToKeepUp
Byte kStr_languageContent[] = {22, 22, 25, 8, 167, 54, 142, 32, 87, 83, 72, 96, 73, 72, 74, 82, 51, 80, 82, 76, 83, 96, 59, 86, 50, 76, 76, 87, 60, 87, 74};


//: error
Byte kStr_stackValue[] = {50, 5, 43, 4, 58, 71, 71, 68, 71, 214};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TallyController.m
//  NIM
//
//  Created by Genning-Work on 2019/10/25.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESAVMoivePlayerController.h"
#import "TallyController.h"
//: #import "NTESAVPlayerView.h"
#import "PullUpShortView.h"

//: static NSString *kErrorDomain = @"IJKAVMoviePlayer";
static NSString *kLet_maxData = @"IJKAVMoviePlayer";
//: static const NSInteger kEC_CurrentPlayerItemIsNil = 5001;
static const NSInteger kLet_cancelContent = 5001;
//: static const NSInteger kEC_PlayerItemCancelled = 5002;
static const NSInteger kLet_bottomErrorTitle = 5002;

//: static const float kMaxHighWaterMarkMilli = 15 * 1000;
static const float kLet_backFileName = 15 * 1000;

//: static void *KVO_AVPlayer_rate = &KVO_AVPlayer_rate;
static void *kLet_name = &kLet_name;
//: static void *KVO_AVPlayer_currentItem = &KVO_AVPlayer_currentItem;
static void *kLet_kitWindowValue = &kLet_kitWindowValue;
//: static void *KVO_AVPlayerItem_state = &KVO_AVPlayerItem_state;
static void *kLet_itemData = &kLet_itemData;
//: static void *KVO_AVPlayerItem_loadedTimeRanges = &KVO_AVPlayerItem_loadedTimeRanges;
static void *kLet_contentName = &kLet_contentName;
//: static void *KVO_AVPlayerItem_playbackLikelyToKeepUp = &KVO_AVPlayerItem_playbackLikelyToKeepUp;
static void *kLet_pathValue = &kLet_pathValue;
//: static void *KVO_AVPlayerItem_playbackBufferFull = &KVO_AVPlayerItem_playbackBufferFull;
static void *kLet_instanceWindowName = &kLet_instanceWindowName;
//: static void *KVO_AVPlayerItem_playbackBufferEmpty = &KVO_AVPlayerItem_playbackBufferEmpty;
static void *kLet_keyNameText = &kLet_keyNameText;

//: NSString *const NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification =
NSString *const kLet_arrowValue =
//: @"NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification";
@"NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification";
//: NSString *const NTESAVMoviePlayerPlaybackDidFinishNotification =
NSString *const kLet_objectMakeData =
//: @"NTESAVMoviePlayerPlaybackDidFinishNotification";
@"NTESAVMoviePlayerPlaybackDidFinishNotification";
//: NSString *const NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey =
NSString *const kLet_valueData =
//: @"NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey";
@"NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey";
//: NSString *const NTESAVMoviePlayerPlaybackStateDidChangeNotification =
NSString *const kLet_tableValue =
//: @"NTESAVMoviePlayerPlaybackStateDidChangeNotification";
@"NTESAVMoviePlayerPlaybackStateDidChangeNotification";
//: NSString *const NTESAVMoviePlayerLoadStateDidChangeNotification =
NSString *const kLet_resultTitle =
//: @"NTESAVMoviePlayerLoadStateDidChangeNotification";
@"NTESAVMoviePlayerLoadStateDidChangeNotification";

//: inline static BOOL isFloatZero(float value)
inline static BOOL isFloatZero(float value)
{
    //: return fabsf(value) <= 0.00001f;
    return fabsf(value) <= 0.00001f;
}

//: static dispatch_once_t _readyToPlayToken;
static dispatch_once_t kLet_outsideUserData;

//: @interface NTESAVMoivePlayerController ()
@interface TallyController ()
{
    //: BOOL _isPrerolling;
    BOOL _isPrerolling;
    //: BOOL _isSeeking;
    BOOL _isSeeking;
    //: BOOL _isError;
    BOOL _isError;
    //: BOOL _isCompleted;
    BOOL _isCompleted;
    //: BOOL _isShutdown;
    BOOL _isShutdown;

    //: BOOL _playbackLikelyToKeeyUp;
    BOOL _playbackLikelyToKeeyUp;
    //: BOOL _playbackBufferEmpty;
    BOOL _playbackBufferEmpty;
    //: BOOL _playbackBufferFull;
    BOOL _playbackBufferFull;
    //: BOOL _playingBeforeInterruption;
    BOOL _playingBeforeInterruption;

    //: NSTimeInterval _seekingTime;
    NSTimeInterval _seekingTime;
}
//: @property (nonatomic, strong) NSURL *playUrl;
@property (nonatomic, strong) NSURL *playUrl;
//: @property (nonatomic, strong) AVURLAsset *playAsset;
@property (nonatomic, strong) AVURLAsset *playAsset;
//: @property (nonatomic, strong) AVPlayerItem *playerItem;
@property (nonatomic, strong) AVPlayerItem *playerItem;

//: @property (nonatomic, strong) id timeObserve; 
@property (nonatomic, strong) id timeObserve; //监听播放进度

//: @property (nonatomic, strong) NTESAVPlayerView *view;
@property (nonatomic, strong) PullUpShortView *view;
//: @property (nonatomic, assign) NSInteger bufferingProgress;
@property (nonatomic, assign) NSInteger bufferingProgress;
//: @property (nonatomic, assign) BOOL isPreparedToPlay;
@property (nonatomic, assign) BOOL isPreparedToPlay;
//: @property (nonatomic, assign) NSTimeInterval duration;
@property (nonatomic, assign) NSTimeInterval duration;
//: @property (nonatomic, assign) NSTimeInterval playableDuration;
@property (nonatomic, assign) NSTimeInterval playableDuration;
//: @property (nonatomic, assign) NTESAVMoviePlaybackState playbackState;
@property (nonatomic, assign) NTESAVMoviePlaybackState playbackState;
//: @property (nonatomic, assign) NTESAVMovieLoadState loadState;
@property (nonatomic, assign) NTESAVMovieLoadState loadState;

//: @end
@end

//: @implementation NTESAVMoivePlayerController
@implementation TallyController

//: @synthesize currentPlaybackTime = _currentPlaybackTime;
@synthesize currentPlaybackTime = _currentPlaybackTime;

//: - (void)dealloc {
- (void)dealloc {
    //: [self shutdown];
    [self message];
}

//: - (id)initWithContentURL:(NSURL *)aUrl {
- (id)initWithHide:(NSURL *)aUrl {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _scalingMode = NTESAVMovieScalingModeAspectFit;
        _scalingMode = NTESAVMovieScalingModeAspectFit;
        //: _playUrl = aUrl;
        _playUrl = aUrl;
        //: _view = [[NTESAVPlayerView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _view = [[PullUpShortView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        //: _isPrerolling = NO;
        _isPrerolling = NO;
        //: _isSeeking = NO;
        _isSeeking = NO;
        //: _isError = NO;
        _isError = NO;
        //: _isCompleted = NO;
        _isCompleted = NO;
        //: _bufferingProgress = 0;
        _bufferingProgress = 0;
        //: _playbackLikelyToKeeyUp = NO;
        _playbackLikelyToKeeyUp = NO;
        //: _playbackBufferEmpty = YES;
        _playbackBufferEmpty = YES;
        //: _playbackBufferFull = NO;
        _playbackBufferFull = NO;
        //: _playbackRate = 1.0f;
        _playbackRate = 1.0f;
        //: _playbackVolume = 1.0f;
        _playbackVolume = 1.0f;
        //: _shouldAutoplay = YES;
        _shouldAutoplay = YES;
        //: [self setScreenOn:YES];
        [self setRecent:YES];
        //: [self registerApplicationObservers];
        [self genitorObservers];
    }
    //: return self;
    return self;
}

//: - (void)prepareToPlay {
- (void)prepareDetect {
    //: AVURLAsset *asset = [AVURLAsset URLAssetWithURL:_playUrl options:nil];
    AVURLAsset *asset = [AVURLAsset URLAssetWithURL:_playUrl options:nil];
    //: NSArray *requestedKeys = @[@"playable"];
    NSArray *requestedKeys = @[StringFromWithShowData(kStr_lengthText)];

    //: _playAsset = asset;
    _playAsset = asset;
    //: [asset loadValuesAsynchronouslyForKeys:requestedKeys
    [asset loadValuesAsynchronouslyForKeys:requestedKeys
                         //: completionHandler:^{
                         completionHandler:^{
                             //: dispatch_async( dispatch_get_main_queue(), ^{
                             dispatch_async( dispatch_get_main_queue(), ^{
                                 //: [self didPrepareToPlayAsset:asset withKeys:requestedKeys];
                                 [self kitThread:asset objectTeam:requestedKeys];
                                 //: [self setPlaybackVolume:_playbackVolume];
                                 [self setPlaybackVolume:_playbackVolume];
                             //: });
                             });
                         //: }];
                         }];
}

//: - (void)play {
- (void)needPlay {
    //: if (_isCompleted)
    if (_isCompleted)
    {
        //: _isCompleted = NO;
        _isCompleted = NO;
        //: [_player seekToTime:kCMTimeZero];
        [_player seekToTime:kCMTimeZero];
    }
    //: [_player play];
    [_player play];
}

//: - (void)pause {
- (void)imageMark {
    //: _isPrerolling = NO;
    _isPrerolling = NO;
    //: [_player pause];
    [_player pause];
}

//: - (void)stop {
- (void)request {
    //: [_player pause];
    [_player pause];
    //: [self setScreenOn:NO];
    [self setRecent:NO];
    //: _isCompleted = YES;
    _isCompleted = YES;
}

//: - (BOOL)isPlaying
- (BOOL)speedy
{
    //: if (!isFloatZero(_player.rate)) {
    if (!isFloatZero(_player.rate)) {
        //: return YES;
        return YES;
    //: } else {
    } else {
        //: if (_isPrerolling) {
        if (_isPrerolling) {
            //: return YES;
            return YES;
        //: } else {
        } else {
            //: return NO;
            return NO;
        }
    }
}

//: - (void)shutdown {
- (void)message {
    //: _isShutdown = YES;
    _isShutdown = YES;
    //: [self stop];
    [self request];

    //: if (_playerItem != nil) {
    if (_playerItem != nil) {
        //: [_playerItem cancelPendingSeeks];
        [_playerItem cancelPendingSeeks];
    }
    //: if (self.timeObserve) {
    if (self.timeObserve) {
        //: [self.player removeTimeObserver:self.timeObserve];
        [self.player removeTimeObserver:self.timeObserve];
        //: self.timeObserve = nil;
        self.timeObserve = nil;
    }

    //: [self removeItemKeyValueObservers];
    [self keyKit];
    //: [self removePlayerKeyValueObservers];
    [self path];
    //: [self unregisterApplicationObservers];
    [self index];

    //: [_view setPlayer:nil];
    [_view setPlayer:nil];
}

//: - (void)setCurrentPlaybackTime:(NSTimeInterval)aCurrentPlaybackTime
- (void)setCurrentPlaybackTime:(NSTimeInterval)aCurrentPlaybackTime
{
    //: if (!_player)
    if (!_player)
        //: return;
        return;

    //: _seekingTime = aCurrentPlaybackTime;
    _seekingTime = aCurrentPlaybackTime;
    //: _isSeeking = YES;
    _isSeeking = YES;
    //: _bufferingProgress = 0;
    _bufferingProgress = 0;
    //: [self didPlaybackStateChange];
    [self birthPlaybackItalianRegion];
    //: [self didLoadStateChange];
    [self handle];
    //: if (_isPrerolling) {
    if (_isPrerolling) {
        //: [_player pause];
        [_player pause];
    }

    //: [_player seekToTime:CMTimeMakeWithSeconds(aCurrentPlaybackTime, 1000000000ull)
    [_player seekToTime:CMTimeMakeWithSeconds(aCurrentPlaybackTime, 1000000000ull)
      //: completionHandler:^(BOOL finished) {
      completionHandler:^(BOOL finished) {
          //: dispatch_async(dispatch_get_main_queue(), ^{
          dispatch_async(dispatch_get_main_queue(), ^{
              //: _isSeeking = NO;
              _isSeeking = NO;
              //: if (_isPrerolling) {
              if (_isPrerolling) {
                  //: [_player play];
                  [_player play];
              }
              //: [self didPlaybackStateChange];
              [self birthPlaybackItalianRegion];
              //: [self didLoadStateChange];
              [self handle];
          //: });
          });
      //: }];
      }];
}

//: - (NSTimeInterval)currentPlaybackTime
- (NSTimeInterval)currentPlaybackTime
{
    //: if (!_player)
    if (!_player)
        //: return 0.0f;
        return 0.0f;

    //: if (_isSeeking)
    if (_isSeeking)
        //: return _seekingTime;
        return _seekingTime;

    //: return CMTimeGetSeconds([_player currentTime]);
    return CMTimeGetSeconds([_player currentTime]);
}

//: - (NTESAVMoviePlaybackState)playbackState
- (NTESAVMoviePlaybackState)playbackState
{
    //: if (!_player)
    if (!_player)
        //: return NTESAVMoviePlaybackStateStopped;
        return NTESAVMoviePlaybackStateStopped;

    //: NTESAVMoviePlaybackState mpState = NTESAVMoviePlaybackStateStopped;
    NTESAVMoviePlaybackState mpState = NTESAVMoviePlaybackStateStopped;
    //: if (_isCompleted) {
    if (_isCompleted) {
        //: mpState = NTESAVMoviePlaybackStateStopped;
        mpState = NTESAVMoviePlaybackStateStopped;
    //: } else if (_isSeeking) {
    } else if (_isSeeking) {
        //: mpState = NTESAVPMoviePlaybackStateSeekingForward;
        mpState = NTESAVPMoviePlaybackStateSeekingForward;
    //: } else if ([self isPlaying]) {
    } else if ([self speedy]) {
        //: mpState = NTESAVMoviePlaybackStatePlaying;
        mpState = NTESAVMoviePlaybackStatePlaying;
    //: } else {
    } else {
        //: mpState = NTESAVMoviePlaybackStatePaused;
        mpState = NTESAVMoviePlaybackStatePaused;
    }
    //: return mpState;
    return mpState;
}

//: - (NTESAVMovieLoadState)loadState
- (NTESAVMovieLoadState)loadState
{
    //: if (_player == nil)
    if (_player == nil)
        //: return NTESAVMovieLoadStateUnknown;
        return NTESAVMovieLoadStateUnknown;

    //: if (_isSeeking)
    if (_isSeeking)
        //: return NTESAVMovieLoadStateStalled;
        return NTESAVMovieLoadStateStalled;

    //: AVPlayerItem *playerItem = [_player currentItem];
    AVPlayerItem *playerItem = [_player currentItem];
    //: if (playerItem == nil)
    if (playerItem == nil)
        //: return NTESAVMovieLoadStateUnknown;
        return NTESAVMovieLoadStateUnknown;

    //: if (_player != nil && !isFloatZero(_player.rate)) {
    if (_player != nil && !isFloatZero(_player.rate)) {
        //: return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
        return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackBufferFull]) {
    } else if ([playerItem isPlaybackBufferFull]) {
        //: return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
        return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackLikelyToKeepUp]) {
    } else if ([playerItem isPlaybackLikelyToKeepUp]) {
        //: return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
        return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackBufferEmpty]) {
    } else if ([playerItem isPlaybackBufferEmpty]) {
        //: return NTESAVMovieLoadStateStalled;
        return NTESAVMovieLoadStateStalled;
    //: } else {
    } else {
        //: return NTESAVMovieLoadStateUnknown;
        return NTESAVMovieLoadStateUnknown;
    }
}

//: -(void)setPlaybackRate:(float)playbackRate
-(void)setPlaybackRate:(float)playbackRate
{
    //: _playbackRate = playbackRate;
    _playbackRate = playbackRate;
    //: if (_player != nil && !isFloatZero(_player.rate)) {
    if (_player != nil && !isFloatZero(_player.rate)) {
        //: _player.rate = _playbackRate;
        _player.rate = _playbackRate;
    }
}

//: -(void)setPlaybackVolume:(float)playbackVolume
-(void)setPlaybackVolume:(float)playbackVolume
{
    //: _playbackVolume = playbackVolume;
    _playbackVolume = playbackVolume;
    //: if (_player != nil && _player.volume != playbackVolume) {
    if (_player != nil && _player.volume != playbackVolume) {
        //: _player.volume = playbackVolume;
        _player.volume = playbackVolume;
    }
    //: BOOL muted = fabs(playbackVolume) < 1e-6;
    BOOL muted = fabs(playbackVolume) < 1e-6;
    //: if (_player != nil && _player.muted != muted) {
    if (_player != nil && _player.muted != muted) {
        //: _player.muted = muted;
        _player.muted = muted;
    }
}

//: - (void)setScalingMode: (NTESAVMovieScalingMode) aScalingMode
- (void)setScalingMode: (NTESAVMovieScalingMode) aScalingMode
{
    //: NTESAVMovieScalingMode newScalingMode = aScalingMode;
    NTESAVMovieScalingMode newScalingMode = aScalingMode;
    //: switch (aScalingMode) {
    switch (aScalingMode) {
        //: case NTESAVMovieScalingModeNone:
        case NTESAVMovieScalingModeNone:
            //: [_view setContentMode:UIViewContentModeCenter];
            [_view setContentMode:UIViewContentModeCenter];
            //: break;
            break;
        //: case NTESAVMovieScalingModeAspectFit:
        case NTESAVMovieScalingModeAspectFit:
            //: [_view setContentMode:UIViewContentModeScaleAspectFit];
            [_view setContentMode:UIViewContentModeScaleAspectFit];
            //: break;
            break;
        //: case NTESAVMovieScalingModeAspectFill:
        case NTESAVMovieScalingModeAspectFill:
            //: [_view setContentMode:UIViewContentModeScaleAspectFill];
            [_view setContentMode:UIViewContentModeScaleAspectFill];
            //: break;
            break;
        //: case NTESAVMovieScalingModeFill:
        case NTESAVMovieScalingModeFill:
            //: [_view setContentMode:UIViewContentModeScaleToFill];
            [_view setContentMode:UIViewContentModeScaleToFill];
            //: break;
            break;
        //: default:
        default:
            //: newScalingMode = _scalingMode;
            newScalingMode = _scalingMode;
    }
    //: _scalingMode = newScalingMode;
    _scalingMode = newScalingMode;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)setScreenOn: (BOOL)on
- (void)setRecent: (BOOL)on
{
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [UIApplication sharedApplication].idleTimerDisabled = YES;
        [UIApplication sharedApplication].idleTimerDisabled = YES;
    //: });
    });
}

//: - (void)didPrepareToPlayAsset:(AVURLAsset *)asset withKeys:(NSArray *)requestedKeys
- (void)kitThread:(AVURLAsset *)asset objectTeam:(NSArray *)requestedKeys
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: for (NSString *thisKey in requestedKeys)
    for (NSString *thisKey in requestedKeys)
    {
        //: NSError *error = nil;
        NSError *error = nil;
        //: AVKeyValueStatus keyStatus = [asset statusOfValueForKey:thisKey error:&error];
        AVKeyValueStatus keyStatus = [asset statusOfValueForKey:thisKey error:&error];
        //: if (keyStatus == AVKeyValueStatusFailed)
        if (keyStatus == AVKeyValueStatusFailed)
        {
            //: [self assetFailedToPrepareForPlayback:error];
            [self to:error];
            //: return;
            return;
        //: } else if (keyStatus == AVKeyValueStatusCancelled) {
        } else if (keyStatus == AVKeyValueStatusCancelled) {
            // TODO [AVAsset cancelLoading]
            //: error = [self createErrorWithCode:kEC_PlayerItemCancelled
            error = [self everyOmertaReason:kLet_bottomErrorTitle
                                  //: description:@"player item cancelled"
                                  load:StringFromWithShowData(kStr_referData)
                                       //: reason:nil];
                                       selected:nil];
            //: [self assetFailedToPrepareForPlayback:error];
            [self to:error];
            //: return;
            return;
        }
    }

    //: if (!asset.playable)
    if (!asset.playable)
    {
        //: NSError *assetCannotBePlayedError = [NSError errorWithDomain:@"AVMoviePlayer"
        NSError *assetCannotBePlayedError = [NSError errorWithDomain:StringFromWithShowData(kStr_frameValue)
                                                                //: code:0
                                                                code:0
                                                            //: userInfo:nil];
                                                            userInfo:nil];

        //: [self assetFailedToPrepareForPlayback:assetCannotBePlayedError];
        [self to:assetCannotBePlayedError];
        //: return;
        return;
    }

    //player item
    //: [self setupPlayerItem:asset];
    [self menu:asset];

    //player
    //: [self setupPlayer];
    [self canWith];

    //: _isCompleted = NO;
    _isCompleted = NO;

    //: if (_player.currentItem != _playerItem){
    if (_player.currentItem != _playerItem){
        //: [_player replaceCurrentItemWithPlayerItem:_playerItem];
        [_player replaceCurrentItemWithPlayerItem:_playerItem];
    }
}

//: - (void)setupPlayerItem:(AVURLAsset *)asset {
- (void)menu:(AVURLAsset *)asset {
    //: [self unregisterPlayerItemNoticationObservers];
    [self betwixt];
    //: [self removeItemKeyValueObservers];
    [self keyKit];
    //: _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    //: [self addItemKeyValueObservers];
    [self day];
    //: [self registerPlayerItemNoticationObservers];
    [self value];
}

//: - (void)setupPlayer {
- (void)canWith {
    //: if (!_player) {
    if (!_player) {
        //: _player = [AVPlayer playerWithPlayerItem:_playerItem];
        _player = [AVPlayer playerWithPlayerItem:_playerItem];
        //: [self addPlayerKeyValueObservers];
        [self range];

        //监听播放进度
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: self.timeObserve = [weakSelf.player addPeriodicTimeObserverForInterval:CMTimeMake(1, 1) queue:dispatch_get_main_queue() usingBlock:^(CMTime time) {
        self.timeObserve = [weakSelf.player addPeriodicTimeObserverForInterval:CMTimeMake(1, 1) queue:dispatch_get_main_queue() usingBlock:^(CMTime time) {
            //: CGFloat current = CMTimeGetSeconds(time);
            CGFloat current = CMTimeGetSeconds(time);
            //: CGFloat total = CMTimeGetSeconds(weakSelf.playerItem.duration);
            CGFloat total = CMTimeGetSeconds(weakSelf.playerItem.duration);
            //: _duration = current;
            _duration = current;

            //: if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(videoPlayertotalTime:)]) {
            if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(examples:)]) {
                //: [weakSelf.delegate videoPlayertotalTime:total];
                [weakSelf.delegate examples:total];
            }

            //: if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(videoPlayercurrentTime:)]) {
            if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(showing:)]) {
                //: [weakSelf.delegate videoPlayercurrentTime:current];
                [weakSelf.delegate showing:current];
            }
    //
    ////        /***** 这里是比较蛋疼的，当拖动滑块到没有缓冲的地方并且没有开始播放时，也会走到这里 *************/
    ////        if (weakSelf.isCanToGetLocalTime) {
    ////            weakSelf.localTime = [weakSelf getLocalTime];
    ////        }
    //        NSInteger timeNow = [weakSelf getLocalTime];
    //        if (timeNow - weakSelf.localTime > 1.5) {
    //            [weakSelf delegateDidEndBuffer];
    //            weakSelf.isCanToGetLocalTime = YES;
    //        }
        //: }];
        }];
    }
}

//: - (void)assetFailedToPrepareForPlayback:(NSError *)error
- (void)to:(NSError *)error
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: [self onError:error];
    [self underErrorView:error];
}

//: - (void)didPlaybackStateChange
- (void)birthPlaybackItalianRegion
{
    //: if (_playbackState != self.playbackState) {
    if (_playbackState != self.playbackState) {
        //: _playbackState = self.playbackState;
        _playbackState = self.playbackState;
        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:NTESAVMoviePlayerPlaybackStateDidChangeNotification
         postNotificationName:kLet_tableValue
         //: object:self];
         object:self];
    }
}

//: - (void)didLoadStateChange
- (void)handle
{
    //: [[NSNotificationCenter defaultCenter]
    [[NSNotificationCenter defaultCenter]
     //: postNotificationName:NTESAVMoviePlayerLoadStateDidChangeNotification
     postNotificationName:kLet_resultTitle
     //: object:self];
     object:self];
}

//: - (void)fetchLoadStateFromItem:(AVPlayerItem*)playerItem
- (void)will:(AVPlayerItem*)playerItem
{
    //: if (playerItem == nil)
    if (playerItem == nil)
        //: return;
        return;

    //: _playbackLikelyToKeeyUp = playerItem.isPlaybackLikelyToKeepUp;
    _playbackLikelyToKeeyUp = playerItem.isPlaybackLikelyToKeepUp;
    //: _playbackBufferEmpty = playerItem.isPlaybackBufferEmpty;
    _playbackBufferEmpty = playerItem.isPlaybackBufferEmpty;
    //: _playbackBufferFull = playerItem.isPlaybackBufferFull;
    _playbackBufferFull = playerItem.isPlaybackBufferFull;
}

//: - (void)didPlayableDurationUpdate
- (void)language
{
    //: NSTimeInterval currentPlaybackTime = self.currentPlaybackTime;
    NSTimeInterval currentPlaybackTime = self.currentPlaybackTime;
    //: int playableDurationMilli = (int)(self.playableDuration * 1000);
    int playableDurationMilli = (int)(self.playableDuration * 1000);
    //: int currentPlaybackTimeMilli = (int)(currentPlaybackTime * 1000);
    int currentPlaybackTimeMilli = (int)(currentPlaybackTime * 1000);

    //: int bufferedDurationMilli = playableDurationMilli - currentPlaybackTimeMilli;
    int bufferedDurationMilli = playableDurationMilli - currentPlaybackTimeMilli;
    //: if (bufferedDurationMilli > 0) {
    if (bufferedDurationMilli > 0) {
        //: self.bufferingProgress = bufferedDurationMilli * 100 / kMaxHighWaterMarkMilli;
        self.bufferingProgress = bufferedDurationMilli * 100 / kLet_backFileName;

        //: if (self.bufferingProgress > 100) {
        if (self.bufferingProgress > 100) {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (self.bufferingProgress > 100) {
                if (self.bufferingProgress > 100) {
                    //: if ([self isPlaying]) {
                    if ([self speedy]) {
                        //: _player.rate = _playbackRate;
                        _player.rate = _playbackRate;
                    }
                }
            //: });
            });
        }
    }
}

//拖动
//: - (void)seekToTimePlay:(float)toTime{
- (void)showView:(float)toTime{

    //: if (self.player) {
    if (self.player) {
//        [self.player pause];

        //: __weak typeof(self) weak_self = self;
        __weak typeof(self) weak_self = self;
        //: [self.player seekToTime:CMTimeMake(toTime, 1) completionHandler:^(BOOL finished) {
        [self.player seekToTime:CMTimeMake(toTime, 1) completionHandler:^(BOOL finished) {
            //: __strong typeof(weak_self) strong_self = weak_self;
            __strong typeof(weak_self) strong_self = weak_self;
            //: if (!strong_self) return;
            if (!strong_self) return;
//            [strong_self play];
        //: }];
        }];
    }
}

//: - (void)playerItemFailedToPlayToEndTime:(NSNotification *)notification
- (void)draftCopy:(NSNotification *)notification
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: [self onError:[notification.userInfo objectForKey:@"error"]];
    [self underErrorView:[notification.userInfo objectForKey:StringFromWithShowData(kStr_stackValue)]];
}

//: - (void)playerItemDidReachEnd:(NSNotification *)notification
- (void)elected:(NSNotification *)notification
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: _isCompleted = YES;
    _isCompleted = YES;

    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self didPlaybackStateChange];
        [self birthPlaybackItalianRegion];
        //: [self didLoadStateChange];
        [self handle];
        //: [self setScreenOn:NO];
        [self setRecent:NO];

        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:NTESAVMoviePlayerPlaybackDidFinishNotification
         postNotificationName:kLet_objectMakeData
         //: object:self
         object:self
         //: userInfo:@{
         userInfo:@{
                    //: NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey: @(NTESAVMovieFinishReasonPlaybackEnded)
                    kLet_valueData: @(NTESAVMovieFinishReasonPlaybackEnded)
                    //: }];
                    }];
    //: });
    });
}


//: #pragma mark app state changed
#pragma mark app state changed

//: - (void)registerApplicationObservers
- (void)genitorObservers
{
    //: NSNotificationCenter *notificationManager = [NSNotificationCenter defaultCenter];
    NSNotificationCenter *notificationManager = [NSNotificationCenter defaultCenter];
    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(audioSessionInterrupt:)
                             selector:@selector(taped:)
                                 //: name:AVAudioSessionInterruptionNotification
                                 name:AVAudioSessionInterruptionNotification
                               //: object:nil];
                               object:nil];

    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(applicationDidBecomeActive)
                             selector:@selector(indexFile)
                                 //: name:UIApplicationDidBecomeActiveNotification
                                 name:UIApplicationDidBecomeActiveNotification
                               //: object:nil];
                               object:nil];

    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(applicationDidEnterBackground)
                             selector:@selector(necessaryRange)
                                 //: name:UIApplicationDidEnterBackgroundNotification
                                 name:UIApplicationDidEnterBackgroundNotification
                               //: object:nil];
                               object:nil];
}

//: - (void)unregisterApplicationObservers
- (void)index
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)registerPlayerItemNoticationObservers {
- (void)value {
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(playerItemDidReachEnd:)
                                             selector:@selector(elected:)
                                                 //: name:AVPlayerItemDidPlayToEndTimeNotification
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               //: object:_playerItem];
                                               object:_playerItem];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(playerItemFailedToPlayToEndTime:)
                                             selector:@selector(draftCopy:)
                                                 //: name:AVPlayerItemFailedToPlayToEndTimeNotification
                                                 name:AVPlayerItemFailedToPlayToEndTimeNotification
                                               //: object:_playerItem];
                                               object:_playerItem];
}

//: - (void)unregisterPlayerItemNoticationObservers {
- (void)betwixt {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    //: name:nil
                                                    name:nil
                                                  //: object:_playerItem];
                                                  object:_playerItem];
}

//: - (void)audioSessionInterrupt:(NSNotification *)notification
- (void)taped:(NSNotification *)notification
{
    //: int reason = [[[notification userInfo] valueForKey:AVAudioSessionInterruptionTypeKey] intValue];
    int reason = [[[notification userInfo] valueForKey:AVAudioSessionInterruptionTypeKey] intValue];
    //: switch (reason) {
    switch (reason) {
        //: case AVAudioSessionInterruptionTypeBegan: {
        case AVAudioSessionInterruptionTypeBegan: {
            //: switch (self.playbackState) {
            switch (self.playbackState) {
                //: case NTESAVMoviePlaybackStatePaused:
                case NTESAVMoviePlaybackStatePaused:
                //: case NTESAVMoviePlaybackStateStopped:
                case NTESAVMoviePlaybackStateStopped:
                    //: _playingBeforeInterruption = NO;
                    _playingBeforeInterruption = NO;
                    //: break;
                    break;
                //: default:
                default:
                    //: _playingBeforeInterruption = YES;
                    _playingBeforeInterruption = YES;
                    //: break;
                    break;
            }
            //: [self pause];
            [self imageMark];
            //: break;
            break;
        }
        //: case AVAudioSessionInterruptionTypeEnded: {
        case AVAudioSessionInterruptionTypeEnded: {
            //: if (_playingBeforeInterruption) {
            if (_playingBeforeInterruption) {
                //: [self play];
                [self needPlay];
            }
            //: break;
            break;
        }
    }
}

//: - (void)applicationDidBecomeActive
- (void)indexFile
{
    //: [_view setPlayer:_player];
    [_view setPlayer:_player];
}

//: - (void)applicationDidEnterBackground
- (void)necessaryRange
{
    //: [_view setPlayer:nil];
    [_view setPlayer:nil];
    //: if (([[[UIDevice currentDevice] systemVersion] compare:@"9.0" options:NSNumericSearch] != NSOrderedAscending)) {
    if (([[[UIDevice currentDevice] systemVersion] compare:@"9.0" options:NSNumericSearch] != NSOrderedAscending)) {
        //: if ([self isPlaying]) {
        if ([self speedy]) {
            //: dispatch_after(dispatch_time((0ull), (int64_t)(2 * 1000000000ull)), dispatch_get_main_queue(), ^{
            dispatch_after(dispatch_time((0ull), (int64_t)(2 * 1000000000ull)), dispatch_get_main_queue(), ^{
                //: [self play];
                [self needPlay];
            //: });
            });
        }
    }
}

//: #pragma mark KVO
#pragma mark KVO

//: - (void)addPlayerKeyValueObservers {
- (void)range {
    //: [_player addObserver:self
    [_player addObserver:self
                  //: forKeyPath:@"currentItem"
                  forKeyPath:StringFromWithShowData(kStr_mustData)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayer_currentItem];
                     context:kLet_kitWindowValue];


    //: [_player addObserver:self
    [_player addObserver:self
              //: forKeyPath:@"rate"
              forKeyPath:StringFromWithShowData(kStr_controlReferName)
                 //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                 options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                 //: context:KVO_AVPlayer_rate];
                 context:kLet_name];
}

//: - (void)removePlayerKeyValueObservers {
- (void)path {
    //: [_player removeObserver:self forKeyPath:@"currentItem" context:KVO_AVPlayer_currentItem];
    [_player removeObserver:self forKeyPath:StringFromWithShowData(kStr_mustData) context:kLet_kitWindowValue];
    //: [_player removeObserver:self forKeyPath:@"rate" context:KVO_AVPlayer_rate];
    [_player removeObserver:self forKeyPath:StringFromWithShowData(kStr_controlReferName) context:kLet_name];
}

//: - (void)addItemKeyValueObservers {
- (void)day {
    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"status"
                  forKeyPath:StringFromWithShowData(kStr_findData)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_state];
                     context:kLet_itemData];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"loadedTimeRanges"
                  forKeyPath:StringFromWithShowData(kStr_requestText)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_loadedTimeRanges];
                     context:kLet_contentName];


    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackLikelyToKeepUp"
                  forKeyPath:StringFromWithShowData(kStr_languageContent)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackLikelyToKeepUp];
                     context:kLet_pathValue];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackBufferEmpty"
                  forKeyPath:StringFromWithShowData(kStr_sharedValueDisabledData)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackBufferEmpty];
                     context:kLet_keyNameText];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackBufferFull"
                  forKeyPath:StringFromWithShowData(kStr_buttonText)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackBufferFull];
                     context:kLet_instanceWindowName];
}

//: - (void)removeItemKeyValueObservers {
- (void)keyKit {
    //: [_playerItem removeObserver:self forKeyPath:@"status" context:KVO_AVPlayerItem_state];
    [_playerItem removeObserver:self forKeyPath:StringFromWithShowData(kStr_findData) context:kLet_itemData];
    //: [_playerItem removeObserver:self forKeyPath:@"loadedTimeRanges" context:KVO_AVPlayerItem_loadedTimeRanges];
    [_playerItem removeObserver:self forKeyPath:StringFromWithShowData(kStr_requestText) context:kLet_contentName];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackLikelyToKeepUp" context:KVO_AVPlayerItem_playbackLikelyToKeepUp];
    [_playerItem removeObserver:self forKeyPath:StringFromWithShowData(kStr_languageContent) context:kLet_pathValue];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackBufferEmpty" context:KVO_AVPlayerItem_playbackBufferEmpty];
    [_playerItem removeObserver:self forKeyPath:StringFromWithShowData(kStr_sharedValueDisabledData) context:kLet_keyNameText];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackBufferFull" context:KVO_AVPlayerItem_playbackBufferFull];
    [_playerItem removeObserver:self forKeyPath:StringFromWithShowData(kStr_buttonText) context:kLet_instanceWindowName];
}

//: - (void)observeValueForKeyPath:(NSString*)path
- (void)observeValueForKeyPath:(NSString*)path
                      //: ofObject:(id)object
                      ofObject:(id)object
                        //: change:(NSDictionary*)change
                        change:(NSDictionary*)change
                       //: context:(void*)context
                       context:(void*)context
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: if (context == KVO_AVPlayerItem_state)
    if (context == kLet_itemData)
    {
        /* AVPlayerItem "status" property value observer. */
        //: AVPlayerItemStatus status = [[change objectForKey:NSKeyValueChangeNewKey] integerValue];
        AVPlayerItemStatus status = [[change objectForKey:NSKeyValueChangeNewKey] integerValue];
        //: switch (status)
        switch (status)
        {
            //: case AVPlayerItemStatusUnknown:
            case AVPlayerItemStatusUnknown:
            {
                /* Indicates that the status of the player is not yet known because
                 it has not tried to load new media resources for playback */
            }
                //: break;
                break;

            //: case AVPlayerItemStatusReadyToPlay:
            case AVPlayerItemStatusReadyToPlay:
            {
                /* Once the AVPlayerItem becomes ready to play, i.e.
                 [playerItem status] == AVPlayerItemStatusReadyToPlay,
                 its duration can be fetched from the item. */
                //: _dispatch_once(&_readyToPlayToken, ^{
                _dispatch_once(&kLet_outsideUserData, ^{
                    //: [_view setPlayer:_player];
                    [_view setPlayer:_player];

                    //: self.isPreparedToPlay = YES;
                    self.isPreparedToPlay = YES;
                    //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
                    AVPlayerItem *playerItem = (AVPlayerItem *)object;
                    //: NSTimeInterval duration = CMTimeGetSeconds(playerItem.duration);
                    NSTimeInterval duration = CMTimeGetSeconds(playerItem.duration);
                    //: if (duration <= 0)
                    if (duration <= 0)
                        //: self.duration = 0.0f;
                        self.duration = 0.0f;
                    //: else
                    else
                        //: self.duration = duration;
                        self.duration = duration;

                    //: [[NSNotificationCenter defaultCenter]
                    [[NSNotificationCenter defaultCenter]
                     //: postNotificationName:NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification
                     postNotificationName:kLet_arrowValue
                     //: object:self];
                     object:self];

                    //: if (_shouldAutoplay)
                    if (_shouldAutoplay)
                        //: [_player play];
                        [_player play];
                //: });
                });
            }
                //: break;
                break;

            //: case AVPlayerItemStatusFailed:
            case AVPlayerItemStatusFailed:
            {
                //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
                AVPlayerItem *playerItem = (AVPlayerItem *)object;
                //: [self assetFailedToPrepareForPlayback:playerItem.error];
                [self to:playerItem.error];
            }
                //: break;
                break;
        }

        //: [self didPlaybackStateChange];
        [self birthPlaybackItalianRegion];
    }
    //: else if (context == KVO_AVPlayerItem_loadedTimeRanges)
    else if (context == kLet_contentName)
    {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: if (_player != nil && playerItem.status == AVPlayerItemStatusReadyToPlay) {
        if (_player != nil && playerItem.status == AVPlayerItemStatusReadyToPlay) {
            //: NSArray *timeRangeArray = playerItem.loadedTimeRanges;
            NSArray *timeRangeArray = playerItem.loadedTimeRanges;
            //: CMTime currentTime = [_player currentTime];
            CMTime currentTime = [_player currentTime];

            //: BOOL foundRange = NO;
            BOOL foundRange = NO;
            //: CMTimeRange aTimeRange = {0};
            CMTimeRange aTimeRange = {0};

            //: if (timeRangeArray.count) {
            if (timeRangeArray.count) {
                //: aTimeRange = [[timeRangeArray objectAtIndex:0] CMTimeRangeValue];
                aTimeRange = [[timeRangeArray objectAtIndex:0] CMTimeRangeValue];
                //: if(CMTimeRangeContainsTime(aTimeRange, currentTime)) {
                if(CMTimeRangeContainsTime(aTimeRange, currentTime)) {
                    //: foundRange = YES;
                    foundRange = YES;
                }
            }

            //: if (foundRange) {
            if (foundRange) {
                //: CMTime maxTime = CMTimeRangeGetEnd(aTimeRange);
                CMTime maxTime = CMTimeRangeGetEnd(aTimeRange);
                //: NSTimeInterval playableDuration = CMTimeGetSeconds(maxTime);
                NSTimeInterval playableDuration = CMTimeGetSeconds(maxTime);
                //: if (playableDuration > 0) {
                if (playableDuration > 0) {
                    //: self.playableDuration = playableDuration;
                    self.playableDuration = playableDuration;
                    //: [self didPlayableDurationUpdate];
                    [self language];
                }
            }
        }
        //: else
        else
        {
            //: self.playableDuration = 0;
            self.playableDuration = 0;
        }
    }
    //: else if (context == KVO_AVPlayerItem_playbackLikelyToKeepUp) {
    else if (context == kLet_pathValue) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: NSLog(@"KVO_AVPlayerItem_playbackLikelyToKeepUp: %@\n", playerItem.isPlaybackLikelyToKeepUp ? @"YES" : @"NO");
        //: [self fetchLoadStateFromItem:playerItem];
        [self will:playerItem];
    }
    //: else if (context == KVO_AVPlayerItem_playbackBufferEmpty) {
    else if (context == kLet_keyNameText) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: BOOL isPlaybackBufferEmpty = playerItem.isPlaybackBufferEmpty;
        BOOL isPlaybackBufferEmpty = playerItem.isPlaybackBufferEmpty;
        //: NSLog(@"KVO_AVPlayerItem_playbackBufferEmpty: %@\n", isPlaybackBufferEmpty ? @"YES" : @"NO");
        //: if (isPlaybackBufferEmpty)
        if (isPlaybackBufferEmpty)
            //: _isPrerolling = YES;
            _isPrerolling = YES;
        //: [self fetchLoadStateFromItem:playerItem];
        [self will:playerItem];
        //: [self didLoadStateChange];
        [self handle];
    }
    //: else if (context == KVO_AVPlayerItem_playbackBufferFull) {
    else if (context == kLet_instanceWindowName) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: NSLog(@"KVO_AVPlayerItem_playbackBufferFull: %@\n", playerItem.isPlaybackBufferFull ? @"YES" : @"NO");
        //: [self fetchLoadStateFromItem:playerItem];
        [self will:playerItem];
        //: [self didLoadStateChange];
        [self handle];
    }
    //: else if (context == KVO_AVPlayer_rate)
    else if (context == kLet_name)
    {
        //: if (_player != nil && !isFloatZero(_player.rate))
        if (_player != nil && !isFloatZero(_player.rate))
            //: _isPrerolling = NO;
            _isPrerolling = NO;
        /* AVPlayer "rate" property value observer. */
        //: [self didPlaybackStateChange];
        [self birthPlaybackItalianRegion];
        //: [self didLoadStateChange];
        [self handle];
    }
    //: else if (context == KVO_AVPlayer_currentItem)
    else if (context == kLet_kitWindowValue)
    {
        //: _isPrerolling = NO;
        _isPrerolling = NO;
        /* AVPlayer "currentItem" property observer.
         Called when the AVPlayer replaceCurrentItemWithPlayerItem:
         replacement will/did occur. */
        //: AVPlayerItem *newPlayerItem = [change objectForKey:NSKeyValueChangeNewKey];
        AVPlayerItem *newPlayerItem = [change objectForKey:NSKeyValueChangeNewKey];

        /* Is the new player item null? */
        //: if (newPlayerItem == (id)[NSNull null])
        if (newPlayerItem == (id)[NSNull null])
        {
            //: NSError *error = [self createErrorWithCode:kEC_CurrentPlayerItemIsNil
            NSError *error = [self everyOmertaReason:kLet_cancelContent
                                           //: description:@"current player item is nil"
                                           load:StringFromWithShowData(kStr_buttonContent)
                                                //: reason:nil];
                                                selected:nil];
            //: [self assetFailedToPrepareForPlayback:error];
            [self to:error];
        }
        //: else /|* Replacement of player currentItem has occurred *|/
        else /* Replacement of player currentItem has occurred */
        {
            //: [_view setPlayer:_player];
            [_view setPlayer:_player];

            //: [self didPlaybackStateChange];
            [self birthPlaybackItalianRegion];
            //: [self didLoadStateChange];
            [self handle];
        }
    }
    //: else
    else
    {
        //: [super observeValueForKeyPath:path ofObject:object change:change context:context];
        [super observeValueForKeyPath:path ofObject:object change:change context:context];
    }
}


//: #pragma mark - Error
#pragma mark - Error
//: - (void)onError:(NSError *)error
- (void)underErrorView:(NSError *)error
{
    //: _isError = YES;
    _isError = YES;

    //: __block NSError *blockError = error;
    __block NSError *blockError = error;

    //: NSLog(@"AVPlayer: onError\n");
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self didPlaybackStateChange];
        [self birthPlaybackItalianRegion];
        //: [self didLoadStateChange];
        [self handle];
        //: [self setScreenOn:NO];
        [self setRecent:NO];

        //: if (blockError == nil) {
        if (blockError == nil) {
            //: blockError = [[NSError alloc] init];
            blockError = [[NSError alloc] init];
        }

        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:NTESAVMoviePlayerPlaybackDidFinishNotification
         postNotificationName:kLet_objectMakeData
         //: object:self
         object:self
         //: userInfo:@{
         userInfo:@{
                    //: NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey: @(NTESAVMovieFinishReasonPlaybackError),
                    kLet_valueData: @(NTESAVMovieFinishReasonPlaybackError),
                    //: @"error": blockError
                    StringFromWithShowData(kStr_stackValue): blockError
                    //: }];
                    }];
    //: });
    });
}

//: - (NSError*)createErrorWithCode: (NSInteger)code
- (NSError*)everyOmertaReason: (NSInteger)code
                    //: description: (NSString*)description
                    load: (NSString*)description
                         //: reason: (NSString*)reason
                         selected: (NSString*)reason
{
    //: NSMutableDictionary *errorDict = [NSMutableDictionary dictionary];
    NSMutableDictionary *errorDict = [NSMutableDictionary dictionary];
    //: errorDict[NSLocalizedDescriptionKey] = description;
    errorDict[NSLocalizedDescriptionKey] = description;
    //: errorDict[NSLocalizedFailureReasonErrorKey] = reason;
    errorDict[NSLocalizedFailureReasonErrorKey] = reason;
    //: NSError *error = [NSError errorWithDomain:kErrorDomain
    NSError *error = [NSError errorWithDomain:kLet_maxData
                                         //: code:code
                                         code:code
                                     //: userInfo:errorDict];
                                     userInfo:errorDict];
    //: return error;
    return error;
}

//: @end
@end

Byte * WithShowDataToCache(Byte *data) {
    int confirmDisabledTop = data[0];
    int set = data[1];
    Byte will = data[2];
    int passkey = data[3];
    if (!confirmDisabledTop) return data + passkey;
    for (int i = passkey; i < passkey + set; i++) {
        int value = data[i] + will;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[passkey + set] = 0;
    return data + passkey;
}

NSString *StringFromWithShowData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WithShowDataToCache(data)];
}
