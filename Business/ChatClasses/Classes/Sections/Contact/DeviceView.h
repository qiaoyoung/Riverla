// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceView.h
// Notice
//
//  Created by chris on 15/9/15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFContactPickedView;
@class ContactView;

//: @interface FFFContactSelectTabView : UIView
@interface DeviceView : UIView

//: @property (nonatomic,strong) FFFContactPickedView *pickedView;
@property (nonatomic,strong) ContactView *pickedView;

//: @property (nonatomic,strong) UIButton *doneButton;
@property (nonatomic,strong) UIButton *doneButton;

//: @end
@end