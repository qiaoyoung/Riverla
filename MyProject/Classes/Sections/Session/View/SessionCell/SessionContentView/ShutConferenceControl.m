
#import <Foundation/Foundation.h>

NSString *StringFromImageData(Byte *data);        


//: 按住查看
Byte kStr_ballName[] = {17, 12, 48, 12, 211, 49, 52, 249, 255, 196, 59, 3, 182, 92, 89, 180, 141, 95, 182, 111, 117, 183, 108, 91, 228};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShutConferenceControl.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionSnapchatContentView.h"
#import "ShutConferenceControl.h"
//: #import "NTESSnapchatAttachment.h"
#import "PresentAttachment.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"

//: NSString *const NIMDemoEventNameOpenSnapPicture = @"NIMDemoEventNameOpenSnapPicture";
NSString *const let_upData = @"NIMDemoEventNameOpenSnapPicture";
//: NSString *const NIMDemoEventNameCloseSnapPicture = @"NIMDemoEventNameCloseSnapPicture";
NSString *const let_barCustomTitle = @"NIMDemoEventNameCloseSnapPicture";


//: @interface NTESSessionSnapchatContentView()
@interface ShutConferenceControl()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;
@property (nonatomic,strong) UILongPressGestureRecognizer *longpressGesture;

//: @end
@end

//: @implementation NTESSessionSnapchatContentView
@implementation ShutConferenceControl


//: - (instancetype)initSessionMessageContentView{
- (instancetype)initInput{
    //: self = [super initSessionMessageContentView];
    self = [super initInput];
    //: if (self) {
    if (self) {
        //: _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPressDown:)];
        _longpressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(red:)];
        //: [self addGestureRecognizer:_longpressGesture];
        [self addGestureRecognizer:_longpressGesture];
        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: self.bubbleImageView.hidden = YES;
        self.bubbleImageView.hidden = YES;//图片背景自带气泡。。

        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:13.f];
        _label.font = [UIFont systemFontOfSize:13.f];
        //: _label.textColor = [UIColor grayColor];
        _label.textColor = [UIColor grayColor];
        //: _label.text = @"按住查看".ntes_localized;
        _label.text = StringFromImageData(kStr_ballName).titleLocalized;
        //: [_label sizeToFit];
        [_label sizeToFit];
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)model{
- (void)key:(MaxLink *)model{
    //: [super refresh:model];
    [super key:model];
    //: NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)model.message.messageObject;
    //: NTESSnapchatAttachment *attachment = (NTESSnapchatAttachment *)customObject.attachment;
    PresentAttachment *attachment = (PresentAttachment *)customObject.attachment;
    //: self.imageView.image = attachment.showCoverImage;
    self.imageView.image = attachment.showCoverImage;
    //: self.label.hidden = attachment.isFired;
    self.label.hidden = attachment.isFired;
    //: self.longpressGesture.enabled = !attachment.isFired;
    self.longpressGesture.enabled = !attachment.isFired;

    //禁用掉FFFMessageCell中的长按手势，防止手势冲突
    //: [self disableMessageCellGesture:!attachment.isFired];
    [self communication:!attachment.isFired];
}

//: - (void)disableMessageCellGesture:(BOOL)disable {
- (void)communication:(BOOL)disable {
    //: if ([self.delegate respondsToSelector:@selector(disableLongPress:)]) {
    if ([self.delegate respondsToSelector:@selector(titleMessage:)]) {
        //: [self.delegate disableLongPress:disable];
        [self.delegate titleMessage:disable];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    NIMCustomObject * customObject = (NIMCustomObject*)self.model.message.messageObject;
    //: NTESSnapchatAttachment *attachment = (NTESSnapchatAttachment *)customObject.attachment;
    PresentAttachment *attachment = (PresentAttachment *)customObject.attachment;
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: UIImage *showCoverImage = attachment.showCoverImage;
    UIImage *showCoverImage = attachment.showCoverImage;
    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, showCoverImage.size.width, showCoverImage.size.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, showCoverImage.size.width, showCoverImage.size.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;

    //: CGFloat customSnapMessageImageRightToText = 5.f;
    CGFloat customSnapMessageImageRightToText = 5.f;
    //: CGFloat customSnapMessageTextBottom = 20.f;
    CGFloat customSnapMessageTextBottom = 20.f;
    //: self.label.left = self.model.message.isOutgoingMsg ? self.imageView.left - customSnapMessageImageRightToText - self.label.width : self.imageView.right + customSnapMessageImageRightToText + 5;
    self.label.left = self.model.message.isOutgoingMsg ? self.imageView.left - customSnapMessageImageRightToText - self.label.width : self.imageView.right + customSnapMessageImageRightToText + 5;
    //: self.label.bottom = self.imageView.bottom - customSnapMessageTextBottom ;
    self.label.bottom = self.imageView.bottom - customSnapMessageTextBottom ;
}



//: - (void)onLongPressDown:(UILongPressGestureRecognizer *)recognizer
- (void)red:(UILongPressGestureRecognizer *)recognizer
{
    //: NIMMessage *message = self.model.message;
    NIMMessage *message = self.model.message;
    //: if (!message.isReceivedMsg && message.deliveryState != NIMMessageDeliveryStateDeliveried) {
    if (!message.isReceivedMsg && message.deliveryState != NIMMessageDeliveryStateDeliveried) {
        //: return;
        return;
    }
    //: if (recognizer.state != UIGestureRecognizerStateBegan) {
    if (recognizer.state != UIGestureRecognizerStateBegan) {
        //: return;
        return;
    }
    //: recognizer.enabled = NO;
    recognizer.enabled = NO;
    //: [self goOpen];
    [self pry];
}


//: - (void)onTouchUpInside:(id)sender{
- (void)duringRemote:(id)sender{
    //: if (self.presentedView) {
    if (self.dedication) {
        //: [self goClose];
        [self aggregation];
    }
}

//: - (void)onTouchUpOutside:(id)sender{
- (void)celled:(id)sender{
    //: if (self.presentedView) {
    if (self.dedication) {
        //: [self goClose];
        [self aggregation];
    }
}

//: - (void)goOpen{
- (void)pry{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(marginned:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        IndexBar *event = [[IndexBar alloc] init];
        //: event.eventName = NIMDemoEventNameOpenSnapPicture;
        event.eventName = let_upData;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate marginned:event];
    }
}

//: - (void)goClose{
- (void)aggregation{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(marginned:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        IndexBar *event = [[IndexBar alloc] init];
        //: event.eventName = NIMDemoEventNameCloseSnapPicture;
        event.eventName = let_barCustomTitle;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate marginned:event];
    }
}


//: @end
@end

Byte * ImageDataToCache(Byte *data) {
    int respectBroken = data[0];
    int vanguard = data[1];
    Byte assistant = data[2];
    int conceive = data[3];
    if (!respectBroken) return data + conceive;
    for (int i = conceive; i < conceive + vanguard; i++) {
        int value = data[i] + assistant;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[conceive + vanguard] = 0;
    return data + conceive;
}

NSString *StringFromImageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ImageDataToCache(data)];
}
