
#import <Foundation/Foundation.h>

NSString *StringFromPassengerData(Byte *data);


//: tag_activity_set
Byte kStr_leaseVentureData[] = {22, 16, 13, 240, 35, 197, 162, 109, 26, 122, 66, 157, 29, 116, 101, 115, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 103, 97, 116, 46};


//: message_please_enter_content
Byte kStr_northernData[] = {30, 28, 3, 116, 110, 101, 116, 110, 111, 99, 95, 114, 101, 116, 110, 101, 95, 101, 115, 97, 101, 108, 112, 95, 101, 103, 97, 115, 115, 101, 109, 56};


//: default
Byte kStr_speakerDaughterValue[] = {7, 7, 6, 67, 9, 47, 116, 108, 117, 97, 102, 101, 100, 33};


//: setting_privacy
Byte kStr_extremeName[] = {4, 15, 12, 49, 193, 242, 175, 111, 53, 37, 16, 225, 121, 99, 97, 118, 105, 114, 112, 95, 103, 110, 105, 116, 116, 101, 115, 233};


//: contact_tag_fragment_cancel
Byte kStr_opponentData[] = {57, 27, 8, 133, 114, 176, 195, 76, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 94};


//: warm_prompt
Byte kStr_ohoName[] = {54, 11, 9, 87, 136, 174, 98, 217, 62, 116, 112, 109, 111, 114, 112, 95, 109, 114, 97, 119, 202};


//: #ffffff
Byte kStr_descriptionName[] = {9, 7, 13, 112, 193, 245, 87, 66, 160, 103, 69, 11, 119, 102, 102, 102, 102, 102, 102, 35, 226};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellTingView.m
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFInputView.h"
#import "CellTingView.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "FFFInputMoreContainerView.h"
#import "DevelopmentView.h"
//: #import "FFFInputEmoticonContainerView.h"
#import "ImageEmoticonView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "ViewInputEmoticonDefine.h"
#import "ViewInputEmoticonDefine.h"
//: #import "FFFInputEmoticonManager.h"
#import "AppManager.h"
//: #import "FFFInputToolBar.h"
#import "MaxKeyView.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "ViewGlobalMacro.h"
#import "ViewGlobalMacro.h"
//: #import "FFFContactSelectViewController.h"
#import "TeamPictureViewController.h"
//: #import "MyUserKit.h"
#import "Notice.h"
//: #import "FFFKitInfoFetchOption.h"
#import "Option.h"
//: #import "FFFKitKeyboardInfo.h"
#import "TitleMessage.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Notice.h"
//: #import "FFFReplyContentView.h"
#import "MaxAggregationView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "PopScrollView+Notice.h"
//: #import <YYText.h>
#import <YYText.h>
//: #import "FFFTextHighlight.h"
#import "SmartNameHighlight.h"
//: #import "PhotoContainerView.h"
#import "PastView.h"

//: @interface FFFInputView()<FFFInputToolBarDelegate,NIMInputEmoticonProtocol,NIMContactSelectDelegate,FFFReplyContentViewDelegate,moreCustomPickerViewDelegate>
@interface CellTingView()<ItemDelegate,EvaluateMessage,MessageAction,ClickDelegate,moreCustomPickerViewDelegate>
{
    //: UIView *_emoticonView;
    UIView *_emoticonView;
}


//: @property (nonatomic, assign) NIMAudioRecordPhase recordPhase;
@property (nonatomic, assign) NIMAudioRecordPhase recordPhase;
//: @property (nonatomic, weak) id<FFFSessionConfig> inputConfig;
@property (nonatomic, weak) id<BlueConfig> inputConfig;
//: @property (nonatomic, weak) id<NIMInputDelegate> inputDelegate;
@property (nonatomic, weak) id<CuttingEdgeDelegate> inputDelegate;
//: @property (nonatomic, weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic, weak) id<CourseOfActionDelegate> actionDelegate;

//: @property (nonatomic, assign) CGFloat keyBoardFrameTop; 
@property (nonatomic, assign) CGFloat keyBoardFrameTop; //键盘的frame的top值，屏幕高度 - 键盘高度，由于有旋转的可能，这个值只有当 键盘弹出时才有意义。

//: @property (nonatomic, strong) NSArray *selectedPhoto;
@property (nonatomic, strong) NSArray *selectedPhoto;


//: @end
@end


//: @implementation FFFInputView
@implementation CellTingView

//: @synthesize emoticonContainer = _emoticonContainer;
@synthesize emoticonContainer = _emoticonContainer;
//: @synthesize moreContainer = _moreContainer;
@synthesize moreContainer = _moreContainer;

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithLabelConfig:(CGRect)frame
                       //: config:(id<FFFSessionConfig>)config
                       size:(id<BlueConfig>)config
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: _recording = NO;
        _recording = NO;
        //: _recordPhase = AudioRecordPhaseEnd;
        _recordPhase = AudioRecordPhaseEnd;
        //: _atCache = [[FFFInputAtCache alloc] init];
        _atCache = [[AtEvaluate alloc] init];
        //: _inputConfig = config;
        _inputConfig = config;
        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor isView:StringFromPassengerData(kStr_descriptionName)];
        //: self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: self.layer.shadowOffset = CGSizeMake(0,-4);
        self.layer.shadowOffset = CGSizeMake(0,-4);
        //: self.layer.shadowOpacity = 1;
        self.layer.shadowOpacity = 1;
        //: self.layer.shadowRadius = 16;
        self.layer.shadowRadius = 16;
    }
    //: return self;
    return self;
}

//: - (void)didMoveToWindow
- (void)didMoveToWindow
{
    //: [self setup];
    [self alias];
}

//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //这里不做.语法 get 操作，会提前初始化组件导致卡顿
    //: CGFloat replyedContentHeight = _replyedContent.hidden ? 0 : _replyedContent.nim_height;
    CGFloat replyedContentHeight = _replyedContent.hidden ? 0 : _replyedContent.nim_height;
    //: CGFloat toolBarHeight = _toolBar.nim_height;
    CGFloat toolBarHeight = _toolBar.nim_height;
    //: CGFloat containerHeight = 0;
    CGFloat containerHeight = 0;
    //: switch (self.status)
    switch (self.status)
    {
        //: case NIMInputStatusEmoticon:
        case NIMInputStatusEmoticon:
        {
            //: containerHeight = _emoticonContainer.nim_height;
            containerHeight = _emoticonContainer.nim_height;
            //: break;
            break;
        }
        //: case NIMInputStatusMore:
        case NIMInputStatusMore:
        {
            //: containerHeight = _moreContainer.nim_height;
            containerHeight = _moreContainer.nim_height;
            //: break;
            break;
        }
        //: default:
        default:
        {
            //: UIEdgeInsets safeArea = self.superview.safeAreaInsets;
            UIEdgeInsets safeArea = self.superview.safeAreaInsets;
            //键盘是从最底下弹起的，需要减去安全区域底部的高度
            //: CGFloat keyboardDelta = [FFFKitKeyboardInfo instance].keyboardHeight - safeArea.bottom;
            CGFloat keyboardDelta = [TitleMessage restore].keyboardHeight - safeArea.bottom;

            //如果键盘还没有安全区域高，容器的初始值为0；否则则为键盘和安全区域的高度差值，这样可以保证 toolBar 始终在键盘上面
            //: containerHeight = keyboardDelta>0 ? keyboardDelta : 0;
            containerHeight = keyboardDelta>0 ? keyboardDelta : 0;

        }
            //: break;
            break;
    }
    //: CGFloat height = replyedContentHeight + toolBarHeight + containerHeight + (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom);
    CGFloat height = replyedContentHeight + toolBarHeight + containerHeight + (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom);
    //: CGFloat width = self.superview? self.superview.nim_width : self.nim_width;
    CGFloat width = self.superview? self.superview.nim_width : self.nim_width;
    //: return CGSizeMake(width, height);
    return CGSizeMake(width, height);
}


