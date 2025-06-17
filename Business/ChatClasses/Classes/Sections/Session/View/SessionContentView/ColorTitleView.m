
#import <Foundation/Foundation.h>

NSString *StringFromBroadcastNimData(Byte *data);


//: icon_map
Byte kStr_theaterTitle[] = {21, 8, 10, 253, 24, 89, 247, 217, 223, 54, 112, 97, 109, 95, 110, 111, 99, 105, 145};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorTitleView.m
// Afterwards
//
//  Created by chris on 15/2/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionLocationContentView.h"
#import "ColorTitleView.h"
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @interface FFFSessionLocationContentView()
@interface ColorTitleView()

//: @property (nonatomic,strong) UIImageView * imageView;
@property (nonatomic,strong) UIImageView * imageView;

//: @property (nonatomic,strong) UILabel * titleLabel;
@property (nonatomic,strong) UILabel * titleLabel;

//: @end
@end

//: @implementation FFFSessionLocationContentView
@implementation ColorTitleView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initShowDown{
    //: self = [super initSessionMessageContentView];
    self = [super initShowDown];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: UIImage *image = [UIImage imageNamed:@"icon_map"];
        UIImage *image = [UIImage imageNamed:StringFromBroadcastNimData(kStr_theaterTitle)];
        //: _imageView = [[UIImageView alloc] initWithImage:image];
        _imageView = [[UIImageView alloc] initWithImage:image];

        //: CALayer *maskLayer = [CALayer layer];
        CALayer *maskLayer = [CALayer layer];
        //: maskLayer.cornerRadius = 13.0;
        maskLayer.cornerRadius = 13.0;
        //: maskLayer.backgroundColor = [UIColor blackColor].CGColor;
        maskLayer.backgroundColor = [UIColor blackColor].CGColor;
        //: maskLayer.frame = _imageView.bounds;
        maskLayer.frame = _imageView.bounds;
        //: _imageView.layer.mask = maskLayer;
        _imageView.layer.mask = maskLayer;

        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.numberOfLines = 0;
        _titleLabel.numberOfLines = 0;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data
- (void)scale:(StochasticProcessTeam *)data
{
    //: [super refresh:data];
    [super scale:data];
    //: NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    //: self.titleLabel.text = locationObject.title;
    self.titleLabel.text = locationObject.title;

    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    WorkerSetting *setting = [[Afterwards blue].config with:data.message];

    //: self.titleLabel.textColor = setting.textColor;
    self.titleLabel.textColor = setting.textColor;
    //: self.titleLabel.font = setting.font;
    self.titleLabel.font = setting.font;
}

//: - (void)onTouchUpInside:(id)sender
- (void)ons:(id)sender
{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    KitOperation *event = [[KitOperation alloc] init];
    //: event.eventName = FFFKitEventNameTapContent;
    event.eventName = kLet_valueContextName;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate bluePosition:event];
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _titleLabel.nim_width = self.nim_width - 20;
    _titleLabel.nim_width = self.nim_width - 20;
    //: _titleLabel.nim_height= 35.f;
    _titleLabel.nim_height= 35.f;
    //: self.titleLabel.nim_centerY = 90.f;
    self.titleLabel.nim_centerY = 90.f;
    //: self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model contentMidSize:tableViewWidth];

    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
}


//: @end
@end

Byte * BroadcastNimDataToCache(Byte *data) {
    int approveTitle = data[0];
    int tributeSearch = data[1];
    int revelationDancing = data[2];
    if (!approveTitle) return data + revelationDancing;
    for (int i = 0; i < tributeSearch / 2; i++) {
        int begin = revelationDancing + i;
        int end = revelationDancing + tributeSearch - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[revelationDancing + tributeSearch] = 0;
    return data + revelationDancing;
}

NSString *StringFromBroadcastNimData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BroadcastNimDataToCache(data)];
}  
