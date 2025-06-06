
#import <Foundation/Foundation.h>

NSString *StringFromOrdinalData(Byte *data);        


//: icon_file
Byte kStr_assistText[] = {98, 9, 65, 9, 211, 225, 240, 188, 181, 40, 34, 46, 45, 30, 37, 40, 43, 36, 233};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FileView.m
//  NIM
//
//  Created by chris on 15/4/21.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionFileTransContentView.h"
#import "FileView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "MaxLink.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Notice.h"
//: #import "MyUserKit.h"
#import "Notice.h"

//: @interface FFFSessionFileTransContentView()
@interface FileView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *sizeLabel;
@property (nonatomic,strong) UILabel *sizeLabel;

//: @property (nonatomic,strong) UIProgressView *progressView;
@property (nonatomic,strong) UIProgressView *progressView;

//: @property (nonatomic,strong) UIView *bkgView;
@property (nonatomic,strong) UIView *bkgView;

//: @end
@end

//: @implementation FFFSessionFileTransContentView
@implementation FileView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initInput{
    //: self = [super initSessionMessageContentView];
    self = [super initInput];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: _bkgView = [[UIView alloc]initWithFrame:CGRectZero];
        _bkgView = [[UIView alloc]initWithFrame:CGRectZero];
        //: _bkgView.userInteractionEnabled = NO;
        _bkgView.userInteractionEnabled = NO;
        //: _bkgView.backgroundColor = [UIColor whiteColor];
        _bkgView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_bkgView];
        [self addSubview:_bkgView];
        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: UIImage * image = [UIImage imageNamed:@"icon_file"];
        UIImage * image = [UIImage imageNamed:StringFromOrdinalData(kStr_assistText)];
        //: _imageView.image = image;
        _imageView.image = image;
        //: [_imageView sizeToFit];
        [_imageView sizeToFit];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];

        //: _sizeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _sizeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _sizeLabel.textColor = [UIColor lightGrayColor];
        _sizeLabel.textColor = [UIColor lightGrayColor];
        //: [self addSubview:_sizeLabel];
        [self addSubview:_sizeLabel];

        //: _progressView = [[UIProgressView alloc]initWithProgressViewStyle:UIProgressViewStyleDefault];
        _progressView = [[UIProgressView alloc]initWithProgressViewStyle:UIProgressViewStyleDefault];
        //: _progressView.progress = 0.0f;
        _progressView.progress = 0.0f;
        //: [self addSubview:_progressView];
        [self addSubview:_progressView];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data{
- (void)key:(MaxLink *)data{
    //: [super refresh:data];
    [super key:data];
    //: NIMFileObject *fileObject = (NIMFileObject *)self.model.message.messageObject;
    NIMFileObject *fileObject = (NIMFileObject *)self.model.message.messageObject;

    //: self.titleLabel.font = [[MyUserKit sharedKit].config setting:data.message].font;
    self.titleLabel.font = [[Notice fullKit].config sizeGroupBar:data.message].font;
    //: self.titleLabel.text = fileObject.displayName;
    self.titleLabel.text = fileObject.displayName;
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];

    //: self.sizeLabel.font = [[MyUserKit sharedKit].config setting:data.message].font;
    self.sizeLabel.font = [[Notice fullKit].config sizeGroupBar:data.message].font;
    //: long long size = fileObject.fileLength/1024;
    long long size = fileObject.fileLength/1024;
    //: self.sizeLabel.text = [NSString stringWithFormat:@"%lldKB",size?: 1LL];
    self.sizeLabel.text = [NSString stringWithFormat:@"%lldKB",size?: 1LL];
    //: [self.sizeLabel sizeToFit];
    [self.sizeLabel sizeToFit];

    //: if (self.model.message.deliveryState == NIMMessageDeliveryStateDelivering) {
    if (self.model.message.deliveryState == NIMMessageDeliveryStateDelivering) {
        //: self.progressView.hidden = NO;
        self.progressView.hidden = NO;
        //: self.progressView.progress = [[NIMSDK sharedSDK].chatManager messageTransportProgress:self.model.message];
        self.progressView.progress = [[NIMSDK sharedSDK].chatManager messageTransportProgress:self.model.message];
    //: }else{
    }else{
        //: self.progressView.hidden = YES;
        self.progressView.hidden = YES;
    }
}



