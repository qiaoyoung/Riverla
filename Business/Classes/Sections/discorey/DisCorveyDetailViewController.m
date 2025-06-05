//
//  DisCorveyDetailViewController.m
//  Riverla
//
//  Created by mac on 2025/4/1.
//  Copyright © 2025 Riverla. All rights reserved.
//

#import "DisCorveyDetailViewController.h"
#import "SDCycleScrollView.h"
#import "ZMONTranslateView.h"
#import "NTESSessionMsgConverter.h"
#import "ZOMNForwardViewController.h"
#import "FFFMessageMaker.h"

@interface DisCorveyDetailViewController ()<SDCycleScrollViewDelegate,NTESReportContentDelegate>

@property (strong, nonatomic) UIView *viewBanner;
@property (strong, nonatomic) SDCycleScrollView *bannersView;
@property (strong, nonatomic) UIView *viewTop;

@property (strong, nonatomic) UIView *viewBottom;
@property (nonatomic,strong) UIImageView *avater;
@property (nonatomic,strong) UILabel *labName;
//@property (nonatomic,strong) UIImageView *sex;
@property (nonatomic,strong) UIButton *btnLike;

@property (nonatomic, strong) ZMONTranslateView *translateView;

@end

@implementation DisCorveyDetailViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.viewBanner];
    
    [self.view addSubview:self.viewTop];
    [self.view addSubview:self.viewBottom];
    
    self.bannersView.imageURLStringsGroup = self.modelInfo.pictureArray;
    [self.avater sd_setImageWithURL:[NSURL URLWithString:self.modelInfo.headsmall] placeholderImage:[UIImage imageNamed:@"head_default"]];
    self.labName.text = self.modelInfo.nickname;
    self.btnLike.selected = self.modelInfo.ispraise.intValue == 1 ?YES :NO;
}

- (void)onTouchLikeButton:(UIButton *)sendre
{
    sendre.selected = !sendre.selected;
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:self.modelInfo.fsId forKey:@"fsid"];
    @weakify(self)
    [ZCHttpManager getWithUrl:Server_sharePraise params:dict isShow:NO success:^(id responseObject) {
//        @strongify(self)
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSString *code = [resultDict newStringValueForKey:@"code"];
//        if (code.integerValue == 0) {
//
//
//        }
    } failed:^(id responseObject, NSError *error) {
       
    }];
}

- (void)backAction{
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)loadImageFromURL:(NSString *)urlString completion:(void (^)(UIImage *image))completion {
    NSURL *url = [NSURL URLWithString:urlString];
    if (!url) {
        completion(nil);
        return;
    }
    
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error || !data) {
            completion(nil);
            return;
        }
        
        UIImage *image = [UIImage imageWithData:data];
        dispatch_async(dispatch_get_main_queue(), ^{
            completion(image);
        });
    }];
    
    [task resume];
}

- (void)shareAction
{
    [SVProgressHUD show];
    [self loadImageFromURL:self.modelInfo.pictureArray.firstObject completion:^(UIImage *image) {
        if (image) {
            [SVProgressHUD dismiss];
            NIMMessage *message = [FFFMessageMaker msgWithImage:image];
            NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
            NSData *imageData = UIImagePNGRepresentation(image);
        [dic setObject:imageData forKey:message.messageId];
            
                        ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
                        vc.isdisCorvey = YES;
                        vc.message = message;
                        [self.navigationController pushViewController:vc animated:YES];
        }
    }];
}
- (void)reportAction
{
    [self.view addSubview:self.translateView];
    [self.translateView animationShow];
}

#pragma mark -- Setter&Getter
- (UIView *)viewBanner
{
    if (!_viewBanner) {
        _viewBanner = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        _viewBanner.backgroundColor = [UIColor clearColor];
        [_viewBanner addSubview:self.bannersView];
    }
    return _viewBanner;
}
- (SDCycleScrollView *)bannersView
{
    if (!_bannersView) {
        _bannersView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) delegate:self placeholderImage:[UIImage imageNamed:@"covery_detail_bg"]];
        _bannersView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
        _bannersView.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
//        _bannersView.pageDotColor = RGBA(0,0,0,0.3);
//        _bannersView.currentPageDotColor = RGBA(255,255,255,0.8);
        _bannersView.backgroundColor = [UIColor blackColor];
        
//        _bannersView.currentPageDotImage = [UIImage imageNamed:@"banner_icon_curtent"];
//        _bannersView.pageDotImage = [UIImage imageNamed:@"banner_icon_b"];
        
        _bannersView.autoScroll = NO;
//        _bannersView.layer.masksToBounds = YES;
//        _bannersView.layer.cornerRadius = 5;
    }
    return _bannersView;
}

