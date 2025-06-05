//
//  FFFInputEmoticonTabView.h
// NeeyoKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FFFInputEmoticonTabView;

@protocol NIMInputEmoticonTabDelegate <NSObject>

- (void)tabView:(FFFInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index;

@end

@interface FFFInputEmoticonTabView : UIControl

@property (nonatomic,strong) UIButton * sendButton;

@property (nonatomic,weak)   id<NIMInputEmoticonTabDelegate>  delegate;

- (void)selectTabIndex:(NSInteger)index;

- (void)loadCatalogs:(NSArray*)emoticonCatalogs;

@end






