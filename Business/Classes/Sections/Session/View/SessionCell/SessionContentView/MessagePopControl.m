
#import <Foundation/Foundation.h>

NSString *StringFromWhyEarnData(Byte *data);


//: {8,20,8,20}
Byte kStr_overnightValue[] = {78, 11, 39, 7, 217, 25, 191, 162, 95, 83, 89, 87, 83, 95, 83, 89, 87, 164, 250};


//: icon_session_time_bg
Byte kStr_thankData[] = {66, 20, 51, 9, 139, 217, 209, 225, 136, 156, 150, 162, 161, 146, 166, 152, 166, 166, 156, 162, 161, 146, 167, 156, 160, 152, 146, 149, 154, 114};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessagePopControl.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketTipContentView.h"
#import "MessagePopControl.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "StyleAction.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionRedPacketTipContentView()<M80AttributedLabelDelegate>
@interface MessagePopControl()<ProgramDelegate>

//: @end
@end

//: @implementation NTESSessionRedPacketTipContentView
@implementation MessagePopControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initInput
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initInput]) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[PopScrollView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:10];
        _label.font = [UIFont systemFontOfSize:10];
        //: _label.textColor = [UIColor whiteColor];;
        _label.textColor = [UIColor whiteColor];;

        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
        //: _label.M80delegate = self;
        _label.M80delegate = self;
        //: _label.underLineForLink = NO;
        _label.underLineForLink = NO;
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
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<NTESCustomAttachmentInfo> attachment = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ImaginationImageInfo> attachment = (id<ImaginationImageInfo>)object.attachment;
    //: [self.label setText:nil];
    [self.label setText:nil];
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(userMessage)]) {
        //: NSString *formatedMessage = attachment.formatedMessage;
        NSString *formatedMessage = attachment.userMessage;
        //: [self.label appendText:formatedMessage];
        [self.label telegram:formatedMessage];
        //: NSRange range = [formatedMessage rangeOfString:@"红包".ntes_localized];
        NSRange range = [formatedMessage rangeOfString:@"红包".titleLocalized];
        //: if (range.location != NSNotFound)
        if (range.location != NSNotFound)
        {
            //由于还有个 icon , 需要将 range 往后挪一个位置
//            range = NSMakeRange(range.location+1, range.length);
//            [self.label addCustomLink:model forRange:range linkColor:UIColorFromRGB(0x238efa)];
        }
    }
}




//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)sure:(UIControlState)state red:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:StringFromWhyEarnData(kStr_thankData)];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString(StringFromWhyEarnData(kStr_overnightValue));
    //: return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 20.f;
    CGFloat padding = 20.f;
    //: self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
    self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
}


//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - ProgramDelegate
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)show:(PopScrollView *)label
             //: clickedOnLink:(id)linkData
             change:(id)linkData
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(marginned:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        IndexBar *event = [[IndexBar alloc] init];
        //: event.eventName = NTESShowRedPacketDetailEvent;
        event.eventName = let_indexTapFrameData;
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

Byte * WhyEarnDataToCache(Byte *data) {
    int scheduleThem = data[0];
    int pdaTing = data[1];
    Byte selfMoving = data[2];
    int spa = data[3];
    if (!scheduleThem) return data + spa;
    for (int i = spa; i < spa + pdaTing; i++) {
        int value = data[i] - selfMoving;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[spa + pdaTing] = 0;
    return data + spa;
}

NSString *StringFromWhyEarnData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)WhyEarnDataToCache(data)];
}
