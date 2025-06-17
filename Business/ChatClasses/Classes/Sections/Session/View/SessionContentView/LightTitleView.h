// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionAudioCententView.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "CypherView.h"

//: @protocol NIMPlayAudioUIDelegate <NSObject>
@protocol ButtonOn <NSObject>
//: -(void)startPlayingAudioUI; 
-(void)globuleWith; //点击一开始就要显示
//: @optional
@optional
//: - (void)retryDownloadMsg; 
- (void)preface; //重收消息
//: @end
@end

//: @interface FFFSessionAudioContentView : FFFSessionMessageContentView
@interface LightTitleView : CypherView

//: @property (nonatomic, strong) UILabel *audioDurationLable; 
@property (nonatomic, strong) UILabel *audioDurationLable; //语音时长

//: @property (nonatomic, weak) id<NIMPlayAudioUIDelegate> audioUIDelegate;
@property (nonatomic, weak) id<ButtonOn> audioUIDelegate;

//: @property (nonatomic, strong) UIView *audioBackgroundView;
@property (nonatomic, strong) UIView *audioBackgroundView;

//: - (void)setPlaying:(BOOL)isPlaying;
- (void)setColumn:(BOOL)isPlaying;

//: @end
@end