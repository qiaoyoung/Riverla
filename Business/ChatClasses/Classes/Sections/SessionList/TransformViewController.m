
#import <Foundation/Foundation.h>
typedef struct {
    Byte supermarketWhen;
    Byte *currentImagine;
    unsigned int imageFrequent;
    bool careKey;
	int confirmAppearance;
} FlueData;

NSString *StringFromFlueData(FlueData *data);


//: UserAgreement_PrivacyPolicy
FlueData kStr_theaterContent = (FlueData){77, (Byte []){24, 62, 40, 63, 12, 42, 63, 40, 40, 32, 40, 35, 57, 18, 29, 63, 36, 59, 44, 46, 52, 29, 34, 33, 36, 46, 52, 241}, 27, false, 77};


//: #FAF8FD
FlueData kStr_publicityValue = (FlueData){47, (Byte []){12, 105, 110, 105, 23, 105, 107, 97}, 7, false, 198};


//: UserAgreementProtocol
FlueData kStr_steadMaxName = (FlueData){21, (Byte []){64, 102, 112, 103, 84, 114, 103, 112, 112, 120, 112, 123, 97, 69, 103, 122, 97, 122, 118, 122, 121, 152}, 21, false, 93};


//: agree
FlueData kStr_martTitle = (FlueData){111, (Byte []){14, 8, 29, 10, 10, 184}, 5, false, 233};


//: is_swed_firnstall
FlueData kStr_messageGradText = (FlueData){1, (Byte []){104, 114, 94, 114, 118, 100, 101, 94, 103, 104, 115, 111, 114, 117, 96, 109, 109, 30}, 17, false, 136};


//: chat_top_bg
FlueData kStr_approveWithValue = (FlueData){52, (Byte []){87, 92, 85, 64, 107, 64, 91, 68, 107, 86, 83, 59}, 11, false, 160};


//: activity_comment_setting_ys
FlueData kStr_supermarketTitle = (FlueData){104, (Byte []){9, 11, 28, 1, 30, 1, 28, 17, 55, 11, 7, 5, 5, 13, 6, 28, 55, 27, 13, 28, 28, 1, 6, 15, 55, 17, 27, 223}, 27, false, 247};


//: reject
FlueData kStr_soleAtBenefitName = (FlueData){16, (Byte []){98, 117, 122, 117, 115, 100, 27}, 6, false, 215};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TransformViewController.m
// Afterwards
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionListViewController.h"
#import "TransformViewController.h"
//: #import "FFFSessionViewController.h"
#import "StopViewController.h"
//: #import "FFFSessionListCell.h"
#import "SessionView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFAvatarImageView.h"
#import "StatusWithControl.h"
//: #import "FFFMessageUtil.h"
#import "ButtonLightTransform.h"
//: #import "FFFKitUtil.h"
#import "PopUtil.h"
//: #import "MyUserKit.h"
#import "Afterwards.h"
//: #import <YYText.h>
#import <YYText.h>
//: #import "FFFTextHighlight.h"
#import "EliteTitleHighlight.h"
//: #import "FFFInputEmoticonParser.h"
#import "ButtonItemHigh.h"
//: #import "FFFInputEmoticonManager.h"
#import "ViewManager.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Afterwards.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "LEEAlert.h"
#import "GraduateTemp.h"

//: @interface FFFSessionListViewController ()
@interface TransformViewController ()

//@property (nonatomic,strong)  UIImageView *navBarHairlineImageView;

//: @end
@end

//: @implementation FFFSessionListViewController
@implementation TransformViewController

