
#import <Foundation/Foundation.h>

NSString *StringFromVanishData(Byte *data);


//: contact_tag_fragment_cancel
Byte kStr_untilVoiceHesitateName[] = {92, 27, 90, 10, 5, 6, 40, 124, 244, 151, 189, 201, 200, 206, 187, 189, 206, 185, 206, 187, 193, 185, 192, 204, 187, 193, 199, 191, 200, 206, 185, 189, 187, 200, 189, 191, 198, 148};


//: 确认转发给
Byte kStr_decreaseValue[] = {9, 15, 68, 13, 180, 91, 154, 178, 17, 158, 9, 147, 177, 43, 229, 242, 44, 242, 232, 44, 1, 240, 41, 211, 213, 43, 255, 221, 89};


//: 选择会话类型
Byte kStr_improvedAtDelicateData[] = {96, 18, 66, 10, 9, 245, 35, 123, 228, 140, 43, 194, 203, 40, 205, 235, 38, 254, 220, 42, 241, 223, 41, 243, 253, 39, 224, 205, 229};


//: 已发送
Byte kStr_captainData[] = {94, 9, 57, 13, 156, 126, 207, 47, 124, 100, 77, 103, 229, 30, 240, 235, 30, 200, 202, 34, 185, 186, 158};


//: 确认转发
Byte kStr_noteOutsideValue[] = {86, 12, 47, 12, 178, 189, 43, 93, 111, 36, 115, 81, 22, 208, 221, 23, 221, 211, 23, 236, 219, 20, 190, 192, 93};


//: contact_fragment_group
Byte kStr_improvedName[] = {57, 22, 21, 14, 142, 39, 79, 114, 219, 241, 159, 96, 111, 74, 120, 132, 131, 137, 118, 120, 137, 116, 123, 135, 118, 124, 130, 122, 131, 137, 116, 124, 135, 132, 138, 133, 219};


//: 转发失败
Byte kStr_whenName[] = {18, 12, 55, 11, 159, 24, 140, 129, 230, 223, 69, 31, 244, 227, 28, 198, 200, 28, 219, 232, 31, 235, 220, 21};


//: message_super_team
Byte kStr_capabilityData[] = {77, 18, 48, 4, 157, 149, 163, 163, 145, 151, 149, 143, 163, 165, 160, 149, 162, 143, 164, 149, 145, 157, 94};


//: watch_multiretweet_activity_person
Byte kStr_lipContent[] = {44, 34, 34, 7, 108, 161, 85, 153, 131, 150, 133, 138, 129, 143, 151, 142, 150, 139, 148, 135, 150, 153, 135, 135, 150, 129, 131, 133, 150, 139, 152, 139, 150, 155, 129, 146, 135, 148, 149, 145, 144, 143};


//: %@.code:%zd
Byte kStr_writText[] = {44, 11, 94, 8, 119, 201, 244, 124, 131, 158, 140, 193, 205, 194, 195, 152, 131, 216, 194, 42};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableArrayKey.m
// Afterwards
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFChatUIManager.h"
#import "TableArrayKey.h"
//: #import "FFFContactSelectConfig.h"
#import "UndersurfacePoint.h"
//: #import "FFFContactSelectViewController.h"
#import "ClearViewController.h"
//: #import "FFFKitInfoFetchOption.h"
#import "EmptyKey.h"
//: #import "UIView+FFFToast.h"
#import "UIView+Transform.h"

//: @implementation FFFChatUIManager
@implementation TableArrayKey

//: + (instancetype)sharedManager
+ (instancetype)image
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static FFFChatUIManager *instance;
    static TableArrayKey *instance;
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
- (void)forefront:(NIMMessage *)message optionController:(UIViewController *)fromVC
{
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"选择会话类型"] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[ItemManager sessionInformation:StringFromVanishData(kStr_improvedAtDelicateData)] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[ItemManager sessionInformation:StringFromVanishData(kStr_lipContent)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        AtConfig *config = [[AtConfig alloc] init];
        //: config.needMutiSelected = NO;
        config.needMutiSelected = NO;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        ClearViewController *vc = [[ClearViewController alloc] initWithRecording:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *userId = array.firstObject;
            NSString *userId = array.firstObject;
            //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self size:message light:session indicator:fromVC];
        //: };
        };
        //: [vc show];
        [vc parent];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_group"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[ItemManager sessionInformation:StringFromVanishData(kStr_improvedName)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        EyeContactConfig *config = [[EyeContactConfig alloc] init];
        //: config.teamType = NIMKitTeamTypeNomal;
        config.teamType = NIMKitTeamTypeNomal;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        ClearViewController *vc = [[ClearViewController alloc] initWithRecording:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self size:message light:session indicator:fromVC];
        //: };
        };
        //: [vc show];
        [vc parent];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"message_super_team"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[ItemManager sessionInformation:StringFromVanishData(kStr_capabilityData)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        EyeContactConfig *config = [[EyeContactConfig alloc] init];
        //: config.teamType = NIMKitTeamTypeSuper;
        config.teamType = NIMKitTeamTypeSuper;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        ClearViewController *vc = [[ClearViewController alloc] initWithRecording:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self size:message light:session indicator:fromVC];
        //: };
        };
        //: [vc show];
        [vc parent];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:[ItemManager sessionInformation:StringFromVanishData(kStr_untilVoiceHesitateName)] style:UIAlertActionStyleCancel handler:nil]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session fromViewController:(UIViewController *)fromVC
- (void)size:(NIMMessage *)message light:(NIMSession *)session indicator:(UIViewController *)fromVC
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        EmptyKey *option = [[EmptyKey alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[Afterwards blue] put:session.sessionId button:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[Afterwards blue] communication:session.sessionId bar:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[Afterwards blue] notInfo:session.sessionId crop_strong:nil].showName;
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString(@"确认转发给", nil), name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString(StringFromVanishData(kStr_decreaseValue), nil), name];
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"确认转发", nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(StringFromVanishData(kStr_noteOutsideValue), nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
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
            NSString *errorMessage = [NSString stringWithFormat:StringFromVanishData(kStr_writText), NSLocalizedString(StringFromVanishData(kStr_whenName), nil), error.code];
            //: [fromVC.view nim_showToast:errorMessage duration:2.0];
            [fromVC.view color:errorMessage size:2.0];
        //: } else {
        } else {
            //: [fromVC.view nim_showToast:NSLocalizedString(@"已发送", nil) duration:2.0];
            [fromVC.view color:NSLocalizedString(StringFromVanishData(kStr_captainData), nil) size:2.0];
        }
    //: }]];
    }]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: @end
@end

Byte * VanishDataToCache(Byte *data) {
    int paintRecent = data[0];
    int lipEqual = data[1];
    Byte celestialBody = data[2];
    int drawMessage = data[3];
    if (!paintRecent) return data + drawMessage;
    for (int i = drawMessage; i < drawMessage + lipEqual; i++) {
        int value = data[i] - celestialBody;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[drawMessage + lipEqual] = 0;
    return data + drawMessage;
}

NSString *StringFromVanishData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)VanishDataToCache(data)];
}
