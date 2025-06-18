 //
//  AppDelegate.m
//  NIMDemo
//
//  Created by ght on 15-1-21.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "AppDelegate.h"
#import "FFFLoginViewController.h"
#import "UIView+Toast.h"
#import "NTESNotificationCenter.h"
#import "FFFConfig.h"
#import "NTESSessionUtil.h"
#import "NTESMainTabController.h"
#import "CCCLoginManager.h"
#import "NTESCustomAttachmentDecoder.h"
#import "NTESClientUtil.h"
#import "NTESNotificationCenter.h"
#import "MyUserKit.h"
#import "NTESSDKConfigDelegate.h"
#import "NTESCellLayoutConfig.h"
#import "NTESSubscribeManager.h"
#import "NTESBundleSetting.h"
#import <UserNotifications/UserNotifications.h>
#import "TZLocationManager.h"
#import "NTESDbExceptionHandler.h"
#import "NTESBundleSetting.h"
#import <SVProgressHUD/SVProgressHUD.h>
//#import "JPUSHService.h"
#import <UserNotifications/UserNotifications.h>
#import <IQKeyboardManager/IQKeyboardManager.h>
#import <Bugly/Bugly.h>
#import "LEEAlert.h"
#import "UIAlertView+NTESBlock.h"
#import <objc/runtime.h>
#import "TYLNoticeRequest.h"
#import "FFFKitDevice.h"
#import <UMCommon/UMCommon.h>
#import <UMCommon/MobClick.h>
#import <UMAPM/UMCrashConfigure.h>
#import <UMAPM/UMLaunch.h>
#import <UMAPM/UMAPMConfig.h>
#import "Reachability.h"
#import <Network/Network.h>

NSString *NTESNotificationLogout = @"NTESNotificationLogout";
@interface AppDelegate ()<NIMLoginManagerDelegate>

@property (nonatomic,strong) NTESSDKConfigDelegate *sdkConfigDelegate;

@property (nonatomic,strong) UIImageView *imgAvater;
@property (nonatomic,strong) UILabel *labUser;
@property (nonatomic,strong) UIButton *btnAccept;
@property (nonatomic,strong) UIButton *btnReject;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 检查并更新域名
        [[FFFConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
            if (success) {
                NSLog(@"域名更新成功: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
            } else {
                NSLog(@"使用默认域名: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
            }
        }];
    
    
//    [TYLBanCapturePackage disableHttpProxy];
    
    NSLog(@"UMAPM version:%@",[UMCrashConfigure getVersion]);
    
    [UMConfigure setLogEnabled:NO];
    UMAPMConfig* umconfig = [UMAPMConfig defaultConfig];
    umconfig.networkEnable = YES;
    [UMCrashConfigure setAPMConfig:umconfig];
    [UMConfigure initWithAppkey:@"668796b6940d5a4c4982f056" channel:nil];
    [MobClick setAutoPageEnabled:YES];
    
    [self configIQKeyboardManager];
    
    [Bugly startWithAppId:@"6a845f0dd8"];
    NSString *deviceName = [UIDevice currentDevice].name;
    if (deviceName.length > 0) {
        [Bugly setUserValue:deviceName forKey:@"DeviceName"];
    }
    
//    if (@available(iOS 13.0, *)) {
//        [[TZLocationManager manager] startLocation];//sdk 获取wifi信息需要使用
//    }
    
    if ([NIMUserDefaults standardUserDefaults].language && [NIMUserDefaults standardUserDefaults].language.length > 0) {
        [[NIMUserDefaults standardUserDefaults] updateLanguageWith:[NIMUserDefaults standardUserDefaults].language];
    } else {
        [self requestLanguage];
    }
    
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setMinimumDismissTimeInterval:2];
    [SVProgressHUD setDefaultMaskType:(SVProgressHUDMaskTypeClear)];

    [self setupNetworkObserver];
    
    [self setupNIMSDK];
    [self setupServices];
    
    [self registerPushService];
    [self commonInitListenEvents];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
//    [application setStatusBarStyle:UIStatusBarStyleLightContent];

    [self setupMainViewController];

//    [self initTimer];
//    [self performSelector:@selector(initTimer) withObject:nil afterDelay:2];
    
    return YES;
}

