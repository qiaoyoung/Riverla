// __DEBUG__
// __CLOSE_PRINT__
//
//  VoidView.m
//  NIM
//
//  Created by chris on 2017/4/7.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataCell.h"
#import "VoidView.h"
//: #import "NTESSessionUtil.h"
#import "ArrayUtil.h"

//: @implementation NTESContactDataCell
@implementation VoidView

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member
- (void)show:(id<TingProtocol>)member
{
    //: [super refreshUser:member];
    [super show:member];
    //: NSString *state = [NTESSessionUtil onlineState:self.memberId detail:NO];
    NSString *state = [ArrayUtil recording:self.memberId key:NO];
    //: NSString *title = @"";
    NSString *title = @"";
//    if (state.length)
//    {
//        title = [NSString stringWithFormat:@"[%@] %@",state,member.showName];
//    }
//    else
//    {
        //: title = [NSString stringWithFormat:@"%@",member.showName];
        title = [NSString stringWithFormat:@"%@",member.showName];
//    }

    //: self.textLabel.text = title;
    self.textLabel.text = title;
}


//: @end
@end
