
#import <Foundation/Foundation.h>

NSString *StringFromCorrelationData(Byte *data);


//: icon_session_time_bg
Byte kStr_chemistData[] = {23, 20, 6, 82, 178, 36, 103, 98, 95, 101, 109, 105, 116, 95, 110, 111, 105, 115, 115, 101, 115, 95, 110, 111, 99, 105, 58};


//: {8,20,8,20}
Byte kStr_ticContent[] = {43, 11, 4, 94, 125, 48, 50, 44, 56, 44, 48, 50, 44, 56, 123, 53};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorToTitleView.m
//  NIM
//
//  Created by chris on 2016/11/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionTipContentView.h"
#import "ColorToTitleView.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
//: #import "UIView+NTES.h"
#import "UIView+Closes.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"

//: @implementation NTESSessionTipContentView
@implementation ColorToTitleView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initShowDown
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initShowDown]) {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
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
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(closeBar)]) {
        //: self.label.text = [attachment formatedMessage];
        self.label.text = [attachment closeBar];
    }
    //: self.label.textColor = [UIColor whiteColor];;
    self.label.textColor = [UIColor whiteColor];;
    //: self.label.font = [UIFont systemFontOfSize:10.f];
    self.label.font = [UIFont systemFontOfSize:10.f];

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)lab:(UIControlState)state preface:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:StringFromCorrelationData(kStr_chemistData)];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString(StringFromCorrelationData(kStr_ticContent));
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


//: @end
@end

Byte * CorrelationDataToCache(Byte *data) {
    int nineShow = data[0];
    int backgroundContent = data[1];
    int linage = data[2];
    if (!nineShow) return data + linage;
    for (int i = 0; i < backgroundContent / 2; i++) {
        int begin = linage + i;
        int end = linage + backgroundContent - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[linage + backgroundContent] = 0;
    return data + linage;
}

NSString *StringFromCorrelationData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CorrelationDataToCache(data)];
}  