- (void)setupNetworkObserver {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(networkChanged:)
                                                 name:kReachabilityChangedNotification
                                               object:nil];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    [reachability startNotifier];
    
    // 初始检查
       [self checkLocalNetworkPermission];
}

- (void)networkChanged:(NSNotification *)note {
    Reachability *reachability = [note object];
    if ([reachability currentReachabilityStatus] != NotReachable) {
        [[FFFConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
            if (success) {
                NSLog(@"域名更新成功: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
            } else {
                NSLog(@"使用默认域名: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
            }
        }]; // 网络恢复时更新域名
    }
}

- (void)checkLocalNetworkPermission {
    if (@available(iOS 14.0, *)) {
        nw_endpoint_t endpoint = nw_endpoint_create_host("224.0.0.251", "5353");
        nw_parameters_t parameters = nw_parameters_create_secure_udp(
            NW_PARAMETERS_DISABLE_PROTOCOL,
            NW_PARAMETERS_DEFAULT_CONFIGURATION
        );
        
        nw_connection_t connection = nw_connection_create(endpoint, parameters);
        nw_connection_set_queue(connection, dispatch_get_main_queue());
        
        nw_connection_set_state_changed_handler(connection, ^(nw_connection_state_t state, nw_error_t error) {
            if (state == nw_connection_state_ready) {
//                NSLog(@"本地网络权限已授权");
                [[FFFConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
                    if (success) {
                        NSLog(@"域名更新成功: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
                    } else {
                        NSLog(@"使用默认域名: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
                    }
                }];
                nw_connection_cancel(connection);
            } else if (state == nw_connection_state_failed || state == nw_connection_state_cancelled) {
//                NSLog(@"用户拒绝本地网络权限");
            }
        });
        
        nw_connection_start(connection);
    }
}

- (void)checkNetworkPermission {
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus status = [reachability currentReachabilityStatus];
    
    if (status == NotReachable) {
//        NSLog(@"无网络权限或未连接网络");
        [self showNetworkAlert]; // 提示用户去设置开启
    } else {
//        NSLog(@"网络已授权，继续执行");
        [[FFFConfig sharedConfig] fetchLatestDomainWithCompletion:nil]; // 获取动态域名
    }
}

- (void)showNetworkAlert {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@""
                                                                   message:LangKey(@"friend_verify_avtivity_net_error")
                                                          preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *settingsAction = [UIAlertAction actionWithTitle:LangKey(@"activity_tag_go_set") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        if ([[UIApplication sharedApplication] canOpenURL:url]) {
            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
        }
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:settingsAction];
    [alert addAction:cancelAction];
    
    UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    [rootVC presentViewController:alert animated:YES completion:nil];
}

- (void)requestLanguage
{
    
    NSString *langType =  [FFFKitDevice language];
    NSLog(@"langType : %@",langType);//zh-Hant-TW 中文繁体（台湾）
    
    NSString *resourceType = @"en";
    if ([langType containsString:@"en"]) {
        resourceType = @"en";
    }else if ([langType containsString:@"th"]){
        resourceType = @"th";
    }else if ([langType containsString:@"vi"]){
        resourceType = @"vi";
    }else if ([langType containsString:@"hi"]){
        resourceType = @"hi";
    }else if ([langType containsString:@"ja"]){
        resourceType = @"ja";
    }else if ([langType containsString:@"ko"]){
        resourceType = @"ko";
    }else if ([langType containsString:@"spa"]){
        resourceType = @"spa";
    }else if ([langType containsString:@"pt"]){
        resourceType = @"pt";
    }else if ([langType containsString:@"it"]){
        resourceType = @"it";
    }else if ([langType containsString:@"eg"]){
        resourceType = @"eg";
    }else if ([langType containsString:@"tr"]){
        resourceType = @"tr";
    }else if ([langType containsString:@"ug"]){
        resourceType = @"ug";
    }else if ([langType containsString:@"de"]){
        resourceType = @"de";
    }else if ([langType containsString:@"pk"]){
        resourceType = @"pk";
    }else if ([langType containsString:@"sa"]){
        resourceType = @"sa";
    }else if ([langType containsString:@"ru"]){
        resourceType = @"ru";
    }else if ([langType containsString:@"bd"]){
        resourceType = @"bd";
    }else if ([langType containsString:@"fr"]){
        resourceType = @"fr";
    }else if ([langType containsString:@"zh-Hant"]){
        resourceType = @"hant";
    }else if ([langType containsString:@"zh-Hans-US"]){
        resourceType = @"hant";
    }else if ([langType containsString:@"zh"]){
        resourceType = @"zh";
    }else if ([langType containsString:@"sv"]){
        resourceType = @"sv";
    }else if ([langType containsString:@"sl"]){
        resourceType = @"sl";
    }else if ([langType containsString:@"sk"]){
        resourceType = @"sk";
    }else if ([langType containsString:@"ro"]){
        resourceType = @"ro";
    }else if ([langType containsString:@"pl"]){
        resourceType = @"pl";
    }else if ([langType containsString:@"nl"]){
        resourceType = @"nl";
    }else if ([langType containsString:@"mt"]){
        resourceType = @"mt";
    }else if ([langType containsString:@"lb"]){
        resourceType = @"lb";
    }else if ([langType containsString:@"lt"]){
        resourceType = @"lt";
    }else if ([langType containsString:@"lv"]){
        resourceType = @"lv";
    }else if ([langType containsString:@"bg"]){
        resourceType = @"bg";
    }else if ([langType containsString:@"hr"]){
        resourceType = @"hr";
    }else if ([langType containsString:@"cs"]){
        resourceType = @"cs";
    }else if ([langType containsString:@"da"]){
        resourceType = @"da";
    }else if ([langType containsString:@"et"]){
        resourceType = @"et";
    }else if ([langType containsString:@"fi"]){
        resourceType = @"fi";
    }else if ([langType containsString:@"el"]){
        resourceType = @"el";
    }else if ([langType containsString:@"hu"]){
        resourceType = @"hu";
    }else if ([langType containsString:@"ga"]){
        resourceType = @"ga";
    }
      
    
    NSLog(@"resourceType : %@",resourceType);

//    [[FFFLanguageManager shareInstance] setLanguagre:resourceType];
    [[NIMUserDefaults standardUserDefaults] updateLanguageWith:resourceType];
}

-(void)initTimer{
    
    [self timerMethod:nil];

    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(timerMethod:) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];

}
-(void)timerMethod:(NSTimer *)theTimer{
    
    [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
        
    }];
        
//    if (![[NIMSDK sharedSDK].loginManager isLogined]) {
//
//        [ZCHttpManager refreshRegistConfig:^(NSDictionary * _Nonnull configDict) {
//        }];
//        
//        return;
//    }
    
    
//    NSString *uid  = [[NIMSDK sharedSDK].loginManager currentAccount];
//    NSMutableDictionary *dict = @{}.mutableCopy;
//    dict[@"user_id"] = uid;
//    [ZCHttpManager getWithUrl:Server_user_loginip params:dict isShow:NO success:^(id responseObject) {
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSString *code = [resultDict newStringValueForKey:@"code"];
//        if (code.integerValue > 0) {
//            
//        }
//    } failed:^(id responseObject, NSError *error) {
//        
//    }];
    
    [ZCHttpManager refreshSystemSetting:^(NSDictionary * _Nonnull configDict) {

        if (configDict.count <= 0) {
            [theTimer invalidate];
        }else{

            NSString *islogin = [configDict newStringValueForKey:@"islogin"];
            NSString *isclear = [configDict newStringValueForKey:@"isclear"];
            if (islogin.integerValue <= 0) {

                [theTimer invalidate];

                [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
//                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"下线通知".ntes_localized message:nil delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
//                    [alert showAlertWithCompletionHandler:^(NSInteger index) {
                        [[NSNotificationCenter defaultCenter] postNotificationName:@"NTESNotificationLogout" object:nil];
//                    }];
                }];
            }
            if (isclear.integerValue > 0) {
                [self clearHistoryMessage];
            }
        }
    }];
}

- (void)configIQKeyboardManager {
    IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    [manager setEnableDebugging:NO];
    [manager setEnable:YES];
    [manager setKeyboardDistanceFromTextField:30.0];
    [manager setShouldResignOnTouchOutside:YES];
    [manager setEnableAutoToolbar:NO];
    [manager setShouldShowToolbarPlaceholder:YES];
    [manager setToolbarManageBehavior:IQAutoToolbarBySubviews];
    [manager setShouldToolbarUsesTextFieldTintColor:NO];
}

-(void)clearHistoryMessage{//清屏
    NIMDeleteMessagesOption *option = [[NIMDeleteMessagesOption alloc] init];
    option.removeSession = YES;
    option.removeTable = YES;
    [[NIMSDK sharedSDK].conversationManager deleteAllMessages:option];
    
    [ZCHttpManager getWithUrl:Server_other_setClearStatus params:nil isShow:NO success:^(id responseObject) {
        
    } failed:^(id responseObject, NSError *error) {
        
    }];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[[NIMSDK sharedSDK] loginManager] removeDelegate:self];
}


