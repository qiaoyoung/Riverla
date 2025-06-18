
#import <Foundation/Foundation.h>
typedef struct {
    Byte circumferenceGene;
    Byte *cellAlcohol;
    unsigned int stem;
    bool femaleHorse;
	int cellMissile;
	int aideDeCamp;
} PrimData;

NSString *StringFromPrimData(PrimData *data);


//: 向你发起了一个白板请求
PrimData kStr_involvedName = (PrimData){202, (Byte []){47, 90, 91, 46, 119, 106, 47, 69, 91, 34, 127, 125, 46, 112, 76, 46, 114, 74, 46, 114, 96, 45, 83, 119, 44, 87, 117, 34, 101, 125, 44, 123, 72, 80}, 33, false, 143, 146};


//: 你收到了一个白板请求
PrimData kStr_ireLevelData = (PrimData){158, (Byte []){122, 35, 62, 120, 10, 40, 123, 22, 46, 122, 36, 24, 122, 38, 30, 122, 38, 52, 121, 7, 35, 120, 3, 33, 118, 49, 41, 120, 47, 28, 29}, 30, false, 76, 217};


//: message.wav
PrimData kStr_requestValue = (PrimData){254, (Byte []){147, 155, 141, 141, 159, 153, 155, 208, 137, 159, 136, 251}, 11, false, 91, 248};


//: content
PrimData kStr_lipHugeValue = (PrimData){171, (Byte []){200, 196, 197, 223, 206, 197, 223, 95}, 7, false, 7, 55};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BottomRecent.m
//  NIM
//
//  Created by Xuhui on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNotificationCenter.h"
#import "BottomRecent.h"
//: #import "NTESMainTabController.h"
#import "OperationBarController.h"
//: #import "NTESSessionViewController.h"
#import "RadiogramViewController.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+After.h"
//: #import "NTESCustomNotificationDB.h"
#import "OpenDb.h"
//: #import "NTESCustomNotificationObject.h"
#import "ButtonObject.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESCustomSysNotificationSender.h"
#import "KeySender.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESSessionMsgConverter.h"
#import "ActionConverter.h"
//: #import "NTESSessionUtil.h"
#import "ArrayUtil.h"
//: #import "NTESAVNotifier.h"
#import "StatusViewText.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "CommentAttachment.h"
//: #import "SSZipArchiveManager.h"
#import "ArchiveManager.h"

//: NSString *kLet_keyText = @"kLet_keyText";
NSString *kLet_keyText = @"kLet_keyText";

//: @interface NTESNotificationCenter () <NIMSystemNotificationManagerDelegate,NIMChatManagerDelegate,NIMBroadcastManagerDelegate, NIMSignalManagerDelegate,NIMConversationManagerDelegate>
@interface BottomRecent () <NIMSystemNotificationManagerDelegate,NIMChatManagerDelegate,NIMBroadcastManagerDelegate, NIMSignalManagerDelegate,NIMConversationManagerDelegate>

//: @property (nonatomic,strong) AVAudioPlayer *player; 
@property (nonatomic,strong) AVAudioPlayer *player; //播放提示音
//: @property (nonatomic,strong) NTESAVNotifier *notifier;
@property (nonatomic,strong) StatusViewText *notifier;

//: @end
@end

//: @implementation NTESNotificationCenter
@implementation BottomRecent

//: + (instancetype)sharedCenter
+ (instancetype)stem
{
    //: static NTESNotificationCenter *instance = nil;
    static BottomRecent *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[NTESNotificationCenter alloc] init];
        instance = [[BottomRecent alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)start
- (void)atomicTotal85
{
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if(self) {
    if(self) {
        //: NSString *voicePath = [[[SSZipArchiveManager sharedManager] getVoicePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"message.wav"]];
        NSString *voicePath = [[[ArchiveManager block] image] stringByAppendingPathComponent:[NSString stringWithFormat:StringFromPrimData(&kStr_requestValue)]];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:voicePath]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:voicePath]) {
            //: NSURL *url = [NSURL fileURLWithPath:voicePath];
            NSURL *url = [NSURL fileURLWithPath:voicePath];
            //: _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
            _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        }
        //: _notifier = [[NTESAVNotifier alloc] init];
        _notifier = [[StatusViewText alloc] init];

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
    NSArray *messages = [self upMessages:recvMessages];
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
        [self input];
        //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: isPlaying = NO;
            isPlaying = NO;
        //: });
        });
        //: [self checkMessageAt:messages];
        [self figure:messages];
    }
}

