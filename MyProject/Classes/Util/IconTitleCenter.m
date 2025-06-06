
#import <Foundation/Foundation.h>

NSString *StringFromLeaData(Byte *data);


//: message.wav
Byte kStr_mortalName[] = {57, 11, 5, 193, 134, 118, 97, 119, 46, 101, 103, 97, 115, 115, 101, 109, 82};


//: content
Byte kStr_rapName[] = {65, 7, 6, 75, 186, 151, 116, 110, 101, 116, 110, 111, 99, 35};


//: 你收到了一个白板请求
Byte kStr_electricTitle[] = {8, 30, 10, 74, 180, 75, 160, 70, 137, 125, 130, 177, 230, 183, 175, 232, 191, 157, 230, 189, 153, 231, 170, 184, 228, 128, 184, 228, 134, 186, 228, 176, 136, 229, 182, 148, 230, 160, 189, 228, 162};


//: 向你发起了一个白板请求
Byte kStr_ankleText[] = {65, 33, 11, 214, 17, 205, 126, 61, 235, 40, 211, 130, 177, 230, 183, 175, 232, 191, 157, 230, 189, 153, 231, 170, 184, 228, 128, 184, 228, 134, 186, 228, 183, 181, 232, 145, 143, 229, 160, 189, 228, 145, 144, 229, 78};

// __DEBUG__
// __CLOSE_PRINT__
//
//  IconTitleCenter.m
//  NIM
//
//  Created by Xuhui on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNotificationCenter.h"
#import "IconTitleCenter.h"
//: #import "NTESMainTabController.h"
#import "SoapBarController.h"
//: #import "NTESSessionViewController.h"
#import "SelectChildViewController.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Enable.h"
//: #import "NTESCustomNotificationDB.h"
#import "ShouldDb.h"
//: #import "NTESCustomNotificationObject.h"
#import "ChangeMargin.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESCustomSysNotificationSender.h"
#import "TaproomSender.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESSessionMsgConverter.h"
#import "InputConverter.h"
//: #import "NTESSessionUtil.h"
#import "LinkUtil.h"
//: #import "NTESAVNotifier.h"
#import "CellIndex.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "StyleAction.h"
//: #import "SSZipArchiveManager.h"
#import "ByManager.h"

//: NSString *let_kitData = @"let_kitData";
NSString *let_kitData = @"let_kitData";

//: @interface NTESNotificationCenter () <NIMSystemNotificationManagerDelegate,NIMChatManagerDelegate,NIMBroadcastManagerDelegate, NIMSignalManagerDelegate,NIMConversationManagerDelegate>
@interface IconTitleCenter () <NIMSystemNotificationManagerDelegate,NIMChatManagerDelegate,NIMBroadcastManagerDelegate, NIMSignalManagerDelegate,NIMConversationManagerDelegate>

//: @property (nonatomic,strong) AVAudioPlayer *player; 
@property (nonatomic,strong) AVAudioPlayer *player; //播放提示音
//: @property (nonatomic,strong) NTESAVNotifier *notifier;
@property (nonatomic,strong) CellIndex *notifier;

//: @end
@end

//: @implementation NTESNotificationCenter
@implementation IconTitleCenter

//: + (instancetype)sharedCenter
+ (instancetype)segmentFinancialCenter
{
    //: static NTESNotificationCenter *instance = nil;
    static IconTitleCenter *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[NTESNotificationCenter alloc] init];
        instance = [[IconTitleCenter alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)start
- (void)pass
{
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if(self) {
    if(self) {
        //: NSString *voicePath = [[[SSZipArchiveManager sharedManager] getVoicePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"message.wav"]];
        NSString *voicePath = [[[ByManager date] item] stringByAppendingPathComponent:[NSString stringWithFormat:StringFromLeaData(kStr_mortalName)]];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:voicePath]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:voicePath]) {
            //: NSURL *url = [NSURL fileURLWithPath:voicePath];
            NSURL *url = [NSURL fileURLWithPath:voicePath];
            //: _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
            _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        }
        //: _notifier = [[NTESAVNotifier alloc] init];
        _notifier = [[CellIndex alloc] init];

        //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
        [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
        //: [[NIMSDK sharedSDK].chatManager addDelegate:self];
        [[NIMSDK sharedSDK].chatManager addDelegate:self];
        //: [[NIMSDK sharedSDK].broadcastManager addDelegate:self];
        [[NIMSDK sharedSDK].broadcastManager addDelegate:self];

        //: [[NIMSDK sharedSDK].signalManager addDelegate:self];
        [[NIMSDK sharedSDK].signalManager addDelegate:self];
        //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
        [[NIMSDK sharedSDK].conversationManager addDelegate:self];

//        [[NERtcCallKit sharedInstance] addDelegate:self];
    }
    //: return self;
    return self;
}


