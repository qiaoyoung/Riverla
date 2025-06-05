// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewFindControl.h
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFInputEmoticonTabView;
@class ViewFindControl;

//: @protocol NIMInputEmoticonTabDelegate <NSObject>
@protocol NoticeDelegate <NSObject>

//: - (void)tabView:(FFFInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index;
- (void)green:(ViewFindControl *)tabView pickOut:(NSInteger) index;

//: @end
@end

//: @interface FFFInputEmoticonTabView : UIControl
@interface ViewFindControl : UIControl

//: @property (nonatomic,strong) UIButton * sendButton;
@property (nonatomic,strong) UIButton * sendButton;

//: @property (nonatomic,weak) id<NIMInputEmoticonTabDelegate> delegate;
@property (nonatomic,weak) id<NoticeDelegate> delegate;

//: - (void)selectTabIndex:(NSInteger)index;
- (void)glorify:(NSInteger)index;

//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs;
- (void)color:(NSArray*)emoticonCatalogs;

//: @end
@end