//: - (void)playMessageAudioTip
- (void)input
{
    //: UINavigationController *nav = [NTESMainTabController instance].selectedViewController;
    UINavigationController *nav = [OperationBarController ironed].selectedViewController;
    //: BOOL needPlay = YES;
    BOOL needPlay = YES;
    //: for (UIViewController *vc in nav.viewControllers) {
    for (UIViewController *vc in nav.viewControllers) {
        //: if ([vc isKindOfClass:[FFFSessionViewController class]])
        if ([vc isKindOfClass:[StopViewController class]])
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
- (void)figure:(NSArray<NIMMessage *> *)messages
{
    //一定是同个 session 的消息
    //: NIMSession *session = [messages.firstObject session];
    NIMSession *session = [messages.firstObject session];
    //: if ([self.currentSessionViewController.session isEqual:session])
    if ([self.add.session isEqual:session])
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
            [ArrayUtil redSub:session will:NTESRecentSessionMarkTypeAt];
            //: return;
            return;
        }
    }
}


//: - (NSArray *)filterMessages:(NSArray *)messages
- (NSArray *)upMessages:(NSArray *)messages
{
    //: NSMutableArray *array = [[NSMutableArray alloc] init];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: if ([self checkRedPacketTip:message] && ![self canSaveMessageRedPacketTip:message])
        if ([self text:message] && ![self straddle:message])
        {
            //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
            [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
            //: [self.currentSessionViewController uiDeleteMessage:message];
            [self.add viewMore:message];
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
- (BOOL)text:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object isKindOfClass:[NIMCustomObject class]] && [object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    if ([object isKindOfClass:[NIMCustomObject class]] && [object.attachment isKindOfClass:[CommentAttachment class]])
    {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

//: - (BOOL)canSaveMessageRedPacketTip:(NIMMessage *)message
- (BOOL)straddle:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NTESRedPacketTipAttachment *attach = (NTESRedPacketTipAttachment *)object.attachment;
    CommentAttachment *attach = (CommentAttachment *)object.attachment;
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
    NIMMessage *tipMessage = [ActionConverter voiceSize:[ArrayUtil cover:notification]
                                                    //: revokeAttach:notification.attach
                                                    library:notification.attach
                                               //: revokeCallbackExt:notification.callbackExt];
                                               deviceExt:notification.callbackExt];
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
    OperationBarController *tabVC = [OperationBarController ironed];
    //: UINavigationController *nav = tabVC.selectedViewController;
    UINavigationController *nav = tabVC.selectedViewController;

    //: for (NTESSessionViewController *vc in nav.viewControllers) {
    for (RadiogramViewController *vc in nav.viewControllers) {
        //: if ([vc isKindOfClass:[NTESSessionViewController class]]
        if ([vc isKindOfClass:[RadiogramViewController class]]
            //: && [vc.session.sessionId isEqualToString:notification.session.sessionId]) {
            && [vc.session.sessionId isEqualToString:notification.session.sessionId]) {
            //: FFFMessageModel *model = [vc uiDeleteMessage:notification.message];
            StochasticProcessTeam *model = [vc viewMore:notification.message];
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
    OperationBarController *tabVC = [OperationBarController ironed];
    //: UINavigationController *nav = tabVC.selectedViewController;
    UINavigationController *nav = tabVC.selectedViewController;

    //: for (NTESSessionViewController *vc in nav.viewControllers) {
    for (RadiogramViewController *vc in nav.viewControllers) {
        //: for (NIMMessage *message in messages) {
        for (NIMMessage *message in messages) {
            //: if ([vc isKindOfClass:[NTESSessionViewController class]]
            if ([vc isKindOfClass:[RadiogramViewController class]]
                //: && [vc.session.sessionId isEqualToString:message.session.sessionId]) {
                && [vc.session.sessionId isEqualToString:message.session.sessionId]) {
                //: [vc uiDeleteMessage:message];
                [vc viewMore:message];
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
            switch ([dict session:@"id"]) {
                //: case (2):{
                case (2):{
                    //SDK并不会存储自定义的系统通知，需要上层结合业务逻辑考虑是否做存储。这里给出一个存储的例子。
                    //: NTESCustomNotificationObject *object = [[NTESCustomNotificationObject alloc] initWithNotification:notification];
                    ButtonObject *object = [[ButtonObject alloc] initWithSuccessNotification:notification];
                    //这里只负责存储可离线的自定义通知，推荐上层应用也这么处理，需要持久化的通知都走可离线通知
                    //: if (!notification.sendToOnlineUsersOnly) {
                    if (!notification.sendToOnlineUsersOnly) {
                        //: [[NTESCustomNotificationDB sharedInstance] saveNotification:object];
                        [[OpenDb corporate] barName:object];
                    }
                    //: if (notification.setting.shouldBeCounted) {
                    if (notification.setting.shouldBeCounted) {
                        //: [[NSNotificationCenter defaultCenter] postNotificationName:kLet_keyText object:nil];
                        [[NSNotificationCenter defaultCenter] postNotificationName:kLet_keyText object:nil];
                    }
                    //: NSString *content = [dict jsonString:@"content"];
                    NSString *content = [dict of:StringFromPrimData(&kStr_lipHugeValue)];
                    //: [self makeToast:content];
                    [self disabled:content];
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
- (void)lipreadSession:(UInt64)callID
              //: by:(NSString *)user
              exceptShould:(NSString *)user
{
    //: [_notifier stop];
    [_notifier show];
}

//: - (void)onRTSRequest:(NSString *)sessionID
- (void)languageMessage:(NSString *)sessionID
                //: from:(NSString *)caller
                click:(NSString *)caller
            //: services:(NSUInteger)types
            length:(NSUInteger)types
             //: message:(NSString *)info
             ting:(NSString *)info
{


}


//: - (void)presentModelViewController:(UIViewController *)vc
- (void)mark:(UIViewController *)vc
{
    //: NTESMainTabController *tab = [NTESMainTabController instance];
    OperationBarController *tab = [OperationBarController ironed];
    //: [tab.view endEditing:YES];
    [tab.view endEditing:YES];
    //: if (tab.presentedViewController) {
    if (tab.presentedViewController) {
        //: __weak NTESMainTabController *wtabVC = tab;
        __weak OperationBarController *wtabVC = tab;
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
- (void)phoneMessage:(NSString *)sessionID
                    //: by:(NSString *)user
                    tableBy:(NSString *)user
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
    [self disabled:broadcastMessage.content];
}

//: #pragma mark - format
#pragma mark - format

//: - (NSString *)textByCaller:(NSString *)caller
- (NSString *)rubric:(NSString *)caller
{
    //: NSString *text = @"你收到了一个白板请求".ntes_localized;
    NSString *text = StringFromPrimData(&kStr_ireLevelData).aboveMagnitude;
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:caller option:nil];
    MarginThanInfo *info = [[Afterwards blue] put:caller button:nil];
    //: if ([info.showName length])
    if ([info.showName length])
    {
        //: text = [NSString stringWithFormat:@"%@%@",
        text = [NSString stringWithFormat:@"%@%@",
                //: info.showName,
                info.showName,
                //: @"向你发起了一个白板请求".ntes_localized];
                StringFromPrimData(&kStr_involvedName).aboveMagnitude];
    }
    //: return text;
    return text;
}

//: - (BOOL)shouldFireNotification:(NSString *)callerId
- (BOOL)control:(NSString *)callerId
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
- (StopViewController *)add
{
    //: UINavigationController *nav = [NTESMainTabController instance].selectedViewController;
    UINavigationController *nav = [OperationBarController ironed].selectedViewController;
    //: for (UIViewController *vc in nav.viewControllers)
    for (UIViewController *vc in nav.viewControllers)
    {
        //: if ([vc isKindOfClass:[FFFSessionViewController class]])
        if ([vc isKindOfClass:[StopViewController class]])
        {
            //: return (FFFSessionViewController *)vc;
            return (StopViewController *)vc;
        }
    }
    //: return nil;
    return nil;
}

//: - (void)makeToast:(NSString *)content
- (void)disabled:(NSString *)content
{
    //: [[NTESMainTabController instance].selectedViewController.view makeToast:content duration:2.0 position:CSToastPositionCenter];
    [[OperationBarController ironed].selectedViewController.view makeToast:content duration:2.0 position:CSToastPositionCenter];
}


//: @end
@end

Byte *PrimDataToByte(PrimData *data) {
    if (data->femaleHorse) return data->cellAlcohol;
    for (int i = 0; i < data->stem; i++) {
        data->cellAlcohol[i] ^= data->circumferenceGene;
    }
    data->cellAlcohol[data->stem] = 0;
    data->femaleHorse = true;
	if (data->stem >= 2) {
		data->cellMissile = data->cellAlcohol[0];
		data->aideDeCamp = data->cellAlcohol[1];
	}
    return data->cellAlcohol;
}

NSString *StringFromPrimData(PrimData *data) {
    return [NSString stringWithUTF8String:(char *)PrimDataToByte(data)];
}
