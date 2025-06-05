// __DEBUG__
// __CLOSE_PRINT__
//
//  ClickTeamViewController.h
//  NIM
//
//  Created by chris on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamCardOperationViewController.h"
#import "NameLabelViewController.h"

//: @interface FFFAdvancedTeamCardViewController : FFFTeamCardOperationViewController
@interface ClickTeamViewController : NameLabelViewController



//: - (void)enterMemberCard;
- (void)takeWaterCard;//查看群成员
//: - (void)didSelectAddOpeartor;
- (void)domainSub;//添加新成员

//: - (void)updateTeamName;
- (void)remoteShow;
//: - (void)updateTeamNick;
- (void)applicationNick;
//: - (void)updateTeamIntro;
- (void)emptyOffSumro;
//: - (void)updateTeamAnnouncement;
- (void)countModel;
//: - (void)enterMuteList;
- (void)muteDate;//禁言列表
//: - (void)quitTeam;
- (void)indexCan;
//: - (void)dismissTeam;
- (void)searchedFor;
//: @end
@end