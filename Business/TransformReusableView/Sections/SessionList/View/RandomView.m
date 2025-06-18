
#import <Foundation/Foundation.h>
typedef struct {
    Byte becloud;
    Byte *formatShould;
    unsigned int objectTable;
    bool textBubble;
	int tableMessage;
	int keyName;
} RemoteData;

NSString *StringFromRemoteData(RemoteData *data);


//: message_helper_already_ok
RemoteData kStr_infoBlueValue = (RemoteData){117, (Byte []){24, 16, 6, 6, 20, 18, 16, 42, 29, 16, 25, 5, 16, 7, 42, 20, 25, 7, 16, 20, 17, 12, 42, 26, 30, 69}, 25, false, 129, 75};


//: successful_authentication
RemoteData kStr_shouldLayerValue = (RemoteData){89, (Byte []){42, 44, 58, 58, 60, 42, 42, 63, 44, 53, 6, 56, 44, 45, 49, 60, 55, 45, 48, 58, 56, 45, 48, 54, 55, 231}, 25, false, 107, 23};


//: group_info_activity_team_not_exist
RemoteData kStr_enableTextTitle = (RemoteData){73, (Byte []){46, 59, 38, 60, 57, 22, 32, 39, 47, 38, 22, 40, 42, 61, 32, 63, 32, 61, 48, 22, 61, 44, 40, 36, 22, 39, 38, 61, 22, 44, 49, 32, 58, 61, 244}, 34, false, 61, 139};


//: friend_verify_avtivity_net_error
RemoteData kStr_onIndexName = (RemoteData){4, (Byte []){98, 118, 109, 97, 106, 96, 91, 114, 97, 118, 109, 98, 125, 91, 101, 114, 112, 109, 114, 109, 112, 125, 91, 106, 97, 112, 91, 97, 118, 118, 107, 118, 44}, 32, false, 175, 10};


//: message_helper_already_no
RemoteData kStr_rowBubbleData = (RemoteData){81, (Byte []){60, 52, 34, 34, 48, 54, 52, 14, 57, 52, 61, 33, 52, 35, 14, 48, 61, 35, 52, 48, 53, 40, 14, 63, 62, 255}, 25, false, 229, 97};


//: 接受成功
RemoteData kStr_bubbleCountervalTitle = (RemoteData){137, (Byte []){111, 7, 44, 108, 6, 30, 111, 1, 25, 108, 3, 22, 172}, 12, false, 149, 50};


//: 拒绝失败,请重试
RemoteData kStr_titleBubbleValue = (RemoteData){239, (Byte []){9, 100, 125, 8, 84, 114, 10, 75, 94, 7, 91, 74, 195, 7, 64, 88, 6, 104, 98, 7, 64, 122, 235}, 22, false, 91, 18};


//: fail_authentication
RemoteData kStr_captureAtTimeText = (RemoteData){213, (Byte []){179, 180, 188, 185, 138, 180, 160, 161, 189, 176, 187, 161, 188, 182, 180, 161, 188, 186, 187, 44}, 19, false, 17, 97};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RandomView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNotificationView.h"
#import "RandomView.h"
//: #import "NTESSystemNotificationCell.h"
#import "ReplyViewCell.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: @interface NTESNotificationView ()<NIMSystemNotificationManagerDelegate,NIMSystemNotificationCellDelegate,UITableViewDelegate,UITableViewDataSource>
@interface RandomView ()<NIMSystemNotificationManagerDelegate,ToMarginBottom,UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,assign) BOOL shouldMarkAsRead;
@property (nonatomic,assign) BOOL shouldMarkAsRead;

//: @end
@end

