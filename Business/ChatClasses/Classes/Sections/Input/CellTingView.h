// __DEBUG__
// __CLOSE_PRINT__
//
//  CellTingView.h
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "ViewInputProtocol.h"
#import "ViewInputProtocol.h"
//: #import "FFFSessionConfig.h"
#import "BlueConfig.h"
//: #import "FFFInputToolBar.h"
#import "MaxKeyView.h"
//: #import "FFFInputAtCache.h"
#import "AtEvaluate.h"

//: @class FFFInputMoreContainerView;
@class DevelopmentView;
//: @class FFFInputEmoticonContainerView;
@class ImageEmoticonView;
//: @class FFFReplyContentView;
@class MaxAggregationView;



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
@protocol CuttingEdgeDelegate <NSObject>

//: @optional
@optional

//: - (void)didChangeInputHeight:(CGFloat)inputHeight;
- (void)infoed:(CGFloat)inputHeight;

//: @end
@end

//: @interface FFFInputView : UIView
@interface CellTingView : UIView

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic, assign) NSInteger maxTextLength;
@property (nonatomic, assign) NSInteger maxTextLength;

//: @property (assign, nonatomic, getter=isRecording) BOOL recording;
@property (assign, nonatomic, getter=isRecording) BOOL recording;

//: @property (strong, nonatomic) FFFInputToolBar *toolBar;
@property (strong, nonatomic) MaxKeyView *toolBar;
//: @property (strong, nonatomic) FFFInputMoreContainerView *moreContainer;
@property (strong, nonatomic) DevelopmentView *moreContainer;
//: @property (strong, nonatomic) UIView *emoticonContainer;
@property (strong, nonatomic) UIView *emoticonContainer;

//: @property (nonatomic, strong) FFFReplyContentView *replyedContent;
@property (nonatomic, strong) MaxAggregationView *replyedContent;

//: @property (nonatomic, assign) NIMInputStatus status;
@property (nonatomic, assign) NIMInputStatus status;
//: @property (nonatomic, strong) FFFInputAtCache *atCache;
@property (nonatomic, strong) AtEvaluate *atCache;

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithLabelConfig:(CGRect)frame
                       //: config:(id<FFFSessionConfig>)config;
                       size:(id<BlueConfig>)config;

//: - (void)reset;
- (void)tab;

//: - (void)refreshStatus:(NIMInputStatus)status;
- (void)title:(NIMInputStatus)status;

//: - (void)setInputDelegate:(id<NIMInputDelegate>)delegate;
- (void)setInputDelegate:(id<CuttingEdgeDelegate>)delegate;

//外部设置
//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate;
- (void)setImage:(id<CourseOfActionDelegate>)actionDelegate;

//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder;
- (void)setCell:(NSString*)placeHolder;
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor;
- (void)session:(NSString*)placeHolder ting:(UIColor *)placeholderColor;

//: - (void)updateAudioRecordTime:(NSTimeInterval)time;
- (void)reloadOption:(NSTimeInterval)time;
//: - (void)updateVoicePower:(float)power;
- (void)stepPower:(float)power;
//: - (void)addAtItems:(NSArray *)contacts;
- (void)gammaHydroxybutyrate:(NSArray *)contacts;

//: - (void)refreshReplyedContent:(NIMMessage *)message;
- (void)message:(NIMMessage *)message;
//: - (void)dismissReplyedContent;
- (void)assemblage;

//: @end
@end
