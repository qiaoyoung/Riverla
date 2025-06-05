//
//  FFFInputEmoticonContainerView.h
// MyUserKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import "FFFPageView.h"
#import "FFFSessionConfig.h"

@class NIMInputEmoticonCatalog;
@class FFFInputEmoticonTabView;

@protocol NIMInputEmoticonProtocol <NSObject>

- (void)didPressSend:(id)sender;

- (void)didPressDelete:(id)sender;

- (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description;

- (void)selectedGifEmoticon:(NSString*)gif;

@end


@interface FFFInputEmoticonContainerView : UIView<FFFPageViewDataSource,FFFPageViewDelegate>

@property (nonatomic, strong)  FFFPageView *emoticonPageView;
@property (nonatomic, strong)  UIPageControl  *emotPageController;
@property (nonatomic, strong)  NSArray                    *totalCatalogData;
@property (nonatomic, strong)  NIMInputEmoticonCatalog    *currentCatalogData;
@property (nonatomic, readonly)NSArray            *allEmoticons;
@property (nonatomic, strong)  FFFInputEmoticonTabView   *tabView;
@property (nonatomic, weak)    id<NIMInputEmoticonProtocol>  delegate;
@property (nonatomic, weak)    id<FFFSessionConfig> config;

@property (nonatomic,strong)    UIScrollView   *scrollView;

@end

