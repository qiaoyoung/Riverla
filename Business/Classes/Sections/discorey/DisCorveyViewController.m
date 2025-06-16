//
//  DisCorveyViewController.m
//  Neeyo
//
//  Created by mac on 2025/3/31.
//  Copyright © 2025 Neeyo. All rights reserved.
//

#import "DisCorveyViewController.h"
#import "DisCorveyTableViewCell.h"
#import "DisCorveyDetailViewController.h"
#import "DisCorveyPublishViewController.h"
#import "disCorveyListModel.h"
#import "WMZDialog.h"
#import "ZMONTranslateView.h"
#import <MJRefresh/MJRefresh.h>

@interface DisCorveyViewController ()<UITableViewDelegate,UITableViewDataSource,DiscorveyCellDelegate,NTESReportContentDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *data;
@property (nonatomic, strong) ZMONTranslateView *translateView;

@property (nonatomic, strong) NSString *selectedFsId;

@property (nonatomic, strong) NSString *cuurentpage;
@property (nonatomic, strong) NSString *pagenum;
@property (nonatomic, strong) NSString *totalcount;

@property (nonatomic,strong) UIView *defView;
@property (nonatomic, strong) ZMONCustomLoadingView *loadingView;

@end

@implementation DisCorveyViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
    
//    [SVProgressHUD show];
    self.loadingView.hidden = NO;
    [self loadData];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 375)];
    bg.image = [UIImage imageNamed:@"chat_top_bg"];
    [self.view addSubview:bg];
    
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_STATUS_HEIGHT, SCREEN_WIDTH, 44)];
    [self.view addSubview:topview];
    
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    labtitle.textColor = [UIColor whiteColor];
    labtitle.font = [UIFont boldSystemFontOfSize:18];
    labtitle.text = LangKey(@"discovery");
    [topview addSubview:labtitle];
    
    UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    moreBtn.frame = CGRectMake(SCREEN_WIDTH-32-15, 10, 32, 32);
    [moreBtn addTarget:self action:@selector(gotoUploadPic) forControlEvents:UIControlEventTouchUpInside];
    [moreBtn setImage:[UIImage imageNamed:@"covery_photo"] forState:UIControlStateNormal];
    [topview addSubview:moreBtn];
    
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT+10, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT)];
    contentView.backgroundColor = RGB_COLOR_String(@"#ffffff");
    contentView.layer.cornerRadius = 34;
    [self.view addSubview:contentView];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15,15, SCREEN_WIDTH-30, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-SCREEN_TABBAR_HEIGHT) style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorStyle  = UITableViewCellSeparatorStyleNone;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    [contentView addSubview:self.tableView];
    [self.tableView registerClass:[DisCorveyTableViewCell class] forCellReuseIdentifier:@"DisCorveyTableViewCell"];
    
    self.cuurentpage = @"1";
    self.data = [NSMutableArray array];
    [self setupRefresh];
    
    [self.view addSubview:self.defView];
    
    [self.view addSubview:self.loadingView];
    [self.view bringSubviewToFront:self.loadingView];
    
}


- (void)setupRefresh {
    // 添加下拉刷新
    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
    header.stateLabel.hidden = YES;
    header.lastUpdatedTimeLabel.hidden = YES;  // 隐藏时间
//    [header setTitle:@"Pull down refresh..." forState:MJRefreshStateIdle];
//    [header setTitle:@"refresh..." forState:MJRefreshStateRefreshing];
//    [header.stateLabel setTextColor:[UIColor colorWithWhite:0 alpha:1]];
    self.tableView.mj_header = header;
    
    // 添加上拉加载更多
    MJRefreshAutoNormalFooter *footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadMoreData)];
    footer.refreshingTitleHidden = YES;
    [footer setTitle:LangKey(@"pull_more") forState:MJRefreshStateIdle];
    
//        [footer setTitle:@"Pull up to load more..." forState:MJRefreshStateIdle];
//        [footer setTitle:@"Loading..." forState:MJRefreshStateRefreshing];
//        [footer setTitle:@"No more data" forState:MJRefreshStateNoMoreData];
//    [footer.stateLabel setTextColor:[UIColor colorWithWhite:0 alpha:1]];
    self.tableView.mj_footer = footer;
    
}

- (void)loadData {
    // 模拟网络请求延迟
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        // 清空数据并重新加载
        [self.data removeAllObjects];
        
        self.cuurentpage = @"1";
        [self requestfriendShareList]; // 重新加载初始数据
        [self.tableView.mj_header endRefreshing]; // 结束下拉刷新
    });
}

- (void)loadMoreData
{
    // 模拟网络请求延迟
       dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
           
//           NSInteger currentCount = self.data.count;
//           if (currentCount < self.totalcount.intValue) {
             
               self.cuurentpage = [NSString stringWithFormat:@"%d",self.cuurentpage.intValue+1];
               [self requestfriendShareList];
               
//           } else {
//               [self.tableView.mj_footer endRefreshingWithNoMoreData]; // 显示没有更多数据
//           }
           
           [self.tableView.mj_footer endRefreshing];  //结束上拉加载
       });
}

