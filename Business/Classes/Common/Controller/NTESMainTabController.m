//
//  MainTabController.m
//  NIMDemo
//
//  Created by chris on 15/2/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import "NTESMainTabController.h"
#import "AppDelegate.h"
#import "NTESSessionListViewController.h"
#import "UIImage+NTESColor.h"
#import "NTESCustomNotificationDB.h"
#import "NTESNotificationCenter.h"
#import "NTESNavigationHandler.h"
#import "NTESNavigationAnimator.h"
#import "NTESBundleSetting.h"
#import "CCCContactsViewController.h"
#import "NTESMainCenterViewController.h"
#import "DisCorveyViewController.h"
#import "Reachability.h"


#define TabbarVC    @"vc"
#define TabbarTitle @"title"
#define TabbarImage @"image"
#define TabbarSelectedImage @"selectedImage"
#define TabbarItemBadgeValue @"badgeValue"
#define TabBarCount 4

typedef NS_ENUM(NSInteger,NTESMainTabType) {
    NTESMainTabTypeMessageList,    //聊天
    NTESMainTabTypeChatroomList,   //聊天室
    NTESMainTabTypeContact,        //通讯录
    NTESMainTabTypeSetting,        //设置
};



@interface NTESMainTabController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,UITabBarControllerDelegate>

@property (nonatomic,strong) NSArray *navigationHandlers;

@property (nonatomic,strong) NTESNavigationAnimator *animator;

@property (nonatomic,assign) NSInteger sessionUnreadCount;

@property (nonatomic,assign) NSInteger systemUnreadCount;

@property (nonatomic,assign) NSInteger customSystemUnreadCount;

@property (nonatomic,copy)  NSDictionary *configs;

@end

@implementation NTESMainTabController

+ (instancetype)instance{
    AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIViewController *vc = delegete.window.rootViewController;
    if ([vc isKindOfClass:[NTESMainTabController class]]) {
        return (NTESMainTabController *)vc;
    }else{
        return nil;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpSubNav];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];

    extern NSString *NTESCustomNotificationCountChanged;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onCustomNotifyChanged:) name:NTESCustomNotificationCountChanged object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:KEKENotificationLanguageChanged object:nil];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:RGB_COLOR_String(@"#A3A3A3")} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:ThemeColor} forState:UIControlStateSelected];
  
    if (@available(iOS 18, *)) {
        self.delegate = self;
    }
    
    [self setupNetworkObserver];
}

- (void)setupNetworkObserver {
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(networkChanged:)
                                                 name:kReachabilityChangedNotification
                                               object:nil];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    [reachability startNotifier];
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

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    [UIView setAnimationsEnabled:NO];
    return YES;
}
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    [UIView setAnimationsEnabled:YES];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];

    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:RGB_COLOR_String(@"#A3A3A3")} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:ThemeColor} forState:UIControlStateSelected];
 

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    //会话界面发送拍摄的视频，拍摄结束后点击发送后可能顶部会有红条，导致的界面错位。
    self.view.frame = [UIScreen mainScreen].bounds;
}

- (void)dealloc{
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (NSArray*)tabbars{
    self.sessionUnreadCount  = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    NSMutableArray *items = [[NSMutableArray alloc] init];
    
    [items addObject:@(0)];
    [items addObject:@(1)];
    [items addObject:@(2)];
    [items addObject:@(3)];
    
    return items;
}

#pragma mark - Notification
- (void)languageChanged:(NSNotification *)noti {
    [self setUpSubNav];
    
    
}


- (void)setUpSubNav{
    NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    [self.tabbars enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSDictionary * item =[self vcInfoForTabType:[obj integerValue]];
        NSString *vcName = item[TabbarVC];
//        NSString *title  = item[TabbarTitle];
        NSString *title  = @"";
        if(idx == 0){
            title  = LangKey(@"activity_user_profile_chat");
        }else if (idx == 1){
            title  = LangKey(@"discovery");
        }else if (idx == 2){
            title  = LangKey(@"contacts_list_title");
        }else if (idx == 3){
            title  = LangKey(@"main_tab_my");
        }
        
        NSString *imageName = item[TabbarImage];
        NSString *imageSelected = item[TabbarSelectedImage];
        Class clazz = NSClassFromString(vcName);
        UIViewController *vc = [[clazz alloc] initWithNibName:nil bundle:nil];
        vc.hidesBottomBarWhenPushed = NO;
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        
        UIImage *normalImage = [UIImage imageNamed:imageName];
        normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UIImage *selectImage = [UIImage imageNamed:imageSelected];
        selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

        nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title
                                                       image:normalImage
                                               selectedImage:selectImage];
        nav.tabBarItem.tag = idx;
        NSInteger badge = [item[TabbarItemBadgeValue] integerValue];
        if (badge) {
            nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
        }
        NTESNavigationHandler *handler = [[NTESNavigationHandler alloc] initWithNavigationController:nav];
        nav.delegate = handler;
        
        if (@available(iOS 15.0, *)) {
            
            NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor whiteColor],
                                  NSFontAttributeName : [UIFont boldSystemFontOfSize:11]};
            
            UINavigationBarAppearance *barApp = [UINavigationBarAppearance new];
            barApp.backgroundColor = RGB_COLOR_String(kCommonBGColor_All);
            barApp.shadowColor = RGB_COLOR_String(kCommonBGColor_All);
            barApp.titleTextAttributes = dic;
            
            nav.navigationBar.scrollEdgeAppearance = barApp;
            nav.navigationBar.standardAppearance = barApp;
        }
        
        [vcArray addObject:nav];
        [handleArray addObject:handler];
    }];
    self.viewControllers = [NSArray arrayWithArray:vcArray];
    self.navigationHandlers = [NSArray arrayWithArray:handleArray];
    
    
    UINavigationBar *navBar = [UINavigationBar appearance];
    
    NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor blackColor],
                          NSFontAttributeName : [UIFont boldSystemFontOfSize:16]};
    
    navBar.barTintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionVertical]];
    [navBar setTitleTextAttributes:dic];
    [navBar setShadowImage:[UIImage new]];
    [navBar setBackgroundImage:[SNGradientHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];

    navBar.translucent = YES;
    navBar.tintColor = [UIColor grayColor];
    
//    self.tabBar.backgroundColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionVertical]];
    self.tabBar.backgroundColor = [UIColor whiteColor];
    self.tabBar.barTintColor = [UIColor blackColor];
    self.tabBar.backgroundImage = [UIImage new];
    self.tabBar.frame = CGRectMake(0, UIScreenHeight - UITabbarHeight, UIScreenWidth, UITabbarHeight);
//    self.tabBar.layer.cornerRadius = (49/2);
    self.tabBar.translucent = YES;
    self.tabBar.layer.shadowColor = [UIColor blackColor].CGColor;
    self.tabBar.layer.shadowOpacity = 0.05;  // 透明度 5%
    self.tabBar.layer.shadowOffset = CGSizeMake(0, -3);
    self.tabBar.layer.shadowRadius = 5;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    //防止UITabbar上跳，这里重置一下
    self.tabBar.frame = CGRectMake(0, UIScreenHeight - UITabbarHeight, UIScreenWidth, UITabbarHeight);
//    self.tabBar.frame = CGRectMake(20, UIScreenHeight - UITabbarHeight, UIScreenWidth-40, 49);
}

