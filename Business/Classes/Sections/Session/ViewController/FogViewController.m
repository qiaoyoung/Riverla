
#import <Foundation/Foundation.h>

NSString *StringFromSearchData(Byte *data);


//: contact_fragment_friend
Byte kStr_maxData[] = {96, 23, 10, 131, 216, 46, 251, 11, 251, 18, 100, 110, 101, 105, 114, 102, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 116, 99, 97, 116, 110, 111, 99, 178};


//: #F6F6F6
Byte kStr_logContent[] = {7, 7, 4, 35, 54, 70, 54, 70, 54, 70, 35, 129};


//: group_info_activity_op_failed
Byte kStr_titleWithContent[] = {12, 29, 6, 166, 56, 39, 100, 101, 108, 105, 97, 102, 95, 112, 111, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 65};


//: #5D5F66
Byte kStr_cellShowTitle[] = {62, 7, 11, 105, 107, 163, 144, 175, 155, 157, 226, 54, 54, 70, 53, 68, 53, 35, 184};


//: back_arrow_bl
Byte kStr_recentTitle[] = {49, 13, 3, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 88};


//: #EEEEEE
Byte kStr_contentToHeightValue[] = {7, 7, 3, 69, 69, 69, 69, 69, 69, 35, 141};


//: 已发送
Byte kStr_languageName[] = {45, 9, 6, 188, 216, 98, 129, 128, 233, 145, 143, 229, 178, 183, 229, 161};


//: #B391FF
Byte kStr_changeMaxValue[] = {10, 7, 10, 131, 129, 211, 116, 205, 83, 252, 70, 70, 49, 57, 51, 66, 35, 160};


//: activity_wallet_zhuan
Byte kStr_voiceKeyValue[] = {8, 21, 13, 29, 82, 68, 168, 106, 186, 110, 49, 167, 43, 110, 97, 117, 104, 122, 95, 116, 101, 108, 108, 97, 119, 95, 121, 116, 105, 118, 105, 116, 99, 97, 101};


//: contact_fragment_group
Byte kStr_normalValue[] = {77, 22, 3, 112, 117, 111, 114, 103, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 116, 99, 97, 116, 110, 111, 99, 30};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FogViewController.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/8.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZOMNForwardViewController.h"
#import "FogViewController.h"
//: #import "NTESFriendListTableViewCell.h"
#import "ItemView.h"
//: #import "NTESContactDataCell.h"
#import "VoidView.h"

//: @interface ZOMNForwardViewController ()<UITableViewDataSource,UITableViewDelegate>
@interface FogViewController ()<UITableViewDataSource,UITableViewDelegate>


//: @property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) UITableView *tableView;
//: @property (nonatomic ,assign) NSInteger sliderIndex;
@property (nonatomic ,assign) NSInteger sliderIndex;

//: @property (nonatomic,strong) UIImageView *topborder1;
@property (nonatomic,strong) UIImageView *topborder1;
//: @property (nonatomic,strong) UIButton *btnfriend;
@property (nonatomic,strong) UIButton *btnfriend;

//: @property (nonatomic,strong) UIImageView *topborder2;
@property (nonatomic,strong) UIImageView *topborder2;
//: @property (nonatomic,strong) UIButton *btngroup;
@property (nonatomic,strong) UIButton *btngroup;

//: @property (nonatomic ,strong) NSArray *groupArray;
@property (nonatomic ,strong) NSArray *groupArray;
//: @property (nonatomic ,strong) NSArray *friendArray;
@property (nonatomic ,strong) NSArray *friendArray;


//: @end
@end