//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)viewWillAppear:(BOOL)animated
- (void)viewWillAppear:(BOOL)animated
{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
//    _navBarHairlineImageView.hidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated
- (void)viewWillDisappear:(BOOL)animated
{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
//    _navBarHairlineImageView.hidden = NO;
}


//: - (UIImageView *)findHairlineImageViewUnder:(UIView *)view {
- (UIImageView *)ting:(UIView *)view {
    //: if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
        //: return (UIImageView *)view;
        return (UIImageView *)view;
    }
    //: for (UIView *subview in view.subviews) {
    for (UIView *subview in view.subviews) {
        //: UIImageView *imageView = [self findHairlineImageViewUnder:subview];
        UIImageView *imageView = [self ting:subview];
        //: if (imageView) {
        if (imageView) {
            //: return imageView;
            return imageView;
        }
    }
    //: return nil;
    return nil;
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    //: bg.image = [UIImage imageNamed:@"chat_top_bg"];
    bg.image = [UIImage imageNamed:StringFromFlueData(&kStr_approveWithValue)];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: self.tableView.tableFooterView = [[UIView alloc] init];
    self.tableView.tableFooterView = [[UIView alloc] init];
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    //: self.tableView.showsHorizontalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
    //: self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];

    //: extern NSString *const kLet_windowUserValue;
    extern NSString *const kLet_windowUserValue;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamInfoHasUpdatedNotification:) name:kLet_windowUserValue object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(putUp:) name:kLet_windowUserValue object:nil];

    //: extern NSString *const kLet_topData;
    extern NSString *const kLet_topData;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamMembersHasUpdatedNotification:) name:kLet_topData object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(directioning:) name:kLet_topData object:nil];

    //: extern NSString *const kLet_borderText;
    extern NSString *const kLet_borderText;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUserInfoHasUpdatedNotification:) name:kLet_borderText object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(boxTemp:) name:kLet_borderText object:nil];

    //: [self setupSessions];
    [self queryed];

//    PhotoDefaults *userDefaults = [PhotoDefaults standardUserDefaults];
//    if (userDefaults.yinnihione.length > 0 && [userDefaults.yinnihione boolValue]){
//        BOOL un_first_install = [[NSUserDefaults standardUserDefaults] boolForKey:@"is_swed_firnstall"];
//        if (!un_first_install){
//            [self showalert];
//        }
//    }
}

//: - (void)tapGestureRecognizer:(id)sender {
- (void)dices:(id)sender {
    //: HMWebViewController *vc = [[HMWebViewController alloc] init];
    ShowViewController *vc = [[ShowViewController alloc] init];
    //: vc.webTitle = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
    vc.webTitle = [ItemManager sessionInformation:StringFromFlueData(&kStr_supermarketTitle)];
    //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
    vc.urlString = [PhotoDefaults ting].yshref;
    //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];

    //: [[LEEAlert getAlertWindow].rootViewController presentViewController:nav animated:YES completion:nil];
    [[GraduateTemp maxAcross].rootViewController presentViewController:nav animated:YES completion:nil];
}

