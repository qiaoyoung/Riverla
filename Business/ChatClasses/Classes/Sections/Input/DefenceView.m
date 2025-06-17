
#import <Foundation/Foundation.h>
typedef struct {
    Byte voiceCorridor;
    Byte *jackstones;
    unsigned int greengrocer;
    bool proper;
} SurmiseData;

NSString *StringFromSurmiseData(SurmiseData *data);


//: message_please_enter_content
SurmiseData kStr_supermarketContent = (SurmiseData){16, (Byte []){125, 117, 99, 99, 113, 119, 117, 79, 96, 124, 117, 113, 99, 117, 79, 117, 126, 100, 117, 98, 79, 115, 127, 126, 100, 117, 126, 100, 194}, 28, false};


//: default
SurmiseData kStr_lagValue = (SurmiseData){86, (Byte []){50, 51, 48, 55, 35, 58, 34, 107}, 7, false};


//: tag_activity_set
SurmiseData kStr_tallData = (SurmiseData){238, (Byte []){154, 143, 137, 177, 143, 141, 154, 135, 152, 135, 154, 151, 177, 157, 139, 154, 235}, 16, false};


//: #ffffff
SurmiseData kStr_grossValue = (SurmiseData){153, (Byte []){186, 255, 255, 255, 255, 255, 255, 11}, 7, false};


//: contact_tag_fragment_cancel
SurmiseData kStr_soleOxygenContent = (SurmiseData){215, (Byte []){180, 184, 185, 163, 182, 180, 163, 136, 163, 182, 176, 136, 177, 165, 182, 176, 186, 178, 185, 163, 136, 180, 182, 185, 180, 178, 187, 64}, 27, false};


//: setting_privacy
SurmiseData kStr_pinionTitle = (SurmiseData){109, (Byte []){30, 8, 25, 25, 4, 3, 10, 50, 29, 31, 4, 27, 12, 14, 20, 214}, 15, false};


//: warm_prompt
SurmiseData kStr_properTitle = (SurmiseData){133, (Byte []){242, 228, 247, 232, 218, 245, 247, 234, 232, 245, 241, 28}, 11, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DefenceView.m
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFInputView.h"
#import "DefenceView.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "FFFInputMoreContainerView.h"
#import "ArrayView.h"
//: #import "FFFInputEmoticonContainerView.h"
#import "KeyIndexView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFInputEmoticonDefine.h"
#import "FFFInputEmoticonDefine.h"
//: #import "FFFInputEmoticonManager.h"
#import "ViewManager.h"
//: #import "FFFInputToolBar.h"
#import "StatusToolView.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFContactSelectViewController.h"
#import "ClearViewController.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "FFFKitInfoFetchOption.h"
#import "EmptyKey.h"
//: #import "FFFKitKeyboardInfo.h"
#import "OnRecentClose.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Afterwards.h"
//: #import "FFFReplyContentView.h"
#import "OffView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"
//: #import <YYText.h>
#import <YYText.h>
//: #import "FFFTextHighlight.h"
#import "EliteTitleHighlight.h"
//: #import "PhotoContainerView.h"
#import "ElectionView.h"

//: @interface FFFInputView()<FFFInputToolBarDelegate,NIMInputEmoticonProtocol,NIMContactSelectDelegate,FFFReplyContentViewDelegate,moreCustomPickerViewDelegate>
@interface DefenceView()<MarginDelegate,EmoticonMessage,CipherColor,EmptyPop,moreCustomPickerViewDelegate>
{
    //: UIView *_emoticonView;
    UIView *_emoticonView;
}


//: @property (nonatomic, assign) NIMAudioRecordPhase recordPhase;
@property (nonatomic, assign) NIMAudioRecordPhase recordPhase;
//: @property (nonatomic, weak) id<FFFSessionConfig> inputConfig;
@property (nonatomic, weak) id<FrameConfig> inputConfig;
//: @property (nonatomic, weak) id<NIMInputDelegate> inputDelegate;
@property (nonatomic, weak) id<InputTable> inputDelegate;
//: @property (nonatomic, weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic, weak) id<SizeDelegate> actionDelegate;

//: @property (nonatomic, assign) CGFloat keyBoardFrameTop; 
@property (nonatomic, assign) CGFloat keyBoardFrameTop; //键盘的frame的top值，屏幕高度 - 键盘高度，由于有旋转的可能，这个值只有当 键盘弹出时才有意义。

//: @property (nonatomic, strong) NSArray *selectedPhoto;
@property (nonatomic, strong) NSArray *selectedPhoto;


//: @end
@end


//: @implementation FFFInputView
@implementation DefenceView

//: @synthesize emoticonContainer = _emoticonContainer;
@synthesize emoticonContainer = _emoticonContainer;
//: @synthesize moreContainer = _moreContainer;
@synthesize moreContainer = _moreContainer;

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithMessage:(CGRect)frame
                       //: config:(id<FFFSessionConfig>)config
                       show:(id<FrameConfig>)config
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
        _atCache = [[VoidCache alloc] init];
        //: _inputConfig = config;
        _inputConfig = config;
        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor withMax:StringFromSurmiseData(&kStr_grossValue)];
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
    [self leaf];
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
            CGFloat keyboardDelta = [OnRecentClose image].keyboardHeight - safeArea.bottom;

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
- (void)setInputDelegate:(id<InputTable>)delegate
{
    //: _inputDelegate = delegate;
    _inputDelegate = delegate;
}