//: - (void)setInputDelegate:(id<NIMInputDelegate>)delegate
- (void)setInputDelegate:(id<CuttingEdgeDelegate>)delegate
{
    //: _inputDelegate = delegate;
    _inputDelegate = delegate;
}

//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate
- (void)setImage:(id<CourseOfActionDelegate>)actionDelegate
{
    //: _actionDelegate = actionDelegate;
    _actionDelegate = actionDelegate;
}

//: - (void)reset
- (void)tab
{
    //: self.nim_width = self.superview.nim_width;
    self.nim_width = self.superview.nim_width;
    //: [self refreshStatus:NIMInputStatusText];
    [self title:NIMInputStatusText];
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)refreshStatus:(NIMInputStatus)status
- (void)title:(NIMInputStatus)status
{
    //: self.status = status;
    self.status = status;
    //: [self.toolBar update:status];
    [self.toolBar off:status];
    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.2 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.2 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: self.moreContainer.hidden = status != NIMInputStatusMore;
        self.moreContainer.hidden = status != NIMInputStatusMore;
        //: self.emoticonContainer.hidden = status != NIMInputStatusEmoticon;
        self.emoticonContainer.hidden = status != NIMInputStatusEmoticon;
    //: });
    });
}

//: - (void)setup
- (void)alias
{
    //: if (!_toolBar)
    if (!_toolBar)
    {
        //: _toolBar = [[FFFInputToolBar alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
        _toolBar = [[MaxKeyView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
    }
    //: [self addSubview:_toolBar];
    [self addSubview:_toolBar];
    //设置placeholder
//        NSString *placeholder = [Notice sharedKit].config.placeholder;
//        [_toolBar setPlaceHolder:placeholder];
    //: [_toolBar setPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [_toolBar setPin:[TeamManager sizeKey:StringFromPassengerData(kStr_northernData)]];
    //设置input bar 上的按钮
    //: if ([_inputConfig respondsToSelector:@selector(inputBarItemTypes)]) {
    if ([_inputConfig respondsToSelector:@selector(upwardsCell)]) {
        //: NSArray *types = [_inputConfig inputBarItemTypes];
        NSArray *types = [_inputConfig upwardsCell];
        //: [_toolBar setInputBarItemTypes:types];
        [_toolBar setInputBarItemTypes:types];
    }

    //: _toolBar.delegate = self;
    _toolBar.delegate = self;
    //: [_toolBar.emoticonBtn addTarget:self action:@selector(onTouchEmoticonBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.emoticonBtn addTarget:self action:@selector(withs:) forControlEvents:UIControlEventTouchUpInside];
//    [_toolBar.emoticonBtn2 addTarget:self action:@selector(onTouchEmoticonBtn:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.albunBtn addTarget:self action:@selector(requestAuthorizationForPhotoLibrary) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.albunBtn addTarget:self action:@selector(pastSend) forControlEvents:UIControlEventTouchUpInside];
//    [_toolBar.cameraBtn addTarget:self action:@selector(onTouchCameraBtn:) forControlEvents:UIControlEventTouchUpInside];
    //    [_toolBar.moreMediaBtn addTarget:self action:@selector(onTouchMoreBtn:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.voiceButton addTarget:self action:@selector(onTouchVoiceBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.voiceButton addTarget:self action:@selector(infoed:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.sendButton addTarget:self action:@selector(onTouchSendBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.sendButton addTarget:self action:@selector(nameBtn:) forControlEvents:UIControlEventTouchUpInside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnDown:) forControlEvents:UIControlEventTouchDown];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnDragInside:) forControlEvents:UIControlEventTouchDragInside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnDragOutside:) forControlEvents:UIControlEventTouchDragOutside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnUpInside:) forControlEvents:UIControlEventTouchUpInside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
    //: _toolBar.nim_size = [_toolBar sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
    _toolBar.nim_size = [_toolBar sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
    //: _toolBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    _toolBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    //    [_toolBar.recordButton setTitle:@"按住说话".nim_localized forState:UIControlStateNormal];
    //    [_toolBar.recordButton setHidden:YES];

    //设置最大输入字数
    //: NSInteger textInputLength = [MyUserKit sharedKit].config.inputMaxLength;
    NSInteger textInputLength = [Notice fullKit].config.inputMaxLength;
    //: self.maxTextLength = textInputLength;
    self.maxTextLength = textInputLength;

    //: [self refreshStatus:NIMInputStatusText];
    [self title:NIMInputStatusText];
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)PickerDidSelectAssets:(NSArray<PHAsset *> *)assets
- (void)scaled:(NSArray<PHAsset *> *)assets
{
    //: self.selectedPhoto = assets;
    self.selectedPhoto = assets;
    //: if (self.selectedPhoto.count > 0) {
    if (self.selectedPhoto.count > 0) {
        //: self.toolBar.sendButton.hidden = NO;
        self.toolBar.sendButton.hidden = NO;
//        self.toolBar.emoticonBtn.hidden = YES;
        //: self.toolBar.albunBtn.hidden = YES;
        self.toolBar.albunBtn.hidden = YES;
    //: }else{
    }else{
        //: self.toolBar.sendButton.hidden = YES;
        self.toolBar.sendButton.hidden = YES;
//        self.toolBar.emoticonBtn.hidden = NO;
        //: self.toolBar.albunBtn.hidden = NO;
        self.toolBar.albunBtn.hidden = NO;
    }
}

//: - (void)checkMoreContainer
- (void)disable
{
    //: if (!_moreContainer) {
    if (!_moreContainer) {
        //: _moreContainer = [[FFFInputMoreContainerView alloc] initWithFrame:CGRectZero];
        _moreContainer = [[DevelopmentView alloc] initWithFrame:CGRectZero];
        //: _moreContainer.nim_size = [_moreContainer sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        _moreContainer.nim_size = [_moreContainer sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        //: _moreContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _moreContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _moreContainer.hidden = YES;
        _moreContainer.hidden = YES;
        //: _moreContainer.config = _inputConfig;
        _moreContainer.config = _inputConfig;
        //: _moreContainer.actionDelegate = self.actionDelegate;
        _moreContainer.actionDelegate = self.actionDelegate;
        //: _moreContainer.delegate = self;
        _moreContainer.delegate = self;
//        _moreContainer = moreContainer;
    }

    //可能是外部主动设置进来的，统一放在这里添加 subview
    //: if (!_moreContainer.superview)
    if (!_moreContainer.superview)
    {
        //: [self addSubview:_moreContainer];
        [self addSubview:_moreContainer];
    }
}

//: - (void)checkPhotoContainer
- (void)message
{

}

//: - (void)setMoreContainer:(UIView *)moreContainer
- (void)setMoreContainer:(UIView *)moreContainer
{
//    _moreContainer = moreContainer;
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)checkEmoticonContainer
- (void)upgrade
{
    //: if (!_emoticonContainer) {
    if (!_emoticonContainer) {
        //: FFFInputEmoticonContainerView *emoticonContainer = [[FFFInputEmoticonContainerView alloc] initWithFrame:CGRectZero];
        ImageEmoticonView *emoticonContainer = [[ImageEmoticonView alloc] initWithFrame:CGRectZero];

        //: emoticonContainer.nim_size = [emoticonContainer sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        emoticonContainer.nim_size = [emoticonContainer sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        //: emoticonContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        emoticonContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: emoticonContainer.delegate = self;
        emoticonContainer.delegate = self;
        //: emoticonContainer.hidden = YES;
        emoticonContainer.hidden = YES;
        //: emoticonContainer.config = _inputConfig;
        emoticonContainer.config = _inputConfig;

        //: _emoticonContainer = emoticonContainer;
        _emoticonContainer = emoticonContainer;
    }

    //可能是外部主动设置进来的，统一放在这里添加 subview
    //: if (!_emoticonContainer.superview)
    if (!_emoticonContainer.superview)
    {
        //: [self addSubview:_emoticonContainer];
        [self addSubview:_emoticonContainer];
    }
}

//: - (void)setEmoticonContainer:(UIView *)emoticonContainer
- (void)setEmoticonContainer:(UIView *)emoticonContainer
{
    //: _emoticonContainer = emoticonContainer;
    _emoticonContainer = emoticonContainer;
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)onTouchSendBtn:(id)sender{
- (void)nameBtn:(id)sender{
    //: [self didPressSend:nil];
    [self nameRange:nil];
}


//- (void)setRecording:(BOOL)recording
//{
//    if(recording)
//    {
//        self.audioRecordIndicator.center = self.superview.center;
//        [self.superview addSubview:self.audioRecordIndicator];
//        self.recordPhase = AudioRecordPhaseRecording;
//    }
//    else
//    {
//        [self.audioRecordIndicator removeFromSuperview];
//        self.recordPhase = AudioRecordPhaseEnd;
//    }
//    _recording = recording;
//}

//: #pragma mark - 外部接口
#pragma mark - 外部接口
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder
- (void)setCell:(NSString*)placeHolder
{
    //: [_toolBar setPlaceHolder:placeHolder];
    [_toolBar setPin:placeHolder];
}

//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor
- (void)session:(NSString*)placeHolder ting:(UIColor *)placeholderColor
{
    //: [_toolBar setPlaceHolder:placeHolder color:placeholderColor];
    [_toolBar requisite:placeHolder shared:placeholderColor];
}

//: - (void)updateAudioRecordTime:(NSTimeInterval)time {
- (void)reloadOption:(NSTimeInterval)time {

}

//: - (void)updateVoicePower:(float)power {
- (void)stepPower:(float)power {

}

//: - (void)refreshReplyedContent:(NIMMessage *)message
- (void)message:(NIMMessage *)message
{
    //: NSString *text = [NSString stringWithFormat:@"%@", [[MyUserKit sharedKit] replyedContentWithMessage:message]];
    NSString *text = [NSString stringWithFormat:@"%@", [[Notice fullKit] cipherMessage:message]];

    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    Option *option = [[Option alloc] init];
    //: option.message = message;
    option.message = message;
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:message.from option:option];
    OriginBy *info = [[Notice fullKit] value:message.from manager:option];
    //: self.replyedContent.fromUser.text = [NSString stringWithFormat:@"%@%@",[FFFLanguageManager getTextWithKey:@"回复"],info.showName];
    self.replyedContent.fromUser.text = [NSString stringWithFormat:@"%@%@",[TeamManager sizeKey:@"回复"],info.showName];
    //: self.replyedContent.label.text = text;
    self.replyedContent.label.text = text;
//    [self.replyedContent.label nim_setText:text];
    //: self.replyedContent.replymessage = message;
    self.replyedContent.replymessage = message;

    //: if(message.messageType == NIMMessageTypeImage){
    if(message.messageType == NIMMessageTypeImage){

        //: NIMImageObject *imageObject = (NIMImageObject*)message.messageObject;
        NIMImageObject *imageObject = (NIMImageObject*)message.messageObject;
        //: NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];

        //: self.replyedContent.picView.hidden = NO;
        self.replyedContent.picView.hidden = NO;
        //: [self.replyedContent.picView sd_setImageWithURL:[NSURL URLWithString:url]];
        [self.replyedContent.picView sd_setImageWithURL:[NSURL URLWithString:url]];
        //: self.replyedContent.fromUser.left = self.replyedContent.picView.right+10;
        self.replyedContent.fromUser.left = self.replyedContent.picView.right+10;
        //: self.replyedContent.label.left = self.replyedContent.picView.right+10;
        self.replyedContent.label.left = self.replyedContent.picView.right+10;
    //: }else{
    }else{
        //: self.replyedContent.picView.hidden = YES;
        self.replyedContent.picView.hidden = YES;
        //: self.replyedContent.fromUser.left = 15;
        self.replyedContent.fromUser.left = 15;
        //: self.replyedContent.label.left = 15;
        self.replyedContent.label.left = 15;
    }

    //: self.replyedContent.hidden = NO;
    self.replyedContent.hidden = NO;
    //: [self.replyedContent setNeedsLayout];
    [self.replyedContent setNeedsLayout];
}

//: - (void)dismissReplyedContent
- (void)assemblage
{
    //: self.replyedContent.label.text = nil;
    self.replyedContent.label.text = nil;
    //: self.replyedContent.hidden = YES;
    self.replyedContent.hidden = YES;
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: #pragma mark - private methods
#pragma mark - private methods

//: - (void)setFrame:(CGRect)frame
- (void)setFrame:(CGRect)frame
{
    //: CGFloat height = self.frame.size.height;
    CGFloat height = self.frame.size.height;
    //: [super setFrame:frame];
    [super setFrame:frame];
    //: if (frame.size.height != height)
    if (frame.size.height != height)
    {
        //: [self callDidChangeHeight];
        [self pointHeight];
    }
}

//: - (void)callDidChangeHeight
- (void)pointHeight
{
    //: if (_inputDelegate && [_inputDelegate respondsToSelector:@selector(didChangeInputHeight:)])
    if (_inputDelegate && [_inputDelegate respondsToSelector:@selector(infoed:)])
    {
        //: if (self.status == NIMInputStatusMore || self.status == NIMInputStatusEmoticon || self.status == NIMInputStatusAudio)
        if (self.status == NIMInputStatusMore || self.status == NIMInputStatusEmoticon || self.status == NIMInputStatusAudio)
        {
            //这个时候需要一个动画来模拟键盘
            //: [UIView animateWithDuration:0.25 delay:0 options:7 animations:^{
            [UIView animateWithDuration:0.25 delay:0 options:7 animations:^{
                //: [_inputDelegate didChangeInputHeight:self.nim_height];
                [_inputDelegate infoed:self.nim_height];
            //: } completion:nil];
            } completion:nil];
        }
        //: else
        else
        {
            //: [_inputDelegate didChangeInputHeight:self.nim_height];
            [_inputDelegate infoed:self.nim_height];

        }
    }
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //这里不做.语法 get 操作，会提前初始化组件导致卡顿
    //: if (!_replyedContent.hidden)
    if (!_replyedContent.hidden)
    {
        //: self.toolBar.nim_top = _replyedContent.nim_bottom;
        self.toolBar.nim_top = _replyedContent.nim_bottom;
    }
    //: else
    else
    {
        //: self.toolBar.nim_top = 0.f;
        self.toolBar.nim_top = 0.f;
    }

    //: if (self.status == NIMInputStatusMore) {
    if (self.status == NIMInputStatusMore) {
        //: _moreContainer.nim_top = 0.f;
        _moreContainer.nim_top = 0.f;
        //: self.toolBar.nim_top = self.moreContainer.nim_bottom;
        self.toolBar.nim_top = self.moreContainer.nim_bottom;
        //: _emoticonContainer.nim_top = self.toolBar.nim_bottom;
        _emoticonContainer.nim_top = self.toolBar.nim_bottom;
    //: }else{
    }else{
        //: _moreContainer.nim_top = self.toolBar.nim_bottom;
        _moreContainer.nim_top = self.toolBar.nim_bottom;
        //: _emoticonContainer.nim_top = self.toolBar.nim_bottom;
        _emoticonContainer.nim_top = self.toolBar.nim_bottom;
    }
//    _moreContainer.nim_top     = self.toolBar.nim_bottom;
//    _emoticonContainer.nim_top = self.toolBar.nim_bottom;
}

//: - (FFFReplyContentView *)replyedContent
- (MaxAggregationView *)replyedContent
{
    //: if (!_replyedContent)
    if (!_replyedContent)
    {
        //: _replyedContent = [[FFFReplyContentView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 50)];
        _replyedContent = [[MaxAggregationView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 50)];
        //: _replyedContent.hidden = YES;
        _replyedContent.hidden = YES;
        //: _replyedContent.delegate = self;
        _replyedContent.delegate = self;
        //: [self addSubview:_replyedContent];
        [self addSubview:_replyedContent];
    }
    //: return _replyedContent;
    return _replyedContent;
}

//: - (void)setStatus:(NIMInputStatus)status
- (void)setStatus:(NIMInputStatus)status
{
    //: if (_status != status)
    if (_status != status)
    {
        //: _status = status;
        _status = status;
        //: switch (_status) {
        switch (_status) {
            //: case NIMInputStatusEmoticon:
            case NIMInputStatusEmoticon:
                //: [self checkEmoticonContainer];
                [self upgrade];
                //: break;
                break;
            //: case NIMInputStatusMore:
            case NIMInputStatusMore:
                //: [self checkMoreContainer];
                [self disable];
            //: default:
            default:
                //: break;
                break;
        }
    }
}


//: #pragma mark - button actions
#pragma mark - button actions
//: - (void)onTouchAlbunBtn:(id)sender {
- (void)enable:(id)sender {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(views:)]) {
        //: [self.actionDelegate onTapAlbunBtn:sender];
        [self.actionDelegate views:sender];
    }
}
//: - (void)onTouchCameraBtn {
- (void)distance {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapCameraBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(taped:)]) {
        //: [self.actionDelegate onTapCameraBtn:nil];
        [self.actionDelegate taped:nil];
    }

}