//: @implementation ZOMNForwardViewController
@implementation FogViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: - (void)backAction{
- (void)messageLeft{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight])+64)];
    UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice clear])+64)];
    //: [self.view addSubview:navView];
    [self.view addSubview:navView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice clear]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromSearchData(kStr_recentTitle)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(messageLeft) forControlEvents:UIControlEventTouchUpInside];
    //: [navView addSubview:backButton];
    [navView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice clear]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_wallet_zhuan"];
    labtitle.text = [ItemManager sessionInformation:StringFromSearchData(kStr_voiceKeyValue)];
    //: [navView addSubview:labtitle];
    [navView addSubview:labtitle];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice clear])+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    topview.backgroundColor = [UIColor withMax:StringFromSearchData(kStr_logContent)];
    //: topview.layer.cornerRadius = 24;
    topview.layer.cornerRadius = 24;
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;

    //: _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnfriend.frame = CGRectMake(6, 6, width, 36);
    _btnfriend.frame = CGRectMake(6, 6, width, 36);
    //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
    _btnfriend.backgroundColor = [UIColor withMax:StringFromSearchData(kStr_changeMaxValue)];
    //: _btnfriend.layer.cornerRadius = 18;
    _btnfriend.layer.cornerRadius = 18;
    //: _btnfriend.tag = 0;
    _btnfriend.tag = 0;
    //: _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_btnfriend setTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_friend"] forState:UIControlStateNormal];
    [_btnfriend setTitle:[ItemManager sessionInformation:StringFromSearchData(kStr_maxData)] forState:UIControlStateNormal];
    //: [_btnfriend addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btnfriend addTarget:self action:@selector(showwed:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btnfriend];
    [topview addSubview:_btnfriend];

    //: _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    //: _btngroup.tag = 1;
    _btngroup.tag = 1;
    //: _btngroup.layer.cornerRadius = 18;
    _btngroup.layer.cornerRadius = 18;
    //: _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_btngroup setTitleColor:[UIColor withMax:StringFromSearchData(kStr_cellShowTitle)] forState:UIControlStateNormal];
    //: [_btngroup setTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_group"] forState:UIControlStateNormal];
    [_btngroup setTitle:[ItemManager sessionInformation:StringFromSearchData(kStr_normalValue)] forState:UIControlStateNormal];
    //: [_btngroup addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btngroup addTarget:self action:@selector(showwed:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btngroup];
    [topview addSubview:_btngroup];

    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor withMax:StringFromSearchData(kStr_contentToHeightValue)];
    //: [navView addSubview:lineview];
    [navView addSubview:lineview];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: _sliderIndex = 0;
    _sliderIndex = 0;
    //: [self prepareData];
    [self show];
}

