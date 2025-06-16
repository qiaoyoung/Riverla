//
//  SessionAudioCententView.m
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "FFFSessionAudioContentView.h"
#import "UIViewNimKit.h"
#import "FFFMessageModel.h"
#import "UIImage+NeeyoKit.h"
#import "FFFKitAudioCenter.h"
#import "NeeyoKit.h"
#import "UIColor+NeeyoKit.h"

@interface FFFSessionAudioContentView()<NIMMediaManagerDelegate>

@property (nonatomic,strong) UIImageView *voiceImageView;
@property (nonatomic,strong) UIImageView *voiceImageViewleft;

@property (nonatomic,strong) UIImageView *voicePlayView;
@property (nonatomic,strong) UIImageView *voicePlayViewleft;

@property (nonatomic,strong) UILabel *durationLabel;

@end

@implementation FFFSessionAudioContentView

-(instancetype)initSessionMessageContentView{
    self = [super initSessionMessageContentView];
    if (self) {
        [self addVoiceView];
        [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    }
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

- (void)setPlaying:(BOOL)isPlaying
{
    if (isPlaying) {
        [self.voiceImageView startAnimating];
        [self.voiceImageViewleft startAnimating];
        _voicePlayViewleft.image = [UIImage imageNamed:@"icon_voice_plus_b"];
//        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_plus_w"];
        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_plus_b"];
    }else{
        [self.voiceImageView stopAnimating];
        [self.voiceImageViewleft stopAnimating];
        _voicePlayViewleft.image = [UIImage imageNamed:@"icon_voice_play_b"];
//        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_play_w"];
        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_play_b"];
    }
}

- (void)addVoiceView{
    _audioBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    _audioBackgroundView.layer.cornerRadius = 16.f;
    _audioBackgroundView.userInteractionEnabled = NO;
    [self addSubview:_audioBackgroundView];
    
    
    _voicePlayViewleft = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_voice_play_b"]];
    [self addSubview:_voicePlayViewleft];
    _voicePlayViewleft.hidden = YES;
    _voicePlayView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_voice_play_b"]];
    [self addSubview:_voicePlayView];
    _voicePlayView.hidden = YES;
    
    UIImage *image = [UIImage imageNamed:@"icon_receiver_voice_playing_w"];
    _voiceImageView = [[UIImageView alloc] initWithImage:image];
    NSArray *animateNames = @[@"icon_receiver_voice_playing_001",@"icon_receiver_voice_playing_002",@"icon_receiver_voice_playing_003",@"icon_receiver_voice_playing_004",@"icon_receiver_voice_playing_005",@"icon_receiver_voice_playing_006",@"icon_receiver_voice_playing_007",@"icon_receiver_voice_playing_008",@"icon_receiver_voice_playing_009",@"icon_receiver_voice_playing_010"];
    NSMutableArray * animationImages = [[NSMutableArray alloc] initWithCapacity:animateNames.count];
    for (NSString * animateName in animateNames) {
        UIImage * animateImage = [UIImage imageNamed:animateName];
        [animationImages addObject:animateImage];
    }
    _voiceImageView.animationImages = animationImages;
    _voiceImageView.animationDuration = 1.0;
    [self addSubview:_voiceImageView];
    _voiceImageView.hidden = YES;
    
    _voiceImageViewleft = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_receiver_voice_playing"]];
    NSArray *animateNames2 = @[@"icon_receiver_voice_playing_001",@"icon_receiver_voice_playing_002",@"icon_receiver_voice_playing_003",@"icon_receiver_voice_playing_004",@"icon_receiver_voice_playing_005",@"icon_receiver_voice_playing_006",@"icon_receiver_voice_playing_007",@"icon_receiver_voice_playing_008",@"icon_receiver_voice_playing_009",@"icon_receiver_voice_playing_010"];
    NSMutableArray *animationImages2 = [[NSMutableArray alloc] initWithCapacity:animateNames2.count];
    for (NSString *animateName2 in animateNames2) {
        UIImage *animateImage2 = [UIImage imageNamed:animateName2];
        [animationImages2 addObject:animateImage2];
    }
    _voiceImageViewleft.animationImages = animationImages2;
    _voiceImageViewleft.animationDuration = 1.0;
    [self addSubview:_voiceImageViewleft];
    _voiceImageViewleft.hidden = YES;
    
    _durationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _durationLabel.backgroundColor = [UIColor clearColor];
    [self addSubview:_durationLabel];
    
}

- (void)refresh:(FFFMessageModel *)data {
    [super refresh:data];
    NIMAudioObject *object = self.model.message.messageObject;
    self.durationLabel.text = [NSString stringWithFormat:@"%zd\"",(NSInteger)((object.duration+500)/1000)];//四舍五入
    
    FFFKitSetting *setting = [[NeeyoKit sharedKit].config setting:data.message];

    self.durationLabel.font      = setting.font;
    self.durationLabel.textColor = setting.textColor;
    [self.durationLabel sizeToFit];
    
    [self setPlaying:self.isPlaying];
    [self refreshBackground:data];
}

- (void)refreshBackground:(FFFMessageModel *)data
{
    if (data.shouldShowLeft)
    {
        _voiceImageViewleft.hidden = NO;
        _voiceImageView.hidden = YES;
        _voicePlayViewleft.hidden = NO;
        _voicePlayView.hidden = YES;
    }
    else
    {
//        _voiceImageView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_w"];
        _voiceImageViewleft.hidden = YES;
        _voiceImageView.hidden = NO;
        _voicePlayViewleft.hidden = YES;
        _voicePlayView.hidden = NO;
    }
}

- (void)layoutSubviews{
    [super layoutSubviews];
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    switch (self.layoutStyle) {
        case FFFSessionMessageContentViewLayoutLeft: {
//            _voiceImageView.transform = CGAffineTransformIdentity;
//            self.voiceImageView.left = contentInsets.left * 2;
            self.voiceImageViewleft.left = contentInsets.left * 2;
             _durationLabel.right = self.width - contentInsets.right * 2;
            break;
        }
        case FFFSessionMessageContentViewLayoutRight: {
//            _voiceImageView.transform = CGAffineTransformMakeRotation(M_PI);
            self.voiceImageView.right = self.width - contentInsets.right * 2;
            _durationLabel.left = contentInsets.left;
            break;
        }
        case FFFSessionMessageContentViewLayoutAuto:
        default:
        {
            if (self.model.message.isOutgoingMsg) {
//                _voiceImageView.transform = CGAffineTransformMakeRotation(M_PI);
                
               
                self.voicePlayView.left = contentInsets.left;
                self.voiceImageView.left = self.voicePlayView.right+10;
                _durationLabel.left = self.voiceImageView.right+10;
                
            } else {
//                _voiceImageView.transform = CGAffineTransformIdentity;
//               self.voiceImageView.left = contentInsets.left;
                
                self.voicePlayViewleft.left = contentInsets.left;
                self.voiceImageViewleft.left = self.voicePlayViewleft.right+10;
                _durationLabel.left = self.voiceImageViewleft.right+10;
            }
            break;
        }
    }
    _voiceImageView.width = 62;
    _voiceImageView.height = 18;
    _voiceImageView.centerY = self.height * .5f;
    
    _voiceImageViewleft.width = 62;
    _voiceImageViewleft.height = 18;
    _voiceImageViewleft.centerY = self.height * .5f;
    
    _voicePlayView.width = 16;
    _voicePlayView.height = 16;
    _voicePlayView.centerY = self.height * .5f;
    
    _voicePlayViewleft.width = 16;
    _voicePlayViewleft.height = 16;
    _voicePlayViewleft.centerY = self.height * .5f;
    
    _durationLabel.centerY = _voiceImageView.centerY;
    
    CGFloat backgroundWidth = 0;
    CGFloat backgroundLeft = 0;
    switch (self.layoutStyle) {
        case FFFSessionMessageContentViewLayoutLeft:
            {
                backgroundWidth = self.width - contentInsets.left * .5f - 2;
                backgroundLeft = contentInsets.left * .5f;
            }
            break;
        case FFFSessionMessageContentViewLayoutRight:
            {
                backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                backgroundLeft = 2;
            }
            break;
        default:
        {
            if (self.model.message.isOutgoingMsg) {
                backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                backgroundLeft = 2;
            } else {
                backgroundWidth = self.width - contentInsets.left * .5f - 2;
                backgroundLeft = contentInsets.left * .5f;
            }
            break;
        }
    }
    _audioBackgroundView.size = CGSizeMake(backgroundWidth,
                                               self.height - 4);
    _audioBackgroundView.left = backgroundLeft;
    _audioBackgroundView.top = 2;
}

-(void)onTouchUpInside:(id)sender
{
    if ([self.model.message attachmentDownloadState]== NIMMessageAttachmentDownloadStateFailed
        || [self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateNeedDownload) {
        [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:self.model.message
                                                           error:nil];
        return;
    }
    if ([self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateDownloaded) {
        
        if ([[NIMSDK sharedSDK].mediaManager isPlaying]) {
            [self stopPlayingUI];
        }
        
        FFFKitEvent *event = [[FFFKitEvent alloc] init];
        event.eventName = FFFKitEventNameTapAudio;
        event.messageModel = self.model;
        [self.delegate onCatchEvent:event];

    }
}

#pragma mark - NIMMediaManagerDelegate

- (void)playAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
    if(filePath && !error) {
        if (self.isPlaying && [self.audioUIDelegate respondsToSelector:@selector(startPlayingAudioUI)]) {
            [self.audioUIDelegate startPlayingAudioUI];
        }        
    }
}

- (void)playAudio:(NSString *)filePath didCompletedWithError:(NSError *)error
{
    [self stopPlayingUI];
}

- (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    [self stopPlayingUI];
}

#pragma mark - private methods
- (void)stopPlayingUI
{
    [self setPlaying:NO];
}

- (BOOL)isPlaying
{
    BOOL play = [FFFKitAudioCenter instance].currentPlayingMessage == self.model.message; //对比是否是同一条消息，严格同一条，不能是相同ID，防止进了会话又进云端消息界面，导致同一个ID的云消息也在动画
    return play;
}


//- (NSString *)convertToTimeStringWithTimeInterval:(NSTimeInterval)timeInterval{
//    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"HH:mm"];
//    NSString *dateStsring = [dateFormatter stringFromDate:date];
//    return dateStsring;
//}

@end
