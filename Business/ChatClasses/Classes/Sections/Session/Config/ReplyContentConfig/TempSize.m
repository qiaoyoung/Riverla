// __DEBUG__
// __CLOSE_PRINT__
//
//  TempSize.m
// Afterwards
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFReplyedTextContentConfig.h"
#import "TempSize.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @interface FFFReplyedTextContentConfig ()
@interface TempSize ()

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) ShowTitleView *label;

//: @end
@end

//: @implementation FFFReplyedTextContentConfig
@implementation TempSize


//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)ting:(CGFloat)cellWidth record:(NIMMessage *)message
{
    //: NSString *text = [[MyUserKit sharedKit] replyedContentWithMessage:message];
    NSString *text = [[Afterwards blue] bottommed:message];
    //: self.label.font = [[MyUserKit sharedKit].config repliedSetting:message].replyedFont;
    self.label.font = [[Afterwards blue].config showImage:message].replyedFont;

    //: [self.label nim_setText:text];
    [self.label time:text];

//    CGFloat msgBubbleMaxWidth    = (cellWidth - 130);
//    CGFloat bubbleLeftToContent  = 14;
//    CGFloat contentRightToBubble = 14;
//    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
//    
//    CGSize sizeToFit = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
//    return CGSizeMake(ceilf(sizeToFit.width)+2, ceilf(sizeToFit.height)+2);

    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: CGFloat nameMaxWidth = (msgContentMaxWidth - 50);
    CGFloat nameMaxWidth = (msgContentMaxWidth - 50);

    //: CGSize sizeToFit = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    CGSize sizeToFit = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    //: return CGSizeMake(ceilf(sizeToFit.width) < nameMaxWidth?nameMaxWidth: ceilf(sizeToFit.width)+2, ceilf(sizeToFit.height)+2);
    return CGSizeMake(ceilf(sizeToFit.width) < nameMaxWidth?nameMaxWidth: ceilf(sizeToFit.width)+2, ceilf(sizeToFit.height)+2);



}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)maxIconManager:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config repliedSetting:message].contentInsets;
    return [[Afterwards blue].config showImage:message].contentInsets;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)fire:(NIMMessage *)message
{
    //: return @"FFFReplyedTextContentView";
    return @"ActivityTitleView";
}

//: #pragma mark - Private
#pragma mark - Private
//: - (M80AttributedLabel *)label
- (ShowTitleView *)label
{
    //: if (_label) {
    if (_label) {
        //: return _label;
        return _label;
    }
    //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    _label = [[ShowTitleView alloc] initWithFrame:CGRectZero];
    //: return _label;
    return _label;
}


//: @end
@end