#pragma mark - NIMConversationManagerDelegate
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           totalUnreadCount:(NSInteger)totalUnreadCount{
    self.sessionUnreadCount = totalUnreadCount;
    [self refreshSessionBadge];
}


- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              totalUnreadCount:(NSInteger)totalUnreadCount{
    self.sessionUnreadCount = totalUnreadCount;
    [self refreshSessionBadge];
}

- (void)didUpdateUnreadCountDic:(NSDictionary *)unreadCountDic
{
    NSLog(@"%@",unreadCountDic);
    NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    self.sessionUnreadCount = unreadCount;
    [self refreshSessionBadge];
}

- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
    self.sessionUnreadCount = totalUnreadCount;
    [self refreshSessionBadge];
}

- (void)messagesDeletedInSession:(NIMSession *)session{
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    [self refreshSessionBadge];
}

- (void)allMessagesDeleted{
    self.sessionUnreadCount = 0;
    [self refreshSessionBadge];
}

- (void)allMessagesRead
{
    self.sessionUnreadCount = 0;
    [self refreshSessionBadge];
}

- (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
{
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    [self refreshSessionBadge];
}

#pragma mark - NIMSystemNotificationManagerDelegate
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    self.systemUnreadCount = unreadCount;
    [self refreshContactBadge];
}

#pragma mark - Notification
- (void)onCustomNotifyChanged:(NSNotification *)notification
{
    NTESCustomNotificationDB *db = [NTESCustomNotificationDB sharedInstance];
    self.customSystemUnreadCount = db.unreadCount;
    [self refreshSettingBadge];
}

- (void)refreshSessionBadge{
    UINavigationController *nav = self.viewControllers[NTESMainTabTypeMessageList];
    nav.tabBarItem.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
}

- (void)refreshContactBadge{
//    UINavigationController *nav = self.viewControllers[NTESMainTabTypeContact];
//    NSInteger badge = self.systemUnreadCount;
//    nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
}

- (void)refreshSettingBadge{
    UINavigationController *nav = self.viewControllers[NTESMainTabTypeSetting];
    NSInteger badge = self.customSystemUnreadCount;
    nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
}


- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}


#pragma mark - Rotate

- (BOOL)shouldAutorotate{
    BOOL enableRotate = [NTESBundleSetting sharedConfig].enableRotate;
    return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    BOOL enableRotate = [NTESBundleSetting sharedConfig].enableRotate;
    return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
}


#pragma mark - VC
- (NSDictionary *)vcInfoForTabType:(NTESMainTabType)type{
    
    if (_configs == nil)
    {
        _configs = @{
                     @(NTESMainTabTypeMessageList) : @{
                             TabbarVC           : @"NTESSessionListViewController",
                             TabbarTitle        : LangKey(@"activity_user_profile_chat"),
                             TabbarImage        : @"icon_message_normal",
                             TabbarSelectedImage: @"icon_message_pressed",
                             TabbarItemBadgeValue: @(self.sessionUnreadCount)
                             },
                     @(NTESMainTabTypeChatroomList): @{
                             TabbarVC           : @"DisCorveyViewController",
                             TabbarTitle        : LangKey(@"discovery"),
                             TabbarImage        : @"icon_discovery_normal",
                             TabbarSelectedImage: @"icon_discovery_pressed",
                             },
                     @(NTESMainTabTypeContact)     : @{
                             TabbarVC           : @"CCCContactsViewController",
                             TabbarTitle        : LangKey(@"contacts_list_title"),
                             TabbarImage        : @"icon_contact_normal",
                             TabbarSelectedImage: @"icon_contact_pressed",
                             },
                     @(NTESMainTabTypeSetting)     : @{
                             TabbarVC           : @"NTESMainCenterViewController",
                             TabbarTitle        : LangKey(@"main_tab_my"),
                             TabbarImage        : @"icon_setting_normal",
                             TabbarSelectedImage: @"icon_setting_pressed",
                             }
                     };

    }
    return _configs[@(type)];

}



@end