- (UIView *)viewTop
{
    if (!_viewTop) {
        _viewTop = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_TOP_HEIGHT)];
//        _viewTop.backgroundColor = RGB_COLOR_String(@"#000000");
//        _viewTop.alpha = 0.4;
        
        UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        closeBtn.frame = CGRectMake(15, 4+SCREEN_STATUS_HEIGHT, 32, 32);
        closeBtn.backgroundColor = [UIColor clearColor];
        [closeBtn setImage:[UIImage imageNamed:@"icon_close_g"] forState:(UIControlStateNormal)];
        [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        [_viewTop addSubview:closeBtn];
        
//        UIButton *shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        shareBtn.frame = CGRectMake(SCREEN_WIDTH-15-32-32-15, 4+SCREEN_STATUS_HEIGHT, 32, 32);
//        shareBtn.backgroundColor = [UIColor clearColor];
//        [shareBtn setImage:[UIImage imageNamed:@"ic_share_g"] forState:(UIControlStateNormal)];
//        [shareBtn addTarget:self action:@selector(shareAction) forControlEvents:UIControlEventTouchUpInside];
//        [_viewTop addSubview:shareBtn];
        
        UIButton *reportBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        reportBtn.frame = CGRectMake(SCREEN_WIDTH-15-32, 4+SCREEN_STATUS_HEIGHT, 32, 32);
        reportBtn.backgroundColor = [UIColor clearColor];
        [reportBtn setImage:[UIImage imageNamed:@"ic_report_g"] forState:(UIControlStateNormal)];
        [reportBtn addTarget:self action:@selector(reportAction) forControlEvents:UIControlEventTouchUpInside];
        [_viewTop addSubview:reportBtn];
        
        
    }
    return _viewTop;
}

- (UIView *)viewBottom
{
    if (!_viewBottom) {
        _viewBottom = [[UIView alloc]initWithFrame:CGRectMake(15, SCREEN_HEIGHT-56-30, SCREEN_WIDTH-30, 56)];
        _viewBottom.backgroundColor = [UIColor whiteColor];
        _viewBottom.layer.cornerRadius = 28;
        _viewBottom.layer.masksToBounds = YES;
        
        self.avater = [[UIImageView alloc]init];
        self.avater.frame = CGRectMake(12, 12, 32, 32);
        self.avater.image = [UIImage imageNamed:@"head_default"];
        self.avater.layer.cornerRadius = 16;
        self.avater.layer.masksToBounds = YES;
        [_viewBottom addSubview:self.avater];
        
        self.labName = [[UILabel alloc] initWithFrame:CGRectMake(self.avater.right+5, 12, 200, 32)];
        self.labName.font = [UIFont boldSystemFontOfSize:16.f];
        self.labName.textColor = RGB_COLOR_String(@"#333333");
//        self.labName.text = @"hjkdshf";
        [_viewBottom addSubview:self.labName];
//        [self.labName sizeToFit];
//        self.labName.left = self.avater.right+5;
//        self.labName.centerY = self.avater.centerY;
        
//        self.sex = [[UIImageView alloc]init];
//        self.sex.frame = CGRectMake(self.labName.right+5, 21, 14, 14);
//        self.sex.image = [UIImage imageNamed:@"ic_sex_man"];
//        [_viewBottom addSubview:self.sex];
        
        self.btnLike = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btnLike.frame = CGRectMake(SCREEN_WIDTH-22-60, 17, 22, 22);
        [self.btnLike addTarget:self action:@selector(onTouchLikeButton:) forControlEvents:UIControlEventTouchUpInside];
        [self.btnLike setImage:[UIImage imageNamed:@"ic_unlike"] forState:UIControlStateNormal];
        [self.btnLike setImage:[UIImage imageNamed:@"ic_like"] forState:UIControlStateSelected];
//        self.btnLike.titleLabel.font   = [UIFont systemFontOfSize:12];
//        [self.btnLike setTitleColor:RGB_COLOR_String(@"#A3A3A3") forState:UIControlStateNormal];
//        [self.btnLike setTitle:@"30" forState:UIControlStateNormal];
//        [self.btnLike layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleRight) imageTitleSpace:10];
         [_viewBottom addSubview:self.btnLike];
        
    }
    return _viewBottom;
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
    dict[@"fsid"] = self.modelInfo.fsId;
    [ZCHttpManager postWithUrl:Server_friend_addComplaint params:dict isShow:YES success:^(id responseObject) {
    NSDictionary *resultDict = (NSDictionary *)responseObject;
    NSString *code = [resultDict newStringValueForKey:@"code"];
    if (code.integerValue == 0) {
        [self.view makeToast:LangKey(@"report_sucessed") duration:2.0 position:CSToastPositionCenter];
    }
} failed:^(id responseObject, NSError *error) {
    
}];

}


@end