//: - (void)onTouchVoiceBtn:(id)sender {
- (void)infoed:(id)sender {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapAudioBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(images:)]) {
        //: [self.actionDelegate onTapAudioBtn:sender];
        [self.actionDelegate images:sender];
    }
}

//: - (IBAction)onTouchRecordBtnDown:(id)sender {
- (IBAction)userred:(id)sender {
    //: self.recordPhase = AudioRecordPhaseStart;
    self.recordPhase = AudioRecordPhaseStart;
}
//: - (IBAction)onTouchRecordBtnUpInside:(id)sender {
- (IBAction)betweenSuccess:(id)sender {
    // finish Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;
}
//: - (IBAction)onTouchRecordBtnUpOutside:(id)sender {
- (IBAction)showwed:(id)sender {
    // cancel Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;
}

//: - (IBAction)onTouchRecordBtnDragInside:(id)sender {
- (IBAction)sessionned:(id)sender {
    // "手指上滑，取消发送"
    //: self.recordPhase = AudioRecordPhaseRecording;
    self.recordPhase = AudioRecordPhaseRecording;
}
//: - (IBAction)onTouchRecordBtnDragOutside:(id)sender {
- (IBAction)counternalRepresentation:(id)sender {
    // "松开手指，取消发送"
    //: self.recordPhase = AudioRecordPhaseCancelling;
    self.recordPhase = AudioRecordPhaseCancelling;
}