//: - (void)showalert {
- (void)beforeCheck {

    //: [LEEAlert alert].config
    [GraduateTemp container].config
        //: .LeeAddTitle(^(UILabel * _Nonnull label) {
        .LeeAddTitle(^(UILabel * _Nonnull label) {
            //: label.text = [FFFLanguageManager getTextWithKey:@"UserAgreement_PrivacyPolicy"];
            label.text = [ItemManager sessionInformation:StringFromFlueData(&kStr_theaterContent)];
            //: label.font = [UIFont boldSystemFontOfSize:17];
            label.font = [UIFont boldSystemFontOfSize:17];
            //: label.textColor = [UIColor blackColor];
            label.textColor = [UIColor blackColor];
        //: })
        })
    //: .LeeAddContent(^(UILabel *label) {
    .LeeAddContent(^(UILabel *label) {

        //: NSString *markString = [FFFLanguageManager getTextWithKey:@"UserAgreementProtocol"];
        NSString *markString = [ItemManager sessionInformation:StringFromFlueData(&kStr_steadMaxName)];

        //: NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
        NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
        //: paragraphStyle.lineSpacing = 3;
        paragraphStyle.lineSpacing = 3;
        //: NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
        NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
        //: [attributes setObject:paragraphStyle forKey:NSParagraphStyleAttributeName];
        [attributes setObject:paragraphStyle forKey:NSParagraphStyleAttributeName];
        //: [attributes setObject:[UIColor darkGrayColor] forKey:NSForegroundColorAttributeName];
        [attributes setObject:[UIColor darkGrayColor] forKey:NSForegroundColorAttributeName];
        //: [attributes setObject:[UIFont systemFontOfSize:13] forKey:NSFontAttributeName];
        [attributes setObject:[UIFont systemFontOfSize:13] forKey:NSFontAttributeName];

        //: NSMutableAttributedString *attrsString = [[NSMutableAttributedString alloc] initWithString:markString];
        NSMutableAttributedString *attrsString = [[NSMutableAttributedString alloc] initWithString:markString];
        //: [attrsString addAttributes:attributes range:NSMakeRange(0, markString.length)];
        [attrsString addAttributes:attributes range:NSMakeRange(0, markString.length)];


        //: [attrsString setAttributes:@{
        [attrsString setAttributes:@{
            //: NSUnderlineStyleAttributeName : @(NSUnderlineStyleSingle),
            NSUnderlineStyleAttributeName : @(NSUnderlineStyleSingle),
            //: NSForegroundColorAttributeName: [UIColor colorWithRed:6/255.0f green:53/255.0f blue:253/255.0f alpha:1.0f],
            NSForegroundColorAttributeName: [UIColor colorWithRed:6/255.0f green:53/255.0f blue:253/255.0f alpha:1.0f],
        //: } range:[attrsString.string rangeOfString:[FFFLanguageManager getTextWithKey:@"UserAgreement_PrivacyPolicy"]]];
        } range:[attrsString.string rangeOfString:[ItemManager sessionInformation:StringFromFlueData(&kStr_theaterContent)]]];

        //: label.attributedText = attrsString;
        label.attributedText = attrsString;
        //: label.textAlignment = NSTextAlignmentLeft;
        label.textAlignment = NSTextAlignmentLeft;

        //: label.userInteractionEnabled = YES;
        label.userInteractionEnabled = YES;

        //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureRecognizer:)];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dices:)];
        //: [label addGestureRecognizer:tap];
        [label addGestureRecognizer:tap];
    //: })
    })
    //: .LeeAddAction(^(LEEAction *action) {
    .LeeAddAction(^(TempAction *action) {

        //: action.title = [FFFLanguageManager getTextWithKey:@"reject"];
        action.title = [ItemManager sessionInformation:StringFromFlueData(&kStr_soleAtBenefitName)];

        //: action.titleColor = [UIColor darkGrayColor];
        action.titleColor = [UIColor darkGrayColor];

        //: action.backgroundColor = [UIColor colorWithRed:249/255.0f green:249/255.0f blue:249/255.0f alpha:1.0f];
        action.backgroundColor = [UIColor colorWithRed:249/255.0f green:249/255.0f blue:249/255.0f alpha:1.0f];

        //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
        action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];

        //: action.clickBlock = ^{
        action.clickBlock = ^{
            //: exit(0);
            exit(0);
        //: };
        };
    //: })
    })
    //: .LeeAddAction(^(LEEAction *action) {
    .LeeAddAction(^(TempAction *action) {

        //: action.type = LEEActionTypeCancel;
        action.type = LEEActionTypeCancel;

        //: action.title = [FFFLanguageManager getTextWithKey:@"agree"];
        action.title = [ItemManager sessionInformation:StringFromFlueData(&kStr_martTitle)];

        //: action.titleColor = [UIColor whiteColor];
        action.titleColor = [UIColor whiteColor];

        //: action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];
        action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];

        //: action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];
        action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];

        //: action.clickBlock = ^{
        action.clickBlock = ^{
            //: [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"is_swed_firnstall"];
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:StringFromFlueData(&kStr_messageGradText)];
            //: [[NSUserDefaults standardUserDefaults] synchronize];
            [[NSUserDefaults standardUserDefaults] synchronize];
        //: };
        };

    //: })
    })
    //: .LeeCornerRadius(15.0f)
    .LeeCornerRadius(15.0f)

    //: .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
    .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)

    //: .LeeShow();
    .LeeShow();


}


//: - (void)setupSessions {
- (void)queryed {
    //: _recentSessions = [self getRecentSessions];
    _recentSessions = [self sizeSessions];
    //: if (!self.recentSessions.count)
    if (!self.recentSessions.count)
    {
        //: _recentSessions = [NSMutableArray array];
        _recentSessions = [NSMutableArray array];
    }
    //: else
    else
    {
        //: _recentSessions = [self customSortRecents:_recentSessions];
        _recentSessions = [self container:_recentSessions];
    }
}

