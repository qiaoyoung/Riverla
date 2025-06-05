
#import <Foundation/Foundation.h>

NSString *StringFromChildData(Byte *data);


//: #F6F7FA
Byte kStr_victorData[] = {12, 7, 5, 123, 43, 65, 70, 55, 70, 54, 70, 35, 114};


//: praises
Byte kStr_weightScareText[] = {38, 7, 4, 134, 115, 101, 115, 105, 97, 114, 112, 116};


//: /friend/shareList
Byte kStr_developingText[] = {50, 17, 13, 250, 133, 21, 218, 117, 125, 26, 136, 46, 148, 116, 115, 105, 76, 101, 114, 97, 104, 115, 47, 100, 110, 101, 105, 114, 102, 47, 82};


//: code
Byte kStr_memberText[] = {24, 4, 9, 201, 48, 194, 113, 149, 20, 101, 100, 111, 99, 8};


//: headsmall
Byte kStr_infoChapData[] = {39, 9, 7, 237, 155, 112, 146, 108, 108, 97, 109, 115, 100, 97, 101, 104, 160};


//: group_info_activity_without
Byte kStr_angleContent[] = {19, 27, 6, 162, 92, 84, 116, 117, 111, 104, 116, 105, 119, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 154};


//: data
Byte kStr_infoHazardValue[] = {49, 4, 11, 104, 35, 34, 25, 207, 211, 121, 209, 97, 116, 97, 100, 237};


//: user_id
Byte kStr_gladSagValue[] = {73, 7, 7, 56, 158, 36, 99, 100, 105, 95, 114, 101, 115, 117, 215};


//: #000000
Byte kStr_knifeName[] = {29, 7, 8, 158, 114, 156, 94, 17, 48, 48, 48, 48, 48, 48, 35, 223};


//: picture
Byte kStr_scareTitle[] = {15, 7, 3, 101, 114, 117, 116, 99, 105, 112, 80};


//: fsid
Byte kStr_itemEnableMyTitle[] = {65, 4, 10, 29, 126, 106, 97, 118, 209, 155, 100, 105, 115, 102, 165};


//: back_arrow_bl
Byte kStr_kitLivingContent[] = {94, 13, 12, 138, 23, 133, 139, 127, 182, 148, 181, 55, 108, 98, 95, 119, 111, 114, 114, 97, 95, 107, 99, 97, 98, 232};


//: touid
Byte kStr_lastWeedTitle[] = {59, 5, 3, 100, 105, 117, 111, 116, 6};


//: ispraise
Byte kStr_appLimitTitle[] = {9, 8, 8, 108, 58, 217, 2, 242, 101, 115, 105, 97, 114, 112, 115, 105, 233};


//: ic_none_LogList
Byte kStr_successAddTitle[] = {22, 15, 9, 50, 206, 168, 129, 159, 84, 116, 115, 105, 76, 103, 111, 76, 95, 101, 110, 111, 110, 95, 99, 105, 37};


//: nickname
Byte kStr_fillName[] = {81, 8, 6, 3, 91, 95, 101, 109, 97, 110, 107, 99, 105, 110, 197};


//: my_log
Byte kStr_similarityText[] = {26, 6, 9, 161, 6, 80, 81, 196, 171, 103, 111, 108, 95, 121, 109, 40};


//: msg
Byte kStr_showChopTitle[] = {95, 3, 12, 18, 254, 224, 107, 240, 86, 46, 56, 166, 103, 115, 109, 16};


//: /friend/delete
Byte kStr_indicatorFedName[] = {65, 14, 7, 208, 218, 122, 248, 101, 116, 101, 108, 101, 100, 47, 100, 110, 101, 105, 114, 102, 47, 12};


//: #999999
Byte kStr_displayCellName[] = {77, 7, 10, 131, 210, 132, 37, 69, 19, 49, 57, 57, 57, 57, 57, 57, 35, 31};


//: start
Byte kStr_weightData[] = {38, 5, 3, 116, 114, 97, 116, 115, 242};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FaceFungusViewController.m
//  Riverla
//
//  Created by mac on 2025/4/18.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyLogViewController.h"
#import "FaceFungusViewController.h"
//: #import "DisCorveyDetailViewController.h"
#import "PictureViewController.h"
//: #import "DisCorveyTableViewCell.h"
#import "ShowLayerViewCell.h"

//: @interface MyLogViewController ()<UITableViewDelegate,UITableViewDataSource,DiscorveyCellDelegate>
@interface FaceFungusViewController ()<UITableViewDelegate,UITableViewDataSource,ChangeCenter>

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;
//: @property (nonatomic, strong) NSMutableArray *data;
@property (nonatomic, strong) NSMutableArray *data;
//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation MyLogViewController
@implementation FaceFungusViewController

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
- (void)messageView{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor isView:StringFromChildData(kStr_victorData)];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice table]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:StringFromChildData(kStr_kitLivingContent)] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(messageView) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice table]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#000000"];
    labtitle.textColor = [UIColor isView:StringFromChildData(kStr_knifeName)];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"my_log"];
    labtitle.text = [TeamManager sizeKey:StringFromChildData(kStr_similarityText)];
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-15) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice table])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice table])-15) style:UITableViewStyleGrouped];
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
    [self.tableView registerClass:[ShowLayerViewCell class] forCellReuseIdentifier:@"ShowLayerViewCell"];

    //: self.data = [NSMutableArray array];
    self.data = [NSMutableArray array];
    //: [self requestfriendShareList];
    [self actualList];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (void)requestfriendShareList