//: - (void)onTouchEmoticonBtn:(id)sender
- (void)withs:(id)sender
{
    //: if (self.status != NIMInputStatusEmoticon) {
    if (self.status != NIMInputStatusEmoticon) {
        //: if ([self.actionDelegate respondsToSelector:@selector(onTapEmoticonBtn:)]) {
        if ([self.actionDelegate respondsToSelector:@selector(records:)]) {
            //: [self.actionDelegate onTapEmoticonBtn:sender];
            [self.actionDelegate records:sender];
        }
        //: [self checkEmoticonContainer];
        [self upgrade];
        //: [self bringSubviewToFront:self.emoticonContainer];
        [self bringSubviewToFront:self.emoticonContainer];
        //: [self.emoticonContainer setHidden:NO];
        [self.emoticonContainer setHidden:NO];
        //: [self.moreContainer setHidden:YES];
        [self.moreContainer setHidden:YES];
        //: [self refreshStatus:NIMInputStatusEmoticon];
        [self title:NIMInputStatusEmoticon];
        //: [self sizeToFit];
        [self sizeToFit];

        //: if (self.toolBar.showsKeyboard)
        if (self.toolBar.showsKeyboard)
        {
            //: self.toolBar.showsKeyboard = NO;
            self.toolBar.showsKeyboard = NO;
        }

    }
    //: else
    else
    {
        //: [self refreshStatus:NIMInputStatusText];
        [self title:NIMInputStatusText];
        //: self.toolBar.showsKeyboard = YES;
        self.toolBar.showsKeyboard = YES;
    }
}

