
#import <Foundation/Foundation.h>
typedef struct {
    Byte happily;
    Byte *instillHighlight;
    unsigned int manoeuvre;
    bool sterol;
	int safetyMargin;
	int attachPerfectly;
	int gitRecording;
} CountegratedData;

NSString *StringFromCountegratedData(CountegratedData *data);


//: icon_whiteboard_session_msg
CountegratedData kStr_onAngelLodeText = (CountegratedData){239, (Byte []){134, 140, 128, 129, 176, 152, 135, 134, 155, 138, 141, 128, 142, 157, 139, 176, 156, 138, 156, 156, 134, 128, 129, 176, 130, 156, 136, 132}, 27, false, 53, 111, 213};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ThanArrayControl.m
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionWhiteBoardContentView.h"
#import "ThanArrayControl.h"
//: #import "NTESSessionUtil.h"
#import "ArrayUtil.h"
//: #import "UIView+NTES.h"
#import "UIView+Closes.h"
//: #import "M80AttributedLabel.h"
#import "ShowTitleView.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"
//: #import "NTESWhiteboardAttachment.h"
#import "ButtonSupport.h"

//: @interface NTESSessionWhiteBoardContentView()
@interface ThanArrayControl()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation NTESSessionWhiteBoardContentView
@implementation ThanArrayControl

//: -(instancetype)initSessionMessageContentView
-(instancetype)initShowDown
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initShowDown]) {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[ShowTitleView alloc] initWithFrame:CGRectZero];
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
        _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:StringFromCountegratedData(&kStr_onAngelLodeText)]];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data{
- (void)scale:(StochasticProcessTeam *)data{
    //: [super refresh:data];
    [super scale:data];
    //: NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    //: NTESWhiteboardAttachment *attach = (NTESWhiteboardAttachment *)object.attachment;
    ButtonSupport *attach = (ButtonSupport *)object.attachment;
    //: NSString *text = attach.formatedMessage;
    NSString *text = attach.closeBar;

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
    CGSize contentSize = [self.model contentMidSize:tableViewWidth];
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

Byte *CountegratedDataToByte(CountegratedData *data) {
    if (data->sterol) return data->instillHighlight;
    for (int i = 0; i < data->manoeuvre; i++) {
        data->instillHighlight[i] ^= data->happily;
    }
    data->instillHighlight[data->manoeuvre] = 0;
    data->sterol = true;
	if (data->manoeuvre >= 3) {
		data->safetyMargin = data->instillHighlight[0];
		data->attachPerfectly = data->instillHighlight[1];
		data->gitRecording = data->instillHighlight[2];
	}
    return data->instillHighlight;
}

NSString *StringFromCountegratedData(CountegratedData *data) {
    return [NSString stringWithUTF8String:(char *)CountegratedDataToByte(data)];
}
