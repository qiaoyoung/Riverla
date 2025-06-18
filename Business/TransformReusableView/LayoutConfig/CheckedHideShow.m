
#import <Foundation/Foundation.h>

NSString *StringFromScoopData(Byte *data);


//: NTESChatroomTextContentView
Byte kStr_necessaryValue[] = {92, 27, 6, 7, 63, 119, 174, 84, 90, 75, 89, 73, 110, 103, 122, 120, 117, 117, 115, 90, 107, 126, 122, 73, 117, 116, 122, 107, 116, 122, 92, 111, 107, 125, 162};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CheckedHideShow.m
//  NIM
//
//  Created by chris on 16/1/13.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChatroomTextContentConfig.h"
#import "CheckedHideShow.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "ShowTitleView+Afterwards.h"
//: #import "UserGlobalMacro.h"
#import "UserGlobalMacro.h"

//: @interface NTESChatroomTextContentConfig()
@interface CheckedHideShow()

//: @property (nonatomic, strong) M80AttributedLabel *label;
@property (nonatomic, strong) ShowTitleView *label;

//: @end
@end

//: @implementation NTESChatroomTextContentConfig
@implementation CheckedHideShow

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)ting:(CGFloat)cellWidth record:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: [self.label nim_setText:text];
    [self.label time:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 15;
    CGFloat bubbleLeftToContent = 15;
    //: CGFloat contentRightToBubble = 0;
    CGFloat contentRightToBubble = 0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)fire:(NIMMessage *)message
{
    //: return @"NTESChatroomTextContentView";
    return StringFromScoopData(kStr_necessaryValue);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)maxIconManager:(NIMMessage *)message
{
    //: return UIEdgeInsetsMake(20,15,10,0);
    return UIEdgeInsetsMake(20,15,10,0);
}

//: - (M80AttributedLabel *)label
- (ShowTitleView *)label
{
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[ShowTitleView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:16];
        _label.font = [UIFont systemFontOfSize:16];
    }
    //: return _label;
    return _label;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)dated:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end

Byte * ScoopDataToCache(Byte *data) {
    int mustStereo = data[0];
    int nowadays = data[1];
    Byte sizeLog = data[2];
    int ireDepress = data[3];
    if (!mustStereo) return data + ireDepress;
    for (int i = ireDepress; i < ireDepress + nowadays; i++) {
        int value = data[i] - sizeLog;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[ireDepress + nowadays] = 0;
    return data + ireDepress;
}

NSString *StringFromScoopData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ScoopDataToCache(data)];
}