- (void)actualList
{
    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: [dict setObject:@"1" forKey:@"start"];
    [dict setObject:@"1" forKey:StringFromChildData(kStr_weightData)];
    //: [dict setObject:userID forKey:@"touid"];
    [dict setObject:userID forKey:StringFromChildData(kStr_lastWeedTitle)];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/friend/shareList"] params:dict isShow:NO success:^(id responseObject) {
    [InfoManager enable:[NSString stringWithFormat:StringFromChildData(kStr_developingText)] sub:dict record:NO tapGetFailed:^(id responseObject) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict speedy:StringFromChildData(kStr_memberText)];
        //: NSArray *dicList = [resultDict valueObjectForKey:@"data"];
        NSArray *dicList = [resultDict straddle:StringFromChildData(kStr_infoHazardValue)];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {

            //: for (NSDictionary *videoDict in dicList) {
            for (NSDictionary *videoDict in dicList) {
                //: disCorveyListModel *modelItem = [[disCorveyListModel alloc] init];
                disCorveyListModel *modelItem = [[disCorveyListModel alloc] init];
                //: modelItem.user_id = [videoDict newStringValueForKey:@"user_id"];
                modelItem.user_id = [videoDict speedy:StringFromChildData(kStr_gladSagValue)];
                //: modelItem.headsmall = [videoDict newStringValueForKey:@"headsmall"];
                modelItem.headsmall = [videoDict speedy:StringFromChildData(kStr_infoChapData)];
                //: modelItem.nickname = [videoDict newStringValueForKey:@"nickname"];
                modelItem.nickname = [videoDict speedy:StringFromChildData(kStr_fillName)];
                //: modelItem.pictureArray = [videoDict arrayValueForKey:@"picture"];
                modelItem.pictureArray = [videoDict parent:StringFromChildData(kStr_scareTitle)];
                //: modelItem.ispraise = [videoDict newStringValueForKey:@"ispraise"];
                modelItem.ispraise = [videoDict speedy:StringFromChildData(kStr_appLimitTitle)];
                //: modelItem.praises = [videoDict newStringValueForKey:@"praises"];
                modelItem.praises = [videoDict speedy:StringFromChildData(kStr_weightScareText)];
                //: modelItem.fsId = [videoDict newStringValueForKey:@"id"];
                modelItem.fsId = [videoDict speedy:@"id"];
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
    } failedSmartOccurrentSelectShowGet:^(id responseObject, NSError *error) {

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
    ShowLayerViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ShowLayerViewCell" forIndexPath:indexPath];
    //: cell.delegate = self;
    cell.delegate = self;

//    NSDictionary *dic = self.data[indexPath.section];
    //: disCorveyListModel *dic = self.data[indexPath.section];
    disCorveyListModel *dic = self.data[indexPath.section];
    //: [cell refreshDateModel:dic isMyLog:YES];
    [cell title:dic human:YES];

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
    PictureViewController *vc = [[PictureViewController alloc]init];
    //: vc.modelInfo = dic;
    vc.modelInfo = dic;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)didTouchButton:(disCorveyListModel *)model
- (void)touchWith:(disCorveyListModel *)model
{
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: [dict setObject:model.fsId forKey:@"fsid"];
    [dict setObject:model.fsId forKey:StringFromChildData(kStr_itemEnableMyTitle)];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/friend/delete"] params:dict isShow:YES success:^(id responseObject) {
    [InfoManager enable:[NSString stringWithFormat:StringFromChildData(kStr_indicatorFedName)] sub:dict record:YES tapGetFailed:^(id responseObject) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict speedy:StringFromChildData(kStr_memberText)];
        //: NSString *message = [resultDict newStringValueForKey:@"msg"];
        NSString *message = [resultDict speedy:StringFromChildData(kStr_showChopTitle)];
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
            [SVProgressHUD rangeMessage:message];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } failedSmartOccurrentSelectShowGet:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice table])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        defImg.image = [UIImage imageNamed:StringFromChildData(kStr_successAddTitle)];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor isView:StringFromChildData(kStr_displayCellName)];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [TeamManager sizeKey:StringFromChildData(kStr_angleContent)];


    }
    //: return _defView;
    return _defView;
}

//: @end
@end

Byte * ChildDataToCache(Byte *data) {
    int securityIndicator = data[0];
    int gladGoing = data[1];
    int procedure = data[2];
    if (!securityIndicator) return data + procedure;
    for (int i = 0; i < gladGoing / 2; i++) {
        int begin = procedure + i;
        int end = procedure + gladGoing - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[procedure + gladGoing] = 0;
    return data + procedure;
}

NSString *StringFromChildData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ChildDataToCache(data)];
}  
