//
//  MyLogViewController.m
//  Neeyo
//
//  Created by mac on 2025/4/18.
//  Copyright © 2025 Neeyo. All rights reserved.
//

#import "MyLogViewController.h"
#import "DisCorveyDetailViewController.h"
#import "DisCorveyTableViewCell.h"

@interface MyLogViewController ()<UITableViewDelegate,UITableViewDataSource,DiscorveyCellDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *data;
@property (nonatomic,strong) UIView *defView;

@end

@implementation MyLogViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}
- (void)backAction{
    [self.navigationController popViewControllerAnimated:NO];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = CommonBGView_Color;
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame = CGRectMake(5, SCREEN_STATUS_HEIGHT+4, 40, 40);
    [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
    
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, SCREEN_STATUS_HEIGHT+4, SCREEN_WIDTH, 40)];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.textColor = TextColor_0;
    labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.text = LangKey(@"my_log");
    [self.view addSubview:labtitle];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+15, SCREEN_WIDTH-30, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-15) style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorStyle  = UITableViewCellSeparatorStyleNone;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[DisCorveyTableViewCell class] forCellReuseIdentifier:@"DisCorveyTableViewCell"];
    
    self.data = [NSMutableArray array];
    [self requestfriendShareList];
    
    [self.view addSubview:self.defView];
}

- (void)requestfriendShareList
{
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:@"1" forKey:@"start"];
    [dict setObject:userID forKey:@"touid"];
    @weakify(self)
    [ZCHttpManager getWithUrl:Server_friend_shareList params:dict isShow:NO success:^(id responseObject) {
        @strongify(self)
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        NSArray *dicList = [resultDict valueObjectForKey:@"data"];
        if (code.integerValue == 0) {
           
            for (NSDictionary *videoDict in dicList) {
                disCorveyListModel *modelItem = [[disCorveyListModel alloc] init];
                modelItem.user_id = [videoDict newStringValueForKey:@"user_id"];
                modelItem.headsmall = [videoDict newStringValueForKey:@"headsmall"];
                modelItem.nickname = [videoDict newStringValueForKey:@"nickname"];
                modelItem.pictureArray = [videoDict arrayValueForKey:@"picture"];
                modelItem.ispraise = [videoDict newStringValueForKey:@"ispraise"];
                modelItem.praises = [videoDict newStringValueForKey:@"praises"];
                modelItem.fsId = [videoDict newStringValueForKey:@"id"];
                if (modelItem.pictureArray.count<=3) {
                    [self.data addObject:modelItem];
                }
//                [self.data addObject:modelItem];
            }
            
            if (self.data.count>0) {
                self.defView.hidden = YES;
                self.tableView.hidden = NO;
                [self.tableView reloadData];
            }else{
                self.defView.hidden = NO;
                self.tableView.hidden = YES;
            }
//            [self.tableView reloadData];
            
        }
    } failed:^(id responseObject, NSError *error) {
       
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.data.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

//    return 280;
    
//    NSDictionary *dic = self.data[indexPath.section];
//    NSArray *picList = [dic valueObjectForKey:@"picArray"];
    
    disCorveyListModel *dic = self.data[indexPath.section];
    
    if(dic.pictureArray.count == 1){
        return 280;
    }else if (dic.pictureArray.count == 2){
        return 177;
    }else if (dic.pictureArray.count == 3){
        return 285;
    }else{
        return 0;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *backView = [UIView new];
    backView.backgroundColor = [UIColor clearColor];
    return backView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return CGFLOAT_MIN;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *backView = [UIView new];
    backView.backgroundColor = [UIColor clearColor];
    return backView;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DisCorveyTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"DisCorveyTableViewCell" forIndexPath:indexPath];
    cell.delegate = self;
  
//    NSDictionary *dic = self.data[indexPath.section];
    disCorveyListModel *dic = self.data[indexPath.section];
    [cell refreshDateModel:dic isMyLog:YES];

      return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
   
    disCorveyListModel *dic = self.data[indexPath.section];
    DisCorveyDetailViewController *vc = [[DisCorveyDetailViewController alloc]init];
    vc.modelInfo = dic;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didTouchButton:(disCorveyListModel *)model
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:model.fsId forKey:@"fsid"];
    @weakify(self)
    [ZCHttpManager getWithUrl:Server_friend_delete params:dict isShow:YES success:^(id responseObject) {
        @strongify(self)
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *message = [resultDict newStringValueForKey:@"msg"];
        if (code.integerValue == 0) {
           
            [self.data removeObject:model];
//            [self.tableView reloadData];
            if (self.data.count>0) {
                self.defView.hidden = YES;
                self.tableView.hidden = NO;
                [self.tableView reloadData];
            }else{
                self.defView.hidden = NO;
                self.tableView.hidden = YES;
            }
            
        }else{
            [SVProgressHUD showMessage:message];
        }
    } failed:^(id responseObject, NSError *error) {
       
    }];
}

- (UIView *)defView{
    if(!_defView){
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT+50, SCREEN_WIDTH, 200)];
//        _defView.hidden = YES;
        
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake((SCREEN_WIDTH-213)/2, 150, 213, 148)];
        defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        [_defView addSubview:defImg];
        
        
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, SCREEN_WIDTH, 20)];
        emptyTipLabel.textColor = TextColor_3;
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        [_defView addSubview:emptyTipLabel];
        emptyTipLabel.text = LangKey(@"group_info_activity_without");
    
        
    }
    return _defView;
}

@end
