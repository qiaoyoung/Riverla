//
//  FFFInputView.h
// NeeyoKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FFFInputProtocol.h"
#import "FFFSessionConfig.h"
#import "FFFInputToolBar.h"
#import "FFFInputAtCache.h"

@class FFFInputMoreContainerView;
@class FFFInputEmoticonContainerView;
@class FFFReplyContentView;



typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
    AudioRecordPhaseStart,
    AudioRecordPhaseRecording,
    AudioRecordPhaseCancelling,
    AudioRecordPhaseEnd
};



@protocol NIMInputDelegate <NSObject>

@optional

- (void)didChangeInputHeight:(CGFloat)inputHeight;

@end

@interface FFFInputView : UIView

@property (nonatomic, strong) NIMSession             *session;

@property (nonatomic, assign) NSInteger              maxTextLength;

@property (assign, nonatomic, getter=isRecording)    BOOL recording;

@property (strong, nonatomic)  FFFInputToolBar *toolBar;
@property (strong, nonatomic)  FFFInputMoreContainerView *moreContainer;
@property (strong, nonatomic)  UIView *emoticonContainer;

@property (nonatomic, strong)   FFFReplyContentView *replyedContent;

@property (nonatomic, assign) NIMInputStatus status;
@property (nonatomic, strong) FFFInputAtCache *atCache;

- (instancetype)initWithFrame:(CGRect)frame
                       config:(id<FFFSessionConfig>)config;

- (void)reset;

- (void)refreshStatus:(NIMInputStatus)status;

- (void)setInputDelegate:(id<NIMInputDelegate>)delegate;

//外部设置
- (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate;

- (void)setInputTextPlaceHolder:(NSString*)placeHolder;
- (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor;

- (void)updateAudioRecordTime:(NSTimeInterval)time;
- (void)updateVoicePower:(float)power;
- (void)addAtItems:(NSArray *)contacts;

- (void)refreshReplyedContent:(NIMMessage *)message;
- (void)dismissReplyedContent;

@end