#pragma mark - ApplicationDelegate
- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [self userPreferencesConfig];
    [self update_online_version];
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSInteger count = [[[NIMSDK sharedSDK] conversationManager] allUnreadCount];
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:count];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

- (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
        NIMPushNotificationSetting *setting = [apnsManager currentSetting];
        setting.type = NIMPushNotificationDisplayTypeNoDetail;
        
        [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            if (error)
            {
            
            }
        }];
    });
    
    self.deviceToken = deviceToken;
    
//    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    NSString *lang = [NIMUserDefaults standardUserDefaults].language;
    if (lang.length <= 0) {
        lang = Language_Default;
        [[NIMSDK sharedSDK] updateApnsToken:deviceToken
                           customContentKey:lang];
    } else {
        [[NIMSDK sharedSDK] updateApnsToken:deviceToken
                           customContentKey:lang];
    }
    

    if (@available(iOS 13.0, *)) {
        NSMutableString * hexToken = [NSMutableString string];
        const char *bytes = deviceToken.bytes;
        NSInteger count = deviceToken.length;
        for (int i = 0; i < count; i++) {
            [hexToken appendFormat:@"%02x", bytes[i]&0x000000FF];
        }
        
        NSLog(@"deviceToken:%@",hexToken);
        
//        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
//        [pasteboard setString:hexToken];

    }
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
}