//: - (void)onTouchMoreBtn {
- (void)max {
    //: if (self.status != NIMInputStatusMore)
    if (self.status != NIMInputStatusMore)
    {
//        if ([self.actionDelegate respondsToSelector:@selector(onTapMoreBtn:)]) {
//            [self.actionDelegate onTapMoreBtn:sender];
//        }
        //: [self checkMoreContainer];
        [self disable];
        //: [self bringSubviewToFront:self.moreContainer];
        [self bringSubviewToFront:self.moreContainer];
        //: [self.moreContainer.albumPickerView.selectedAssets removeAllObjects];
        [self.moreContainer.albumPickerView.selectedAssets removeAllObjects];
        //: [self.moreContainer.albumPickerView.collectionView reloadData];
        [self.moreContainer.albumPickerView.collectionView reloadData];
        //: [self.moreContainer setHidden:NO];
        [self.moreContainer setHidden:NO];
        //: [self.emoticonContainer setHidden:YES];
        [self.emoticonContainer setHidden:YES];
        //: [self refreshStatus:NIMInputStatusMore];
        [self title:NIMInputStatusMore];
        //: [self sizeToFit];
        [self sizeToFit];

        //: if (self.toolBar.showsKeyboard)
        if (self.toolBar.showsKeyboard)
        {
            //: self.toolBar.showsKeyboard = NO;
            self.toolBar.showsKeyboard = NO;
        }
    }
    //: else
    else
    {
        //: [self refreshStatus:NIMInputStatusText];
        [self title:NIMInputStatusText];
        //: self.toolBar.showsKeyboard = YES;
        self.toolBar.showsKeyboard = YES;
    }
}

/**
 *  请求相册
 */
//: - (void)requestAuthorizationForPhotoLibrary
- (void)pastSend
{
    //: if (self.toolBar.showsKeyboard)
    if (self.toolBar.showsKeyboard)
    {
        //: self.toolBar.showsKeyboard = NO;
        self.toolBar.showsKeyboard = NO;
    }

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    //: if (PHAuthorizationStatusNotDetermined == authStatus) {
    if (PHAuthorizationStatusNotDetermined == authStatus) {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            //: if (PHAuthorizationStatusAuthorized == status) {
            if (PHAuthorizationStatusAuthorized == status) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self onTouchCameraBtn];
                    [self distance];
                //: });
                });
            }
        //: }];
        }];
        //: return;
        return;
    //: } else if (PHAuthorizationStatusAuthorized == authStatus){
    } else if (PHAuthorizationStatusAuthorized == authStatus){
        //: [self onTouchCameraBtn];
        [self distance];
    //: }else{
    }else{
        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[TeamManager sizeKey:StringFromPassengerData(kStr_ohoName)] message:[TeamManager sizeKey:StringFromPassengerData(kStr_extremeName)] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[TeamManager sizeKey:StringFromPassengerData(kStr_opponentData)] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[TeamManager sizeKey:StringFromPassengerData(kStr_leaseVentureData)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
//        [self presentViewController:alertControl animated:YES completion:nil];
        //: UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
        UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
        //: UIViewController *topViewController = rootViewController;
        UIViewController *topViewController = rootViewController;
           //: while (topViewController.presentedViewController) {
           while (topViewController.presentedViewController) {
               //: topViewController = topViewController.presentedViewController;
               topViewController = topViewController.presentedViewController;
           }
           //: [topViewController presentViewController:alertControl animated:YES completion:nil];
           [topViewController presentViewController:alertControl animated:YES completion:nil];
    }
}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: [self endEditing:YES];
    [self endEditing:YES];
}

//: - (BOOL)endEditing:(BOOL)force
- (BOOL)endEditing:(BOOL)force
{
    //: BOOL endEditing = [super endEditing:force];
    BOOL endEditing = [super endEditing:force];
    //: if (!self.toolBar.showsKeyboard) {
    if (!self.toolBar.showsKeyboard) {
        //: UIViewAnimationCurve curve = UIViewAnimationCurveEaseInOut;
        UIViewAnimationCurve curve = UIViewAnimationCurveEaseInOut;

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: void(^animations)(void) = ^{
        void(^animations)(void) = ^{
            //: [weakSelf refreshStatus:NIMInputStatusText];
            [weakSelf title:NIMInputStatusText];
            //: [weakSelf sizeToFit];
            [weakSelf sizeToFit];
            //: if (weakSelf.inputDelegate && [weakSelf.inputDelegate respondsToSelector:@selector(didChangeInputHeight:)]) {
            if (weakSelf.inputDelegate && [weakSelf.inputDelegate respondsToSelector:@selector(infoed:)]) {
                //: [weakSelf.inputDelegate didChangeInputHeight:weakSelf.nim_height];
                [weakSelf.inputDelegate infoed:weakSelf.nim_height];
            }
        //: };
        };
        //: NSTimeInterval duration = 0.25;
        NSTimeInterval duration = 0.25;
        //: [UIView animateWithDuration:duration delay:0.0f options:(curve << 16 | UIViewAnimationOptionBeginFromCurrentState) animations:animations completion:nil];
        [UIView animateWithDuration:duration delay:0.0f options:(curve << 16 | UIViewAnimationOptionBeginFromCurrentState) animations:animations completion:nil];
    }
    //: return endEditing;
    return endEditing;
}


//: #pragma mark - FFFInputToolBarDelegate
#pragma mark - ItemDelegate

//: - (BOOL)textViewShouldBeginEditing
- (BOOL)itemAfter
{
    //: [self refreshStatus:NIMInputStatusText];
    [self title:NIMInputStatusText];
    //: return YES;
    return YES;
}

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
- (BOOL)colorChangeTitle:(NSRange)range message:(NSString *)text
{
    //: if ([text isEqualToString:@"\n"])
    if ([text isEqualToString:@"\n"])
    {
        //: [self didPressSend:nil];
        [self nameRange:nil];
        //: return NO;
        return NO;
    }
    //: if ([text isEqualToString:@""] && range.length == 1 )
    if ([text isEqualToString:@""] && range.length == 1 )
    {
        //非选择删除
        //: return [self onTextDelete];
        return [self pastColor];
    }
    //: if ([self shouldCheckAt])
    if ([self remarkAt])
    {
        // @ 功能
        //: [self checkAt:text];
        [self alongCanvassEnd:text];
    }
    //: NSString *str = [self.toolBar.contentText stringByAppendingString:text];
    NSString *str = [self.toolBar.contentText stringByAppendingString:text];
    //: if (str.length > self.maxTextLength)
    if (str.length > self.maxTextLength)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (BOOL)shouldCheckAt
- (BOOL)remarkAt
{
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([self.inputConfig respondsToSelector:@selector(disableAt)])
    if ([self.inputConfig respondsToSelector:@selector(occurrenceAt)])
    {
        //: disable = [self.inputConfig disableAt];
        disable = [self.inputConfig occurrenceAt];
    }
    //: return !disable;
    return !disable;
}

//: - (void)checkAt:(NSString *)text
- (void)alongCanvassEnd:(NSString *)text
{
    //: if ([text isEqualToString:@"@"]) {
    if ([text isEqualToString:@"@"]) {
        //: switch (self.session.sessionType)
        switch (self.session.sessionType)
        {
            //: case NIMSessionTypeTeam:
            case NIMSessionTypeTeam:
            {
                //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
                AppLength *config = [[AppLength alloc] init];
                //: config.teamType = NIMKitTeamTypeNomal;
                config.teamType = NIMKitTeamTypeNomal;
                //: config.needMutiSelected = NO;
                config.needMutiSelected = NO;
                //: config.teamId = self.session.sessionId;
                config.teamId = self.session.sessionId;
                //: config.session = self.session;
                config.session = self.session;
                //: config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                TeamPictureViewController *vc = [[TeamPictureViewController alloc] initWithIconTitle:config];
                //: vc.delegate = self;
                vc.delegate = self;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [vc show];
                    [vc application];
                //: });
                });
            }
                //: break;
                break;
            //: case NIMSessionTypeSuperTeam:
            case NIMSessionTypeSuperTeam:
            {
                //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
                AppLength *config = [[AppLength alloc] init];
                //: config.teamType = NIMKitTeamTypeSuper;
                config.teamType = NIMKitTeamTypeSuper;
                //: config.needMutiSelected = NO;
                config.needMutiSelected = NO;
                //: config.teamId = self.session.sessionId;
                config.teamId = self.session.sessionId;
                //: config.session = self.session;
                config.session = self.session;
                //: config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                TeamPictureViewController *vc = [[TeamPictureViewController alloc] initWithIconTitle:config];
                //: vc.delegate = self;
                vc.delegate = self;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [vc show];
                    [vc application];
                //: });
                });
            }
                //: break;
                break;
            //: case NIMSessionTypeP2P:
            case NIMSessionTypeP2P:
                //: break;
                break;
            //: case NIMSessionTypeChatroom:
            case NIMSessionTypeChatroom:
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    }
}