//: - (NSMutableArray *)getRecentSessions {
- (NSMutableArray *)sizeSessions {
    //: return [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    return [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
}

//: - (void)refresh{
- (void)tool{
    //: if (!self.recentSessions.count) {
    if (!self.recentSessions.count) {
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
    //: }else{
    }else{
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: [self customSortRecents:self.recentSessions];
        [self container:self.recentSessions];
    }
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //: NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
    NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
    //: [self onSelectedRecent:recentSession atIndexPath:indexPath];
    [self center:recentSession tag:indexPath];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 70.f;
    return 70.f;
}

//: - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    //: return YES;
    return YES;
}



//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: return 1;
    return 1;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.recentSessions.count;
    return self.recentSessions.count;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    //: return 10;
    return 10;

}
//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 0.01f;
    return 0.01f;
}


//: - (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{

    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}


//: - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}



//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: static NSString *cellId = @"cellId";
    static NSString *cellId = @"cellId";
    //: FFFSessionListCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    SessionView *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFSessionListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        cell = [[SessionView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        //: [cell.avatarImageView addTarget:self action:@selector(onTouchAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [cell.avatarImageView addTarget:self action:@selector(doing:) forControlEvents:UIControlEventTouchUpInside];
    }
    //: NIMRecentSession *recent = self.recentSessions[indexPath.section];
    NIMRecentSession *recent = self.recentSessions[indexPath.section];
    //: cell.nameLabel.text = [self nameForRecentSession:recent];
    cell.nameLabel.text = [self makeBy:recent];
    //: [cell.avatarImageView setAvatarBySession:recent.session];
    [cell.avatarImageView setStep:recent.session];
    //: [cell.nameLabel sizeToFit];
    [cell.nameLabel sizeToFit];

    //: cell.messageLabel.attributedText = [self contentForRecentSession:recent];
    cell.messageLabel.attributedText = [self cell:recent];
    //: [cell.messageLabel sizeToFit];
    [cell.messageLabel sizeToFit];
    //: cell.timeLabel.text = [self timestampDescriptionForRecentSession:recent];
    cell.timeLabel.text = [self sizeShouldHide:recent];
    //: [cell.timeLabel sizeToFit];
    [cell.timeLabel sizeToFit];

    //: BOOL isTop = [self isTopWithNIMRecentSession:recent];
    BOOL isTop = [self cancel:recent];
    //: if (isTop){
    if (isTop){
        //: cell.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        cell.backgroundColor = [UIColor withMax:StringFromFlueData(&kStr_publicityValue)];
    //: } else {
    } else {
        //: cell.backgroundColor = [UIColor clearColor];
        cell.backgroundColor = [UIColor clearColor];
    }

    //: [cell refresh:recent];
    [cell sizeRefresh:recent];
    //: return cell;
    return cell;
}

///置顶会话的cell
//: - (BOOL)isTopWithNIMRecentSession:(NIMRecentSession *)recentSession; {
- (BOOL)cancel:(NIMRecentSession *)recentSession; {
    //: return NO;
    return NO;
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)didLoadAllRecentSessionCompletion {
- (void)didLoadAllRecentSessionCompletion {
    //: [self setupSessions];
    [self queryed];
    //: [self refresh];
    [self tool];
}

//: - (void)didAddRecentSession:(NIMRecentSession *)recentSession
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           //: totalUnreadCount:(NSInteger)totalUnreadCount{
           totalUnreadCount:(NSInteger)totalUnreadCount{
    //: [self.recentSessions addObject:recentSession];
    [self.recentSessions addObject:recentSession];
    //: [self sort];
    [self info];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self container:_recentSessions];
    //: [self refresh];
    [self tool];
}