//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].broadcastManager removeDelegate:self];
    [[NIMSDK sharedSDK].broadcastManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
}

//: #pragma mark - NIMConversationDelegate
#pragma mark - NIMConversationDelegate

//: - (void)didServerSessionUpdated:(NIMRecentSession *)recentSession {
- (void)didServerSessionUpdated:(NIMRecentSession *)recentSession {
    //: [[UIApplication sharedApplication].windows.firstObject.rootViewController.view makeToast:[NSString stringWithFormat:@"%@",recentSession.serverExt] duration:1 position:CSToastPositionCenter];
    [[UIApplication sharedApplication].windows.firstObject.rootViewController.view makeToast:[NSString stringWithFormat:@"%@",recentSession.serverExt] duration:1 position:CSToastPositionCenter];
}

//: #pragma mark - NIMChatManagerDelegate
#pragma mark - NIMChatManagerDelegate
//: - (void)onRecvMessages:(NSArray *)recvMessages
- (void)onRecvMessages:(NSArray *)recvMessages
{
    //: NSArray *messages = [self filterMessages:recvMessages];
    NSArray *messages = [self should:recvMessages];
    //: if (messages.count)
    if (messages.count)
    {
        //: static BOOL isPlaying = NO;
        static BOOL isPlaying = NO;
        //: if (isPlaying) {
        if (isPlaying) {
            //: return;
            return;
        }
        //: isPlaying = YES;
        isPlaying = YES;
        //: [self playMessageAudioTip];
        [self by];
        //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: isPlaying = NO;
            isPlaying = NO;
        //: });
        });
        //: [self checkMessageAt:messages];
        [self send:messages];
    }
}

//: - (void)playMessageAudioTip
- (void)by
{
    //: UINavigationController *nav = [NTESMainTabController instance].selectedViewController;
    UINavigationController *nav = [SoapBarController with].selectedViewController;
    //: BOOL needPlay = YES;
    BOOL needPlay = YES;
    //: for (UIViewController *vc in nav.viewControllers) {
    for (UIViewController *vc in nav.viewControllers) {
        //: if ([vc isKindOfClass:[FFFSessionViewController class]])
        if ([vc isKindOfClass:[BarOriginViewController class]])
        {
            //: needPlay = NO;
            needPlay = NO;
            //: break;
            break;
        }
    }
    //: if (needPlay) {
    if (needPlay) {
        //: [self.player stop];
        [self.player stop];
        //: [[AVAudioSession sharedInstance] setCategory: AVAudioSessionCategoryAmbient error:nil];
        [[AVAudioSession sharedInstance] setCategory: AVAudioSessionCategoryAmbient error:nil];
        //: [self.player play];
        [self.player play];
    }
}

//: - (void)checkMessageAt:(NSArray<NIMMessage *> *)messages
- (void)send:(NSArray<NIMMessage *> *)messages
{
    //一定是同个 session 的消息
    //: NIMSession *session = [messages.firstObject session];
    NIMSession *session = [messages.firstObject session];
    //: if ([self.currentSessionViewController.session isEqual:session])
    if ([self.cut.session isEqual:session])
    {
        //只有在@所属会话页外面才需要标记有人@你
        //: return;
        return;
    }

    //: NSString *me = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *me = [[NIMSDK sharedSDK].loginManager currentAccount];

    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: if ([message.apnsMemberOption.userIds containsObject:me]) {
        if ([message.apnsMemberOption.userIds containsObject:me]) {
            //: [NTESSessionUtil addRecentSessionMark:session type:NTESRecentSessionMarkTypeAt];
            [LinkUtil backgroundType:session must:NTESRecentSessionMarkTypeAt];
            //: return;
            return;
        }
    }
}


//: - (NSArray *)filterMessages:(NSArray *)messages
- (NSArray *)should:(NSArray *)messages
{
    //: NSMutableArray *array = [[NSMutableArray alloc] init];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: if ([self checkRedPacketTip:message] && ![self canSaveMessageRedPacketTip:message])
        if ([self model:message] && ![self words:message])
        {
            //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
            [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
            //: [self.currentSessionViewController uiDeleteMessage:message];
            [self.cut sendOut:message];
            //: continue;
            continue;
        }
        //: [array addObject:message];
        [array addObject:message];
    }
    //: return [NSArray arrayWithArray:array];
    return [NSArray arrayWithArray:array];
}