//: @implementation NTESNotificationView
@implementation RandomView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1];
        self.backgroundColor = [UIColor colorWithRed:243/255.0 green:242/255.0 blue:252/255.0 alpha:1];

        //: self.tableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
        self.tableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
        //: [self addSubview:self.tableView];
        [self addSubview:self.tableView];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: self.tableView.backgroundColor = [UIColor clearColor];
        self.tableView.backgroundColor = [UIColor clearColor];
        //: self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
        self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
        //: self.tableView.delegate = self;
        self.tableView.delegate = self;
        //: self.tableView.dataSource = self;
        self.tableView.dataSource = self;

        //: _notifications = [NSMutableArray array];
        _notifications = [NSMutableArray array];

        //: id<NIMSystemNotificationManager> systemNotificationManager = [[NIMSDK sharedSDK] systemNotificationManager];
        id<NIMSystemNotificationManager> systemNotificationManager = [[NIMSDK sharedSDK] systemNotificationManager];
        //: [systemNotificationManager addDelegate:self];
        [systemNotificationManager addDelegate:self];

        //: NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
        NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
        //: filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(5),@(15),@(16),@(17),@(18)];
        filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(5),@(15),@(16),@(17),@(18)];

        //: NSArray *notification = [systemNotificationManager fetchSystemNotifications:nil
        NSArray *notification = [systemNotificationManager fetchSystemNotifications:nil
                                                             //: limit:20 filter:filter];
                                                             limit:20 filter:filter];

        //: if ([notification count])
        if ([notification count])
        {
            //: [_notifications addObjectsFromArray:notification];
            [_notifications addObjectsFromArray:notification];
//                    if (![[notification firstObject] read])
//                    {
//                        _shouldMarkAsRead = YES;
//
//                    }
        }

        //: [self.tableView reloadData];
        [self.tableView reloadData];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initThan{

//        if (_shouldMarkAsRead)
//        {
//            [[[NIMSDK sharedSDK] systemNotificationManager] markAllNotificationsAsRead];
//        }
}

//: - (void)onReceiveSystemNotification:(NIMSystemNotification *)notification
- (void)onReceiveSystemNotification:(NIMSystemNotification *)notification
{
    //: [_notifications insertObject:notification atIndex:0];
    [_notifications insertObject:notification atIndex:0];
//    _shouldMarkAsRead = YES;
    //: [self.tableView reloadData];
    [self.tableView reloadData];
//    [[[NIMSDK sharedSDK] systemNotificationManager] markAllNotificationsAsRead];
}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //: return 1;
    return 1;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return [_notifications count];
    return [_notifications count];
}


//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: NTESSystemNotificationCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NTESSystemNotificationCell"];
    ReplyViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ReplyViewCell"];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESSystemNotificationCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"NTESSystemNotificationCell"];
        cell = [[ReplyViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ReplyViewCell"];
    }
    //: cell.actionDelegate = self;
    cell.actionDelegate = self;

    //: NIMSystemNotification *notification = [_notifications objectAtIndex:[indexPath row]];
    NIMSystemNotification *notification = [_notifications objectAtIndex:[indexPath row]];
    //: [cell update:notification];
    [cell origin:notification];

    //: return cell;
    return cell;
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 70;
    return 70;
}

//: - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    //: return YES;
    return YES;
}

