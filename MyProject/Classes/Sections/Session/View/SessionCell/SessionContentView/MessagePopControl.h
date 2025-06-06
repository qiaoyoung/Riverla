// __DEBUG__
// __CLOSE_PRINT__
//
//  MessagePopControl.h
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "NoticeBlueView.h"
//: #import "M80AttributedLabel.h"
#import "PopScrollView.h"

//: static NSString *const NTESShowRedPacketDetailEvent = @"NTESShowRedPacketDetailEvent";
static NSString *const let_indexTapFrameData = @"NTESShowRedPacketDetailEvent";


//: @interface NTESSessionRedPacketTipContentView : FFFSessionMessageContentView
@interface MessagePopControl : NoticeBlueView

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) PopScrollView *label;

//: @end
@end