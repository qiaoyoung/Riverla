// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewControl.h
// Afterwards
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFInputEmoticonTabView;
@class ViewControl;

//: @protocol NIMInputEmoticonTabDelegate <NSObject>
@protocol ToDelegate <NSObject>

//: - (void)tabView:(FFFInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index;
- (void)arrayNumber:(ViewControl *)tabView elite:(NSInteger) index;

//: @end
@end

//: @interface FFFInputEmoticonTabView : UIControl
@interface ViewControl : UIControl

//: @property (nonatomic,strong) UIButton * sendButton;
@property (nonatomic,strong) UIButton * sendButton;

//: @property (nonatomic,weak) id<NIMInputEmoticonTabDelegate> delegate;
@property (nonatomic,weak) id<ToDelegate> delegate;

//: - (void)selectTabIndex:(NSInteger)index;
- (void)segmentNameColor:(NSInteger)index;

//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs;
- (void)loadRandom:(NSArray*)emoticonCatalogs;

//: @end
@end