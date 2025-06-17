//
//  FFFAvatarImageView.m
// MyUserKit
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "FFFAvatarImageView.h"
#import "UIViewNimKit.h"
#import "objc/runtime.h"
#import "FFFKitDependency.h"
#import "MyUserKit.h"
#import "FFFKitInfoFetchOption.h"
#import "FFFKitUrlManager.h"

@interface FFFAvatarImageView()

@property (nonatomic,strong) UIImageView *imageView;

@end

@implementation FFFAvatarImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setup];
    }
    return self;
}


- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        [self setup];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self setupRadius];
    
    if (!CGSizeEqualToSize(self.imageView.nim_size, self.nim_size))
    {
        self.imageView.nim_size = self.nim_size;
//        self.imageView.image = [self imageAddCorner:_image
//                                             radius:_cornerRadius
//                                            andSize:self.bounds.size];
        self.imageView.image = _image;
    }
    
}

- (void)setup{
    [self setupRadius];
    _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    _imageView.contentMode = UIViewContentModeScaleAspectFill;
    _imageView.clipsToBounds = YES;
    [self addSubview:_imageView];
    _imageView.layer.masksToBounds = YES;
    _imageView.layer.cornerRadius = _cornerRadius;
    self.backgroundColor = [UIColor clearColor];
    
}


- (void)setupRadius{
    switch ([MyUserKit sharedKit].config.avatarType)
    {
        case NIMKitAvatarTypeNone:
            _cornerRadius = 0;
            break;
        case NIMKitAvatarTypeRounded:
            _cornerRadius = self.nim_width *.5f;//self.nim_width *.5f;
            break;
        case NIMKitAvatarTypeRadiusCorner:
            _cornerRadius = self.nim_width *.5f;
            break;
        default:
            break;
    }
}


- (void)setImage:(UIImage *)image
{
    if (_image != image)
    {
        _image = image;
//        UIImage *fixedImage  = [self imageAddCorner:_image
//                                             radius:_cornerRadius
//                                            andSize:self.bounds.size];
        self.imageView.image = image;
    }
}

- (UIImage*)imageAddCorner:(UIImage *)image radius:(CGFloat)radius andSize:(CGSize)size
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGPathRef path = self.path;
    CGContextAddPath(ctx,path);
    CGContextClip(ctx);
    [image drawInRect:rect];
    CGContextDrawPath(ctx, kCGPathFillStroke);
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

- (CGPathRef)path
{
    return [[UIBezierPath bezierPathWithRoundedRect:self.bounds
                                       cornerRadius:self.cornerRadius] CGPath];
}

- (void)setAvatarBySession:(NIMSession *)session
{
    FFFKitInfo *info = nil;
    if (session.sessionType == NIMSessionTypeTeam) {
        info = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil];
//        info.avatarImage = [UIImage grayImageWithName:@"contact_group_header" color:RGB_COLOR_String(kCommonBGColor_All)];
        info.avatarImage = [UIImage imageNamed:@"head_default_group"];
    } else if (session.sessionType == NIMSessionTypeSuperTeam) {
        info = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil];
//        info.avatarImage = [UIImage grayImageWithName:@"contact_group_header" color:RGB_COLOR_String(kCommonBGColor_All)];
        info.avatarImage = [UIImage imageNamed:@"head_default_group"];
    } else {
        FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        option.session = session;
        info = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option];
    }
    [self setImageWithUrlString:info.avatarUrlString placeholderImage:info.avatarImage options:0];
}

- (void)setAvatarByMessage:(NIMMessage *)message
{
    FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    option.message = message;
    NSString *from = message.from;
    FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:from option:option];
    [self setImageWithUrlString:info.avatarUrlString placeholderImage:info.avatarImage options:0];
}

- (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder {
    [self setImageWithUrlString:url.absoluteString placeholderImage:placeholder options:0];
}

- (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options {
    [self setImageWithUrlString:url.absoluteString placeholderImage:placeholder options:options];
}

- (void)setImageWithUrlString:(NSString *)urlString placeholderImage:(UIImage *)placeholderImage options:(SDWebImageOptions)options {
    if (placeholderImage && self.image != placeholderImage) {
        self.image = placeholderImage;
    }
    if (urlString.length == 0) {
        return;
    }

    //查询
    __block NSURL *targetUrl = nil;
    __weak typeof(self) weakSelf = self;
    [[FFFKitUrlManager shareManager] queryQriginalUrlWithShortUrl:urlString completion:^(NSString *originalUrl, NSError *error) {
        if (urlString && !error) {
            targetUrl = [NSURL URLWithString:originalUrl];
        } else {
            targetUrl = [NSURL URLWithString:urlString];
        }
        [weakSelf didSetImageUrl:targetUrl placeholderImage:placeholderImage options:options];
    }];
}

- (void)didSetImageUrl:(NSURL *)url placeholderImage:(UIImage *)placeholderImage options:(SDWebImageOptions)options {
    if (!url) {
        return;
    }
    __weak typeof(self) weakSelf = self;
//    UIImage *fixedPlaceholderImage  = [self imageAddCorner:placeholderImage
//                                                    radius:_cornerRadius
//                                                   andSize:self.bounds.size];
    
    UIImage *fixedPlaceholderImage  = placeholderImage;
    
    [_imageView sd_setImageWithURL:url
                  placeholderImage:fixedPlaceholderImage
                           options:SDWebImageAvoidAutoSetImage|SDWebImageDelayPlaceholder
                         completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        if (image) {
            //weakSelf.image = image;
            _imageView.image = image;
            _image = image;
        }
        
    }];
    
    
}
@end
