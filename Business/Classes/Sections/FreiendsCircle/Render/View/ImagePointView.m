
#import <Foundation/Foundation.h>

NSString *StringFromBlueData(Byte *data);


//: render_camera_capture
Byte kStr_shouldTitle[] = {45, 21, 10, 5, 95, 25, 224, 205, 5, 58, 101, 114, 117, 116, 112, 97, 99, 95, 97, 114, 101, 109, 97, 99, 95, 114, 101, 100, 110, 101, 114, 3};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImagePointView.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/10.
//

// __M_A_C_R_O__
//: #import "FUCaptureButton.h"
#import "ImagePointView.h"
//: #import "FUCircleProgressView.h"
#import "TableView.h"
//: #import "UIButton+FU.h"
#import "UIButton+FU.h"

//: @interface FUCaptureButton ()
@interface ImagePointView ()

//: @property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UIButton *button;
//: @property (nonatomic, strong) FUCircleProgressView *circleProgress;
@property (nonatomic, strong) TableView *circleProgress;
//: @property (nonatomic, strong) UILongPressGestureRecognizer *longPress;
@property (nonatomic, strong) UILongPressGestureRecognizer *longPress;

//: @property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) NSTimer *timer;

//: @end
@end

//: @implementation FUCaptureButton {
@implementation ImagePointView {
    //: NSInteger timeCount;
    NSInteger timeCount;
}

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self addSubview:self.button];
        [self addSubview:self.button];
//        [self addSubview:self.circleProgress];

        // 点击拍照
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self.button addCommonActionWithDelay:0.1 actionHandler:^{
        [self.button message:0.1 equator:^{
            //: __strong typeof(weakSelf) strongSelf = weakSelf;
            __strong typeof(weakSelf) strongSelf = weakSelf;
            //: if (strongSelf.delegate && [strongSelf.delegate respondsToSelector:@selector(captureButtonDidTakePhoto)]) {
            if (strongSelf.delegate && [strongSelf.delegate respondsToSelector:@selector(ofMust)]) {
                //: [strongSelf.delegate captureButtonDidTakePhoto];
                [strongSelf.delegate ofMust];
            }
        //: }];
        }];

//        // 长按录制视频
//        self.longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressAction:)];
//        self.longPress.minimumPressDuration = 0.3;
//        [self addGestureRecognizer:self.longPress];

        //: _recordVideo = YES;
        _recordVideo = YES;
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
//    self.circleProgress.frame = CGRectMake(1, 1, CGRectGetWidth(self.frame) - 2, CGRectGetHeight(self.frame) - 2);
}

//: #pragma mark - Private methods
#pragma mark - Private methods

//: - (void)startRecording {
- (void)recording {
    //: [UIView animateWithDuration:0.5 animations:^{
    [UIView animateWithDuration:0.5 animations:^{
        //: self.transform = CGAffineTransformMakeScale(1.1, 1.1);
        self.transform = CGAffineTransformMakeScale(1.1, 1.1);
    //: }];
    }];
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(captureButtonDidStartRecording)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(accumulationSession)]) {
        //: [self.delegate captureButtonDidStartRecording];
        [self.delegate accumulationSession];
    }
}

//: - (void)stopRecording {
- (void)createRecording {
    //: self.transform = CGAffineTransformIdentity;
    self.transform = CGAffineTransformIdentity;
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(captureButtonDidFinishRecording)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(backgroundBlue)]) {
        //: [self.delegate captureButtonDidFinishRecording];
        [self.delegate backgroundBlue];
    }
}

//: - (void)invalidateTimer {
- (void)target {
    //: [self.timer invalidate];
    [self.timer invalidate];
    //: self.timer = nil;
    self.timer = nil;
    //: timeCount = 0;
    timeCount = 0;
    //: self.circleProgress.percent = 0;
    self.circleProgress.percent = 0;
}

//: #pragma mark - Event response
#pragma mark - Event response

