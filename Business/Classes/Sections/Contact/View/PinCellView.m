// __DEBUG__
// __CLOSE_PRINT__
//
//  PinCellView.m
//  NIM
//
//  Created by chris on 2017/4/7.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataCell.h"
#import "PinCellView.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"

//: @implementation NTESContactDataCell
@implementation PinCellView

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member
- (void)multi:(id<BoardMemberLayer>)member
{
    //: [super refreshUser:member];
    [super multi:member];
    //: NSString *state = [NTESSessionUtil onlineState:self.memberId detail:NO];
    NSString *state = [LinkUtil eparchy:self.memberId present:NO];
    //: NSString *title = @"";
    NSString *title = @"";
//    if (state.length)
//    {
//        title = [NSString stringWithFormat:@"[%@] %@",state,member.showName];
//    }
//    else
//    {
        //: title = [NSString stringWithFormat:@"%@",member.showName];
        title = [NSString stringWithFormat:@"%@",member.user];
//    }

    //: self.textLabel.text = title;
    self.textLabel.text = title;
}


//: @end
@end