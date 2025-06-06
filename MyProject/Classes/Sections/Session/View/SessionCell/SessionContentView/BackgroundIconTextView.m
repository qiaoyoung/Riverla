// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionCustomContentView.m
//  NIM
//
//  Created by chris on 15/4/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionJankenponContentView.h"
#import "BackgroundIconTextView.h"
//: #import "UIView+NTES.h"
#import "UIView+InfoByMargin.h"
//: #import "NTESJanKenPonAttachment.h"
#import "ChangeScale.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"

//: @interface NTESSessionJankenponContentView()
@interface BackgroundIconTextView()

//: @property (nonatomic,strong,readwrite) UIImageView *imageView;
@property (nonatomic,strong,readwrite) UIImageView *imageView;

//: @end
@end

//: @implementation NTESSessionJankenponContentView
@implementation BackgroundIconTextView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initInput{
    //: self = [super initSessionMessageContentView];
    self = [super initInput];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data
- (void)key:(MaxLink *)data
{
    //: [super refresh:data];
    [super key:data];
    //: NIMCustomObject *customObject = (NIMCustomObject*)data.message.messageObject;
    NIMCustomObject *customObject = (NIMCustomObject*)data.message.messageObject;
    //: id attachment = customObject.attachment;
    id attachment = customObject.attachment;
    //: if ([attachment isKindOfClass:[NTESJanKenPonAttachment class]]) {
    if ([attachment isKindOfClass:[ChangeScale class]]) {
        //: self.imageView.image = [attachment showCoverImage];
        self.imageView.image = [attachment container];
        //: [self.imageView sizeToFit];
        [self.imageView sizeToFit];
    }
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

    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentSize.width, contentSize.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentSize.width, contentSize.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
    //: CALayer *maskLayer = [CALayer layer];
    CALayer *maskLayer = [CALayer layer];
    //: maskLayer.cornerRadius = 13.0;
    maskLayer.cornerRadius = 13.0;
    //: maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    //: maskLayer.frame = self.imageView.bounds;
    maskLayer.frame = self.imageView.bounds;
    //: self.imageView.layer.mask = maskLayer;
    self.imageView.layer.mask = maskLayer;
}


//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing{
- (UIImage *)sure:(UIControlState)state red:(BOOL)outgoing{
    //: if (self.model.message.session.sessionType == NIMSessionTypeChatroom) {
    if (self.model.message.session.sessionType == NIMSessionTypeChatroom) {
        //: return nil;
        return nil;
    }
    //: return [super chatBubbleImageForState:state outgoing:outgoing];
    return [super sure:state red:outgoing];
}



//: @end
@end