//: - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    //: if (editingStyle == UITableViewCellEditingStyleDelete) {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //: NSInteger index = [indexPath row];
        NSInteger index = [indexPath row];
        //: NIMSystemNotification *notification = [_notifications objectAtIndex:index];
        NIMSystemNotification *notification = [_notifications objectAtIndex:index];
        //: [_notifications removeObjectAtIndex:index];
        [_notifications removeObjectAtIndex:index];
        //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
        [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
        //: [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


//: #pragma mark - SystemNotificationCell
#pragma mark - SystemNotificationCell
//: - (void)onAccept:(NIMSystemNotification *)notification
- (void)alongChild:(NIMSystemNotification *)notification
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: switch (notification.type) {
    switch (notification.type) {
        //: case NIMSystemNotificationTypeTeamApply:{
        case NIMSystemNotificationTypeTeamApply:{
            //: [[NIMSDK sharedSDK].teamManager passApplyToTeam:notification.targetID userId:notification.sourceID completion:^(NSError *error, NIMTeamApplyStatus applyStatus) {
            [[NIMSDK sharedSDK].teamManager passApplyToTeam:notification.targetID userId:notification.sourceID completion:^(NSError *error, NIMTeamApplyStatus applyStatus) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_ok"]
                    [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_infoBlueValue)]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeOk;
                    notification.handleStatus = NotificationHandleTypeOk;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_onIndexName)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    //: } else {
                    } else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamApply:{
        case NIMSystemNotificationTypeSuperTeamApply:{
            //: [[NIMSDK sharedSDK].superTeamManager passApplyToTeam:notification.targetID userId:notification.sourceID completion:^(NSError *error, NIMTeamApplyStatus applyStatus) {
            [[NIMSDK sharedSDK].superTeamManager passApplyToTeam:notification.targetID userId:notification.sourceID completion:^(NSError *error, NIMTeamApplyStatus applyStatus) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_ok"]
                    [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_infoBlueValue)]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeOk;
                    notification.handleStatus = NotificationHandleTypeOk;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_onIndexName)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    //: } else {
                    } else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeTeamInvite:{
        case NIMSystemNotificationTypeTeamInvite:{
            //: [[NIMSDK sharedSDK].teamManager acceptInviteWithTeam:notification.targetID invitorId:notification.sourceID completion:^(NSError *error) {
            [[NIMSDK sharedSDK].teamManager acceptInviteWithTeam:notification.targetID invitorId:notification.sourceID completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:@"接受成功".ntes_localized
                    [wself makeToast:StringFromRemoteData(&kStr_bubbleCountervalTitle).aboveMagnitude
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeOk;
                    notification.handleStatus = NotificationHandleTypeOk;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_onIndexName)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_enableTextTitle)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else {
                    else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeSuperTeamInvite:
        case NIMSystemNotificationTypeSuperTeamInvite:
        {
            //: [[NIMSDK sharedSDK].superTeamManager acceptInviteWithTeam:notification.targetID invitorId:notification.sourceID completion:^(NSError *error) {
            [[NIMSDK sharedSDK].superTeamManager acceptInviteWithTeam:notification.targetID invitorId:notification.sourceID completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:@"接受成功".ntes_localized
                    [wself makeToast:StringFromRemoteData(&kStr_bubbleCountervalTitle).aboveMagnitude
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeOk;
                    notification.handleStatus = NotificationHandleTypeOk;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_onIndexName)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_enableTextTitle)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else {
                    else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeFriendAdd:
        case NIMSystemNotificationTypeFriendAdd:
        {
            //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
            NIMUserRequest *request = [[NIMUserRequest alloc] init];
            //: request.userId = notification.sourceID;
            request.userId = notification.sourceID;
            //: request.operation = NIMUserOperationVerify;
            request.operation = NIMUserOperationVerify;

            //: [[[NIMSDK sharedSDK] userManager] requestFriend:request
            [[[NIMSDK sharedSDK] userManager] requestFriend:request
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
                                                     //: if (!error) {
                                                     if (!error) {
                                                         //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"successful_authentication"]//@"验证成功".ntes_localized
                                                         [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_shouldLayerValue)]//@"验证成功".ntes_localized
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                         //: notification.handleStatus = NotificationHandleTypeOk;
                                                         notification.handleStatus = NotificationHandleTypeOk;

                                                         //: [_notifications removeObject:notification];
                                                         [_notifications removeObject:notification];
                                                         //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                                                         [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];


                                                         //拿到对方用户信息
//                                                         NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:notification.sourceID];
//                                                         //NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
//
//                                                         // 构造出具体会话：P2P单聊，对方账号为user
//                                                         NIMSession *session = [NIMSession session:notification.sourceID type:NIMSessionTypeP2P];
//                                                         // 构造出具体消息
//                                                         NIMMessage *message = [[NIMMessage alloc] init];
//                                                         message.text        = [NSString stringWithFormat:@"%@%@，%@",LangKey(@"you_have_added"),user.userInfo.nickName,LangKey(@"now_time_chat")];
//                                                         // 错误反馈对象
//                                                         NSError *error = nil;
//                                                         // 发送消息
//                                                         [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
                                                     }
                                                     //: else
                                                     else
                                                     {
                                                         //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"fail_authentication"]//@"验证失败,请重试".ntes_localized
                                                         [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_captureAtTimeText)]//@"验证失败,请重试".ntes_localized
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                     }
                                                     //: [wself.tableView reloadData];
                                                     [wself.tableView reloadData];
                                                 //: }];
                                                 }];


//            [PhotoManager postWithUrl:Server_user_addFriend params:@{@"fuid":notification.sourceID?:@""} isShow:NO success:^(id responseObject) {
//
//            } failed:^(id responseObject, NSError *error) {
//            }];


        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (void)onRefuse:(NIMSystemNotification *)notification
- (void)alongUponRegret:(NIMSystemNotification *)notification
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: switch (notification.type) {
    switch (notification.type) {
        //: case NIMSystemNotificationTypeTeamApply:{
        case NIMSystemNotificationTypeTeamApply:{
            //: [[NIMSDK sharedSDK].teamManager rejectApplyToTeam:notification.targetID userId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
            [[NIMSDK sharedSDK].teamManager rejectApplyToTeam:notification.targetID userId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_rowBubbleData)]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_onIndexName)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    //: } else {
                    } else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
        }
           //: break;
           break;
        //: case NIMSystemNotificationTypeSuperTeamApply:{
        case NIMSystemNotificationTypeSuperTeamApply:{
            //: [[NIMSDK sharedSDK].superTeamManager rejectApplyToTeam:notification.targetID userId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
            [[NIMSDK sharedSDK].superTeamManager rejectApplyToTeam:notification.targetID userId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_rowBubbleData)]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_onIndexName)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    //: } else {
                    } else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeTeamInvite:{
        case NIMSystemNotificationTypeTeamInvite:{
            //: [[NIMSDK sharedSDK].teamManager rejectInviteWithTeam:notification.targetID invitorId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
            [[NIMSDK sharedSDK].teamManager rejectInviteWithTeam:notification.targetID invitorId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_rowBubbleData)]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_onIndexName)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_enableTextTitle)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else {
                    else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeSuperTeamInvite:{
        case NIMSystemNotificationTypeSuperTeamInvite:{
            //: [[NIMSDK sharedSDK].superTeamManager rejectInviteWithTeam:notification.targetID invitorId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
            [[NIMSDK sharedSDK].superTeamManager rejectInviteWithTeam:notification.targetID invitorId:notification.sourceID rejectReason:@"" completion:^(NSError *error) {
                //: if (!error) {
                if (!error) {
                    //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                    [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_rowBubbleData)]
                                                      //: duration:2
                                                      duration:2
                                                      //: position:CSToastPositionCenter];
                                                      position:CSToastPositionCenter];
                    //: notification.handleStatus = NotificationHandleTypeNo;
                    notification.handleStatus = NotificationHandleTypeNo;
                    //: [_notifications removeObject:notification];
                    [_notifications removeObject:notification];
                    //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else {
                }else {
                    //: if(error.code == NIMRemoteErrorCodeTimeoutError) {
                    if(error.code == NIMRemoteErrorCodeTimeoutError) {
                        //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]
                        [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_onIndexName)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                    else if (error.code == NIMRemoteErrorCodeTeamNotExists) {
                        //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_team_not_exist"]
                        [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_enableTextTitle)]
                                                          //: duration:2
                                                          duration:2
                                                          //: position:CSToastPositionCenter];
                                                          position:CSToastPositionCenter];
                    }
                    //: else {
                    else {
                        //: notification.handleStatus = NotificationHandleTypeOutOfDate;
                        notification.handleStatus = NotificationHandleTypeOutOfDate;
                    }
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                }
            //: }];
            }];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeFriendAdd:
        case NIMSystemNotificationTypeFriendAdd:
        {
            //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
            NIMUserRequest *request = [[NIMUserRequest alloc] init];
            //: request.userId = notification.sourceID;
            request.userId = notification.sourceID;
            //: request.operation = NIMUserOperationReject;
            request.operation = NIMUserOperationReject;

            //: [[[NIMSDK sharedSDK] userManager] requestFriend:request
            [[[NIMSDK sharedSDK] userManager] requestFriend:request
                                                 //: completion:^(NSError *error) {
                                                 completion:^(NSError *error) {
                                                     //: if (!error) {
                                                     if (!error) {
                                                         //: [wself makeToast:[FFFLanguageManager getTextWithKey:@"message_helper_already_no"]
                                                         [wself makeToast:[ItemManager sessionInformation:StringFromRemoteData(&kStr_rowBubbleData)]
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                         //: notification.handleStatus = NotificationHandleTypeNo;
                                                         notification.handleStatus = NotificationHandleTypeNo;

                                                         //: [_notifications removeObject:notification];
                                                         [_notifications removeObject:notification];
                                                         //: [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];
                                                         [[[NIMSDK sharedSDK] systemNotificationManager] deleteNotification:notification];

                                                     }
                                                     //: else
                                                     else
                                                     {
                                                         //: [wself makeToast:@"拒绝失败,请重试".ntes_localized
                                                         [wself makeToast:StringFromRemoteData(&kStr_titleBubbleValue).aboveMagnitude
                                                                                           //: duration:2
                                                                                           duration:2
                                                                                           //: position:CSToastPositionCenter];
                                                                                           position:CSToastPositionCenter];
                                                     }
                                                     //: [wself.tableView reloadData];
                                                     [wself.tableView reloadData];
                                                 //: }];
                                                 }];
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}


//#pragma mark - SystemNotificationCell
//- (void)onAccept:(NIMSystemNotification *)notification
//{
//    __weak typeof(self) wself = self;
//    switch (notification.type) {
//
//
//        case NIMSystemNotificationTypeFriendAdd:
//        {
//            NIMUserRequest *request = [[NIMUserRequest alloc] init];
//            request.userId = notification.sourceID;
//            request.operation = NIMUserOperationVerify;
//
//            [[[NIMSDK sharedSDK] userManager] requestFriend:request
//                                                 completion:^(NSError *error) {
//
//                NSLog(@"NIMUserOperationVerify-%@",error);
//                if (!error) {
//                    [wself makeToast:LangKey(@"successful_authentication")//@"验证成功".ntes_localized
//                                                      duration:2
//                                                      position:CSToastPositionCenter];
//                    notification.handleStatus = NotificationHandleTypeOk;
//                    //拿到对方用户信息
////                                                         NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:notification.sourceID];
////                                                         //NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
////
////                                                         // 构造出具体会话：P2P单聊，对方账号为user
////                                                         NIMSession *session = [NIMSession session:notification.sourceID type:NIMSessionTypeP2P];
////                                                         // 构造出具体消息
////                                                         NIMMessage *message = [[NIMMessage alloc] init];
////                                                         message.text        = [NSString stringWithFormat:@"%@%@，%@",LangKey(@"you_have_added"),user.userInfo.nickName,LangKey(@"now_time_chat")];
////                                                         // 错误反馈对象
////                                                         NSError *error = nil;
////                                                         // 发送消息
////                                                         [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
//                }
//                else
//                {
//                    [wself makeToast:LangKey(@"fail_authentication")//@"验证失败,请重试".ntes_localized
//                                                      duration:2
//                                                      position:CSToastPositionCenter];
//                }
//
//                                                     [wself.tableView reloadData];
//                                                 }];
//
//
//            [PhotoManager postWithUrl:Server_user_addFriend params:@{@"fuid":notification.sourceID?:@""} isShow:NO success:^(id responseObject) {
//
//            } failed:^(id responseObject, NSError *error) {
//            }];
//
//
//        }
//            break;
//        default:
//            break;
//    }
//}
//
//- (void)onRefuse:(NIMSystemNotification *)notification
//{
//    __weak typeof(self) wself = self;
//    switch (notification.type) {
//
//        case NIMSystemNotificationTypeFriendAdd:
//        {
//            NIMUserRequest *request = [[NIMUserRequest alloc] init];
//            request.userId = notification.sourceID;
//            request.operation = NIMUserOperationReject;
//
//            [[[NIMSDK sharedSDK] userManager] requestFriend:request
//                                                 completion:^(NSError *error) {
//                NSLog(@"NIMUserOperationReject-%@",error);
//                                                     if (!error) {
//                                                         [wself makeToast:@"拒绝成功".ntes_localized
//                                                                                           duration:2
//                                                                                           position:CSToastPositionCenter];
//                                                         notification.handleStatus = NotificationHandleTypeNo;
//                                                     }
//                                                     else
//                                                     {
//                                                         [wself makeToast:@"拒绝失败,请重试".ntes_localized
//                                                                                           duration:2
//                                                                                           position:CSToastPositionCenter];
//                                                     }
//                                                     [wself.tableView reloadData];
//                                                 }];
//
//        }
//            break;
//        default:
//            break;
//    }
//}

//: @end
@end

Byte *RemoteDataToByte(RemoteData *data) {
    if (data->textBubble) return data->formatShould;
    for (int i = 0; i < data->objectTable; i++) {
        data->formatShould[i] ^= data->becloud;
    }
    data->formatShould[data->objectTable] = 0;
    data->textBubble = true;
	if (data->objectTable >= 2) {
		data->tableMessage = data->formatShould[0];
		data->keyName = data->formatShould[1];
	}
    return data->formatShould;
}

NSString *StringFromRemoteData(RemoteData *data) {
    return [NSString stringWithUTF8String:(char *)RemoteDataToByte(data)];
}
