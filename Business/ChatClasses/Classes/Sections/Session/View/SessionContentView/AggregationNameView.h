// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionAudioCententView.h
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "NoticeBlueView.h"

//: @protocol NIMPlayAudioUIDelegate <NSObject>
@protocol NameScale <NSObject>
//: -(void)startPlayingAudioUI; 
-(void)lengthTime; //点击一开始就要显示
//: @optional
@optional
//: - (void)retryDownloadMsg; 
- (void)titleTime; //重收消息
//: @end
@end

//: @interface FFFSessionAudioContentView : FFFSessionMessageContentView
@interface AggregationNameView : NoticeBlueView

//: @property (nonatomic, strong) UILabel *audioDurationLable; 
@property (nonatomic, strong) UILabel *audioDurationLable; //语音时长

//: @property (nonatomic, weak) id<NIMPlayAudioUIDelegate> audioUIDelegate;
@property (nonatomic, weak) id<NameScale> audioUIDelegate;

//: @property (nonatomic, strong) UIView *audioBackgroundView;
@property (nonatomic, strong) UIView *audioBackgroundView;

//: - (void)setPlaying:(BOOL)isPlaying;
- (void)setCoffin:(BOOL)isPlaying;

//: @end
@end