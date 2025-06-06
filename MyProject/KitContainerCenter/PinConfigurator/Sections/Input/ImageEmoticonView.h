// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageEmoticonView.h
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFPageView.h"
#import "MinorLeagueTeamView.h"
//: #import "FFFSessionConfig.h"
#import "BlueConfig.h"

//: @class NIMInputEmoticonCatalog;
@class ShowRecent;
//: @class FFFInputEmoticonTabView;
@class ViewFindControl;

//: @protocol NIMInputEmoticonProtocol <NSObject>
@protocol EvaluateMessage <NSObject>

//: - (void)didPressSend:(id)sender;
- (void)nameRange:(id)sender;

//: - (void)didPressDelete:(id)sender;
- (void)putOption:(id)sender;

//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description;
- (void)byTitle:(NSString*)emoticonID should:(NSString*)emotCatalogID model:(NSString *)description;

//: - (void)selectedGifEmoticon:(NSString*)gif;
- (void)beautyBackground:(NSString*)gif;

//: @end
@end


//: @interface FFFInputEmoticonContainerView : UIView<FFFPageViewDataSource,FFFPageViewDelegate>
@interface ImageEmoticonView : UIView<AppSource,TopDelegate>

//: @property (nonatomic, strong) FFFPageView *emoticonPageView;
@property (nonatomic, strong) MinorLeagueTeamView *emoticonPageView;
//: @property (nonatomic, strong) UIPageControl *emotPageController;
@property (nonatomic, strong) UIPageControl *emotPageController;
//: @property (nonatomic, strong) NSArray *totalCatalogData;
@property (nonatomic, strong) NSArray *totalCatalogData;
//: @property (nonatomic, strong) NIMInputEmoticonCatalog *currentCatalogData;
@property (nonatomic, strong) ShowRecent *currentCatalogData;
//: @property (nonatomic, readonly)NSArray *allEmoticons;
@property (nonatomic, readonly)NSArray *allEmoticons;
//: @property (nonatomic, strong) FFFInputEmoticonTabView *tabView;
@property (nonatomic, strong) ViewFindControl *tabView;
//: @property (nonatomic, weak) id<NIMInputEmoticonProtocol> delegate;
@property (nonatomic, weak) id<EvaluateMessage> delegate;
//: @property (nonatomic, weak) id<FFFSessionConfig> config;
@property (nonatomic, weak) id<BlueConfig> config;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;

//: @end
@end