//: -(void)sliderButtonClick:(UIButton *)sender
-(void)showwed:(UIButton *)sender
{
    //: sender.selected = YES;
    sender.selected = YES;

    //: if(sender == self.btnfriend){
    if(sender == self.btnfriend){
        //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
        _btnfriend.backgroundColor = [UIColor withMax:StringFromSearchData(kStr_changeMaxValue)];
        //: _btngroup.backgroundColor = [UIColor clearColor];
        _btngroup.backgroundColor = [UIColor clearColor];
        //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor withMax:StringFromSearchData(kStr_cellShowTitle)] forState:UIControlStateNormal];
        //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    //: }else if (sender == self.btngroup){
    }else if (sender == self.btngroup){
        //: _btngroup.backgroundColor = [UIColor colorWithHexString:@"#B391FF"];
        _btngroup.backgroundColor = [UIColor withMax:StringFromSearchData(kStr_changeMaxValue)];
        //: _btnfriend.backgroundColor = [UIColor clearColor];
        _btnfriend.backgroundColor = [UIColor clearColor];
        //: [_btnfriend setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor withMax:StringFromSearchData(kStr_cellShowTitle)] forState:UIControlStateNormal];
        //: [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    }

    //: _sliderIndex = sender.tag;
    _sliderIndex = sender.tag;
    //: [_tableView reloadData];
    [_tableView reloadData];

}

//: - (void)prepareData
- (void)show
{
    //: self.friendArray = [NIMSDK sharedSDK].userManager.myFriends;
    self.friendArray = [NIMSDK sharedSDK].userManager.myFriends;
    //: self.groupArray = [NIMSDK sharedSDK].teamManager.allMyTeams;
    self.groupArray = [NIMSDK sharedSDK].teamManager.allMyTeams;

    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: if(_sliderIndex <= 0){
    if(_sliderIndex <= 0){
        //: NIMUser *friend = self.friendArray[indexPath.section];
        NIMUser *friend = self.friendArray[indexPath.section];
        //: self.session = [NIMSession session:friend.userId type:NIMSessionTypeP2P];
        self.session = [NIMSession session:friend.userId type:NIMSessionTypeP2P];
    //: }else{
    }else{
        //: NIMTeam *team = self.groupArray[indexPath.section];
        NIMTeam *team = self.groupArray[indexPath.section];
        //: self.session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
        self.session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
    }

    //: NSError *err;
    NSError *err;
    //: if (self.isdisCorvey) {
    if (self.isdisCorvey) {
        //: [[[NIMSDK sharedSDK] chatManager] sendMessage:self.message toSession:self.session error:&err];
        [[[NIMSDK sharedSDK] chatManager] sendMessage:self.message toSession:self.session error:&err];
    //: }else{
    }else{
        //: if (self.isCard) {
        if (self.isCard) {
            //: [[[NIMSDK sharedSDK] chatManager] sendForwardMessage:self.message toSession:self.session error:&err];
            [[[NIMSDK sharedSDK] chatManager] sendForwardMessage:self.message toSession:self.session error:&err];
        //: }else{
        }else{
            //: [[[NIMSDK sharedSDK] chatManager] forwardMessage:self.message toSession:self.session error:&err];
            [[[NIMSDK sharedSDK] chatManager] forwardMessage:self.message toSession:self.session error:&err];
        }
    }


    //: if(!err){
    if(!err){
        //: [self.view makeToast:@"已发送".nim_localized duration:1.0 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
        [self.view makeToast:StringFromSearchData(kStr_languageName).textKey duration:1.0 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[ItemManager sessionInformation:StringFromSearchData(kStr_titleWithContent)] duration:2.0 position:CSToastPositionCenter];
    }

}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 64;
    return 64;
}

//: - (NIMSession *)didGetSessionWithTeam:(id)team {
- (NIMSession *)container:(id)team {
    //: NIMTeam *teamItem = (NIMTeam *)team;
    NIMTeam *teamItem = (NIMTeam *)team;
    //: NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    //: return session;
    return session;
}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return self.friendArray.count;
        return self.friendArray.count;
    //: }else{
    }else{
        //: return self.groupArray.count;
        return self.groupArray.count;
    }
}
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: return 1;
    return 1;
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    //: return 0.01f;
    return 0.01f;
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    //: return 0.01f;
    return 0.01f;
}
//: - (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}
//: - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}
//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    if (_sliderIndex <= 0) {
//        NIMUser *user = self.friendArray[indexPath.section];
//
//        ItemView *cell = [ItemView cellWithTableView:tableView];
////        cell.delegate = self;
//        [cell reloadUserItem:user];
//        cell.messageBtn.hidden = YES;
//        
//        return cell;
//        
//    }else{
//        
//        NIMTeam *team = self.groupArray[indexPath.section];
//
//        VoidView * cell = [tableView dequeueReusableCellWithIdentifier:@"KEKEItemCell"];
//        if (!cell) {
//            cell = [[VoidView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"KEKEItemCell"];
//        }
//        cell.backgroundColor = [UIColor clearColor];
//        cell.accessoryType = UITableViewCellAccessoryNone;
//        [cell refreshTeam:team];
////        [cell setDelegate:self];
//        
//        return cell;
//    }

    //: NTESFriendListTableViewCell *cell = [NTESFriendListTableViewCell cellWithTableView:tableView];
    ItemView *cell = [ItemView with:tableView];
    //        cell.delegate = self;
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: NIMUser *user = self.friendArray[indexPath.section];
        NIMUser *user = self.friendArray[indexPath.section];
        //: [cell reloadUserItem:user];
        [cell kit:user];
    //: }else{
    }else{
        //: NIMTeam *team = self.groupArray[indexPath.section];
        NIMTeam *team = self.groupArray[indexPath.section];
        //: [cell refreshTeam:team];
        [cell color:team];
    }
    //: return cell;
    return cell;
}

//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-64) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice clear])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice clear])-64) style:UITableViewStyleGrouped];
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
        //: _tableView.backgroundColor = [UIColor clearColor];
        _tableView.backgroundColor = [UIColor clearColor];
        //: _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    //: return _tableView;
    return _tableView;
}

//: @end
@end

Byte * SearchDataToCache(Byte *data) {
    int omit = data[0];
    int sizeWithDoing = data[1];
    int fast = data[2];
    if (!omit) return data + fast;
    for (int i = 0; i < sizeWithDoing / 2; i++) {
        int begin = fast + i;
        int end = fast + sizeWithDoing - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[fast + sizeWithDoing] = 0;
    return data + fast;
}

NSString *StringFromSearchData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SearchDataToCache(data)];
}  
