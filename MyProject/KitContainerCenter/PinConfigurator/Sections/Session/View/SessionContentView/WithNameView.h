// __DEBUG__
// __CLOSE_PRINT__
//
//  WithNameView.h
// Notice
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "NoticeBlueView.h"

//: @class M80AttributedLabel;
@class PopScrollView;

//: @interface FFFSessionTextContentView : FFFSessionMessageContentView
@interface WithNameView : NoticeBlueView

//: @property (nonatomic, strong) M80AttributedLabel *textView;
@property (nonatomic, strong) PopScrollView *textView;

//: @end
@end