//: - (void)textViewDidChange
- (void)recordOn
{
    //: if (self.actionDelegate && [self.actionDelegate respondsToSelector:@selector(onTextChanged:)])
    if (self.actionDelegate && [self.actionDelegate respondsToSelector:@selector(userred:)])
    {
        //: [self.actionDelegate onTextChanged:self];
        [self.actionDelegate userred:self];
    }
}


//: - (void)toolBarDidChangeHeight:(CGFloat)height
- (void)toolDisableGraduate:(CGFloat)height
{
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)addAtItems:(NSArray *)selectedContacts
- (void)gammaHydroxybutyrate:(NSArray *)selectedContacts
{
    //: NSMutableString *str = [[NSMutableString alloc] initWithString:@"@"];
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"@"];
    //: [self addContacts:selectedContacts prefix:str];
    [self coverPin:selectedContacts sessionPrefix:str];
}

//: #pragma mark - NIMContactSelectDelegate
#pragma mark - MessageAction
//: - (void)didFinishedSelect:(NSArray *)selectedContacts
- (void)ting:(NSArray *)selectedContacts
{
    //: NSMutableString *str = [[NSMutableString alloc] initWithString:@""];
    NSMutableString *str = [[NSMutableString alloc] initWithString:@""];
    //: [self addContacts:selectedContacts prefix:str];
    [self coverPin:selectedContacts sessionPrefix:str];
}

//: - (void)addContacts:(NSArray *)selectedContacts prefix:(NSMutableString *)str
- (void)coverPin:(NSArray *)selectedContacts sessionPrefix:(NSMutableString *)str
{
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    Option *option = [[Option alloc] init];
    //: option.session = self.session;
    option.session = self.session;
    //: option.forbidaAlias = YES;
    option.forbidaAlias = YES;
    //: for (NSString *uid in selectedContacts) {
    for (NSString *uid in selectedContacts) {
        //: NSString *nick = [[MyUserKit sharedKit].provider infoByUser:uid option:option].showName;
        NSString *nick = [[Notice fullKit].provider value:uid manager:option].showName;
        //: [str appendString:nick];
        [str appendString:nick];
        //: [str appendString:@"\u2004"];
        [str appendString:@"\u2004"];
        //: if (![selectedContacts.lastObject isEqualToString:uid]) {
        if (![selectedContacts.lastObject isEqualToString:uid]) {
            //: [str appendString:@"@"];
            [str appendString:@"@"];
        }
        //: NIMInputAtItem *item = [[NIMInputAtItem alloc] init];
        ByMessage *item = [[ByMessage alloc] init];
        //: item.uid = uid;
        item.uid = uid;
        //: item.name = nick;
        item.name = nick;
        //: [self.atCache addAtItem:item];
        [self.atCache be:item];
    }
    //: [self.toolBar insertText:str];
    [self.toolBar saveAccount:str];
}

//: #pragma mark - InputEmoticonProtocol
#pragma mark - InputEmoticonProtocol
//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description{
- (void)byTitle:(NSString*)emoticonID should:(NSString*)emotCatalogID model:(NSString *)description{
    //: if (!emotCatalogID) { 
    if (!emotCatalogID) { //删除键
        //: [self doButtonDeleteText];
        [self searched];
    //: }else{
    }else{
        //: if ([emotCatalogID isEqualToString:@"default"]) {
        if ([emotCatalogID isEqualToString:StringFromPassengerData(kStr_speakerDaughterValue)]) {
            //: [self.toolBar insertAttributedText:description withEmoji:YES];
            [self.toolBar day:description segment:YES];
        //: }else{
        }else{
            //发送贴图消息
            //: if ([self.actionDelegate respondsToSelector:@selector(onSelectChartlet:catalog:)]) {
            if ([self.actionDelegate respondsToSelector:@selector(item:along:)]) {
                //: [self.actionDelegate onSelectChartlet:emoticonID catalog:emotCatalogID];
                [self.actionDelegate item:emoticonID along:emotCatalogID];
            }
        }
    }
}

//: - (void)selectedGifEmoticon:(NSString*)gif
- (void)beautyBackground:(NSString*)gif
{
    //: [self.toolBar setPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.toolBar setPin:[TeamManager sizeKey:StringFromPassengerData(kStr_northernData)]];
    //发送贴图消息
    //: if ([self.actionDelegate respondsToSelector:@selector(onSelectChartlet:catalog:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(item:along:)]) {
        //: [self.actionDelegate onSelectChartlet:gif catalog:gif];
        [self.actionDelegate item:gif along:gif];
    }


}

