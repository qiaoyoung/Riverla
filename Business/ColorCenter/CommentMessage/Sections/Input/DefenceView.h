// __DEBUG__
// __CLOSE_PRINT__
//
//  DefenceView.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "UserInputProtocol.h"
#import "UserInputProtocol.h"
//: #import "FFFSessionConfig.h"
#import "FrameConfig.h"
//: #import "FFFInputToolBar.h"
#import "StatusToolView.h"
//: #import "FFFInputAtCache.h"
#import "VoidCache.h"

//: @class FFFInputMoreContainerView;
@class ArrayView;
//: @class FFFInputEmoticonContainerView;
@class KeyIndexView;
//: @class FFFReplyContentView;
@class OffView;



//: typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
    //: AudioRecordPhaseStart,
    AudioRecordPhaseStart,
    //: AudioRecordPhaseRecording,
    AudioRecordPhaseRecording,
    //: AudioRecordPhaseCancelling,
    AudioRecordPhaseCancelling,
    //: AudioRecordPhaseEnd
    AudioRecordPhaseEnd
//: };
};



//: @protocol NIMInputDelegate <NSObject>
@protocol InputTable <NSObject>

//: @optional
@optional

//: - (void)didChangeInputHeight:(CGFloat)inputHeight;
- (void)displayed:(CGFloat)inputHeight;

//: @end
@end

//: @interface FFFInputView : UIView
@interface DefenceView : UIView

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic, assign) NSInteger maxTextLength;
@property (nonatomic, assign) NSInteger maxTextLength;

//: @property (assign, nonatomic, getter=isRecording) BOOL recording;
@property (assign, nonatomic, getter=isRecording) BOOL recording;

//: @property (strong, nonatomic) FFFInputToolBar *toolBar;
@property (strong, nonatomic) StatusToolView *toolBar;
//: @property (strong, nonatomic) FFFInputMoreContainerView *moreContainer;
@property (strong, nonatomic) ArrayView *moreContainer;
//: @property (strong, nonatomic) UIView *emoticonContainer;
@property (strong, nonatomic) UIView *emoticonContainer;

//: @property (nonatomic, strong) FFFReplyContentView *replyedContent;
@property (nonatomic, strong) OffView *replyedContent;

//: @property (nonatomic, assign) NIMInputStatus status;
@property (nonatomic, assign) NIMInputStatus status;
//: @property (nonatomic, strong) FFFInputAtCache *atCache;
@property (nonatomic, strong) VoidCache *atCache;

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithMessage:(CGRect)frame
                       //: config:(id<FFFSessionConfig>)config;
                       show:(id<FrameConfig>)config;

//: - (void)reset;
- (void)colorWith;

//: - (void)refreshStatus:(NIMInputStatus)status;
- (void)with:(NIMInputStatus)status;

//: - (void)setInputDelegate:(id<NIMInputDelegate>)delegate;
- (void)setInputDelegate:(id<InputTable>)delegate;

//外部设置
//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate;
- (void)setAt:(id<SizeDelegate>)actionDelegate;

//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder;
- (void)setSet:(NSString*)placeHolder;
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor;
- (void)session:(NSString*)placeHolder count:(UIColor *)placeholderColor;

//: - (void)updateAudioRecordTime:(NSTimeInterval)time;
- (void)imageExtra:(NSTimeInterval)time;
//: - (void)updateVoicePower:(float)power;
- (void)human:(float)power;
//: - (void)addAtItems:(NSArray *)contacts;
- (void)size:(NSArray *)contacts;

//: - (void)refreshReplyedContent:(NIMMessage *)message;
- (void)flipContent:(NIMMessage *)message;
//: - (void)dismissReplyedContent;
- (void)container;

//: @end
@end
