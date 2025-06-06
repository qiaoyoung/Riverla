
#import <Foundation/Foundation.h>
typedef struct {
    Byte opponent;
    Byte *change;
    unsigned int shelter;
    bool searchOpponent;
	int goop;
} QuestionData;

NSString *StringFromQuestionData(QuestionData *data);


//: render_camera_capture
QuestionData kStr_tingDiscusValue = (QuestionData){242, (Byte []){128, 151, 156, 150, 151, 128, 173, 145, 147, 159, 151, 128, 147, 173, 145, 147, 130, 134, 135, 128, 151, 12}, 21, false, 225};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TelecastingView.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/10.
//

// __M_A_C_R_O__
//: #import "FUCaptureButton.h"
#import "TelecastingView.h"
//: #import "FUCircleProgressView.h"
#import "TinkleView.h"
//: #import "UIButton+FU.h"
#import "UIButton+FU.h"

//: @interface FUCaptureButton ()
@interface TelecastingView ()

//: @property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UIButton *button;
//: @property (nonatomic, strong) FUCircleProgressView *circleProgress;
@property (nonatomic, strong) TinkleView *circleProgress;
//: @property (nonatomic, strong) UILongPressGestureRecognizer *longPress;
@property (nonatomic, strong) UILongPressGestureRecognizer *longPress;

//: @property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) NSTimer *timer;

//: @end
@end

//: @implementation FUCaptureButton {
@implementation TelecastingView {
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
        [self.button color:0.1 delay:^{
            //: __strong typeof(weakSelf) strongSelf = weakSelf;
            __strong typeof(weakSelf) strongSelf = weakSelf;
            //: if (strongSelf.delegate && [strongSelf.delegate respondsToSelector:@selector(captureButtonDidTakePhoto)]) {
            if (strongSelf.delegate && [strongSelf.delegate respondsToSelector:@selector(selectBy)]) {
                //: [strongSelf.delegate captureButtonDidTakePhoto];
                [strongSelf.delegate selectBy];
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
- (void)withRecording {
    //: [UIView animateWithDuration:0.5 animations:^{
    [UIView animateWithDuration:0.5 animations:^{
        //: self.transform = CGAffineTransformMakeScale(1.1, 1.1);
        self.transform = CGAffineTransformMakeScale(1.1, 1.1);
    //: }];
    }];
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(captureButtonDidStartRecording)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(deleteSign)]) {
        //: [self.delegate captureButtonDidStartRecording];
        [self.delegate deleteSign];
    }
}

//: - (void)stopRecording {
- (void)track {
    //: self.transform = CGAffineTransformIdentity;
    self.transform = CGAffineTransformIdentity;
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(captureButtonDidFinishRecording)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(managerFrom)]) {
        //: [self.delegate captureButtonDidFinishRecording];
        [self.delegate managerFrom];
    }
}

//: - (void)invalidateTimer {
- (void)itemOption {
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
- (void)bringHomeAction:(UILongPressGestureRecognizer *)sender {
    //: if (sender.state == UIGestureRecognizerStateBegan) {
    if (sender.state == UIGestureRecognizerStateBegan) {
        //: self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTimeAction) userInfo:nil repeats:YES];
        self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(infoSearchedOrientation) userInfo:nil repeats:YES];
        //: [self.timer fire];
        [self.timer fire];
        //: [self startRecording];
        [self withRecording];
    //: } else if (sender.state == UIGestureRecognizerStateEnded) {
    } else if (sender.state == UIGestureRecognizerStateEnded) {
        //: [self stopRecording];
        [self track];
        //: [self invalidateTimer];
        [self itemOption];
    }
}

//: - (void)updateTimeAction {
- (void)infoSearchedOrientation {
    //: timeCount += 1;
    timeCount += 1;
    //: self.circleProgress.percent += 0.01;
    self.circleProgress.percent += 0.01;
    //: if (timeCount > 100) {
    if (timeCount > 100) {
        // 自动结束录制
        //: [self stopRecording];
        [self track];
        //: [self invalidateTimer];
        [self itemOption];
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
        [_button setImage:[UIImage imageNamed:StringFromQuestionData(&kStr_tingDiscusValue)] forState:UIControlStateNormal];
        //: _button.adjustsImageWhenHighlighted = NO;
        _button.adjustsImageWhenHighlighted = NO;
        //: _button.adjustsImageWhenDisabled = NO;
        _button.adjustsImageWhenDisabled = NO;
    }
    //: return _button;
    return _button;
}

//: - (FUCircleProgressView *)circleProgress {
- (TinkleView *)circleProgress {
    //: if (!_circleProgress) {
    if (!_circleProgress) {
        //: _circleProgress = [[FUCircleProgressView alloc] initWithFrame:CGRectMake(1, 1, CGRectGetWidth(self.frame) - 2, CGRectGetHeight(self.frame) - 2)];
        _circleProgress = [[TinkleView alloc] initWithFrame:CGRectMake(1, 1, CGRectGetWidth(self.frame) - 2, CGRectGetHeight(self.frame) - 2)];
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

Byte *QuestionDataToByte(QuestionData *data) {
    if (data->searchOpponent) return data->change;
    for (int i = 0; i < data->shelter; i++) {
        data->change[i] ^= data->opponent;
    }
    data->change[data->shelter] = 0;
    data->searchOpponent = true;
	if (data->shelter >= 1) {
		data->goop = data->change[0];
	}
    return data->change;
}

NSString *StringFromQuestionData(QuestionData *data) {
    return [NSString stringWithUTF8String:(char *)QuestionDataToByte(data)];
}
