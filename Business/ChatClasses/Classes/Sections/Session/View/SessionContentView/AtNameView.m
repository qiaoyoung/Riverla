
#import <Foundation/Foundation.h>

NSString *StringFromMusicianData(Byte *data);


//: NTESMessageTranslate
Byte kStr_countFileText[] = {92, 20, 17, 13, 243, 123, 141, 179, 254, 44, 137, 152, 39, 95, 101, 86, 100, 94, 118, 132, 132, 114, 120, 118, 101, 131, 114, 127, 132, 125, 114, 133, 118, 211};


//: invalid item selector!
Byte kStr_hugeDocumentaryData[] = {64, 22, 80, 7, 64, 114, 18, 185, 190, 198, 177, 188, 185, 180, 112, 185, 196, 181, 189, 112, 195, 181, 188, 181, 179, 196, 191, 194, 113, 177};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtNameView.m
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionTextContentView.h"
#import "AtNameView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import "FFFTextView.h"
#import "BubbleScrollView.h"
//: #import "FFFSessionConfig.h"
#import "FrameConfig.h"
//: #import "NTESSessionViewController.h"
#import "RadiogramViewController.h"
//: #import "NSObject+tyl_internalIdentifier.h"
#import "NSObject+Spectacles.h"

//: NSString *const NIMTextMessageLabelLinkData = @"NIMTextMessageLabelLinkData";
NSString *const kLet_normalData = @"NIMTextMessageLabelLinkData";

//: @interface FFFSessionTextContentView()<M80AttributedLabelDelegate>
@interface AtNameView()<BoundaryDelegate>

//: @property (nonatomic, strong) NSString *urlStr;
@property (nonatomic, strong) NSString *urlStr;
//: @property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) NSURL *url;

//: @end
@end

//: @implementation FFFSessionTextContentView
@implementation AtNameView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initShowDown
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initShowDown]) {
        //: _textView = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textView = [[ShowTitleView alloc] initWithFrame:CGRectZero];
        //: _textView.M80delegate = self;
        _textView.M80delegate = self;
        //: _textView.numberOfLines = 0;
        _textView.numberOfLines = 0;
        //: _textView.autoDetectLinks = YES;
        _textView.autoDetectLinks = YES;
        //: _textView.underLineForLink = YES;
        _textView.underLineForLink = YES;
        //: _textView.lineBreakMode = NSLineBreakByWordWrapping;
        _textView.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textView.backgroundColor = [UIColor clearColor];
        _textView.backgroundColor = [UIColor clearColor];
        //: _textView.isShowTextSelection = YES;
        _textView.isShowTextSelection = YES;
        //        _textView.selectable = YES;


        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: _textView.selectBlock = ^(FFFMediaItem *item) {
        _textView.selectBlock = ^(ImageRecent *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(onLongTap:)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(texts:)]) {
                //: NSString *text = [self.textView.text substringWithRange:self.textView.selectedRange];
                NSString *text = [self.textView.text substringWithRange:self.textView.selectedRange];
                //: self.model.message.tyl_internalIdentifier = text;
                self.model.message.Spectacles = text;
                //: [self.delegate onLongTap:self.model.message];
                [self.delegate texts:self.model.message];
                //: if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(onTapMediaItem:)]) {
                if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(keeping:)]) {
                    //: BOOL handled = [self.textView.actionDelegate onTapMediaItem:item];
                    BOOL handled = [self.textView.actionDelegate keeping:item];
                    //: if (!handled) {
                    if (!handled) {
                        //: NSAssert(0, @"invalid item selector!");
                        NSAssert(0, StringFromMusicianData(kStr_hugeDocumentaryData));
                    }
                }
            }
        //: };
        };
        //: _textView.praiseSelectBlock = ^(NSInteger tag){
        _textView.praiseSelectBlock = ^(NSInteger tag){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(onTapPraiseItem: withMessage:)]) {
            if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(elect: showHolder:)]) {
                    //: [self.textView.actionDelegate onTapPraiseItem:tag withMessage:self.model.message];
                    [self.textView.actionDelegate elect:tag showHolder:self.model.message];
                }
        //: };
        };

        //: [self addSubview:_textView];
        [self addSubview:_textView];
    }
    //: return self;
    return self;
}

//: -(void)gotoUrl
-(void)sumKey
{
    //: if ([[UIApplication sharedApplication] canOpenURL:self.url]) {
    if ([[UIApplication sharedApplication] canOpenURL:self.url]) {
        //: [[UIApplication sharedApplication] openURL:self.url options:@{} completionHandler:^(BOOL success) {
        [[UIApplication sharedApplication] openURL:self.url options:@{} completionHandler:^(BOOL success) {
        //: }];
        }];
    }
}

