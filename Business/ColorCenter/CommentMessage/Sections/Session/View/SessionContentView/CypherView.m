// __DEBUG__
// __CLOSE_PRINT__
//
//  CypherView.m
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "CypherView.h"
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"

//: @interface FFFSessionMessageContentView()
@interface CypherView()

//: @end
@end

//: @implementation FFFSessionMessageContentView
@implementation CypherView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initShowDown
{
    //: CGSize defaultBubbleSize = CGSizeMake(60, 35);
    CGSize defaultBubbleSize = CGSizeMake(60, 35);
    //: if (self = [self initWithFrame:CGRectMake(0, 0, defaultBubbleSize.width, defaultBubbleSize.height)]) {
    if (self = [self initWithFrame:CGRectMake(0, 0, defaultBubbleSize.width, defaultBubbleSize.height)]) {

        //: [self addTarget:self action:@selector(onTouchDown:) forControlEvents:UIControlEventTouchDown];
        [self addTarget:self action:@selector(arrayed:) forControlEvents:UIControlEventTouchDown];
        //: [self addTarget:self action:@selector(onTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
        [self addTarget:self action:@selector(ons:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addTarget:self action:@selector(onTouchUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
        [self addTarget:self action:@selector(aboveBlack:) forControlEvents:UIControlEventTouchUpOutside];
        //: _bubbleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,defaultBubbleSize.width,defaultBubbleSize.height)];
        _bubbleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,defaultBubbleSize.width,defaultBubbleSize.height)];
        //: _bubbleImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _bubbleImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _bubbleImageView.hidden = YES;
        _bubbleImageView.hidden = YES;
        //: [self addSubview:_bubbleImageView];
        [self addSubview:_bubbleImageView];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel*)data
- (void)scale:(StochasticProcessTeam*)data
{
    //: _model = data;
    _model = data;
//    [_bubbleImageView setImage:[self chatBubbleImageForState:UIControlStateNormal
//                                                    outgoing:data.message.isOutgoingMsg]];
//    [_bubbleImageView setHighlightedImage:[self chatBubbleImageForState:UIControlStateHighlighted
//                                                               outgoing:data.message.isOutgoingMsg]];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _bubbleImageView.frame = self.bounds;
    _bubbleImageView.frame = self.bounds;
}


//: - (void)updateProgress:(float)progress
- (void)nameColor:(float)progress
{

}

//: - (void)onTouchDown:(id)sender
- (void)arrayed:(id)sender
{

}

//: - (void)onTouchUpInside:(id)sender
- (void)ons:(id)sender
{

}

//: - (void)onTouchUpOutside:(id)sender{
- (void)aboveBlack:(id)sender{

}


//: #pragma mark - Private
#pragma mark - Private
//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)lab:(UIControlState)state preface:(BOOL)outgoing
{

    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:self.model.message];
    WorkerSetting *setting = [[Afterwards blue].config with:self.model.message];
    //: if (state == UIControlStateNormal)
    if (state == UIControlStateNormal)
    {
        //: return setting.normalBackgroundImage;
        return setting.normalBackgroundImage;
    }
    //: else
    else
    {
        //: return setting.highLightBackgroundImage;
        return setting.highLightBackgroundImage;
    }
}


//: - (void)setHighlighted:(BOOL)highlighted{
- (void)setHighlighted:(BOOL)highlighted{
    //: [super setHighlighted:highlighted];
    [super setHighlighted:highlighted];
    //: _bubbleImageView.highlighted = highlighted;
    _bubbleImageView.highlighted = highlighted;
}

//: @end
@end