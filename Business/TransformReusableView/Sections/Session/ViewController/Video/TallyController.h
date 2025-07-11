// __DEBUG__
// __CLOSE_PRINT__
//
//  TallyController.h
//  NIM
//
//  Created by Genning-Work on 2019/10/25.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: extern NSString *const NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification;
extern NSString *const kLet_arrowValue;
//: extern NSString *const NTESAVMoviePlayerPlaybackDidFinishNotification;
extern NSString *const kLet_objectMakeData;
//: extern NSString *const NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey;
extern NSString *const kLet_valueData;
//: extern NSString *const NTESAVMoviePlayerPlaybackStateDidChangeNotification;
extern NSString *const kLet_tableValue;
//: extern NSString *const NTESAVMoviePlayerLoadStateDidChangeNotification;
extern NSString *const kLet_resultTitle;

//: typedef NS_ENUM(NSInteger, NTESAVMoviePlaybackState) {
typedef NS_ENUM(NSInteger, NTESAVMoviePlaybackState) {
    //: NTESAVMoviePlaybackStateStopped,
    NTESAVMoviePlaybackStateStopped,
    //: NTESAVMoviePlaybackStatePlaying,
    NTESAVMoviePlaybackStatePlaying,
    //: NTESAVMoviePlaybackStatePaused,
    NTESAVMoviePlaybackStatePaused,
    //: NTESAVMoviePlaybackStateInterrupted,
    NTESAVMoviePlaybackStateInterrupted,
    //: NTESAVPMoviePlaybackStateSeekingForward,
    NTESAVPMoviePlaybackStateSeekingForward,
    //: NTESAVPMoviePlaybackStateSeekingBackward
    NTESAVPMoviePlaybackStateSeekingBackward
//: };
};

//: typedef NS_OPTIONS(NSUInteger, NTESAVMovieLoadState) {
typedef NS_OPTIONS(NSUInteger, NTESAVMovieLoadState) {
    //: NTESAVMovieLoadStateUnknown = 0,
    NTESAVMovieLoadStateUnknown = 0,
    //: NTESAVMovieLoadStatePlayable = 1 << 0,
    NTESAVMovieLoadStatePlayable = 1 << 0,
    //: NTESAVMovieLoadStatePlaythroughOK = 1 << 1, 
    NTESAVMovieLoadStatePlaythroughOK = 1 << 1, // Playback will be automatically started in this state when shouldAutoplay is YES
    //: NTESAVMovieLoadStateStalled = 1 << 2, 
    NTESAVMovieLoadStateStalled = 1 << 2, // Playback will be automatically paused in this state, if started
//: };
};

//: typedef NS_ENUM(NSInteger, NTESAVMovieScalingMode) {
typedef NS_ENUM(NSInteger, NTESAVMovieScalingMode) {
    //: NTESAVMovieScalingModeNone, 
    NTESAVMovieScalingModeNone, // No scaling
    //: NTESAVMovieScalingModeAspectFit, 
    NTESAVMovieScalingModeAspectFit, // Uniform scale until one dimension fits
    //: NTESAVMovieScalingModeAspectFill, 
    NTESAVMovieScalingModeAspectFill, // Uniform scale until the movie fills the visible bounds. One dimension may have clipped contents
    //: NTESAVMovieScalingModeFill 
    NTESAVMovieScalingModeFill // Non-uniform scale. Both render dimensions will exactly match the visible bounds
//: };
};

//: typedef NS_OPTIONS(NSUInteger, NTESAVMovieFinishReason) {
typedef NS_OPTIONS(NSUInteger, NTESAVMovieFinishReason) {
    //: NTESAVMovieFinishReasonPlaybackEnded,
    NTESAVMovieFinishReasonPlaybackEnded,
    //: NTESAVMovieFinishReasonPlaybackError,
    NTESAVMovieFinishReasonPlaybackError,
    //: NTESAVMovieFinishReasonUserExited
    NTESAVMovieFinishReasonUserExited
//: };
};


//: @protocol LYVideoPlayerDelegate <NSObject>
@protocol MessageDelegate <NSObject>



// ------------------------- 回调一些视频信息 ---------------------------
/**
 @param totalTime 视频总长度（秒）
 */
//: - (void)videoPlayertotalTime:(NSInteger)totalTime;
- (void)examples:(NSInteger)totalTime;

/**
 @param currentTime 当前播放进度（秒）
 */
//: - (void)videoPlayercurrentTime:(NSInteger)currentTime;
- (void)showing:(NSInteger)currentTime;


//: @end
@end

//: @interface NTESAVMoivePlayerController : NSObject
@interface TallyController : NSObject

//: @property (nonatomic, weak) id <LYVideoPlayerDelegate> delegate;
@property (nonatomic, weak) id <MessageDelegate> delegate;

//: - (id)initWithContentURL:(NSURL *)aUrl;
- (id)initWithHide:(NSURL *)aUrl;

//: - (void)prepareToPlay;
- (void)prepareDetect;
//: - (void)play;
- (void)needPlay;
//: - (void)pause;
- (void)imageMark;
//: - (void)stop;
- (void)request;

//: @property (nonatomic, strong) AVPlayer *player;
@property (nonatomic, strong) AVPlayer *player;
//: @property(nonatomic, readonly) UIView *view;
@property(nonatomic, readonly) UIView *view;
//: @property(nonatomic, assign) NSTimeInterval currentPlaybackTime;
@property(nonatomic, assign) NSTimeInterval currentPlaybackTime;
//: @property(nonatomic, readonly) NSTimeInterval duration;
@property(nonatomic, readonly) NSTimeInterval duration;
//: @property(nonatomic, readonly) NSTimeInterval playableDuration;
@property(nonatomic, readonly) NSTimeInterval playableDuration;
//: @property(nonatomic, readonly) NSInteger bufferingProgress;
@property(nonatomic, readonly) NSInteger bufferingProgress;
//: @property(nonatomic, readonly) NTESAVMoviePlaybackState playbackState;
@property(nonatomic, readonly) NTESAVMoviePlaybackState playbackState;
//: @property(nonatomic, readonly) NTESAVMovieLoadState loadState;
@property(nonatomic, readonly) NTESAVMovieLoadState loadState;
//: @property(nonatomic, assign) NTESAVMovieScalingMode scalingMode;
@property(nonatomic, assign) NTESAVMovieScalingMode scalingMode;
//: @property(nonatomic, assign) float playbackRate;
@property(nonatomic, assign) float playbackRate;
//: @property(nonatomic, assign) float playbackVolume;
@property(nonatomic, assign) float playbackVolume;
//: @property(nonatomic, assign) BOOL shouldAutoplay;
@property(nonatomic, assign) BOOL shouldAutoplay;

/**
 @param toTime 从指定的时间开始播放（秒）
 */
//: - (void)seekToTimePlay:(float)toTime;
- (void)showView:(float)toTime;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END