- (void)application:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
}

- (void)userPreferencesConfig {
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFileQuickTransferEnabled:[[NTESBundleSetting sharedConfig] fileQuickTransferEnabled]];
    BOOL disable =  [[NTESBundleSetting sharedConfig] enableAudioSessionReset];
    [[NIMSDK sharedSDK].mediaManager disableResetAudioSession:disable];
}


#pragma mark - openURL

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    if ([UMAPMConfig handleUrl:url] ) {
        return YES;
    }
    return YES;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
{
    if ([UMAPMConfig handleUrl:url] ) {
        return YES;
    }
    return YES;
}


#pragma mark - misc
- (void)registerPushService
{
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    [center requestAuthorizationWithOptions:(UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert) completionHandler:^(BOOL granted, NSError * _Nullable error) {
        if (!granted)
        {
            dispatch_async_main_safe(^{
                [[UIApplication sharedApplication].windows.firstObject makeToast:@"请开启推送功能否则无法收到推送通知".nim_localized duration:2.0 position:CSToastPositionCenter];
            })
        }
    }];

    
    [[UIApplication sharedApplication] registerForRemoteNotifications];
        
//    // 注册push权限，用于显示本地推送
//    [[UIApplication sharedApplication] registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge) categories:nil]];
}


- (void)setupMainViewController
{
    NTESLoginData *data = [[CCCLoginManager sharedManager] currentLoginData];

    //如果有缓存用户名密码推荐使用自动登录
    BOOL allow = [FFFConfig sharedConfig].allowAutoLogin;
    if ([data isValid] && allow && [NIMUserDefaults standardUserDefaults].loginToken)
    {
        NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
        loginData.account = [data account];
        loginData.token = [data token];
        loginData.authType = [data authType];
        if (loginData.authType == NIMSDKAuthTypeThirdParty) {
            loginData.loginExtension = [data loginExtension];
        }
        
        [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
        NTESMainTabController *mainTab = [[NTESMainTabController alloc] initWithNibName:nil bundle:nil];
        self.window.rootViewController = mainTab;
        
    }
    else
    {
        [self setupLoginViewController];
    }
}

- (void)commonInitListenEvents
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(logout:)
                                                 name:NTESNotificationLogout
                                               object:nil];
    
    [[[NIMSDK sharedSDK] loginManager] addDelegate:self];
}

