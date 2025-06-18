// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyIndexView.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFPageView.h"
#import "AtView.h"
//: #import "FFFSessionConfig.h"
#import "FrameConfig.h"

//: @class NIMInputEmoticonCatalog;
@class ImageHigh;
//: @class FFFInputEmoticonTabView;
@class ViewControl;

//: @protocol NIMInputEmoticonProtocol <NSObject>
@protocol EmoticonMessage <NSObject>

//: - (void)didPressSend:(id)sender;
- (void)sendApp:(id)sender;

//: - (void)didPressDelete:(id)sender;
- (void)fileOn:(id)sender;

//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description;
- (void)withSize:(NSString*)emoticonID key:(NSString*)emotCatalogID bar:(NSString *)description;

//: - (void)selectedGifEmoticon:(NSString*)gif;
- (void)keepTitle:(NSString*)gif;

//: @end
@end


//: @interface FFFInputEmoticonContainerView : UIView<FFFPageViewDataSource,FFFPageViewDelegate>
@interface KeyIndexView : UIView<ViewSource,ViewTransform>

//: @property (nonatomic, strong) FFFPageView *emoticonPageView;
@property (nonatomic, strong) AtView *emoticonPageView;
//: @property (nonatomic, strong) UIPageControl *emotPageController;
@property (nonatomic, strong) UIPageControl *emotPageController;
//: @property (nonatomic, strong) NSArray *totalCatalogData;
@property (nonatomic, strong) NSArray *totalCatalogData;
//: @property (nonatomic, strong) NIMInputEmoticonCatalog *currentCatalogData;
@property (nonatomic, strong) ImageHigh *currentCatalogData;
//: @property (nonatomic, readonly)NSArray *allEmoticons;
@property (nonatomic, readonly)NSArray *allEmoticons;
//: @property (nonatomic, strong) FFFInputEmoticonTabView *tabView;
@property (nonatomic, strong) ViewControl *tabView;
//: @property (nonatomic, weak) id<NIMInputEmoticonProtocol> delegate;
@property (nonatomic, weak) id<EmoticonMessage> delegate;
//: @property (nonatomic, weak) id<FFFSessionConfig> config;
@property (nonatomic, weak) id<FrameConfig> config;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;

//: @end
@end