
#import <Foundation/Foundation.h>

NSString *StringFromPolitickData(Byte *data);


//: icon_whiteboard_session_msg
Byte kStr_pathName[] = {35, 27, 52, 4, 157, 151, 163, 162, 147, 171, 156, 157, 168, 153, 150, 163, 149, 166, 152, 147, 167, 153, 167, 167, 157, 163, 162, 147, 161, 167, 155, 58};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChildTitleView.m
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionWhiteBoardContentView.h"
#import "ChildTitleView.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "M80AttributedLabel.h"
#import "PopScrollView.h"
//: #import "FFFKitUtil.h"
#import "UtilizerUtil.h"
//: #import "NTESWhiteboardAttachment.h"
#import "PastAttachment.h"

//: @interface NTESSessionWhiteBoardContentView()
@interface ChildTitleView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation NTESSessionWhiteBoardContentView
@implementation ChildTitleView

//: -(instancetype)initSessionMessageContentView
-(instancetype)initInput
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initInput]) {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[PopScrollView alloc] initWithFrame:CGRectZero];
        //: _textLabel.autoDetectLinks = NO;
        _textLabel.autoDetectLinks = NO;
        //: _textLabel.numberOfLines = 0;
        _textLabel.numberOfLines = 0;
        //: _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textLabel.font = [UIFont systemFontOfSize:14.f];
        _textLabel.font = [UIFont systemFontOfSize:14.f];
        //: _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.backgroundColor = [UIColor clearColor];
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];

        //: _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_whiteboard_session_msg"]];
        _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromPolitickData(kStr_pathName)]];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data{
- (void)key:(MaxLink *)data{
    //: [super refresh:data];
    [super key:data];
    //: NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    //: NTESWhiteboardAttachment *attach = (NTESWhiteboardAttachment *)object.attachment;
    PastAttachment *attach = (PastAttachment *)object.attachment;
    //: NSString *text = attach.formatedMessage;
    NSString *text = attach.userMessage;

    //: [_textLabel setText:text];
    [_textLabel setText:text];
    //: if (!data.message.isOutgoingMsg) {
    if (!data.message.isOutgoingMsg) {
        //: _textLabel.textColor = [UIColor blackColor];
        _textLabel.textColor = [UIColor blackColor];
    //: }else{
    }else{
        //: _textLabel.textColor = [UIColor whiteColor];
        _textLabel.textColor = [UIColor whiteColor];
    }

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.width;
    CGFloat tableViewWidth = self.superview.width;
    //: CGSize contentSize = [self.model contentSize:tableViewWidth];
    CGSize contentSize = [self.model show:tableViewWidth];
    //: self.imageView.left = contentInsets.left;
    self.imageView.left = contentInsets.left;
    //: self.imageView.centerY = self.height * .5f;
    self.imageView.centerY = self.height * .5f;
    //: CGFloat customWhiteBorardMessageImageRightToText = 5.f;
    CGFloat customWhiteBorardMessageImageRightToText = 5.f;
    //: CGRect labelFrame = CGRectMake(self.imageView.right + customWhiteBorardMessageImageRightToText, contentInsets.top, contentSize.width, contentSize.height);
    CGRect labelFrame = CGRectMake(self.imageView.right + customWhiteBorardMessageImageRightToText, contentInsets.top, contentSize.width, contentSize.height);
    //: self.textLabel.frame = labelFrame;
    self.textLabel.frame = labelFrame;
}
//: @end
@end

Byte * PolitickDataToCache(Byte *data) {
    int exhibitionRetail = data[0];
    int shouldSecurity = data[1];
    Byte exhibitionVideo = data[2];
    int neutralise = data[3];
    if (!exhibitionRetail) return data + neutralise;
    for (int i = neutralise; i < neutralise + shouldSecurity; i++) {
        int value = data[i] - exhibitionVideo;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[neutralise + shouldSecurity] = 0;
    return data + neutralise;
}

NSString *StringFromPolitickData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PolitickDataToCache(data)];
}
