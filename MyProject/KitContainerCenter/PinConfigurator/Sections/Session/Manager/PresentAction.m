
#import <Foundation/Foundation.h>

NSString *StringFromToughData(Byte *data);


//: contact_tag_fragment_cancel
Byte kStr_ovenData[] = {49, 27, 60, 9, 148, 190, 124, 225, 234, 159, 171, 170, 176, 157, 159, 176, 155, 176, 157, 163, 155, 162, 174, 157, 163, 169, 161, 170, 176, 155, 159, 157, 170, 159, 161, 168, 96};


//: 确认转发给
Byte kStr_looSignatureName[] = {67, 15, 49, 13, 251, 180, 6, 70, 228, 47, 13, 223, 63, 24, 210, 223, 25, 223, 213, 25, 238, 221, 22, 192, 194, 24, 236, 202, 157};


//: 确认转发
Byte kStr_exceedTitle[] = {93, 12, 76, 7, 133, 124, 8, 51, 237, 250, 52, 250, 240, 52, 9, 248, 49, 219, 221, 43};


//: 转发失败
Byte kStr_fessName[] = {80, 12, 73, 4, 49, 6, 245, 46, 216, 218, 46, 237, 250, 49, 253, 238, 79};


//: message_super_team
Byte kStr_enemyData[] = {17, 18, 59, 14, 150, 63, 46, 139, 222, 67, 10, 229, 192, 7, 168, 160, 174, 174, 156, 162, 160, 154, 174, 176, 171, 160, 173, 154, 175, 160, 156, 168, 121};


//: watch_multiretweet_activity_person
Byte kStr_increaseName[] = {67, 34, 68, 6, 26, 233, 187, 165, 184, 167, 172, 163, 177, 185, 176, 184, 173, 182, 169, 184, 187, 169, 169, 184, 163, 165, 167, 184, 173, 186, 173, 184, 189, 163, 180, 169, 182, 183, 179, 178, 100};


//: 已发送
Byte kStr_checkContainerText[] = {89, 9, 65, 14, 42, 188, 9, 102, 206, 33, 74, 240, 232, 55, 38, 248, 243, 38, 208, 210, 42, 193, 194, 189};


//: %@.code:%zd
Byte kStr_abetText[] = {7, 11, 88, 8, 247, 231, 106, 155, 125, 152, 134, 187, 199, 188, 189, 146, 125, 210, 188, 3};


//: 选择会话类型
Byte kStr_planDualData[] = {79, 18, 80, 7, 200, 77, 66, 57, 208, 217, 54, 219, 249, 52, 12, 234, 56, 255, 237, 55, 1, 11, 53, 238, 219, 201};


//: contact_fragment_group
Byte kStr_assaultToValue[] = {81, 22, 66, 5, 4, 165, 177, 176, 182, 163, 165, 182, 161, 168, 180, 163, 169, 175, 167, 176, 182, 161, 169, 180, 177, 183, 178, 255};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PresentAction.m
// Notice
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFChatUIManager.h"
#import "PresentAction.h"
//: #import "FFFContactSelectConfig.h"
#import "LinkConfig.h"
//: #import "FFFContactSelectViewController.h"
#import "TeamPictureViewController.h"
//: #import "FFFKitInfoFetchOption.h"
#import "Option.h"
//: #import "UIView+FFFToast.h"
#import "UIView+ByTop.h"

//: @implementation FFFChatUIManager
@implementation PresentAction

//: + (instancetype)sharedManager
+ (instancetype)mutual
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static FFFChatUIManager *instance;
    static PresentAction *instance;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [self.alloc init];
        instance = [self.alloc init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)forwardMessage:(NIMMessage *)message fromViewController:(UIViewController *)fromVC
- (void)color:(NIMMessage *)message casingController:(UIViewController *)fromVC
{
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"选择会话类型"] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[TeamManager sizeKey:StringFromToughData(kStr_planDualData)] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[TeamManager sizeKey:StringFromToughData(kStr_increaseName)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        CloseBack *config = [[CloseBack alloc] init];
        //: config.needMutiSelected = NO;
        config.needMutiSelected = NO;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        TeamPictureViewController *vc = [[TeamPictureViewController alloc] initWithIconTitle:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *userId = array.firstObject;
            NSString *userId = array.firstObject;
            //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self complete:message value:session holder:fromVC];
        //: };
        };
        //: [vc show];
        [vc application];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_group"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[TeamManager sizeKey:StringFromToughData(kStr_assaultToValue)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        InsertConfig *config = [[InsertConfig alloc] init];
        //: config.teamType = NIMKitTeamTypeNomal;
        config.teamType = NIMKitTeamTypeNomal;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        TeamPictureViewController *vc = [[TeamPictureViewController alloc] initWithIconTitle:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self complete:message value:session holder:fromVC];
        //: };
        };
        //: [vc show];
        [vc application];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"message_super_team"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[TeamManager sizeKey:StringFromToughData(kStr_enemyData)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        InsertConfig *config = [[InsertConfig alloc] init];
        //: config.teamType = NIMKitTeamTypeSuper;
        config.teamType = NIMKitTeamTypeSuper;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        TeamPictureViewController *vc = [[TeamPictureViewController alloc] initWithIconTitle:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self complete:message value:session holder:fromVC];
        //: };
        };
        //: [vc show];
        [vc application];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:[TeamManager sizeKey:StringFromToughData(kStr_ovenData)] style:UIAlertActionStyleCancel handler:nil]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session fromViewController:(UIViewController *)fromVC
- (void)complete:(NIMMessage *)message value:(NIMSession *)session holder:(UIViewController *)fromVC
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        Option *option = [[Option alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[Notice fullKit] value:session.sessionId manager:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[Notice fullKit] title:session.sessionId commence:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[Notice fullKit] withOption:session.sessionId spaceOption:nil].showName;
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString(@"确认转发给", nil), name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString(StringFromToughData(kStr_looSignatureName), nil), name];
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"确认转发", nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(StringFromToughData(kStr_exceedTitle), nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    //: [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确认", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确认", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: if (message.session) {
        if (message.session) {
            //: [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
            [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
        //: } else {
        } else {
            //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
            [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
        }
        //: if (error) {
        if (error) {
            //: NSString *errorMessage = [NSString stringWithFormat:@"%@.code:%zd", NSLocalizedString(@"转发失败", nil), error.code];
            NSString *errorMessage = [NSString stringWithFormat:StringFromToughData(kStr_abetText), NSLocalizedString(StringFromToughData(kStr_fessName), nil), error.code];
            //: [fromVC.view nim_showToast:errorMessage duration:2.0];
            [fromVC.view present:errorMessage nameRead:2.0];
        //: } else {
        } else {
            //: [fromVC.view nim_showToast:NSLocalizedString(@"已发送", nil) duration:2.0];
            [fromVC.view present:NSLocalizedString(StringFromToughData(kStr_checkContainerText), nil) nameRead:2.0];
        }
    //: }]];
    }]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: @end
@end

Byte * ToughDataToCache(Byte *data) {
    int magiSortBreathe = data[0];
    int flushly = data[1];
    Byte cognition = data[2];
    int holding = data[3];
    if (!magiSortBreathe) return data + holding;
    for (int i = holding; i < holding + flushly; i++) {
        int value = data[i] - cognition;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[holding + flushly] = 0;
    return data + holding;
}

NSString *StringFromToughData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ToughDataToCache(data)];
}