//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentSize = [self.model contentSize:tableViewWidth];
    CGSize contentSize = [self.model show:tableViewWidth];
    //: CGRect bkgViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentSize.width, contentSize.height);
    CGRect bkgViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentSize.width, contentSize.height);
    //: self.bkgView.frame = bkgViewFrame;
    self.bkgView.frame = bkgViewFrame;

    //: CGFloat fileTransMessageIconLeft = 15.f;
    CGFloat fileTransMessageIconLeft = 15.f;
    //: CGFloat fileTransMessageSizeTitleRight = 15.f;
    CGFloat fileTransMessageSizeTitleRight = 15.f;
    //: CGFloat fileTransMessageTitleLeft = 90.f;
    CGFloat fileTransMessageTitleLeft = 90.f;
    //: CGFloat fileTransMessageTitleTop = 25.f;
    CGFloat fileTransMessageTitleTop = 25.f;
    //: CGFloat fileTransMessageSizeTitleBottom = 15.f;
    CGFloat fileTransMessageSizeTitleBottom = 15.f;
    //: CGFloat fileTransMessageProgressTop = 75.f;
    CGFloat fileTransMessageProgressTop = 75.f;
    //: CGFloat fileTransMessageProgressLeft = 90.f;
    CGFloat fileTransMessageProgressLeft = 90.f;
    //: CGFloat fileTransMessageProgressRight = 20.f;
    CGFloat fileTransMessageProgressRight = 20.f;

    //: self.imageView.nim_left = fileTransMessageIconLeft;
    self.imageView.nim_left = fileTransMessageIconLeft;
    //: self.imageView.nim_centerY = self.nim_height * .5f;
    self.imageView.nim_centerY = self.nim_height * .5f;

    //: if (self.nim_width < fileTransMessageTitleLeft + self.titleLabel.nim_width + fileTransMessageSizeTitleRight) {
    if (self.nim_width < fileTransMessageTitleLeft + self.titleLabel.nim_width + fileTransMessageSizeTitleRight) {
        //: self.titleLabel.nim_width = self.nim_width - fileTransMessageTitleLeft - fileTransMessageSizeTitleRight;
        self.titleLabel.nim_width = self.nim_width - fileTransMessageTitleLeft - fileTransMessageSizeTitleRight;
    }
    //: self.titleLabel.nim_left = fileTransMessageTitleLeft;
    self.titleLabel.nim_left = fileTransMessageTitleLeft;
    //: self.titleLabel.nim_top = fileTransMessageTitleTop;
    self.titleLabel.nim_top = fileTransMessageTitleTop;

    //: self.sizeLabel.nim_right = self.nim_width - fileTransMessageSizeTitleRight;
    self.sizeLabel.nim_right = self.nim_width - fileTransMessageSizeTitleRight;
    //: self.sizeLabel.nim_bottom = self.nim_height - fileTransMessageSizeTitleBottom;
    self.sizeLabel.nim_bottom = self.nim_height - fileTransMessageSizeTitleBottom;

    //: self.progressView.nim_top = fileTransMessageProgressTop;
    self.progressView.nim_top = fileTransMessageProgressTop;
    //: self.progressView.nim_width = self.nim_width - fileTransMessageProgressLeft - fileTransMessageProgressRight;
    self.progressView.nim_width = self.nim_width - fileTransMessageProgressLeft - fileTransMessageProgressRight;
    //: self.progressView.nim_left = fileTransMessageProgressLeft;
    self.progressView.nim_left = fileTransMessageProgressLeft;

    //: CALayer *maskLayer = [CALayer layer];
    CALayer *maskLayer = [CALayer layer];
    //: maskLayer.cornerRadius = 13.0;
    maskLayer.cornerRadius = 13.0;
    //: maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    //: maskLayer.frame = self.bkgView.bounds;
    maskLayer.frame = self.bkgView.bounds;
    //: self.bkgView.layer.mask = maskLayer;
    self.bkgView.layer.mask = maskLayer;
}


//: - (void)onTouchUpInside:(id)sender
- (void)duringRemote:(id)sender
{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    IndexBar *event = [[IndexBar alloc] init];
    //: event.eventName = FFFKitEventNameTapContent;
    event.eventName = let_arrowData;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate marginned:event];
}

//: - (void)updateProgress:(float)progress
- (void)keyApp:(float)progress
{
    //: if (progress > 1.0) {
    if (progress > 1.0) {
        //: progress = 1.0;
        progress = 1.0;
    }
    //: self.progressView.progress = progress;
    self.progressView.progress = progress;
}

//: @end
@end

Byte * OrdinalDataToCache(Byte *data) {
    int recipient = data[0];
    int artilleryUnit = data[1];
    Byte utter = data[2];
    int priorTing = data[3];
    if (!recipient) return data + priorTing;
    for (int i = priorTing; i < priorTing + artilleryUnit; i++) {
        int value = data[i] + utter;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[priorTing + artilleryUnit] = 0;
    return data + priorTing;
}

NSString *StringFromOrdinalData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)OrdinalDataToCache(data)];
}
