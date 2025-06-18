// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageNameView.h
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "CypherView.h"
//: #import "M80AttributedLabel.h"
#import "ShowTitleView.h"

//: static NSString *const NTESShowRedPacketDetailEvent = @"NTESShowRedPacketDetailEvent";
static NSString *const kLet_tabContent = @"NTESShowRedPacketDetailEvent";


//: @interface NTESSessionRedPacketTipContentView : FFFSessionMessageContentView
@interface MessageNameView : CypherView

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) ShowTitleView *label;

//: @end
@end