//: - (void)didPressDelete:(id)sender
- (void)putOption:(id)sender
{
    //: self.toolBar.sendButton.hidden = YES;
    self.toolBar.sendButton.hidden = YES;
//    self.toolBar.emoticonBtn2.hidden = YES;
    //: [self.toolBar setPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.toolBar setPin:[TeamManager sizeKey:StringFromPassengerData(kStr_northernData)]];
    //: [self doButtonDeleteText];
    [self searched];

}

//: - (BOOL)isTextValid:(NSString *)text {
- (BOOL)back:(NSString *)text {
    //: NSString *trimmedText = [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *trimmedText = [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: if ([trimmedText length] == 0) {
    if ([trimmedText length] == 0) {
        //: return NO;
        return NO;
    }

    // 检查是否只包含空白字符
    //: NSCharacterSet *invalidChars = [[NSCharacterSet whitespaceAndNewlineCharacterSet] invertedSet];
    NSCharacterSet *invalidChars = [[NSCharacterSet whitespaceAndNewlineCharacterSet] invertedSet];
    //: NSRange range = [text rangeOfCharacterFromSet:invalidChars];
    NSRange range = [text rangeOfCharacterFromSet:invalidChars];
    //: return range.location != NSNotFound;
    return range.location != NSNotFound;
}

//: - (void)didPressSend:(id)sender
- (void)nameRange:(id)sender
{

    //: if ([self.actionDelegate respondsToSelector:@selector(onSendText:atUsers:)] && [self.toolBar.contentText length] > 0 && [self isTextValid:self.toolBar.contentText]) {
    if ([self.actionDelegate respondsToSelector:@selector(visualAspect:value:)] && [self.toolBar.contentText length] > 0 && [self back:self.toolBar.contentText]) {
//        NSString *sendText = self.toolBar.contentText;
//        [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];
//        [self.atCache clean];
//        self.toolBar.contentText = @"";
//        [self.toolBar layoutIfNeeded];

        //: NSMutableAttributedString *attM = [[NSMutableAttributedString alloc] initWithAttributedString:self.toolBar.inputTextView.attributedText];
        NSMutableAttributedString *attM = [[NSMutableAttributedString alloc] initWithAttributedString:self.toolBar.inputTextView.attributedText];
        //: NSString *sendText = [[self transformEmojiImageToEmojiDes:attM].string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSString *sendText = [[self streetSmart:attM].string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

        //: if(self.replyedContent.replymessage){
        if(self.replyedContent.replymessage){
            //: [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText] replymessage:self.replyedContent.replymessage];
            [self.actionDelegate manager:sendText start:[self.atCache infoAcross:sendText] name:self.replyedContent.replymessage];
        //: }else{
        }else{
            //: [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];
            [self.actionDelegate visualAspect:sendText value:[self.atCache infoAcross:sendText]];
        }
//        [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];

        //: [self.atCache clean];
        [self.atCache hideClean];
        //: self.toolBar.contentText = @"";
        self.toolBar.contentText = @"";
//        self.toolBar.sendButton.hidden = YES;
//        self.toolBar.emoticonBtn2.hidden = YES;
        //: [self.toolBar setPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"]];
        [self.toolBar setPin:[TeamManager sizeKey:StringFromPassengerData(kStr_northernData)]];
        //: [self.toolBar layoutIfNeeded];
        [self.toolBar layoutIfNeeded];

//        [self endEditing:YES];

    //: }else{
    }else{
        //: [self refreshStatus:NIMInputStatusText];
        [self title:NIMInputStatusText];
        //: [self sizeToFit];
        [self sizeToFit];

//        _moreContainer.albumPickerView.selectedAssets = nil;

            //: if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunArray:)]) {
            if ([self.actionDelegate respondsToSelector:@selector(withed:)]) {
                //: [self.actionDelegate onTapAlbunArray:self.selectedPhoto];
                [self.actionDelegate withed:self.selectedPhoto];
            }
    }
}

/// 把富文本里的表情图片转换成文字 '[哈哈]'
/// @param attrM 富文本
//: - (NSMutableAttributedString *)transformEmojiImageToEmojiDes:(NSMutableAttributedString *)attrM {
- (NSMutableAttributedString *)streetSmart:(NSMutableAttributedString *)attrM {
    //: [attrM enumerateAttribute:YYTextHighlightAttributeName inRange:NSMakeRange(0, attrM.length) options:NSAttributedStringEnumerationReverse usingBlock:^(id _Nullable value, NSRange range, BOOL * _Nonnull stop) {
    [attrM enumerateAttribute:YYTextHighlightAttributeName inRange:NSMakeRange(0, attrM.length) options:NSAttributedStringEnumerationReverse usingBlock:^(id _Nullable value, NSRange range, BOOL * _Nonnull stop) {
        //: if (value && [value isKindOfClass:[FFFTextHighlight class]]) {
        if (value && [value isKindOfClass:[SmartNameHighlight class]]) {
            //: FFFTextHighlight *textHighlight = value;
            SmartNameHighlight *textHighlight = value;
            //: if (textHighlight.type == FFFTextHighlightTypeEmoji) {
            if (textHighlight.type == FFFTextHighlightTypeEmoji) {
                //: [attrM replaceCharactersInRange:range withString:textHighlight.text];
                [attrM replaceCharactersInRange:range withString:textHighlight.text];
            }
        }
    //: }];
    }];
    //: return attrM;
    return attrM;
}



//: - (BOOL)onTextDelete
- (BOOL)pastColor
{
    //: NSRange range = [self delRangeForEmoticon];
    NSRange range = [self handle];
    //: if (range.length == 1)
    if (range.length == 1)
    {
        //删的不是表情，可能是@
        //: NIMInputAtItem *item = [self delRangeForAt];
        ByMessage *item = [self title];
        //: if (item) {
        if (item) {
            //: range = item.range;
            range = item.range;
        }
    }
    //: if (range.length == 1) {
    if (range.length == 1) {
        //自动删除
        //: return YES;
        return YES;
    }
    //: [self.toolBar deleteText:range];
    [self.toolBar window:range];
    //: return NO;
    return NO;
}

//: - (BOOL)doButtonDeleteText
- (BOOL)searched
{
    //: NSRange range = [self delRangeForLastComponent];
    NSRange range = [self numberernationalism];
    //: if (range.length == 1)
    if (range.length == 1)
    {
        //删的不是表情，可能是@
        //: NIMInputAtItem *item = [self delRangeForAt];
        ByMessage *item = [self title];
        //: if (item) {
        if (item) {
            //: range = item.range;
            range = item.range;
        }
    }

    //: [self.toolBar deleteText:range];
    [self.toolBar window:range];
    //: return NO;
    return NO;
}