//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: for (NIMRecentSession *recent in self.recentSessions)
    for (NIMRecentSession *recent in self.recentSessions)
    {
        //: if ([recentSession.session.sessionId isEqualToString:recent.session.sessionId])
        if ([recentSession.session.sessionId isEqualToString:recent.session.sessionId])
        {
            //: [self.recentSessions removeObject:recent];
            [self.recentSessions removeObject:recent];
            //: break;
            break;
        }
    }
    //: NSInteger insert = [self findInsertPlace:recentSession];
    NSInteger insert = [self pathPlace:recentSession];
    //: [self.recentSessions insertObject:recentSession atIndex:insert];
    [self.recentSessions insertObject:recentSession atIndex:insert];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self container:_recentSessions];
    //: [self refresh];
    [self tool];
}

//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount
              totalUnreadCount:(NSInteger)totalUnreadCount
{
    //清理本地数据
    //: [self.recentSessions removeObject:recentSession];
    [self.recentSessions removeObject:recentSession];

    //如果删除本地会话后就不允许漫游当前会话，则需要进行一次删除服务器会话的操作
    //: if (self.autoRemoveRemoteSession)
    if (self.autoRemoveRemoteSession)
    {
        //: [[NIMSDK sharedSDK].conversationManager deleteRemoteSessions:@[recentSession.session]
        [[NIMSDK sharedSDK].conversationManager deleteRemoteSessions:@[recentSession.session]
                           //: completion:nil];
                           completion:nil];
    }
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self container:_recentSessions];
    //: [self refresh];
    [self tool];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self container:_recentSessions];
    //: [self refresh];
    [self tool];
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self container:_recentSessions];
    //: [self refresh];
    [self tool];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    _recentSessions = [[NIMSDK sharedSDK].conversationManager.allRecentSessions mutableCopy];
    //: _recentSessions = [self customSortRecents:_recentSessions];
    _recentSessions = [self container:_recentSessions];
    //: [self refresh];
    [self tool];
}

//: - (NSMutableArray *)customSortRecents:(NSMutableArray *)recentSessions
- (NSMutableArray *)container:(NSMutableArray *)recentSessions
{
    //: return self.recentSessions;
    return self.recentSessions;
}

//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step
- (void)onLogin:(NIMLoginStep)step
{
    //: if (step == NIMLoginStepSyncOK) {
    if (step == NIMLoginStepSyncOK) {
        //: [self refresh];
        [self tool];
    }
}

//: #pragma mark - Override
#pragma mark - Override
//: - (void)onSelectedAvatar:(NSString *)userId
- (void)message:(NSString *)userId
             //: atIndexPath:(NSIndexPath *)indexPath{};
             item:(NSIndexPath *)indexPath{};

//: - (void)onSelectedRecent:(NIMRecentSession *)recentSession atIndexPath:(NSIndexPath *)indexPath{
- (void)center:(NIMRecentSession *)recentSession tag:(NSIndexPath *)indexPath{
    //: FFFSessionViewController *vc = [[FFFSessionViewController alloc] initWithSession:recentSession.session];
    StopViewController *vc = [[StopViewController alloc] initWithFind:recentSession.session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}



//: - (NSString *)nameForRecentSession:(NIMRecentSession *)recent {
- (NSString *)makeBy:(NIMRecentSession *)recent {
    //: if (recent.session.sessionType == NIMSessionTypeP2P) {
    if (recent.session.sessionType == NIMSessionTypeP2P) {
        //: return [FFFKitUtil showNick:recent.session.sessionId inSession:recent.session];
        return [PopUtil size:recent.session.sessionId surplus:recent.session];
    //: } else if (recent.session.sessionType == NIMSessionTypeTeam) {
    } else if (recent.session.sessionType == NIMSessionTypeTeam) {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:recent.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:recent.session.sessionId];
        //: return team.teamName;
        return team.teamName;
    //: } else if (recent.session.sessionType == NIMSessionTypeSuperTeam) {
    } else if (recent.session.sessionType == NIMSessionTypeSuperTeam) {
        //: NIMTeam *superTeam = [[NIMSDK sharedSDK].superTeamManager teamById:recent.session.sessionId];
        NIMTeam *superTeam = [[NIMSDK sharedSDK].superTeamManager teamById:recent.session.sessionId];
        //: return superTeam.teamName;
        return superTeam.teamName;
    //: } else {
    } else {
        //: NSAssert(NO, @"");
        NSAssert(NO, @"");
        //: return nil;
        return nil;
    }
}