//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate
- (void)setAt:(id<SizeDelegate>)actionDelegate
{
    //: _actionDelegate = actionDelegate;
    _actionDelegate = actionDelegate;
}

//: - (void)reset
- (void)colorWith
{
    //: self.nim_width = self.superview.nim_width;
    self.nim_width = self.superview.nim_width;
    //: [self refreshStatus:NIMInputStatusText];
    [self with:NIMInputStatusText];
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)refreshStatus:(NIMInputStatus)status
- (void)with:(NIMInputStatus)status
{
    //: self.status = status;
    self.status = status;
    //: [self.toolBar update:status];
    [self.toolBar secret:status];
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
- (void)leaf
{
    //: if (!_toolBar)
    if (!_toolBar)
    {
        //: _toolBar = [[FFFInputToolBar alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
        _toolBar = [[StatusToolView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
    }
    //: [self addSubview:_toolBar];
    [self addSubview:_toolBar];
    //设置placeholder
//        NSString *placeholder = [Afterwards sharedKit].config.placeholder;
//        [_toolBar setPlaceHolder:placeholder];
    //: [_toolBar setPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [_toolBar setMarshal:[ItemManager sessionInformation:StringFromSurmiseData(&kStr_supermarketContent)]];
    //设置input bar 上的按钮
    //: if ([_inputConfig respondsToSelector:@selector(inputBarItemTypes)]) {
    if ([_inputConfig respondsToSelector:@selector(imageLoad)]) {
        //: NSArray *types = [_inputConfig inputBarItemTypes];
        NSArray *types = [_inputConfig imageLoad];
        //: [_toolBar setInputBarItemTypes:types];
        [_toolBar setInputBarItemTypes:types];
    }

    //: _toolBar.delegate = self;
    _toolBar.delegate = self;
    //: [_toolBar.emoticonBtn addTarget:self action:@selector(onTouchEmoticonBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.emoticonBtn addTarget:self action:@selector(texts:) forControlEvents:UIControlEventTouchUpInside];
//    [_toolBar.emoticonBtn2 addTarget:self action:@selector(onTouchEmoticonBtn:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.albunBtn addTarget:self action:@selector(requestAuthorizationForPhotoLibrary) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.albunBtn addTarget:self action:@selector(imageSelect) forControlEvents:UIControlEventTouchUpInside];
//    [_toolBar.cameraBtn addTarget:self action:@selector(onTouchCameraBtn:) forControlEvents:UIControlEventTouchUpInside];
    //    [_toolBar.moreMediaBtn addTarget:self action:@selector(onTouchMoreBtn:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.voiceButton addTarget:self action:@selector(onTouchVoiceBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.voiceButton addTarget:self action:@selector(colorView:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.sendButton addTarget:self action:@selector(onTouchSendBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.sendButton addTarget:self action:@selector(shouldBtn:) forControlEvents:UIControlEventTouchUpInside];
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
    NSInteger textInputLength = [Afterwards blue].config.inputMaxLength;
    //: self.maxTextLength = textInputLength;
    self.maxTextLength = textInputLength;

    //: [self refreshStatus:NIMInputStatusText];
    [self with:NIMInputStatusText];
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)PickerDidSelectAssets:(NSArray<PHAsset *> *)assets
- (void)trivialityBe:(NSArray<PHAsset *> *)assets
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
- (void)elite
{
    //: if (!_moreContainer) {
    if (!_moreContainer) {
        //: _moreContainer = [[FFFInputMoreContainerView alloc] initWithFrame:CGRectZero];
        _moreContainer = [[ArrayView alloc] initWithFrame:CGRectZero];
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
- (void)enableupContainer
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
- (void)orientation
{
    //: if (!_emoticonContainer) {
    if (!_emoticonContainer) {
        //: FFFInputEmoticonContainerView *emoticonContainer = [[FFFInputEmoticonContainerView alloc] initWithFrame:CGRectZero];
        KeyIndexView *emoticonContainer = [[KeyIndexView alloc] initWithFrame:CGRectZero];

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
- (void)shouldBtn:(id)sender{
    //: [self didPressSend:nil];
    [self sendApp:nil];
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
- (void)setSet:(NSString*)placeHolder
{
    //: [_toolBar setPlaceHolder:placeHolder];
    [_toolBar setMarshal:placeHolder];
}

//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor
- (void)session:(NSString*)placeHolder count:(UIColor *)placeholderColor
{
    //: [_toolBar setPlaceHolder:placeHolder color:placeholderColor];
    [_toolBar viewInColor:placeHolder postposeData:placeholderColor];
}

//: - (void)updateAudioRecordTime:(NSTimeInterval)time {
- (void)imageExtra:(NSTimeInterval)time {

}

//: - (void)updateVoicePower:(float)power {
- (void)human:(float)power {

}

//: - (void)refreshReplyedContent:(NIMMessage *)message
- (void)flipContent:(NIMMessage *)message
{
    //: NSString *text = [NSString stringWithFormat:@"%@", [[MyUserKit sharedKit] replyedContentWithMessage:message]];
    NSString *text = [NSString stringWithFormat:@"%@", [[Afterwards blue] bottommed:message]];

    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    EmptyKey *option = [[EmptyKey alloc] init];
    //: option.message = message;
    option.message = message;
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:message.from option:option];
    MarginThanInfo *info = [[Afterwards blue] put:message.from button:option];
    //: self.replyedContent.fromUser.text = [NSString stringWithFormat:@"%@%@",[FFFLanguageManager getTextWithKey:@"回复"],info.showName];
    self.replyedContent.fromUser.text = [NSString stringWithFormat:@"%@%@",[ItemManager sessionInformation:@"回复"],info.showName];
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
- (void)container
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
        [self lowness];
    }
}

//: - (void)callDidChangeHeight
- (void)lowness
{
    //: if (_inputDelegate && [_inputDelegate respondsToSelector:@selector(didChangeInputHeight:)])
    if (_inputDelegate && [_inputDelegate respondsToSelector:@selector(displayed:)])
    {
        //: if (self.status == NIMInputStatusMore || self.status == NIMInputStatusEmoticon || self.status == NIMInputStatusAudio)
        if (self.status == NIMInputStatusMore || self.status == NIMInputStatusEmoticon || self.status == NIMInputStatusAudio)
        {
            //这个时候需要一个动画来模拟键盘
            //: [UIView animateWithDuration:0.25 delay:0 options:7 animations:^{
            [UIView animateWithDuration:0.25 delay:0 options:7 animations:^{
                //: [_inputDelegate didChangeInputHeight:self.nim_height];
                [_inputDelegate displayed:self.nim_height];
            //: } completion:nil];
            } completion:nil];
        }
        //: else
        else
        {
            //: [_inputDelegate didChangeInputHeight:self.nim_height];
            [_inputDelegate displayed:self.nim_height];

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
- (OffView *)replyedContent
{
    //: if (!_replyedContent)
    if (!_replyedContent)
    {
        //: _replyedContent = [[FFFReplyContentView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 50)];
        _replyedContent = [[OffView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 50)];
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
                [self orientation];
                //: break;
                break;
            //: case NIMInputStatusMore:
            case NIMInputStatusMore:
                //: [self checkMoreContainer];
                [self elite];
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
- (void)anagrammatizeBtn:(id)sender {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(pressed:)]) {
        //: [self.actionDelegate onTapAlbunBtn:sender];
        [self.actionDelegate pressed:sender];
    }
}
//: - (void)onTouchCameraBtn {
- (void)cellWithRecording {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapCameraBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(languaging:)]) {
        //: [self.actionDelegate onTapCameraBtn:nil];
        [self.actionDelegate languaging:nil];
    }

}

//: - (void)onTouchVoiceBtn:(id)sender {
- (void)colorView:(id)sender {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapAudioBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(heritaging:)]) {
        //: [self.actionDelegate onTapAudioBtn:sender];
        [self.actionDelegate heritaging:sender];
    }
}

//: - (IBAction)onTouchRecordBtnDown:(id)sender {
- (IBAction)valued:(id)sender {
    //: self.recordPhase = AudioRecordPhaseStart;
    self.recordPhase = AudioRecordPhaseStart;
}
//: - (IBAction)onTouchRecordBtnUpInside:(id)sender {
- (IBAction)mightHaveBeen:(id)sender {
    // finish Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;
}
//: - (IBAction)onTouchRecordBtnUpOutside:(id)sender {
- (IBAction)brushing:(id)sender {
    // cancel Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;
}

//: - (IBAction)onTouchRecordBtnDragInside:(id)sender {
- (IBAction)appearred:(id)sender {
    // "手指上滑，取消发送"
    //: self.recordPhase = AudioRecordPhaseRecording;
    self.recordPhase = AudioRecordPhaseRecording;
}
//: - (IBAction)onTouchRecordBtnDragOutside:(id)sender {
- (IBAction)pining:(id)sender {
    // "松开手指，取消发送"
    //: self.recordPhase = AudioRecordPhaseCancelling;
    self.recordPhase = AudioRecordPhaseCancelling;
}


//: - (void)onTouchEmoticonBtn:(id)sender
- (void)texts:(id)sender
{
    //: if (self.status != NIMInputStatusEmoticon) {
    if (self.status != NIMInputStatusEmoticon) {
        //: if ([self.actionDelegate respondsToSelector:@selector(onTapEmoticonBtn:)]) {
        if ([self.actionDelegate respondsToSelector:@selector(findOff:)]) {
            //: [self.actionDelegate onTapEmoticonBtn:sender];
            [self.actionDelegate findOff:sender];
        }
        //: [self checkEmoticonContainer];
        [self orientation];
        //: [self bringSubviewToFront:self.emoticonContainer];
        [self bringSubviewToFront:self.emoticonContainer];
        //: [self.emoticonContainer setHidden:NO];
        [self.emoticonContainer setHidden:NO];
        //: [self.moreContainer setHidden:YES];
        [self.moreContainer setHidden:YES];
        //: [self refreshStatus:NIMInputStatusEmoticon];
        [self with:NIMInputStatusEmoticon];
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
        [self with:NIMInputStatusText];
        //: self.toolBar.showsKeyboard = YES;
        self.toolBar.showsKeyboard = YES;
    }
}

//: - (void)onTouchMoreBtn {
- (void)blue {
    //: if (self.status != NIMInputStatusMore)
    if (self.status != NIMInputStatusMore)
    {
//        if ([self.actionDelegate respondsToSelector:@selector(onTapMoreBtn:)]) {
//            [self.actionDelegate onTapMoreBtn:sender];
//        }
        //: [self checkMoreContainer];
        [self elite];
        //: [self bringSubviewToFront:self.moreContainer];
        [self bringSubviewToFront:self.moreContainer];
        //: [self.moreContainer.albumPickerView reloadMediaData];
        [self.moreContainer.albumPickerView parentBar];
        //: [self.moreContainer.albumPickerView.selectedAssets removeAllObjects];
        [self.moreContainer.albumPickerView.selectedAssets removeAllObjects];
        //: [self.moreContainer.albumPickerView.collectionView reloadData];
        [self.moreContainer.albumPickerView.collectionView reloadData];
        //: [self.moreContainer setHidden:NO];
        [self.moreContainer setHidden:NO];
        //: [self.emoticonContainer setHidden:YES];
        [self.emoticonContainer setHidden:YES];
        //: [self refreshStatus:NIMInputStatusMore];
        [self with:NIMInputStatusMore];
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
        [self with:NIMInputStatusText];
        //: self.toolBar.showsKeyboard = YES;
        self.toolBar.showsKeyboard = YES;
    }
}

/**
 *  请求相册
 */
//: - (void)requestAuthorizationForPhotoLibrary
- (void)imageSelect
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
                    [self cellWithRecording];
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
        [self cellWithRecording];
    //: }else{
    }else{
        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[ItemManager sessionInformation:StringFromSurmiseData(&kStr_properTitle)] message:[ItemManager sessionInformation:StringFromSurmiseData(&kStr_pinionTitle)] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[ItemManager sessionInformation:StringFromSurmiseData(&kStr_soleOxygenContent)] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[ItemManager sessionInformation:StringFromSurmiseData(&kStr_tallData)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
            [weakSelf with:NIMInputStatusText];
            //: [weakSelf sizeToFit];
            [weakSelf sizeToFit];
            //: if (weakSelf.inputDelegate && [weakSelf.inputDelegate respondsToSelector:@selector(didChangeInputHeight:)]) {
            if (weakSelf.inputDelegate && [weakSelf.inputDelegate respondsToSelector:@selector(displayed:)]) {
                //: [weakSelf.inputDelegate didChangeInputHeight:weakSelf.nim_height];
                [weakSelf.inputDelegate displayed:weakSelf.nim_height];
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
#pragma mark - MarginDelegate

//: - (BOOL)textViewShouldBeginEditing
- (BOOL)viewCell
{
    //: [self refreshStatus:NIMInputStatusText];
    [self with:NIMInputStatusText];
    //: return YES;
    return YES;
}

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
- (BOOL)voice:(NSRange)range disabled:(NSString *)text
{
    //: if ([text isEqualToString:@"\n"])
    if ([text isEqualToString:@"\n"])
    {
        //: [self didPressSend:nil];
        [self sendApp:nil];
        //: return NO;
        return NO;
    }
    //: if ([text isEqualToString:@""] && range.length == 1 )
    if ([text isEqualToString:@""] && range.length == 1 )
    {
        //非选择删除
        //: return [self onTextDelete];
        return [self index];
    }
    //: if ([self shouldCheckAt])
    if ([self monitor])
    {
        // @ 功能
        //: [self checkAt:text];
        [self direction:text];
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
- (BOOL)monitor
{
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([self.inputConfig respondsToSelector:@selector(disableAt)])
    if ([self.inputConfig respondsToSelector:@selector(tingSend)])
    {
        //: disable = [self.inputConfig disableAt];
        disable = [self.inputConfig tingSend];
    }
    //: return !disable;
    return !disable;
}

//: - (void)checkAt:(NSString *)text
- (void)direction:(NSString *)text
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
                RecentJoinerMessage *config = [[RecentJoinerMessage alloc] init];
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
                ClearViewController *vc = [[ClearViewController alloc] initWithRecording:config];
                //: vc.delegate = self;
                vc.delegate = self;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [vc show];
                    [vc parent];
                //: });
                });
            }
                //: break;
                break;
            //: case NIMSessionTypeSuperTeam:
            case NIMSessionTypeSuperTeam:
            {
                //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
                RecentJoinerMessage *config = [[RecentJoinerMessage alloc] init];
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
                ClearViewController *vc = [[ClearViewController alloc] initWithRecording:config];
                //: vc.delegate = self;
                vc.delegate = self;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [vc show];
                    [vc parent];
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
- (void)titleChange
{
    //: if (self.actionDelegate && [self.actionDelegate respondsToSelector:@selector(onTextChanged:)])
    if (self.actionDelegate && [self.actionDelegate respondsToSelector:@selector(ofed:)])
    {
        //: [self.actionDelegate onTextChanged:self];
        [self.actionDelegate ofed:self];
    }
}


//: - (void)toolBarDidChangeHeight:(CGFloat)height
- (void)sessions:(CGFloat)height
{
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)addAtItems:(NSArray *)selectedContacts
- (void)size:(NSArray *)selectedContacts
{
    //: NSMutableString *str = [[NSMutableString alloc] initWithString:@"@"];
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"@"];
    //: [self addContacts:selectedContacts prefix:str];
    [self touch:selectedContacts doing:str];
}

//: #pragma mark - NIMContactSelectDelegate
#pragma mark - CipherColor
//: - (void)didFinishedSelect:(NSArray *)selectedContacts
- (void)frameEffectCheck:(NSArray *)selectedContacts
{
    //: NSMutableString *str = [[NSMutableString alloc] initWithString:@""];
    NSMutableString *str = [[NSMutableString alloc] initWithString:@""];
    //: [self addContacts:selectedContacts prefix:str];
    [self touch:selectedContacts doing:str];
}

//: - (void)addContacts:(NSArray *)selectedContacts prefix:(NSMutableString *)str
- (void)touch:(NSArray *)selectedContacts doing:(NSMutableString *)str
{
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    EmptyKey *option = [[EmptyKey alloc] init];
    //: option.session = self.session;
    option.session = self.session;
    //: option.forbidaAlias = YES;
    option.forbidaAlias = YES;
    //: for (NSString *uid in selectedContacts) {
    for (NSString *uid in selectedContacts) {
        //: NSString *nick = [[MyUserKit sharedKit].provider infoByUser:uid option:option].showName;
        NSString *nick = [[Afterwards blue].provider put:uid button:option].showName;
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
        SignAstatineInventoryItem *item = [[SignAstatineInventoryItem alloc] init];
        //: item.uid = uid;
        item.uid = uid;
        //: item.name = nick;
        item.name = nick;
        //: [self.atCache addAtItem:item];
        [self.atCache digitizer:item];
    }
    //: [self.toolBar insertText:str];
    [self.toolBar rubric:str];
}

//: #pragma mark - InputEmoticonProtocol
#pragma mark - InputEmoticonProtocol
//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description{
- (void)withSize:(NSString*)emoticonID key:(NSString*)emotCatalogID bar:(NSString *)description{
    //: if (!emotCatalogID) { 
    if (!emotCatalogID) { //删除键
        //: [self doButtonDeleteText];
        [self lineText];
    //: }else{
    }else{
        //: if ([emotCatalogID isEqualToString:@"default"]) {
        if ([emotCatalogID isEqualToString:StringFromSurmiseData(&kStr_lagValue)]) {
            //: [self.toolBar insertAttributedText:description withEmoji:YES];
            [self.toolBar attributed:description emojiSize:YES];
        //: }else{
        }else{
            //发送贴图消息
            //: if ([self.actionDelegate respondsToSelector:@selector(onSelectChartlet:catalog:)]) {
            if ([self.actionDelegate respondsToSelector:@selector(along:will:)]) {
                //: [self.actionDelegate onSelectChartlet:emoticonID catalog:emotCatalogID];
                [self.actionDelegate along:emoticonID will:emotCatalogID];
            }
        }
    }
}

//: - (void)selectedGifEmoticon:(NSString*)gif
- (void)keepTitle:(NSString*)gif
{
    //: [self.toolBar setPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.toolBar setMarshal:[ItemManager sessionInformation:StringFromSurmiseData(&kStr_supermarketContent)]];
    //发送贴图消息
    //: if ([self.actionDelegate respondsToSelector:@selector(onSelectChartlet:catalog:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(along:will:)]) {
        //: [self.actionDelegate onSelectChartlet:gif catalog:gif];
        [self.actionDelegate along:gif will:gif];
    }


}

//: - (void)didPressDelete:(id)sender
- (void)fileOn:(id)sender
{
    //: self.toolBar.sendButton.hidden = YES;
    self.toolBar.sendButton.hidden = YES;
//    self.toolBar.emoticonBtn2.hidden = YES;
    //: [self.toolBar setPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.toolBar setMarshal:[ItemManager sessionInformation:StringFromSurmiseData(&kStr_supermarketContent)]];
    //: [self doButtonDeleteText];
    [self lineText];

}

//: - (BOOL)isTextValid:(NSString *)text {
- (BOOL)send:(NSString *)text {
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
- (void)sendApp:(id)sender
{

    //: if ([self.actionDelegate respondsToSelector:@selector(onSendText:atUsers:)] && [self.toolBar.contentText length] > 0 && [self isTextValid:self.toolBar.contentText]) {
    if ([self.actionDelegate respondsToSelector:@selector(trademark:searched:)] && [self.toolBar.contentText length] > 0 && [self send:self.toolBar.contentText]) {
//        NSString *sendText = self.toolBar.contentText;
//        [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];
//        [self.atCache clean];
//        self.toolBar.contentText = @"";
//        [self.toolBar layoutIfNeeded];

        //: NSMutableAttributedString *attM = [[NSMutableAttributedString alloc] initWithAttributedString:self.toolBar.inputTextView.attributedText];
        NSMutableAttributedString *attM = [[NSMutableAttributedString alloc] initWithAttributedString:self.toolBar.inputTextView.attributedText];
        //: NSString *sendText = [[self transformEmojiImageToEmojiDes:attM].string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSString *sendText = [[self thread:attM].string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

        //: if(self.replyedContent.replymessage){
        if(self.replyedContent.replymessage){
            //: [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText] replymessage:self.replyedContent.replymessage];
            [self.actionDelegate sleepingTablet:sendText title:[self.atCache value:sendText] duringSend:self.replyedContent.replymessage];
        //: }else{
        }else{
            //: [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];
            [self.actionDelegate trademark:sendText searched:[self.atCache value:sendText]];
        }
//        [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];

        //: [self.atCache clean];
        [self.atCache make];
        //: self.toolBar.contentText = @"";
        self.toolBar.contentText = @"";
//        self.toolBar.sendButton.hidden = YES;
//        self.toolBar.emoticonBtn2.hidden = YES;
        //: [self.toolBar setPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"]];
        [self.toolBar setMarshal:[ItemManager sessionInformation:StringFromSurmiseData(&kStr_supermarketContent)]];
        //: [self.toolBar layoutIfNeeded];
        [self.toolBar layoutIfNeeded];

//        [self endEditing:YES];

    //: }else{
    }else{
        //: [self refreshStatus:NIMInputStatusText];
        [self with:NIMInputStatusText];
        //: [self sizeToFit];
        [self sizeToFit];

//        _moreContainer.albumPickerView.selectedAssets = nil;

            //: if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunArray:)]) {
            if ([self.actionDelegate respondsToSelector:@selector(usering:)]) {
                //: [self.actionDelegate onTapAlbunArray:self.selectedPhoto];
                [self.actionDelegate usering:self.selectedPhoto];
            }
    }
}

/// 把富文本里的表情图片转换成文字 '[哈哈]'
/// @param attrM 富文本
//: - (NSMutableAttributedString *)transformEmojiImageToEmojiDes:(NSMutableAttributedString *)attrM {
- (NSMutableAttributedString *)thread:(NSMutableAttributedString *)attrM {
    //: [attrM enumerateAttribute:YYTextHighlightAttributeName inRange:NSMakeRange(0, attrM.length) options:NSAttributedStringEnumerationReverse usingBlock:^(id _Nullable value, NSRange range, BOOL * _Nonnull stop) {
    [attrM enumerateAttribute:YYTextHighlightAttributeName inRange:NSMakeRange(0, attrM.length) options:NSAttributedStringEnumerationReverse usingBlock:^(id _Nullable value, NSRange range, BOOL * _Nonnull stop) {
        //: if (value && [value isKindOfClass:[FFFTextHighlight class]]) {
        if (value && [value isKindOfClass:[EliteTitleHighlight class]]) {
            //: FFFTextHighlight *textHighlight = value;
            EliteTitleHighlight *textHighlight = value;
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
- (BOOL)index
{
    //: NSRange range = [self delRangeForEmoticon];
    NSRange range = [self unwanted];
    //: if (range.length == 1)
    if (range.length == 1)
    {
        //删的不是表情，可能是@
        //: NIMInputAtItem *item = [self delRangeForAt];
        SignAstatineInventoryItem *item = [self drogue];
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
    [self.toolBar to:range];
    //: return NO;
    return NO;
}

//: - (BOOL)doButtonDeleteText
- (BOOL)lineText
{
    //: NSRange range = [self delRangeForLastComponent];
    NSRange range = [self extentWithComponent];
    //: if (range.length == 1)
    if (range.length == 1)
    {
        //删的不是表情，可能是@
        //: NIMInputAtItem *item = [self delRangeForAt];
        SignAstatineInventoryItem *item = [self drogue];
        //: if (item) {
        if (item) {
            //: range = item.range;
            range = item.range;
        }
    }

    //: [self.toolBar deleteText:range];
    [self.toolBar to:range];
    //: return NO;
    return NO;
}


//: - (NSRange)delRangeForEmoticon
- (NSRange)unwanted
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar messageRange];
    //: BOOL isEmoji = NO;
    BOOL isEmoji = NO;
    //: if (selectedRange.location >= 2) {
    if (selectedRange.location >= 2) {
        //: NSString *subStr = [text substringWithRange:NSMakeRange(selectedRange.location - 2, 2)];
        NSString *subStr = [text substringWithRange:NSMakeRange(selectedRange.location - 2, 2)];
        //: isEmoji = [subStr nim_containsEmoji];
        isEmoji = [subStr userDate];
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
        NSRange subRange = [self selected:@"[" bottom_strong:@"]"];
        //: if (subRange.length > 1)
        if (subRange.length > 1)
        {
            //: NSString *name = [text substringWithRange:subRange];
            NSString *name = [text substringWithRange:subRange];
            //: NIMInputEmoticon *icon = [[FFFInputEmoticonManager sharedManager] emoticonByTag:name];
            CommentToTemp *icon = [[ViewManager common] mark:name];
            //: range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
            range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
        }
    }

    //: return range;
    return range;
}

//: - (NSRange)delRangeForLastComponent
- (NSRange)extentWithComponent
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar messageRange];
    //: if (selectedRange.location == 0)
    if (selectedRange.location == 0)
    {
        //: return NSMakeRange(0, 0) ;
        return NSMakeRange(0, 0) ;
    }

    //: NSRange range;
    NSRange range;
    //: NSRange subRange = [self rangeForPrefix:@"[" suffix:@"]"];
    NSRange subRange = [self selected:@"[" bottom_strong:@"]"];

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
        CommentToTemp *icon = [[ViewManager common] mark:name];
        //: range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
        range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
    }
    //: else
    else
    {
        //: range = [text nim_rangeOfLastUnicode];
        range = [text show];
    }

    //: return range;
    return range;
}


//: - (NIMInputAtItem *)delRangeForAt
- (SignAstatineInventoryItem *)drogue
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange range = [self rangeForPrefix:@"@" suffix:@"\u2004"];
    NSRange range = [self selected:@"@" bottom_strong:@"\u2004"];
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar messageRange];
    //: NIMInputAtItem *item = nil;
    SignAstatineInventoryItem *item = nil;
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
        item = [self.atCache beforeView:name];
        //: range = item? range : NSMakeRange(selectedRange.location - 1, 1);
        range = item? range : NSMakeRange(selectedRange.location - 1, 1);
    }
    //: item.range = range;
    item.range = range;
    //: return item;
    return item;
}


//: - (NSRange)rangeForPrefix:(NSString *)prefix suffix:(NSString *)suffix
- (NSRange)selected:(NSString *)prefix bottom_strong:(NSString *)suffix
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange range = [self.toolBar selectedRange];
    NSRange range = [self.toolBar messageRange];
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
#pragma mark - EmptyPop

//: - (void)onClearReplyContent:(id)sender
- (void)darkGreenCell:(id)sender
{
    //: [self setNeedsLayout];
    [self setNeedsLayout];
    //: self.toolBar.inputTextView.text = nil;
    self.toolBar.inputTextView.text = nil;
    //: self.toolBar.inputTextView.attributedText = nil;
    self.toolBar.inputTextView.attributedText = nil;

    //: NSString *placeholder = [MyUserKit sharedKit].config.placeholder;
    NSString *placeholder = [Afterwards blue].config.placeholder;
    //: [_toolBar setPlaceHolder:placeholder];
    [_toolBar setMarshal:placeholder];

    //: if ([self.actionDelegate respondsToSelector:@selector(didReplyCancelled)])
    if ([self.actionDelegate respondsToSelector:@selector(alongFrom)])
    {
        //: [self.actionDelegate didReplyCancelled];
        [self.actionDelegate alongFrom];
    }
}

//: @end
@end

Byte *SurmiseDataToByte(SurmiseData *data) {
    if (data->proper) return data->jackstones;
    for (int i = 0; i < data->greengrocer; i++) {
        data->jackstones[i] ^= data->voiceCorridor;
    }
    data->jackstones[data->greengrocer] = 0;
    data->proper = true;
    return data->jackstones;
}

NSString *StringFromSurmiseData(SurmiseData *data) {
    return [NSString stringWithUTF8String:(char *)SurmiseDataToByte(data)];
}
