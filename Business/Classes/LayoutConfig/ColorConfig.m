
#import <Foundation/Foundation.h>
typedef struct {
    Byte ofEntry;
    Byte *breathe;
    unsigned int goodLast;
    bool routinelyGrow;
} FightData;

NSString *StringFromFightData(FightData *data);


//: NTESChatroomTextContentView
FightData kStr_pureData = (FightData){75, (Byte []){5, 31, 14, 24, 8, 35, 42, 63, 57, 36, 36, 38, 31, 46, 51, 63, 8, 36, 37, 63, 46, 37, 63, 29, 34, 46, 60, 73}, 27, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorConfig.m
//  NIM
//
//  Created by chris on 16/1/13.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChatroomTextContentConfig.h"
#import "ColorConfig.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "PopScrollView+Notice.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @interface NTESChatroomTextContentConfig()
@interface ColorConfig()

//: @property (nonatomic, strong) M80AttributedLabel *label;
@property (nonatomic, strong) PopScrollView *label;

//: @end
@end

//: @implementation NTESChatroomTextContentConfig
@implementation ColorConfig

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
- (CGSize)text:(CGFloat)cellWidth option:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: [self.label nim_setText:text];
    [self.label pose:text];
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
- (NSString *)result:(NIMMessage *)message
{
    //: return @"NTESChatroomTextContentView";
    return StringFromFightData(&kStr_pureData);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)max:(NIMMessage *)message
{
    //: return UIEdgeInsetsMake(20,15,10,0);
    return UIEdgeInsetsMake(20,15,10,0);
}

//: - (M80AttributedLabel *)label
- (PopScrollView *)label
{
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[PopScrollView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:16];
        _label.font = [UIFont systemFontOfSize:16];
    }
    //: return _label;
    return _label;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)streetwiseTable:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end

Byte *FightDataToByte(FightData *data) {
    if (data->routinelyGrow) return data->breathe;
    for (int i = 0; i < data->goodLast; i++) {
        data->breathe[i] ^= data->ofEntry;
    }
    data->breathe[data->goodLast] = 0;
    data->routinelyGrow = true;
    return data->breathe;
}

NSString *StringFromFightData(FightData *data) {
    return [NSString stringWithUTF8String:(char *)FightDataToByte(data)];
}