//: - (NSRange)delRangeForEmoticon
- (NSRange)handle
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar bluish];
    //: BOOL isEmoji = NO;
    BOOL isEmoji = NO;
    //: if (selectedRange.location >= 2) {
    if (selectedRange.location >= 2) {
        //: NSString *subStr = [text substringWithRange:NSMakeRange(selectedRange.location - 2, 2)];
        NSString *subStr = [text substringWithRange:NSMakeRange(selectedRange.location - 2, 2)];
        //: isEmoji = [subStr nim_containsEmoji];
        isEmoji = [subStr with];
    }

    //: NSRange range = NSMakeRange(selectedRange.location - 1, 1);
    NSRange range = NSMakeRange(selectedRange.location - 1, 1);
    //: if (isEmoji) {
    if (isEmoji) {
        //: range = NSMakeRange(selectedRange.location-2, 2);
        range = NSMakeRange(selectedRange.location-2, 2);
    //: } else {
    } else {
        //: NSRange subRange = [self rangeForPrefix:@"[" suffix:@"]"];
        NSRange subRange = [self tag:@"[" message:@"]"];
        //: if (subRange.length > 1)
        if (subRange.length > 1)
        {
            //: NSString *name = [text substringWithRange:subRange];
            NSString *name = [text substringWithRange:subRange];
            //: NIMInputEmoticon *icon = [[FFFInputEmoticonManager sharedManager] emoticonByTag:name];
            CellEmoticon *icon = [[AppManager administrator] doName:name];
            //: range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
            range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
        }
    }

    //: return range;
    return range;
}

//: - (NSRange)delRangeForLastComponent
- (NSRange)numberernationalism
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar bluish];
    //: if (selectedRange.location == 0)
    if (selectedRange.location == 0)
    {
        //: return NSMakeRange(0, 0) ;
        return NSMakeRange(0, 0) ;
    }

    //: NSRange range;
    NSRange range;
    //: NSRange subRange = [self rangeForPrefix:@"[" suffix:@"]"];
    NSRange subRange = [self tag:@"[" message:@"]"];

    //: if (text.length > 0 &&
    if (text.length > 0 &&
        //: [[text substringFromIndex:text.length - 1] isEqualToString:@"]"] &&
        [[text substringFromIndex:text.length - 1] isEqualToString:@"]"] &&
        //: subRange.length > 1)
        subRange.length > 1)
    {
        //: NSString *name = [text substringWithRange:subRange];
        NSString *name = [text substringWithRange:subRange];
        //: NIMInputEmoticon *icon = [[FFFInputEmoticonManager sharedManager] emoticonByTag:name];
        CellEmoticon *icon = [[AppManager administrator] doName:name];
        //: range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
        range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
    }
    //: else
    else
    {
        //: range = [text nim_rangeOfLastUnicode];
        range = [text usageUnicode];
    }

    //: return range;
    return range;
}


//: - (NIMInputAtItem *)delRangeForAt
- (ByMessage *)title
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange range = [self rangeForPrefix:@"@" suffix:@"\u2004"];
    NSRange range = [self tag:@"@" message:@"\u2004"];
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar bluish];
    //: NIMInputAtItem *item = nil;
    ByMessage *item = nil;
    //: if (range.length > 1)
    if (range.length > 1)
    {
        //: NSString *name = [text substringWithRange:range];
        NSString *name = [text substringWithRange:range];
        //: NSString *set = [@"@" stringByAppendingString:@"\u2004"];
        NSString *set = [@"@" stringByAppendingString:@"\u2004"];
        //: name = [name stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:set]];
        name = [name stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:set]];
        //: item = [self.atCache item:name];
        item = [self.atCache cookieItem:name];
        //: range = item? range : NSMakeRange(selectedRange.location - 1, 1);
        range = item? range : NSMakeRange(selectedRange.location - 1, 1);
    }
    //: item.range = range;
    item.range = range;
    //: return item;
    return item;
}


//: - (NSRange)rangeForPrefix:(NSString *)prefix suffix:(NSString *)suffix
- (NSRange)tag:(NSString *)prefix message:(NSString *)suffix
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange range = [self.toolBar selectedRange];
    NSRange range = [self.toolBar bluish];
    //: NSString *selectedText = range.length ? [text substringWithRange:range] : text;
    NSString *selectedText = range.length ? [text substringWithRange:range] : text;
    //: NSInteger endLocation = range.location;
    NSInteger endLocation = range.location;
    //: if (endLocation <= 0)
    if (endLocation <= 0)
    {
        //: return NSMakeRange(NSNotFound, 0);
        return NSMakeRange(NSNotFound, 0);
    }
    //: NSInteger index = -1;
    NSInteger index = -1;
    //: if ([selectedText hasSuffix:suffix]) {
    if ([selectedText hasSuffix:suffix]) {
        //往前搜最多20个字符，一般来讲是够了...
        //: NSInteger p = 20;
        NSInteger p = 20;
        //: for (NSInteger i = endLocation; i >= endLocation - p && i-1 >= 0 ; i--)
        for (NSInteger i = endLocation; i >= endLocation - p && i-1 >= 0 ; i--)
        {
            //: NSRange subRange = NSMakeRange(i - 1, 1);
            NSRange subRange = NSMakeRange(i - 1, 1);
            //: NSString *subString = [text substringWithRange:subRange];
            NSString *subString = [text substringWithRange:subRange];
            //: if ([subString compare:prefix] == NSOrderedSame)
            if ([subString compare:prefix] == NSOrderedSame)
            {
                //: index = i - 1;
                index = i - 1;
                //: break;
                break;
            }
        }
    }
    //: return index == -1? NSMakeRange(endLocation - 1, 1) : NSMakeRange(index, endLocation - index);
    return index == -1? NSMakeRange(endLocation - 1, 1) : NSMakeRange(index, endLocation - index);
}

//: #pragma mark - FFFReplyContentViewDelegate
#pragma mark - ClickDelegate

//: - (void)onClearReplyContent:(id)sender
- (void)hadithText:(id)sender
{
    //: [self setNeedsLayout];
    [self setNeedsLayout];
    //: self.toolBar.inputTextView.text = nil;
    self.toolBar.inputTextView.text = nil;
    //: self.toolBar.inputTextView.attributedText = nil;
    self.toolBar.inputTextView.attributedText = nil;

    //: NSString *placeholder = [MyUserKit sharedKit].config.placeholder;
    NSString *placeholder = [Notice fullKit].config.placeholder;
    //: [_toolBar setPlaceHolder:placeholder];
    [_toolBar setPin:placeholder];

    //: if ([self.actionDelegate respondsToSelector:@selector(didReplyCancelled)])
    if ([self.actionDelegate respondsToSelector:@selector(scaleTitle)])
    {
        //: [self.actionDelegate didReplyCancelled];
        [self.actionDelegate scaleTitle];
    }
}

//: @end
@end

Byte * PassengerDataToCache(Byte *data) {
    int drawAccess = data[0];
    int lease = data[1];
    int batteryShame = data[2];
    if (!drawAccess) return data + batteryShame;
    for (int i = 0; i < lease / 2; i++) {
        int begin = batteryShame + i;
        int end = batteryShame + lease - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[batteryShame + lease] = 0;
    return data + batteryShame;
}

NSString *StringFromPassengerData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PassengerDataToCache(data)];
}  