//: - (NSAttributedString *)contentForRecentSession:(NIMRecentSession *)recent{
- (NSAttributedString *)cell:(NIMRecentSession *)recent{
    //: NSString *content = [self messageContent:recent.lastMessage];
    NSString *content = [self radiogramInsideText:recent.lastMessage];
    //: return [[NSAttributedString alloc] initWithString:content ?: @""];
    return [[NSAttributedString alloc] initWithString:content ?: @""];
}

//: - (NSString *)timestampDescriptionForRecentSession:(NIMRecentSession *)recent{
- (NSString *)sizeShouldHide:(NIMRecentSession *)recent{
    //: if (recent.lastMessage) {
    if (recent.lastMessage) {
        //: return [FFFKitUtil showTime:recent.lastMessage.timestamp showDetail:NO];
        return [PopUtil max:recent.lastMessage.timestamp exampleOff:NO];
    }
    // 服务端时间戳以毫秒为单位,需要转化
    //: NSTimeInterval timeSecond = recent.updateTime / 1000.0;
    NSTimeInterval timeSecond = recent.updateTime / 1000.0;
    //: return [FFFKitUtil showTime:timeSecond showDetail:NO];
    return [PopUtil max:timeSecond exampleOff:NO];
}

//: #pragma mark - Misc
#pragma mark - Misc

//: - (NSInteger)findInsertPlace:(NIMRecentSession *)recentSession{
- (NSInteger)pathPlace:(NIMRecentSession *)recentSession{
    //: __block NSUInteger matchIdx = 0;
    __block NSUInteger matchIdx = 0;
    //: __block BOOL find = NO;
    __block BOOL find = NO;
    //: [self.recentSessions enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.recentSessions enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: NIMRecentSession *item = obj;
        NIMRecentSession *item = obj;
        //: if (item.lastMessage.timestamp <= recentSession.lastMessage.timestamp) {
        if (item.lastMessage.timestamp <= recentSession.lastMessage.timestamp) {
            //: *stop = YES;
            *stop = YES;
            //: find = YES;
            find = YES;
            //: matchIdx = idx;
            matchIdx = idx;
        }
    //: }];
    }];
    //: if (find) {
    if (find) {
        //: return matchIdx;
        return matchIdx;
    //: }else{
    }else{
        //: return self.recentSessions.count;
        return self.recentSessions.count;
    }
}

//: - (void)sort{
- (void)info{
    //: [self.recentSessions sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
    [self.recentSessions sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        //: NIMRecentSession *item1 = obj1;
        NIMRecentSession *item1 = obj1;
        //: NIMRecentSession *item2 = obj2;
        NIMRecentSession *item2 = obj2;
        //: if (item1.lastMessage.timestamp < item2.lastMessage.timestamp) {
        if (item1.lastMessage.timestamp < item2.lastMessage.timestamp) {
            //: return NSOrderedDescending;
            return NSOrderedDescending;
        }
        //: if (item1.lastMessage.timestamp > item2.lastMessage.timestamp) {
        if (item1.lastMessage.timestamp > item2.lastMessage.timestamp) {
            //: return NSOrderedAscending;
            return NSOrderedAscending;
        }
        //: return NSOrderedSame;
        return NSOrderedSame;
    //: }];
    }];
}

//: - (void)onTouchAvatar:(id)sender{
- (void)doing:(id)sender{
    //: UIView *view = [sender superview];
    UIView *view = [sender superview];
    //: while (![view isKindOfClass:[UITableViewCell class]]) {
    while (![view isKindOfClass:[UITableViewCell class]]) {
        //: view = view.superview;
        view = view.superview;
    }
    //: UITableViewCell *cell = (UITableViewCell *)view;
    UITableViewCell *cell = (UITableViewCell *)view;
    //: NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    //: NIMRecentSession *recent = self.recentSessions[indexPath.section];
    NIMRecentSession *recent = self.recentSessions[indexPath.section];
    //: [self onSelectedAvatar:recent atIndexPath:indexPath];
    [self message:recent item:indexPath];
}



