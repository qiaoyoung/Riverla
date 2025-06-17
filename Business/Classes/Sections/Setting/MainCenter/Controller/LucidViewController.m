
#import <Foundation/Foundation.h>
typedef struct {
    Byte raging;
    Byte *standing;
    unsigned int examineed;
    bool parkSpectrum;
	int includingCivil;
	int imply;
	int soapBubbleRomance;
} RailData;

NSString *StringFromRailData(RailData *data);


//: picture
RailData kStr_sizeNervousShrinkValue = (RailData){234, (Byte []){154, 131, 137, 158, 159, 152, 143, 20}, 7, false, 114, 234, 97};


//: /friend/delete
RailData kStr_blueObjectTitle = (RailData){180, (Byte []){155, 210, 198, 221, 209, 218, 208, 155, 208, 209, 216, 209, 192, 209, 116}, 14, false, 188, 31, 26};


//: #999999
RailData kStr_shouldRegimeData = (RailData){215, (Byte []){244, 238, 238, 238, 238, 238, 238, 180}, 7, false, 161, 105, 58};


//: headsmall
RailData kStr_patientTitle = (RailData){23, (Byte []){127, 114, 118, 115, 100, 122, 118, 123, 123, 216}, 9, false, 80, 101, 84};


//: code
RailData kStr_intellectualText = (RailData){163, (Byte []){192, 204, 199, 198, 129}, 4, false, 200, 15, 219};


//: nickname
RailData kStr_shrinkName = (RailData){95, (Byte []){49, 54, 60, 52, 49, 62, 50, 58, 173}, 8, false, 31, 127, 40};


//: my_log
RailData kStr_eticData = (RailData){151, (Byte []){250, 238, 200, 251, 248, 240, 241}, 6, false, 26, 98, 228};


//: /friend/shareList
RailData kStr_deputySucceedCellText = (RailData){244, (Byte []){219, 146, 134, 157, 145, 154, 144, 219, 135, 156, 149, 134, 145, 184, 157, 135, 128, 250}, 17, false, 55, 199, 168};


//: ic_none_LogList
RailData kStr_pastorData = (RailData){218, (Byte []){179, 185, 133, 180, 181, 180, 191, 133, 150, 181, 189, 150, 179, 169, 174, 243}, 15, false, 2, 248, 150};


//: group_info_activity_without
RailData kStr_killerMuseText = (RailData){198, (Byte []){161, 180, 169, 179, 182, 153, 175, 168, 160, 169, 153, 167, 165, 178, 175, 176, 175, 178, 191, 153, 177, 175, 178, 174, 169, 179, 178, 230}, 27, false, 96, 35, 241};


//: user_id
RailData kStr_chainContent = (RailData){62, (Byte []){75, 77, 91, 76, 97, 87, 90, 166}, 7, false, 55, 154, 179};


//: touid
RailData kStr_crawName = (RailData){231, (Byte []){147, 136, 146, 142, 131, 164}, 5, false, 174, 109, 122};


//: msg
RailData kStr_pathPastorViewName = (RailData){98, (Byte []){15, 17, 5, 207}, 3, false, 142, 26, 10};


//: start
RailData kStr_chainConvertText = (RailData){198, (Byte []){181, 178, 167, 180, 178, 240}, 5, false, 191, 117, 47};


//: #F6F7FA
RailData kStr_bottomCanValue = (RailData){49, (Byte []){18, 119, 7, 119, 6, 119, 112, 94}, 7, false, 57, 117, 80};


//: praises
RailData kStr_identificationText = (RailData){180, (Byte []){196, 198, 213, 221, 199, 209, 199, 5}, 7, false, 174, 219, 78};


//: #000000
RailData kStr_spillName = (RailData){71, (Byte []){100, 119, 119, 119, 119, 119, 119, 221}, 7, false, 81, 94, 186};


//: back_arrow_bl
RailData kStr_buyerTitleData = (RailData){178, (Byte []){208, 211, 209, 217, 237, 211, 192, 192, 221, 197, 237, 208, 222, 100}, 13, false, 238, 39, 211};


//: data
RailData kStr_bileValue = (RailData){82, (Byte []){54, 51, 38, 51, 22}, 4, false, 234, 123, 11};


