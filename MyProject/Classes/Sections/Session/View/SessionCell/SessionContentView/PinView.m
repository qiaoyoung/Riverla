
#import <Foundation/Foundation.h>
typedef struct {
    Byte experience;
    Byte *garage;
    unsigned int governmentDepartment;
    bool importantly;
} ReluctantData;

NSString *StringFromReluctantData(ReluctantData *data);


//: icon_session_time_bg
ReluctantData kStr_fessValue = (ReluctantData){193, (Byte []){168, 162, 174, 175, 158, 178, 164, 178, 178, 168, 174, 175, 158, 181, 168, 172, 164, 158, 163, 166, 185}, 20, false};


//: {8,20,8,20}
ReluctantData kStr_aheadTitle = (ReluctantData){157, (Byte []){230, 165, 177, 175, 173, 177, 165, 177, 175, 173, 224, 57}, 11, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PinView.m
//  NIM
//
//  Created by chris on 2016/11/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionTipContentView.h"
#import "PinView.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"

//: @implementation NTESSessionTipContentView
@implementation PinView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initInput
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initInput]) {
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
- (void)key:(MaxLink *)model{
    //: [super refresh:model];
    [super key:model];
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<NTESCustomAttachmentInfo> attachment = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<ImaginationImageInfo> attachment = (id<ImaginationImageInfo>)object.attachment;
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(userMessage)]) {
        //: self.label.text = [attachment formatedMessage];
        self.label.text = [attachment userMessage];
    }
    //: self.label.textColor = [UIColor whiteColor];;
    self.label.textColor = [UIColor whiteColor];;
    //: self.label.font = [UIFont systemFontOfSize:10.f];
    self.label.font = [UIFont systemFontOfSize:10.f];

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)sure:(UIControlState)state red:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:StringFromReluctantData(&kStr_fessValue)];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString(StringFromReluctantData(&kStr_aheadTitle));
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

Byte *ReluctantDataToByte(ReluctantData *data) {
    if (data->importantly) return data->garage;
    for (int i = 0; i < data->governmentDepartment; i++) {
        data->garage[i] ^= data->experience;
    }
    data->garage[data->governmentDepartment] = 0;
    data->importantly = true;
    return data->garage;
}

NSString *StringFromReluctantData(ReluctantData *data) {
    return [NSString stringWithUTF8String:(char *)ReluctantDataToByte(data)];
}
