
#import <Foundation/Foundation.h>

NSString *StringFromComplexData(Byte *data);        


//: icon_session_time_bg
Byte kStr_platformTitle[] = {58, 20, 41, 4, 64, 58, 70, 69, 54, 74, 60, 74, 74, 64, 70, 69, 54, 75, 64, 68, 60, 54, 57, 62, 142};


//: {8,20,8,20}
Byte kStr_tearValue[] = {45, 11, 31, 13, 10, 101, 243, 23, 223, 71, 197, 141, 240, 92, 25, 13, 19, 17, 13, 25, 13, 19, 17, 94, 40};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageNameView.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketTipContentView.h"
#import "MessageNameView.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "CommentAttachment.h"
//: #import "UIView+NTES.h"
#import "UIView+Closes.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionRedPacketTipContentView()<M80AttributedLabelDelegate>
@interface MessageNameView()<BoundaryDelegate>

//: @end
@end

//: @implementation NTESSessionRedPacketTipContentView
@implementation MessageNameView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initShowDown
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initShowDown]) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[ShowTitleView alloc] initWithFrame:CGRectZero];
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
- (void)scale:(StochasticProcessTeam *)model{
    //: [super refresh:model];
    [super scale:model];
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<NTESCustomAttachmentInfo> attachment = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<EmptyInfo> attachment = (id<EmptyInfo>)object.attachment;
    //: [self.label setText:nil];
    [self.label setText:nil];
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(closeBar)]) {
        //: NSString *formatedMessage = attachment.formatedMessage;
        NSString *formatedMessage = attachment.closeBar;
        //: [self.label appendText:formatedMessage];
        [self.label cell:formatedMessage];
        //: NSRange range = [formatedMessage rangeOfString:@"红包".ntes_localized];
        NSRange range = [formatedMessage rangeOfString:@"红包".aboveMagnitude];
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
- (UIImage *)lab:(UIControlState)state preface:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:StringFromComplexData(kStr_platformTitle)];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString(StringFromComplexData(kStr_tearValue));
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
#pragma mark - BoundaryDelegate
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)hold:(ShowTitleView *)label
             //: clickedOnLink:(id)linkData
             label:(id)linkData
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(bluePosition:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        KitOperation *event = [[KitOperation alloc] init];
        //: event.eventName = NTESShowRedPacketDetailEvent;
        event.eventName = kLet_tabContent;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate bluePosition:event];
    }
}


//: @end
@end

Byte * ComplexDataToCache(Byte *data) {
    int herebyAttack = data[0];
    int infotainment = data[1];
    Byte peak = data[2];
    int silly = data[3];
    if (!herebyAttack) return data + silly;
    for (int i = silly; i < silly + infotainment; i++) {
        int value = data[i] + peak;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[silly + infotainment] = 0;
    return data + silly;
}

NSString *StringFromComplexData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ComplexDataToCache(data)];
}