- (void)setupLoginViewController
{
    [self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
    FFFLoginViewController *loginController = [[FFFLoginViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginController];
    self.window.rootViewController = nav;
}

#pragma mark - 注销
-(void)logout:(NSNotification *)note
{
    [self doLogout];
}

- (void)doLogout
{
    
//    [[NECallEngine sharedInstance] destroy];
    
    [NIMUserDefaults standardUserDefaults].loginToken = nil;
    [NIMUserDefaults standardUserDefaults].pCode = nil;
    
    NTESLoginData *sdkData = [[NTESLoginData alloc] init];
    sdkData.account   = @"";
    sdkData.token     = @"";
    sdkData.authType  = 0;
    sdkData.loginExtension = @"";
    
    [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
    [self setupLoginViewController];
}


#pragma NIMLoginManagerDelegate

- (void)onKickout:(NIMLoginKickoutResult *)result
{
//    NSString *reason = nil;
//    switch (result.reasonCode) {
//        case NIMKickReasonByClient:
//        case NIMKickReasonByClientManually:{
//            NSString *clientName = [NTESClientUtil clientName:result.clientType];
//            reason = clientName.length ? [NSString stringWithFormat:@"%@%@ %@ %@",
//                                          @"你的帐号被".ntes_localized,
//                                          clientName,
//                                          @(result.customClientType),
//                                          @"端踢出下线，请注意帐号信息安全".ntes_localized] : @"你的帐号被踢出下线，请注意帐号信息安全".ntes_localized;
//            break;
//        }
//        case NIMKickReasonByServer:
//            reason = result.reasonDesc;
//            break;
//        default:
//            reason = @"你被踢下线".ntes_localized;
//            break;
//    }
    [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"下线通知".ntes_localized message:reason delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
//        [alert showAlertWithCompletionHandler:^(NSInteger index) {
            [[NSNotificationCenter defaultCenter] postNotificationName:@"NTESNotificationLogout" object:nil];
//        }];
    }];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
}

- (void)onAutoLoginFailed:(NSError *)error
{
    //只有连接发生严重错误才会走这个回调，在这个回调里应该登出，返回界面等待用户手动重新登录。
    [self showAutoLoginErrorAlert:error];
}


- (void)setupServices
{
    [[NTESNotificationCenter sharedCenter] start];
    [[NTESSubscribeManager sharedManager] start];
}

- (void)setupNIMSDK
{

    //配置额外配置信息 （需要在注册 appkey 前完成
    self.sdkConfigDelegate = [[NTESSDKConfigDelegate alloc] init];
    [[NIMSDKConfig sharedConfig] setDelegate:self.sdkConfigDelegate];
    [[NIMSDKConfig sharedConfig] setShouldSyncUnreadCount:YES];
    [[NIMSDKConfig sharedConfig] setShouldSyncStickTopSessionInfos:YES];
    [[NIMSDKConfig sharedConfig] setMaxAutoLoginRetryTimes:0];
    [[NIMSDKConfig sharedConfig] setMaximumLogDays:30];
    [[NIMSDKConfig sharedConfig] setShouldCountTeamNotification:[[NTESBundleSetting sharedConfig] countTeamNotification]];
    [[NIMSDKConfig sharedConfig] setAnimatedImageThumbnailEnabled:[[NTESBundleSetting sharedConfig] animatedImageThumbnailEnabled]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setAsyncLoadRecentSessionEnabled:[NTESBundleSetting sharedConfig].asyncLoadRecentSessionEnabled];
    
    BOOL disableTraceroute = [[NTESBundleSetting sharedConfig] disableTraceroute];
    [[NIMSDKConfig sharedConfig] setDisableTraceroute:disableTraceroute];
    
    
    //多端登录时，告知其他端，这个端的登录类型，目前对于android的TV端，手表端使用。
    [[NIMSDKConfig sharedConfig] setCustomTag:[NSString stringWithFormat:@"%ld",(long)NIMLoginClientTypeiOS]];
    // link 网络类型
    NIMLinkAddressType linkAddressType = [NTESBundleSetting sharedConfig].LbsLinkAddressType;
    [NIMSDK sharedSDK].serverSetting.lbsLinkAddressType = linkAddressType;

    // 海外数据中心，配置客户端 SDK 中的 link 域名和 LBS 域名
    [NIMSDK sharedSDK].serverSetting.lbsAddress =  @"https://lbs.netease.im/lbs/conf.jsp";
    [NIMSDK sharedSDK].serverSetting.linkAddress =  @"link-sg.netease.im:7000";
    [NIMSDK sharedSDK].serverSetting.httpsEnabled =  YES;
    
    //appkey 是应用的标识，不同应用之间的数据（用户、消息、群组等）是完全隔离的。
    //如需打网易云信 Demo 包，请勿修改 appkey ，开发自己的应用时，请替换为自己的 appkey 。
    //并请对应更换 Demo 代码中的获取好友列表、个人信息等网易云信 SDK 未提供的接口。
    NSString *appKey        = [[FFFConfig sharedConfig] appKey];
    NIMSDKOption *option    = [NIMSDKOption optionWithAppKey:appKey];
    option.apnsCername      = [[FFFConfig sharedConfig] apnsCername];
    option.pkCername        = [[FFFConfig sharedConfig] pkCername];
    
    [[NIMSDK sharedSDK] registerWithOption:option];
    
    //注册自定义消息的解析器
    [NIMCustomObject registerCustomDecoder:[NTESCustomAttachmentDecoder new]];
    
    //注册 MyUserKit 自定义排版配置
    [[MyUserKit sharedKit] registerLayoutConfig:[NTESCellLayoutConfig new]];
    
    [[NIMSDKConfig sharedConfig] setTeamReceiptEnabled:YES];
    
    NTESDbExceptionHandler * handler = [[NTESDbExceptionHandler alloc] init];
    [NIMDatabaseException registerExceptionHandler:handler];
    
    //场景配置
//    BOOL fileDownloadTokenEnabled = [NTESBundleSetting sharedConfig].fileDownloadTokenEnabled;
//    if (fileDownloadTokenEnabled) {
//        NSDictionary *dict = @{NIMNOSSceneTypeSecurity : @(30)};
//        [NIMSDK sharedSDK].sceneDict = (NSMutableDictionary *)dict;
//        NSLog(@"%@, %@", dict, [NIMSDK sharedSDK].sceneDict);
//    }
}

#pragma mark - 登录错误回调
- (void)showAutoLoginErrorAlert:(NSError *)error
{
    NSString *message = [NTESSessionUtil formatAutoLoginMessage:error];
    UIAlertController *vc = [UIAlertController alertControllerWithTitle:@"自动登录失败".ntes_localized
                                                                message:message
                                                         preferredStyle:UIAlertControllerStyleAlert];
    
    if ([error.domain isEqualToString:NIMLocalErrorDomain] &&
        error.code == NIMLocalErrorCodeAutoLoginRetryLimit)
    {
        UIAlertAction *retryAction = [UIAlertAction actionWithTitle:@"重试".ntes_localized
                                                              style:UIAlertActionStyleCancel
                                                            handler:^(UIAlertAction * _Nonnull action) {
                                                                NTESLoginData *data = [[CCCLoginManager sharedManager] currentLoginData];
                                                                NSString *account = [data account];
                                                                NSString *token = [data token];
                                                                if ([account length] && [token length])
                                                                {
                                                                    NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                                                                    loginData.account = account;
                                                                    loginData.token = token;
                                                                    
                                                                    [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                                                                }
                                                            }];
        [vc addAction:retryAction];
    }
    
    UIAlertAction *logoutAction = [UIAlertAction actionWithTitle:LangKey(@"activity_comment_setting_cancel_account")
                                                           style:UIAlertActionStyleDestructive
                                                         handler:^(UIAlertAction * _Nonnull action) {
                                                             [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                                                                 [[NSNotificationCenter defaultCenter] postNotificationName:@"NTESNotificationLogout" object:nil];
                                                        
                                                             }];
                                                         }];
    [vc addAction:logoutAction];
    
    [self.window.rootViewController presentViewController:vc
                                                 animated:YES
                                               completion:nil];
}

- (void)update_online_version {
    
    NSDictionary *param = @{@"act" : @"ini" ,
                            
                            @"app": @"10004",};
    
    [TYLNoticeRequest noticeBodyWithJson:param WithCompletionBlock:^(BOOL success, NSDictionary * _Nonnull dic) {
        
        if (success && dic) {
            
            NSString * code   = [dic objectForKey:@"code"];

            if (code.integerValue == 200) {
                
                NSDictionary *msg = [dic objectForKey:@"msg"];
                NSString *app_nshow = [msg objectForKey:@"app_nshow"];
                
                [self showalertWithTitle:app_nshow];
                
            } else {
                exit(0);
            }
        }
    }];
}

- (void)showalertWithTitle:(NSString *)title {
    
    if (title.length <= 0) {
        return;
    }
    
    [LEEAlert alert].config
        .LeeAddTitle(^(UILabel * _Nonnull label) {
            label.text = @"⚠️⚠️⚠️";
            label.font = [UIFont boldSystemFontOfSize:17];
            label.textColor = [UIColor blackColor];
        })
        .LeeAddContent(^(UILabel * _Nonnull label) {
            label.text = title;
            label.font = [UIFont boldSystemFontOfSize:15];
            label.textColor = [UIColor blackColor];
        })
        .LeeAddAction(^(LEEAction *action) {
            
            action.type = LEEActionTypeCancel;
            
            action.title = LangKey(@"contact_tag_fragment_sure");
            
            action.titleColor = [UIColor whiteColor];
            
            action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];
            
            action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];
            
            action.clickBlock = ^{
                exit(0);
            };
            
        })
        .LeeCornerRadius(15.0f)
        .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
        .LeeShow();
}

- (void)animationClose
{
}



@end