//: - (BOOL)checkUrlWithString:(NSString *)str
- (BOOL)confirm:(NSString *)str
{
    //: __block BOOL isUrl = NO;
    __block BOOL isUrl = NO;
    //: NSError *error = nil;
    NSError *error = nil;
    //: NSDataDetector *detector = [NSDataDetector
    NSDataDetector *detector = [NSDataDetector
                                //: dataDetectorWithTypes:NSTextCheckingTypeLink
                                dataDetectorWithTypes:NSTextCheckingTypeLink
                                //: error:&error];
                                error:&error];

    //: [detector enumerateMatchesInString:str
    [detector enumerateMatchesInString:str
                               //: options:0
                               options:0
                                 //: range:NSMakeRange(0, str.length)
                                 range:NSMakeRange(0, str.length)
                            //: usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                            usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {

        //: if (result.resultType == NSTextCheckingTypeLink) {
        if (result.resultType == NSTextCheckingTypeLink) {
            //: isUrl = YES;
            isUrl = YES;
            //: self.url = result.URL;
            self.url = result.URL;
        }
    //: }];
    }];

    //: return isUrl;
    return isUrl;
}

//: - (void)refresh:(FFFMessageModel *)data
- (void)scale:(StochasticProcessTeam *)data
{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }

    //: [super refresh:data];
    [super scale:data];

    //: NSString *text = self.model.message.text;
    NSString *text = self.model.message.text;
    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    WorkerSetting *setting = [[Afterwards blue].config with:data.message];
    //: self.textView.textColor = setting.textColor;
    self.textView.textColor = setting.textColor;
    //: self.textView.font = setting.font;
    self.textView.font = setting.font;
    //: [self.textView nim_setText:text];
    [self.textView time:text];

    //: if ([self.delegate respondsToSelector:@selector(onLongTap:complete:)]) {
    if ([self.delegate respondsToSelector:@selector(title:withMargin:)]) {
        //: BOOL shouldShowMenuByMessage = [self.delegate onLongTap:data.message complete:^(id data) {
        BOOL shouldShowMenuByMessage = [self.delegate title:data.message withMargin:^(id data) {
            //: if ([data isKindOfClass:[NTESSessionViewController class]]) {
            if ([data isKindOfClass:[RadiogramViewController class]]) {
                //: NTESSessionViewController *vc = (NTESSessionViewController *)data;
                RadiogramViewController *vc = (RadiogramViewController *)data;
                //: self.textView.actionDelegate = vc;
                self.textView.actionDelegate = vc;
                //: self.textView.config = vc.sessionConfig;
                self.textView.config = vc.actinicRayConfig;
            }
        //: }];
        }];

        //: self.textView.isShowTextSelection = shouldShowMenuByMessage;
        self.textView.isShowTextSelection = shouldShowMenuByMessage;
        //: if (shouldShowMenuByMessage) {
        if (shouldShowMenuByMessage) {
            //: [self.textView genMediaButtonsWithMessage:data.message];
            [self.textView emptyDown:data.message];
        }
    }

    //: if(self.model.message.text.length>0
    if(self.model.message.text.length>0
       //: ){
       ){
        //: BOOL isValid = [self checkUrlWithString:self.model.message.text];
        BOOL isValid = [self confirm:self.model.message.text];
        //: if(isValid){
        if(isValid){
            //: _textView.userInteractionEnabled = YES;
            _textView.userInteractionEnabled = YES;
            //: UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(gotoUrl)];
            UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(sumKey)];
            //: [_textView addGestureRecognizer:singleTap];
            [_textView addGestureRecognizer:singleTap];
        }
    //: }else{
    }else{
        //: NSLog(@"xiaoxiID:%@",self.model.message.messageId);
    }
}




//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model contentMidSize:tableViewWidth];
    //    CGSize contentsize         = [self contentSize:tableViewWidth message:self.model.message];
    //: CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.textView.frame = labelFrame;
    self.textView.frame = labelFrame;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)tool:(CGFloat)cellWidth domain:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: if ([message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
    if ([message.localExt.allKeys containsObject:StringFromMusicianData(kStr_countFileText)])
    {
        //: text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:@"NTESMessageTranslate"]];
        text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:StringFromMusicianData(kStr_countFileText)]];
    }
    //: self.textView.font = [[MyUserKit sharedKit].config setting:message].font;
    self.textView.font = [[Afterwards blue].config with:message].font;
    //: [self.textView nim_setText:text];
    [self.textView time:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: return [self.textView sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.textView sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - BoundaryDelegate
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)hold:(ShowTitleView *)label
             //: clickedOnLink:(id)linkData{
             label:(id)linkData{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    KitOperation *event = [[KitOperation alloc] init];
    //: event.eventName = FFFKitEventNameTapLabelLink;
    event.eventName = kLet_channelValue;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: event.data = linkData;
    event.data = linkData;
    //: [self.delegate onCatchEvent:event];
    [self.delegate bluePosition:event];
}

//: @end
@end

Byte * MusicianDataToCache(Byte *data) {
    int stereoAllSignificance = data[0];
    int hourAddition = data[1];
    Byte mootBias = data[2];
    int sumerlanguage = data[3];
    if (!stereoAllSignificance) return data + sumerlanguage;
    for (int i = sumerlanguage; i < sumerlanguage + hourAddition; i++) {
        int value = data[i] - mootBias;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[sumerlanguage + hourAddition] = 0;
    return data + sumerlanguage;
}

NSString *StringFromMusicianData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MusicianDataToCache(data)];
}