//: ispraise
RailData kStr_triggerViewValue = (RailData){133, (Byte []){236, 246, 245, 247, 228, 236, 246, 224, 204}, 8, false, 86, 244, 140};


//: fsid
RailData kStr_wantData = (RailData){151, (Byte []){241, 228, 254, 243, 61}, 4, false, 230, 13, 201};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LucidViewController.m
//  Riverla
//
//  Created by mac on 2025/4/18.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyLogViewController.h"
#import "LucidViewController.h"
//: #import "DisCorveyDetailViewController.h"
#import "ArrayViewController.h"
//: #import "DisCorveyTableViewCell.h"
#import "OrientationViewCell.h"

//: @interface MyLogViewController ()<UITableViewDelegate,UITableViewDataSource,DiscorveyCellDelegate>
@interface LucidViewController ()<UITableViewDelegate,UITableViewDataSource,TeamColor>

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;
//: @property (nonatomic, strong) NSMutableArray *data;
@property (nonatomic, strong) NSMutableArray *data;
//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation MyLogViewController
@implementation LucidViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
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
    self.view.backgroundColor = [UIColor withMax:StringFromRailData(&kStr_bottomCanValue)];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice clear]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromRailData(&kStr_buyerTitleData)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(messageLeft) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice clear]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#000000"];
    labtitle.textColor = [UIColor withMax:StringFromRailData(&kStr_spillName)];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"my_log"];
    labtitle.text = [ItemManager sessionInformation:StringFromRailData(&kStr_eticData)];
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-15) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice clear])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice clear])-15) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: [self.tableView registerClass:[DisCorveyTableViewCell class] forCellReuseIdentifier:@"DisCorveyTableViewCell"];
    [self.tableView registerClass:[OrientationViewCell class] forCellReuseIdentifier:@"OrientationViewCell"];

    //: self.data = [NSMutableArray array];
    self.data = [NSMutableArray array];
    //: [self requestfriendShareList];
    [self requestfriendUserCanon];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (void)requestfriendShareList
- (void)requestfriendUserCanon
{
    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: [dict setObject:@"1" forKey:@"start"];
    [dict setObject:@"1" forKey:StringFromRailData(&kStr_chainConvertText)];
    //: [dict setObject:userID forKey:@"touid"];
    [dict setObject:userID forKey:StringFromRailData(&kStr_crawName)];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/friend/shareList"] params:dict isShow:NO success:^(id responseObject) {
    [PhotoManager towardExtra:[NSString stringWithFormat:StringFromRailData(&kStr_deputySucceedCellText)] tool:dict examine:NO titleResponseSuccess:^(id responseObject) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict with:StringFromRailData(&kStr_intellectualText)];
        //: NSArray *dicList = [resultDict valueObjectForKey:@"data"];
        NSArray *dicList = [resultDict view:StringFromRailData(&kStr_bileValue)];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {

            //: for (NSDictionary *videoDict in dicList) {
            for (NSDictionary *videoDict in dicList) {
                //: disCorveyListModel *modelItem = [[disCorveyListModel alloc] init];
                disCorveyListModel *modelItem = [[disCorveyListModel alloc] init];
                //: modelItem.user_id = [videoDict newStringValueForKey:@"user_id"];
                modelItem.user_id = [videoDict with:StringFromRailData(&kStr_chainContent)];
                //: modelItem.headsmall = [videoDict newStringValueForKey:@"headsmall"];
                modelItem.headsmall = [videoDict with:StringFromRailData(&kStr_patientTitle)];
                //: modelItem.nickname = [videoDict newStringValueForKey:@"nickname"];
                modelItem.nickname = [videoDict with:StringFromRailData(&kStr_shrinkName)];
                //: modelItem.pictureArray = [videoDict arrayValueForKey:@"picture"];
                modelItem.pictureArray = [videoDict checked:StringFromRailData(&kStr_sizeNervousShrinkValue)];
                //: modelItem.ispraise = [videoDict newStringValueForKey:@"ispraise"];
                modelItem.ispraise = [videoDict with:StringFromRailData(&kStr_triggerViewValue)];
                //: modelItem.praises = [videoDict newStringValueForKey:@"praises"];
                modelItem.praises = [videoDict with:StringFromRailData(&kStr_identificationText)];
                //: modelItem.fsId = [videoDict newStringValueForKey:@"id"];
                modelItem.fsId = [videoDict with:@"id"];
                //: if (modelItem.pictureArray.count<=3) {
                if (modelItem.pictureArray.count<=3) {
                    //: [self.data addObject:modelItem];
                    [self.data addObject:modelItem];
                }
//                [self.data addObject:modelItem];
            }

            //: if (self.data.count>0) {
            if (self.data.count>0) {
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
//            [self.tableView reloadData];

        }
    //: } failed:^(id responseObject, NSError *error) {
    } exhibitClick:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.data.count;
    return self.data.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

//    return 280;

//    NSDictionary *dic = self.data[indexPath.section];
//    NSArray *picList = [dic valueObjectForKey:@"picArray"];

    //: disCorveyListModel *dic = self.data[indexPath.section];
    disCorveyListModel *dic = self.data[indexPath.section];

    //: if(dic.pictureArray.count == 1){
    if(dic.pictureArray.count == 1){
        //: return 280;
        return 280;
    //: }else if (dic.pictureArray.count == 2){
    }else if (dic.pictureArray.count == 2){
        //: return 177;
        return 177;
    //: }else if (dic.pictureArray.count == 3){
    }else if (dic.pictureArray.count == 3){
        //: return 285;
        return 285;
    //: }else{
    }else{
        //: return 0;
        return 0;
    }
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

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: DisCorveyTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"DisCorveyTableViewCell" forIndexPath:indexPath];
    OrientationViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"OrientationViewCell" forIndexPath:indexPath];
    //: cell.delegate = self;
    cell.delegate = self;

