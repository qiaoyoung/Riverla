
#import <Foundation/Foundation.h>
typedef struct {
    Byte tableTitle;
    Byte *climb;
    unsigned int cooperation;
    bool cellPeak;
	int backgroundBuyer;
	int nag;
} SinData;

NSString *StringFromSinData(SinData *data);


//: group_info_activity_without
SinData kStr_zoneName = (SinData){124, (Byte []){27, 14, 19, 9, 12, 35, 21, 18, 26, 19, 35, 29, 31, 8, 21, 10, 21, 8, 5, 35, 11, 21, 8, 20, 19, 9, 8, 188}, 27, false, 36, 240};


//: back_arrow_bl
SinData kStr_egoTwentiethName = (SinData){94, (Byte []){60, 63, 61, 53, 1, 63, 44, 44, 49, 41, 1, 60, 50, 128}, 13, false, 32, 228};


//: #F6F7FA
SinData kStr_changeDumpData = (SinData){39, (Byte []){4, 97, 17, 97, 16, 97, 102, 2}, 7, false, 123, 242};


//: #999999
SinData kStr_shrinkWithText = (SinData){30, (Byte []){61, 39, 39, 39, 39, 39, 39, 173}, 7, false, 255, 187};


//: #FF483D
SinData kStr_mistakeStyleParkName = (SinData){51, (Byte []){16, 117, 117, 7, 11, 0, 119, 206}, 7, false, 13, 105};


//: #FFF6CF
SinData kStr_liquidZoneData = (SinData){227, (Byte []){192, 165, 165, 165, 213, 160, 165, 244}, 7, false, 115, 184};


//: ic_tip_r
SinData kStr_henceNabData = (SinData){82, (Byte []){59, 49, 13, 38, 59, 34, 13, 32, 67}, 8, false, 172, 95};


//: group_chat_avatar_activity_remove_black_success
SinData kStr_viewShowData = (SinData){64, (Byte []){39, 50, 47, 53, 48, 31, 35, 40, 33, 52, 31, 33, 54, 33, 52, 33, 50, 31, 33, 35, 52, 41, 54, 41, 52, 57, 31, 50, 37, 45, 47, 54, 37, 31, 34, 44, 33, 35, 43, 31, 51, 53, 35, 35, 37, 51, 51, 195}, 47, false, 167, 61};


//: ic_none_blockList
SinData kStr_substanceData = (SinData){247, (Byte []){158, 148, 168, 153, 152, 153, 146, 168, 149, 155, 152, 148, 156, 187, 158, 132, 131, 102}, 17, false, 178, 226};


//: black_list_activity_black
SinData kStr_bileData = (SinData){99, (Byte []){1, 15, 2, 0, 8, 60, 15, 10, 16, 23, 60, 2, 0, 23, 10, 21, 10, 23, 26, 60, 1, 15, 2, 0, 8, 10}, 25, false, 242, 238};


//: black_list_activity_black_list_tip
SinData kStr_surgeryTeacherData = (SinData){179, (Byte []){209, 223, 210, 208, 216, 236, 223, 218, 192, 199, 236, 210, 208, 199, 218, 197, 218, 199, 202, 236, 209, 223, 210, 208, 216, 236, 223, 218, 192, 199, 236, 199, 218, 195, 111}, 34, false, 47, 236};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImagePopViewController.m
// Afterwards
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamMuteMemberListViewController.h"
#import "ImagePopViewController.h"
//: #import "FFFTeamMemberCardViewController.h"
#import "SupportViewController.h"
//: #import "FFFCardHeaderCell.h"
#import "ThanButtonViewCell.h"
//: #import "FFFTeamCardMemberItem.h"
#import "FrameMemberItem.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "FFFKitProgressHUD.h"
#import "ExampleView.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Afterwards.h"
//: #import "NTESContactDataMember.h"
#import "SupportMember.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESBlackListTableViewCell.h"
#import "SearchedViewCell.h"

//: @interface FFFTeamMuteMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,NTESUserListCellDelegate>
@interface ImagePopViewController ()<UITableViewDataSource,UITableViewDelegate,SearchedThan>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,strong) NSMutableArray *memberList;
@property (nonatomic,strong) NSMutableArray *memberList;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation FFFTeamMuteMemberListViewController
@implementation ImagePopViewController


//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];

    //: self.memberList = [NSMutableArray array];
    self.memberList = [NSMutableArray array];
    //: [self loadTeamManageList];
    [self pastText];
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
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor withMax:StringFromSinData(&kStr_changeDumpData)];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice clear]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice clear]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromSinData(&kStr_egoTwentiethName)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(messageLeft) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice clear]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black"];
    labtitle.text = [ItemManager sessionInformation:StringFromSinData(&kStr_bileData)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: [self.view addSubview:self.box];
    [self.view addSubview:self.box];
    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-30) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice clear])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice clear])-30) style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.backgroundColor = [UIColor whiteColor];
        //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //: [self.view addSubview:self.tableView];
        [self.view addSubview:self.tableView];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: self.tableView.delegate = self;
        self.tableView.delegate = self;
        //: self.tableView.dataSource = self;
        self.tableView.dataSource = self;

    //: [self loadTeamManageList];
    [self pastText];
}