//: - (BOOL)checkRedPacketTip:(NIMMessage *)message
- (BOOL)model:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object isKindOfClass:[NIMCustomObject class]] && [object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    if ([object isKindOfClass:[NIMCustomObject class]] && [object.attachment isKindOfClass:[StyleAction class]])
    {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

//: - (BOOL)canSaveMessageRedPacketTip:(NIMMessage *)message
- (BOOL)words:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NTESRedPacketTipAttachment *attach = (NTESRedPacketTipAttachment *)object.attachment;
    StyleAction *attach = (StyleAction *)object.attachment;
    //: NSString *me = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *me = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: return [attach.sendPacketId isEqualToString:me] || [attach.openPacketId isEqualToString:me];
    return [attach.sendPacketId isEqualToString:me] || [attach.openPacketId isEqualToString:me];
}

//: - (void)onRecvRevokeMessageNotification:(NIMRevokeMessageNotification *)notification
- (void)onRecvRevokeMessageNotification:(NIMRevokeMessageNotification *)notification
{
    //撤回消息中收到的attach和callbackExt字段需要获取出来存放到message中去
    //: NIMMessage *tipMessage = [NTESSessionMsgConverter msgWithTip:[NTESSessionUtil tipOnMessageRevoked:notification]
    NIMMessage *tipMessage = [InputConverter skullSession:[LinkUtil heliogram:notification]
                                                    //: revokeAttach:notification.attach
                                                    resData:notification.attach
                                               //: revokeCallbackExt:notification.callbackExt];
                                               share:notification.callbackExt];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: tipMessage.setting = setting;
    tipMessage.setting = setting;
    //: tipMessage.timestamp = notification.timestamp;
    tipMessage.timestamp = notification.timestamp;

    //: NTESMainTabController *tabVC = [NTESMainTabController instance];
    SoapBarController *tabVC = [SoapBarController with];
    //: UINavigationController *nav = tabVC.selectedViewController;
    UINavigationController *nav = tabVC.selectedViewController;

    //: for (NTESSessionViewController *vc in nav.viewControllers) {
    for (SelectChildViewController *vc in nav.viewControllers) {
        //: if ([vc isKindOfClass:[NTESSessionViewController class]]
        if ([vc isKindOfClass:[SelectChildViewController class]]
            //: && [vc.session.sessionId isEqualToString:notification.session.sessionId]) {
            && [vc.session.sessionId isEqualToString:notification.session.sessionId]) {
            //: FFFMessageModel *model = [vc uiDeleteMessage:notification.message];
            MaxLink *model = [vc sendOut:notification.message];
            //: if (notification.notificationType == NIMRevokeMessageNotificationTypeP2POneWay ||
            if (notification.notificationType == NIMRevokeMessageNotificationTypeP2POneWay ||
                //: notification.notificationType == NIMRevokeMessageNotificationTypeTeamOneWay)
                notification.notificationType == NIMRevokeMessageNotificationTypeTeamOneWay)
            {
                //: break;
                break;
            }

            //: if (model) {
            if (model) {
                //[vc uiInsertMessages:@[tipMessage]];//撤回消息不显示
            }
            //: break;
            break;
        }
    }

    // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
    //: if (notification.notificationType != NIMRevokeMessageNotificationTypeP2POneWay &&
    if (notification.notificationType != NIMRevokeMessageNotificationTypeP2POneWay &&
        //: notification.notificationType != NIMRevokeMessageNotificationTypeTeamOneWay)
        notification.notificationType != NIMRevokeMessageNotificationTypeTeamOneWay)
    {
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tipMessage
        [[NIMSDK sharedSDK].conversationManager saveMessage:tipMessage
                                                 //: forSession:notification.session
                                                 forSession:notification.session
                                                 //: completion:nil];
                                                 completion:nil];
    }

}

//: - (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts {
- (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts {

    //: NTESMainTabController *tabVC = [NTESMainTabController instance];
    SoapBarController *tabVC = [SoapBarController with];
    //: UINavigationController *nav = tabVC.selectedViewController;
    UINavigationController *nav = tabVC.selectedViewController;

    //: for (NTESSessionViewController *vc in nav.viewControllers) {
    for (SelectChildViewController *vc in nav.viewControllers) {
        //: for (NIMMessage *message in messages) {
        for (NIMMessage *message in messages) {
            //: if ([vc isKindOfClass:[NTESSessionViewController class]]
            if ([vc isKindOfClass:[SelectChildViewController class]]
                //: && [vc.session.sessionId isEqualToString:message.session.sessionId]) {
                && [vc.session.sessionId isEqualToString:message.session.sessionId]) {
                //: [vc uiDeleteMessage:message];
                [vc sendOut:message];
            }
        }
    }
}


//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification{
- (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification{

    //: NSString *content = notification.content;
    NSString *content = notification.content;
    //: NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (data)
    if (data)
    {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: switch ([dict jsonInteger:@"id"]) {
            switch ([dict bubble:@"id"]) {
                //: case (2):{
                case (2):{
                    //SDK并不会存储自定义的系统通知，需要上层结合业务逻辑考虑是否做存储。这里给出一个存储的例子。
                    //: NTESCustomNotificationObject *object = [[NTESCustomNotificationObject alloc] initWithNotification:notification];
                    ChangeMargin *object = [[ChangeMargin alloc] initWithColor:notification];
                    //这里只负责存储可离线的自定义通知，推荐上层应用也这么处理，需要持久化的通知都走可离线通知
                    //: if (!notification.sendToOnlineUsersOnly) {
                    if (!notification.sendToOnlineUsersOnly) {
                        //: [[NTESCustomNotificationDB sharedInstance] saveNotification:object];
                        [[ShouldDb instance] background:object];
                    }
                    //: if (notification.setting.shouldBeCounted) {
                    if (notification.setting.shouldBeCounted) {
                        //: [[NSNotificationCenter defaultCenter] postNotificationName:let_kitData object:nil];
                        [[NSNotificationCenter defaultCenter] postNotificationName:let_kitData object:nil];
                    }
                    //: NSString *content = [dict jsonString:@"content"];
                    NSString *content = [dict provider:StringFromLeaData(kStr_rapName)];
                    //: [self makeToast:content];
                    [self shouldToast:content];
                }
                    //: break;
                    break;
                //: case (3):{
                case (3):{

                }
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
        }
    }
}

//: #pragma mark - NIMNetCallManagerDelegate
#pragma mark - NIMNetCallManagerDelegate

//: - (void)onHangup:(UInt64)callID
- (void)title:(UInt64)callID
              //: by:(NSString *)user
              anHangupBlock:(NSString *)user
{
    //: [_notifier stop];
    [_notifier show];
}

//: - (void)onRTSRequest:(NSString *)sessionID
- (void)min:(NSString *)sessionID
                //: from:(NSString *)caller
                location:(NSString *)caller
            //: services:(NSUInteger)types
            strain:(NSUInteger)types
             //: message:(NSString *)info
             at:(NSString *)info
{


}


//: - (void)presentModelViewController:(UIViewController *)vc
- (void)abovePerformance:(UIViewController *)vc
{
    //: NTESMainTabController *tab = [NTESMainTabController instance];
    SoapBarController *tab = [SoapBarController with];
    //: [tab.view endEditing:YES];
    [tab.view endEditing:YES];
    //: if (tab.presentedViewController) {
    if (tab.presentedViewController) {
        //: __weak NTESMainTabController *wtabVC = tab;
        __weak SoapBarController *wtabVC = tab;
        //: [tab.presentedViewController dismissViewControllerAnimated:NO completion:^{
        [tab.presentedViewController dismissViewControllerAnimated:NO completion:^{
            //: [wtabVC presentViewController:vc animated:NO completion:nil];
            [wtabVC presentViewController:vc animated:NO completion:nil];
        //: }];
        }];
    //: }else{
    }else{
        //: [tab presentViewController:vc animated:NO completion:nil];
        [tab presentViewController:vc animated:NO completion:nil];
    }
}

//: - (void)onRTSTerminate:(NSString *)sessionID
- (void)along:(NSString *)sessionID
                    //: by:(NSString *)user
                    onSend:(NSString *)user
{
    //: [_notifier stop];
    [_notifier show];
}



//: #pragma mark - NIMBroadcastManagerDelegate
#pragma mark - NIMBroadcastManagerDelegate
//: - (void)onReceiveBroadcastMessage:(NIMBroadcastMessage *)broadcastMessage
- (void)onReceiveBroadcastMessage:(NIMBroadcastMessage *)broadcastMessage
{
    //: [self makeToast:broadcastMessage.content];
    [self shouldToast:broadcastMessage.content];
}

//: #pragma mark - format
#pragma mark - format

//: - (NSString *)textByCaller:(NSString *)caller
- (NSString *)counterval:(NSString *)caller
{
    //: NSString *text = @"你收到了一个白板请求".ntes_localized;
    NSString *text = StringFromLeaData(kStr_electricTitle).titleLocalized;
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:caller option:nil];
    OriginBy *info = [[Notice fullKit] value:caller manager:nil];
    //: if ([info.showName length])
    if ([info.showName length])
    {
        //: text = [NSString stringWithFormat:@"%@%@",
        text = [NSString stringWithFormat:@"%@%@",
                //: info.showName,
                info.showName,
                //: @"向你发起了一个白板请求".ntes_localized];
                StringFromLeaData(kStr_ankleText).titleLocalized];
    }
    //: return text;
    return text;
}

//: - (BOOL)shouldFireNotification:(NSString *)callerId
- (BOOL)occurrence:(NSString *)callerId
{
    //退后台后 APP 存活，然后收到通知
    //: BOOL should = YES;
    BOOL should = YES;

    //消息不提醒
    //: id<NIMUserManager> userManager = [[NIMSDK sharedSDK] userManager];
    id<NIMUserManager> userManager = [[NIMSDK sharedSDK] userManager];
    //: if (![userManager notifyForNewMsg:callerId])
    if (![userManager notifyForNewMsg:callerId])
    {
        //: should = NO;
        should = NO;
    }

    //当前在正处于免打扰
    //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
    id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
    //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
    NIMPushNotificationSetting *setting = [apnsManager currentSetting];
    //: if (setting.noDisturbing)
    if (setting.noDisturbing)
    {
        //: NSDate *date = [NSDate date];
        NSDate *date = [NSDate date];
        //: NSCalendar *calendar = [NSCalendar currentCalendar];
        NSCalendar *calendar = [NSCalendar currentCalendar];
        //: NSDateComponents *components = [calendar components:(NSCalendarUnitHour | NSCalendarUnitMinute) fromDate:date];
        NSDateComponents *components = [calendar components:(NSCalendarUnitHour | NSCalendarUnitMinute) fromDate:date];
        //: NSInteger now = components.hour * 60 + components.minute;
        NSInteger now = components.hour * 60 + components.minute;
        //: NSInteger start = setting.noDisturbingStartH * 60 + setting.noDisturbingStartM;
        NSInteger start = setting.noDisturbingStartH * 60 + setting.noDisturbingStartM;
        //: NSInteger end = setting.noDisturbingEndH * 60 + setting.noDisturbingEndM;
        NSInteger end = setting.noDisturbingEndH * 60 + setting.noDisturbingEndM;

        //当天区间
        //: if (end > start && end >= now && now >= start)
        if (end > start && end >= now && now >= start)
        {
            //: should = NO;
            should = NO;
        }
        //隔天区间
        //: else if(end < start && (now <= end || now >= start))
        else if(end < start && (now <= end || now >= start))
        {
            //: should = NO;
            should = NO;
        }
    }

    //: return should;
    return should;
}

//: - (FFFSessionViewController *)currentSessionViewController
- (BarOriginViewController *)cut
{
    //: UINavigationController *nav = [NTESMainTabController instance].selectedViewController;
    UINavigationController *nav = [SoapBarController with].selectedViewController;
    //: for (UIViewController *vc in nav.viewControllers)
    for (UIViewController *vc in nav.viewControllers)
    {
        //: if ([vc isKindOfClass:[FFFSessionViewController class]])
        if ([vc isKindOfClass:[BarOriginViewController class]])
        {
            //: return (FFFSessionViewController *)vc;
            return (BarOriginViewController *)vc;
        }
    }
    //: return nil;
    return nil;
}

//: - (void)makeToast:(NSString *)content
- (void)shouldToast:(NSString *)content
{
    //: [[NTESMainTabController instance].selectedViewController.view makeToast:content duration:2.0 position:CSToastPositionCenter];
    [[SoapBarController with].selectedViewController.view makeToast:content duration:2.0 position:CSToastPositionCenter];
}


//: @end
@end

Byte * LeaDataToCache(Byte *data) {
    int fenceEquityPossession = data[0];
    int judicature = data[1];
    int whoever = data[2];
    if (!fenceEquityPossession) return data + whoever;
    for (int i = 0; i < judicature / 2; i++) {
        int begin = whoever + i;
        int end = whoever + judicature - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[whoever + judicature] = 0;
    return data + whoever;
}

NSString *StringFromLeaData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)LeaDataToCache(data)];
}  