//: - (void)longPressAction:(UILongPressGestureRecognizer *)sender {
- (void)recordMenu:(UILongPressGestureRecognizer *)sender {
    //: if (sender.state == UIGestureRecognizerStateBegan) {
    if (sender.state == UIGestureRecognizerStateBegan) {
        //: self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTimeAction) userInfo:nil repeats:YES];
        self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(titleBy) userInfo:nil repeats:YES];
        //: [self.timer fire];
        [self.timer fire];
        //: [self startRecording];
        [self recording];
    //: } else if (sender.state == UIGestureRecognizerStateEnded) {
    } else if (sender.state == UIGestureRecognizerStateEnded) {
        //: [self stopRecording];
        [self createRecording];
        //: [self invalidateTimer];
        [self target];
    }
}

//: - (void)updateTimeAction {
- (void)titleBy {
    //: timeCount += 1;
    timeCount += 1;
    //: self.circleProgress.percent += 0.01;
    self.circleProgress.percent += 0.01;
    //: if (timeCount > 100) {
    if (timeCount > 100) {
        // 自动结束录制
        //: [self stopRecording];
        [self createRecording];
        //: [self invalidateTimer];
        [self target];
    }
}

//: #pragma mark - Setters
#pragma mark - Setters

//: - (void)setRecordVideo:(BOOL)recordVideo {
- (void)setRecordVideo:(BOOL)recordVideo {
    //: _recordVideo = recordVideo;
    _recordVideo = recordVideo;
    //: self.longPress.enabled = recordVideo;
    self.longPress.enabled = recordVideo;
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (UIButton *)button {
- (UIButton *)button {
    //: if (!_button) {
    if (!_button) {
        //: _button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _button.frame = self.bounds;
        _button.frame = self.bounds;
        //: [_button setImage:[UIImage imageNamed:@"render_camera_capture"] forState:UIControlStateNormal];
        [_button setImage:[UIImage imageNamed:StringFromBlueData(kStr_shouldTitle)] forState:UIControlStateNormal];
        //: _button.adjustsImageWhenHighlighted = NO;
        _button.adjustsImageWhenHighlighted = NO;
        //: _button.adjustsImageWhenDisabled = NO;
        _button.adjustsImageWhenDisabled = NO;
    }
    //: return _button;
    return _button;
}

//: - (FUCircleProgressView *)circleProgress {
- (TableView *)circleProgress {
    //: if (!_circleProgress) {
    if (!_circleProgress) {
        //: _circleProgress = [[FUCircleProgressView alloc] initWithFrame:CGRectMake(1, 1, CGRectGetWidth(self.frame) - 2, CGRectGetHeight(self.frame) - 2)];
        _circleProgress = [[TableView alloc] initWithFrame:CGRectMake(1, 1, CGRectGetWidth(self.frame) - 2, CGRectGetHeight(self.frame) - 2)];
        //: _circleProgress.progressColor = [UIColor colorWithRed:92 / 255.0 green:181 / 255.0 blue:249 / 255.0 alpha:1];
        _circleProgress.progressColor = [UIColor colorWithRed:92 / 255.0 green:181 / 255.0 blue:249 / 255.0 alpha:1];
        //: _circleProgress.backgroundColor = [UIColor clearColor];
        _circleProgress.backgroundColor = [UIColor clearColor];
        //: _circleProgress.progressBackgroundColor = [UIColor clearColor];
        _circleProgress.progressBackgroundColor = [UIColor clearColor];
        //: _circleProgress.userInteractionEnabled = NO;
        _circleProgress.userInteractionEnabled = NO;
    }
    //: return _circleProgress;
    return _circleProgress;
}

//: @end
@end

Byte * BlueDataToCache(Byte *data) {
    int bubbleFormat = data[0];
    int fileSearched = data[1];
    int statusSize = data[2];
    if (!bubbleFormat) return data + statusSize;
    for (int i = 0; i < fileSearched / 2; i++) {
        int begin = statusSize + i;
        int end = statusSize + fileSearched - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[statusSize + fileSearched] = 0;
    return data + statusSize;
}

NSString *StringFromBlueData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BlueDataToCache(data)];
}  