//: - (void)loadTeamManageList
- (void)pastText
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:self.teamListManager.team.teamId
    [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:self.teamListManager.team.teamId
                                               //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                               completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (!error) {
        if (!error) {
            //: self.memberList = [NSMutableArray arrayWithArray:members];
            self.memberList = [NSMutableArray arrayWithArray:members];
            //: if (self.memberList.count>0) {
            if (self.memberList.count>0) {
                //: self.defView.hidden = YES;
                self.defView.hidden = YES;
                //: self.tableView.hidden = NO;
                self.tableView.hidden = NO;
                //: [self.tableView reloadData];
                [self.tableView reloadData];
            //: }else{
            }else{
                //: self.defView.hidden = NO;
                self.defView.hidden = NO;
                //: self.tableView.hidden = YES;
                self.tableView.hidden = YES;
            }
        }
    //: }];
    }];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 72.f;
    return 72.f;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.memberList.count;
    return self.memberList.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: static NSString *identity = @"cell";
    static NSString *identity = @"cell";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    SearchedViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell = [[SearchedViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        //: cell.delegate = self;
        cell.delegate = self;
    }
    //: NIMTeamMember *member = self.memberList[indexPath.section];
    NIMTeamMember *member = self.memberList[indexPath.section];
    //: [cell refreshData:member];
    [cell title:member];
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NIMTeamMember *member = self.memberList[indexPath.section];
    NIMTeamMember *member = self.memberList[indexPath.section];

    //: FFFTeamMemberCardViewController *vc = [[FFFTeamMemberCardViewController alloc] init];
    SupportViewController *vc = [[SupportViewController alloc] init];
    //: vc.teamListManager = self.teamListManager;
    vc.teamListManager = self.teamListManager;
    //: vc.memberId = member.userId;
    vc.memberId = member.userId;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)didTouchTeamCancleButton:(NIMTeamMember *)teamMemeber
- (void)cardinalled:(NIMTeamMember *)teamMemeber
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager updateMuteState:NO
    [[NIMSDK sharedSDK].teamManager updateMuteState:NO
                                             //: userId:teamMemeber.userId
                                             userId:teamMemeber.userId
                                             //: inTeam:self.teamListManager.team.teamId
                                             inTeam:self.teamListManager.team.teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {

        //: if(!error) {
        if(!error) {
            //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_remove_black_success"]
            [self.view makeToast:[ItemManager sessionInformation:StringFromSinData(&kStr_viewShowData)]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self.memberList removeObject:teamMemeber];
            [self.memberList removeObject:teamMemeber];
            //: if (self.memberList.count>0) {
            if (self.memberList.count>0) {
                //: self.defView.hidden = YES;
                self.defView.hidden = YES;
                //: self.tableView.hidden = NO;
                self.tableView.hidden = NO;
                //: [self.tableView reloadData];
                [self.tableView reloadData];
            //: }else{
            }else{
                //: self.defView.hidden = NO;
                self.defView.hidden = NO;
                //: self.tableView.hidden = YES;
                self.tableView.hidden = YES;
            }
        //: }else{
        }else{
            //: [self.view makeToast:error.description
            [self.view makeToast:error.description
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
     //: }];
     }];
}


//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice clear]), [[UIScreen mainScreen] bounds].size.width, 26)];
        //: _box.backgroundColor = [UIColor colorWithHexString:@"#FFF6CF"];
        _box.backgroundColor = [UIColor withMax:StringFromSinData(&kStr_liquidZoneData)];

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        //: defImg.image = [UIImage imageNamed:@"ic_tip_r"];
        defImg.image = [UIImage imageNamed:StringFromSinData(&kStr_henceNabData)];
        //: [_box addSubview:defImg];
        [_box addSubview:defImg];

        //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        //: subtitleLabel.textColor = [UIColor colorWithHexString:@"#FF483D"];
        subtitleLabel.textColor = [UIColor withMax:StringFromSinData(&kStr_mistakeStyleParkName)];
//        subtitleLabel.textAlignment = NSTextAlignmentLeft;
        //: subtitleLabel.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black_list_tip"];
        subtitleLabel.text = [ItemManager sessionInformation:StringFromSinData(&kStr_surgeryTeacherData)];
        //: [_box addSubview:subtitleLabel];
        [_box addSubview:subtitleLabel];

    }
    //: return _box;
    return _box;
}
//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice clear])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_blockList"];
        defImg.image = [UIImage imageNamed:StringFromSinData(&kStr_substanceData)];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor withMax:StringFromSinData(&kStr_shrinkWithText)];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [ItemManager sessionInformation:StringFromSinData(&kStr_zoneName)];


    }
    //: return _defView;
    return _defView;
}




//: @end
@end

Byte *SinDataToByte(SinData *data) {
    if (data->cellPeak) return data->climb;
    for (int i = 0; i < data->cooperation; i++) {
        data->climb[i] ^= data->tableTitle;
    }
    data->climb[data->cooperation] = 0;
    data->cellPeak = true;
	if (data->cooperation >= 2) {
		data->backgroundBuyer = data->climb[0];
		data->nag = data->climb[1];
	}
    return data->climb;
}

NSString *StringFromSinData(SinData *data) {
    return [NSString stringWithUTF8String:(char *)SinDataToByte(data)];
}