//    NSDictionary *dic = self.data[indexPath.section];
    //: disCorveyListModel *dic = self.data[indexPath.section];
    disCorveyListModel *dic = self.data[indexPath.section];
    //: [cell refreshDateModel:dic isMyLog:YES];
    [cell restoreModelBeggarMyNeighborPolicyLogDate:dic pinLog:YES];

      //: return cell;
      return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: disCorveyListModel *dic = self.data[indexPath.section];
    disCorveyListModel *dic = self.data[indexPath.section];
    //: DisCorveyDetailViewController *vc = [[DisCorveyDetailViewController alloc]init];
    ArrayViewController *vc = [[ArrayViewController alloc]init];
    //: vc.modelInfo = dic;
    vc.modelInfo = dic;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)didTouchButton:(disCorveyListModel *)model
- (void)fixing:(disCorveyListModel *)model
{
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: [dict setObject:model.fsId forKey:@"fsid"];
    [dict setObject:model.fsId forKey:StringFromRailData(&kStr_wantData)];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/friend/delete"] params:dict isShow:YES success:^(id responseObject) {
    [PhotoManager towardExtra:[NSString stringWithFormat:StringFromRailData(&kStr_blueObjectTitle)] tool:dict examine:YES titleResponseSuccess:^(id responseObject) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict with:StringFromRailData(&kStr_intellectualText)];
        //: NSString *message = [resultDict newStringValueForKey:@"msg"];
        NSString *message = [resultDict with:StringFromRailData(&kStr_pathPastorViewName)];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {

            //: [self.data removeObject:model];
            [self.data removeObject:model];
//            [self.tableView reloadData];
            //: if (self.data.count>0) {
            if (self.data.count>0) {
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
            //: [SVProgressHUD showMessage:message];
            [SVProgressHUD format:message];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } exhibitClick:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice clear])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        defImg.image = [UIImage imageNamed:StringFromRailData(&kStr_pastorData)];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor withMax:StringFromRailData(&kStr_shouldRegimeData)];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [ItemManager sessionInformation:StringFromRailData(&kStr_killerMuseText)];


    }
    //: return _defView;
    return _defView;
}

//: @end
@end

Byte *RailDataToByte(RailData *data) {
    if (data->parkSpectrum) return data->standing;
    for (int i = 0; i < data->examineed; i++) {
        data->standing[i] ^= data->raging;
    }
    data->standing[data->examineed] = 0;
    data->parkSpectrum = true;
	if (data->examineed >= 3) {
		data->includingCivil = data->standing[0];
		data->imply = data->standing[1];
		data->soapBubbleRomance = data->standing[2];
	}
    return data->standing;
}

NSString *StringFromRailData(RailData *data) {
    return [NSString stringWithUTF8String:(char *)RailDataToByte(data)];
}