- (void)requestfriendShareList
{
    self.loadingView.hidden = NO;
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:self.cuurentpage forKey:@"start"];
    @weakify(self)
    [ZCHttpManager getWithUrl:Server_friend_shareList params:dict isShow:NO success:^(id responseObject) {
        @strongify(self)
//        [SVProgressHUD dismiss];
        self.loadingView.hidden = YES;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        NSArray *dicList = [resultDict valueObjectForKey:@"data"];
        if (code.integerValue == 0) {
//            [self.data removeAllObjects];
            NSMutableArray *lists = [NSMutableArray array];
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
                    [lists addObject:modelItem];
                }
                
            }
            
            [self.data addObjectsFromArray:lists];
            
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
//        [SVProgressHUD dismiss];
        self.loadingView.hidden = YES;
        [self.tableView reloadData];
    }];
}


-(void)gotoUploadPic
{
    DisCorveyPublishViewController *vc = [[DisCorveyPublishViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
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
    
    disCorveyListModel *dic = self.data[indexPath.section];
    [cell refreshDateModel:dic isMyLog:NO];

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
    [ZCHttpManager getWithUrl:Server_sharePraise params:dict isShow:NO success:^(id responseObject) {
        @strongify(self)
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue == 0) {
           
            
        }
    } failed:^(id responseObject, NSError *error) {
       
    }];
}

- (void)handleTheBlock:(NSString *)userID
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:userID forKey:@"fid"];
    @weakify(self)
    [ZCHttpManager getWithUrl:Server_friend_addBlock params:dict isShow:NO success:^(id responseObject) {
        @strongify(self)
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        if (code.integerValue == 0) {
            
           [self loadData];
        }
    } failed:^(id responseObject, NSError *error) {
        
    }];
}

- (void)didTouchMoreButton:(UIButton*)sender modle:(disCorveyListModel *)model
{
    NSArray *dateList = [NSArray array];
    if ([model.user_id isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
        dateList = @[
            @{@"name":LangKey(@"report_activity_title"),@"image":@"covery_report"}
        ];
    }else{
        dateList = @[
            @{@"name":LangKey(@"report_activity_title"),@"image":@"covery_report"},
           @{@"name":LangKey(@"Block"),@"image":@"covery_block"},
        ];
    }
    Dialog()
        .wTypeSet(DialogTypePop)
    //    .wDirectionSet(directionright)
        .wTapViewTypeSet(DiaPopInViewTableView)
        .wEventFinishSet(^(id anyID, NSIndexPath *path, DialogType type) {
            NSLog(@"%@,anyID %@",anyID,path);
            if (path.row == 0) {
                self.selectedFsId = model.fsId;
                [self.view addSubview:self.translateView];
                [self.translateView animationShow];
            }else if (path.row == 1){
                [self handleTheBlock:model.user_id];
            }
            
        })
    .wShowAnimationSet(AninatonZoomIn)
    .wHideAnimationSet(AninatonZoomOut)
    .wPercentOrginXSet(40)
    .wTapViewSet(sender)
    ///如果是自定义的tableView或者collectionView或scrollView
//    .wPopNestStopViewSet(@"GNTableView")
//    .wMainBackColorSet([UIColor redColor])
    .wPopViewRectCornerSet(DialogRectCornerAllCorners)
    .wDataSet(dateList)
    .wImageSizeSet(CGSizeMake(20, 20))
    .wWidthSet(150)
    .wStart();
}

- (ZMONTranslateView *)translateView
                         {
                             if(!_translateView){
                                 _translateView = [[ZMONTranslateView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
                                 _translateView.delegate = self;
                             }
                             return  _translateView;
                         }

- (void)didTouchSubmitContentButton:(NSString *)reason
{
    NSMutableDictionary *dict = @{}.mutableCopy;
        dict[@"fsid"] = self.selectedFsId;
    [ZCHttpManager postWithUrl:Server_friend_addComplaint params:dict isShow:NO success:^(id responseObject) {
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *msg = [resultDict newStringValueForKey:@"msg"];
        if (code.integerValue == 0) {
            [self.view makeToast:LangKey(@"report_sucessed") duration:2.0 position:CSToastPositionCenter];
        }
    } failed:^(id responseObject, NSError *error) {
        
    }];
    
}

- (UIView *)defView{
    if(!_defView){
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT+50, SCREEN_WIDTH, 200)];
        _defView.hidden = YES;
        
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

- (ZMONCustomLoadingView *)loadingView
{
    if(!_loadingView){
        _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        _loadingView.hidden = YES;
    }
    return  _loadingView;
}

@end