//: #pragma mark - Private
#pragma mark - Private
//: - (NSString *)messageContent:(NIMMessage*)lastMessage{
- (NSString *)radiogramInsideText:(NIMMessage*)lastMessage{
    //: NSString *text = [FFFMessageUtil messageContent:lastMessage];
    NSString *text = [ButtonLightTransform accumulationPicture:lastMessage];
    //: if (lastMessage.session.sessionType == NIMSessionTypeP2P || lastMessage.messageType == NIMMessageTypeTip)
    if (lastMessage.session.sessionType == NIMSessionTypeP2P || lastMessage.messageType == NIMMessageTypeTip)
    {
        //: return text;
        return text;
    }
    //: else
    else
    {

        //: NIMMessage *msg = [self lastMessageWithNoNotificationMessage:lastMessage];
        NIMMessage *msg = [self image:lastMessage];
        //: text = [FFFMessageUtil messageContent:msg];
        text = [ButtonLightTransform accumulationPicture:msg];

        //: NSString *from = msg.from;
        NSString *from = msg.from;
        //: NSString *nickName = [FFFKitUtil showNick:from inSession:msg.session];
        NSString *nickName = [PopUtil size:from surplus:msg.session];
        //: return nickName.length ? [nickName stringByAppendingFormat:@" : %@",text] : @"";
        return nickName.length ? [nickName stringByAppendingFormat:@" : %@",text] : @"";
    }
}

//: - (NIMMessage *)lastMessageWithNoNotificationMessage:(NIMMessage *)recentMsg {
- (NIMMessage *)image:(NIMMessage *)recentMsg {

    //: if (recentMsg.messageType != NIMMessageTypeNotification){
    if (recentMsg.messageType != NIMMessageTypeNotification){
        //: return recentMsg;
        return recentMsg;
    }

    //: NSArray<NIMMessage *> *messages = [NIMSDK.sharedSDK.conversationManager messagesInSession:recentMsg.session message:recentMsg limit:1];
    NSArray<NIMMessage *> *messages = [NIMSDK.sharedSDK.conversationManager messagesInSession:recentMsg.session message:recentMsg limit:1];
    //: NIMMessage *msg = recentMsg;
    NIMMessage *msg = recentMsg;
    //: if (messages.count > 0) {
    if (messages.count > 0) {
        //: msg = messages.firstObject;
        msg = messages.firstObject;
        //: if (msg.messageType == NIMMessageTypeNotification){
        if (msg.messageType == NIMMessageTypeNotification){
            //: NIMNotificationObject *object = msg.messageObject;
            NIMNotificationObject *object = msg.messageObject;
             //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
             if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
             {
                 //: return [self lastMessageWithNoNotificationMessage:msg];
                 return [self image:msg];
             }
        }
    }
    //: return msg;
    return msg;
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onUserInfoHasUpdatedNotification:(NSNotification *)notification{
- (void)boxTemp:(NSNotification *)notification{
    //: [self refresh];
    [self tool];
}

//: - (void)onTeamInfoHasUpdatedNotification:(NSNotification *)notification{
- (void)putUp:(NSNotification *)notification{
    //: [self refresh];
    [self tool];
}

//: - (void)onTeamMembersHasUpdatedNotification:(NSNotification *)notification{
- (void)directioning:(NSNotification *)notification{
    //: [self refresh];
    [self tool];
}



//: @end
@end

Byte *FlueDataToByte(FlueData *data) {
    if (data->careKey) return data->currentImagine;
    for (int i = 0; i < data->imageFrequent; i++) {
        data->currentImagine[i] ^= data->supermarketWhen;
    }
    data->currentImagine[data->imageFrequent] = 0;
    data->careKey = true;
	if (data->imageFrequent >= 1) {
		data->confirmAppearance = data->currentImagine[0];
	}
    return data->currentImagine;
}

NSString *StringFromFlueData(FlueData *data) {
    return [NSString stringWithUTF8String:(char *)FlueDataToByte(data)];
}
