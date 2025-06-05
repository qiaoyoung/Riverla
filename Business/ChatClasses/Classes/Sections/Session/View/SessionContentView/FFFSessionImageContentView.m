//
//  FFFSessionImageContentView.m
// MyUserKit
//
//  Created by chris on 15/1/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "FFFSessionImageContentView.h"
#import "FFFMessageModel.h"
#import "UIViewNimKit.h"
#import "FFFLoadProgressView.h"
#import "FFFKitDependency.h"
#import <YYImage/YYImage.h>
#import "UCZProgressView.h"

@interface FFFSessionImageContentView()

@property (nonatomic,strong,readwrite) YYAnimatedImageView * imageView;

@property (nonatomic,strong) FFFLoadProgressView * progressView;

//@property (nonatomic, strong) UCZProgressView *progressView;

@end

@implementation FFFSessionImageContentView

- (instancetype)initSessionMessageContentView{
    self = [super initSessionMessageContentView];
    if (self) {
        self.opaque = YES;
        _imageView  = [[YYAnimatedImageView alloc] initWithFrame:CGRectZero];
        _imageView.backgroundColor = [UIColor clearColor];
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
        [self addSubview:_imageView];
        
//        self.progressView = [[UCZProgressView alloc] initWithFrame:self.bounds];
//        self.progressView.translatesAutoresizingMaskIntoConstraints = NO;
////        self.progressView.showsText = YES;
////        self.progressView.tintColor = [KEKESkinColorManager shareInstance].skinColor;
//        [self addSubview:self.progressView];
        
        _progressView = [[FFFLoadProgressView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        _progressView.maxProgress = 1.0f;
        [self addSubview:_progressView];
    }
    return self;
}

- (void)refresh:(FFFMessageModel *)data
{
    [super refresh:data];
    _imageView.image = nil;
    NIMImageObject * imageObject = (NIMImageObject*)self.model.message.messageObject;
    
    if (imageObject.url.length > 0) {
        NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        [imageObject setUploadURL:url];
        
        NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
        NSData *data =  [dic objectForKey:self.model.message.messageId];
        UIImage *images = [[UIImage alloc]initWithData:data];
//        [_imageView sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:images ];
       
        // 加载图片
        [_imageView sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:images options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
            float progress = (float)receivedSize / (float)expectedSize;
            dispatch_async(dispatch_get_main_queue(), ^{
                self.progressView.hidden = NO;
                [self updateProgress:progress];
            });
        } completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
            // 加载完成后隐藏进度条
            dispatch_async(dispatch_get_main_queue(), ^{
                self.progressView.hidden = YES;
            });
        }];
        
    } else if (imageObject.thumbPath.length > 0) {
        NSData *imageData = [[NSData alloc] initWithContentsOfFile:imageObject.thumbPath];
        YYImage *image = [YYImage imageWithData:imageData scale:[UIScreen mainScreen].scale];
        if (image != nil) {
            _imageView.image = image;
        }
    } else {
        [_imageView sd_setImageWithURL:[NSURL URLWithString:[imageObject.thumbUrl?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""]]];
    }
    
    if (self.model.message.deliveryState == NIMMessageDeliveryStateDelivering) {
        self.progressView.hidden   = NO;
        self.progressView.progress = [[NIMSDK sharedSDK].chatManager messageTransportProgress:self.model.message];
    }else{
        self.progressView.hidden = YES;
    }
    NSLog(@"attachmentDownloadState:%ld",(long)self.model.message.attachmentDownloadState);
//    if (self.model.message.attachmentDownloadState == NIMMessageAttachmentDownloadStateDownloading || self.model.message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload) {
//        self.progressView.hidden   = NO;
//        self.progressView.progress = [[NIMSDK sharedSDK].chatManager messageTransportProgress:self.model.message];
//    }else{
//        self.progressView.hidden = YES;
//    }
}

- (void)layoutSubviews{
    [super layoutSubviews];
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    CGFloat tableViewWidth = self.superview.nim_width;
    CGSize contentSize = [self.model contentSize:tableViewWidth];
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentSize.width, contentSize.height);
    self.imageView.frame  = imageViewFrame;
    _progressView.frame   = self.bounds;
    
    CALayer *maskLayer = [CALayer layer];
    maskLayer.cornerRadius = 13.0;
    maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    maskLayer.frame = self.imageView.bounds;
    self.imageView.layer.mask = maskLayer;
}


- (void)onTouchUpInside:(id)sender
{
    FFFKitEvent *event = [[FFFKitEvent alloc] init];
    event.eventName = FFFKitEventNameTapContent;
    event.messageModel = self.model;
    [self.delegate onCatchEvent:event];
}

- (void)updateProgress:(float)progress
{
    if (progress > 1.0) {
        progress = 1.0;
    }
    self.progressView.progress = progress;
}

@end
