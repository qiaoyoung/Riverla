
#import <Foundation/Foundation.h>

NSString *StringFromBindData(Byte *data);        


//: covery_detail_bg
Byte kStr_plungeName[] = {37, 16, 20, 11, 162, 204, 27, 230, 108, 36, 178, 79, 91, 98, 81, 94, 101, 75, 80, 81, 96, 77, 85, 88, 75, 78, 83, 16};


//: code
Byte kStr_weedTitle[] = {5, 4, 97, 9, 216, 173, 143, 232, 175, 2, 14, 3, 4, 169};


//: ic_unlike
Byte kStr_swingTitle[] = {15, 9, 81, 5, 182, 24, 18, 14, 36, 29, 27, 24, 26, 20, 113};


//: icon_close_g
Byte kStr_skullTitle[] = {92, 12, 59, 12, 37, 213, 46, 225, 241, 87, 92, 71, 46, 40, 52, 51, 36, 40, 49, 52, 56, 42, 36, 44, 196};


//: /friend/sharePraise
Byte kStr_cheekValue[] = {20, 19, 95, 13, 11, 62, 167, 205, 25, 61, 220, 145, 225, 208, 7, 19, 10, 6, 15, 5, 208, 20, 9, 2, 19, 6, 241, 19, 2, 10, 20, 6, 169};


//: report_sucessed
Byte kStr_bishopTitle[] = {41, 15, 82, 9, 1, 242, 11, 120, 69, 32, 19, 30, 29, 32, 34, 13, 33, 35, 17, 19, 33, 33, 19, 18, 198};


//: head_default
Byte kStr_nameKnifeAlleyValue[] = {72, 12, 10, 6, 132, 190, 94, 91, 87, 90, 85, 90, 91, 92, 87, 107, 98, 106, 145};


//: fsid
Byte kStr_warValue[] = {8, 4, 90, 7, 25, 219, 118, 12, 25, 15, 10, 107};


//: ic_report_g
Byte kStr_dependingData[] = {40, 11, 74, 10, 131, 49, 225, 30, 26, 224, 31, 25, 21, 40, 27, 38, 37, 40, 42, 21, 29, 225};


//: #333333
Byte kStr_shouldKeyData[] = {75, 7, 96, 8, 160, 59, 84, 182, 195, 211, 211, 211, 211, 211, 211, 234};


//: ic_like
Byte kStr_brandLinkName[] = {69, 7, 51, 4, 54, 48, 44, 57, 54, 56, 50, 245};


//: /friend/addComplaint
Byte kStr_dominateValue[] = {35, 20, 66, 5, 184, 237, 36, 48, 39, 35, 44, 34, 237, 31, 34, 34, 1, 45, 43, 46, 42, 31, 39, 44, 50, 147};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PictureViewController.m
//  Riverla
//
//  Created by mac on 2025/4/1.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisCorveyDetailViewController.h"
#import "PictureViewController.h"
//: #import "SDCycleScrollView.h"
#import "ByView.h"
//: #import "ZMONTranslateView.h"
#import "ExhibitView.h"
//: #import "NTESSessionMsgConverter.h"
#import "InputConverter.h"
//: #import "ZOMNForwardViewController.h"
#import "BlueViewController.h"
//: #import "FFFMessageMaker.h"
#import "ElectronicImageLength.h"

//: @interface DisCorveyDetailViewController ()<SDCycleScrollViewDelegate,NTESReportContentDelegate>
@interface PictureViewController ()<ImageInputMargin,MessageRecentAction>

//: @property (strong, nonatomic) UIView *viewBanner;
@property (strong, nonatomic) UIView *viewBanner;
//: @property (strong, nonatomic) SDCycleScrollView *bannersView;
@property (strong, nonatomic) ByView *bannersView;
//: @property (strong, nonatomic) UIView *viewTop;
@property (strong, nonatomic) UIView *viewTop;

//: @property (strong, nonatomic) UIView *viewBottom;
@property (strong, nonatomic) UIView *viewBottom;
//: @property (nonatomic,strong) UIImageView *avater;
@property (nonatomic,strong) UIImageView *avater;
//: @property (nonatomic,strong) UILabel *labName;
@property (nonatomic,strong) UILabel *labName;
//@property (nonatomic,strong) UIImageView *sex;
//: @property (nonatomic,strong) UIButton *btnLike;
@property (nonatomic,strong) UIButton *btnLike;

//: @property (nonatomic, strong) ZMONTranslateView *translateView;
@property (nonatomic, strong) ExhibitView *translateView;

//: @end
@end

//: @implementation DisCorveyDetailViewController
@implementation PictureViewController

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

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self.view addSubview:self.viewBanner];
    [self.view addSubview:self.viewBanner];

    //: [self.view addSubview:self.viewTop];
    [self.view addSubview:self.viewTop];
    //: [self.view addSubview:self.viewBottom];
    [self.view addSubview:self.viewBottom];

    //: self.bannersView.imageURLStringsGroup = self.modelInfo.pictureArray;
    self.bannersView.imageURLStringsGroup = self.modelInfo.pictureArray;
    //: [self.avater sd_setImageWithURL:[NSURL URLWithString:self.modelInfo.headsmall] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.avater sd_setImageWithURL:[NSURL URLWithString:self.modelInfo.headsmall] placeholderImage:[UIImage imageNamed:StringFromBindData(kStr_nameKnifeAlleyValue)]];
    //: self.labName.text = self.modelInfo.nickname;
    self.labName.text = self.modelInfo.nickname;
    //: self.btnLike.selected = self.modelInfo.ispraise.intValue == 1 ?YES :NO;
    self.btnLike.selected = self.modelInfo.ispraise.intValue == 1 ?YES :NO;
}

//: - (void)onTouchLikeButton:(UIButton *)sendre
- (void)teamWith:(UIButton *)sendre
{
    //: sendre.selected = !sendre.selected;
    sendre.selected = !sendre.selected;
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: [dict setObject:self.modelInfo.fsId forKey:@"fsid"];
    [dict setObject:self.modelInfo.fsId forKey:StringFromBindData(kStr_warValue)];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/friend/sharePraise"] params:dict isShow:NO success:^(id responseObject) {
    [InfoManager enable:[NSString stringWithFormat:StringFromBindData(kStr_cheekValue)] sub:dict record:NO tapGetFailed:^(id responseObject) {
//        @strongify(self)
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSString *code = [resultDict newStringValueForKey:@"code"];
//        if (code.integerValue == 0) {
//
//
//        }
    //: } failed:^(id responseObject, NSError *error) {
    } failedSmartOccurrentSelectShowGet:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)backAction{
- (void)messageView{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)loadImageFromURL:(NSString *)urlString completion:(void (^)(UIImage *image))completion {
- (void)messageColorCompletion:(NSString *)urlString be:(void (^)(UIImage *image))completion {
    //: NSURL *url = [NSURL URLWithString:urlString];
    NSURL *url = [NSURL URLWithString:urlString];
    //: if (!url) {
    if (!url) {
        //: completion(nil);
        completion(nil);
        //: return;
        return;
    }

    //: NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        //: if (error || !data) {
        if (error || !data) {
            //: completion(nil);
            completion(nil);
            //: return;
            return;
        }

        //: UIImage *image = [UIImage imageWithData:data];
        UIImage *image = [UIImage imageWithData:data];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: completion(image);
            completion(image);
        //: });
        });
    //: }];
    }];

    //: [task resume];
    [task resume];
}

//: - (void)shareAction
- (void)from
{
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [self loadImageFromURL:self.modelInfo.pictureArray.firstObject completion:^(UIImage *image) {
    [self messageColorCompletion:self.modelInfo.pictureArray.firstObject be:^(UIImage *image) {
        //: if (image) {
        if (image) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: NIMMessage *message = [FFFMessageMaker msgWithImage:image];
            NIMMessage *message = [ElectronicImageLength ofGreen:image];
            //: NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
            NSMutableDictionary *dic = [[BirdSEyeViewConfig titleMessage] Gdic];
            //: NSData *imageData = UIImagePNGRepresentation(image);
            NSData *imageData = UIImagePNGRepresentation(image);
        //: [dic setObject:imageData forKey:message.messageId];
        [dic setObject:imageData forKey:message.messageId];

                        //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
                        BlueViewController *vc = [[BlueViewController alloc]init];
                        //: vc.isdisCorvey = YES;
                        vc.isdisCorvey = YES;
                        //: vc.message = message;
                        vc.message = message;
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];
        }
    //: }];
    }];
}
//: - (void)reportAction
- (void)tipLight
{
    //: [self.view addSubview:self.translateView];
    [self.view addSubview:self.translateView];
    //: [self.translateView animationShow];
    [self.translateView on];
}

//: #pragma mark -- Setter&Getter
#pragma mark -- Setter&Getter
//: - (UIView *)viewBanner
- (UIView *)viewBanner
{
    //: if (!_viewBanner) {
    if (!_viewBanner) {
        //: _viewBanner = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _viewBanner = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _viewBanner.backgroundColor = [UIColor clearColor];
        _viewBanner.backgroundColor = [UIColor clearColor];
        //: [_viewBanner addSubview:self.bannersView];
        [_viewBanner addSubview:self.bannersView];
    }
    //: return _viewBanner;
    return _viewBanner;
}
//: - (SDCycleScrollView *)bannersView
- (ByView *)bannersView
{
    //: if (!_bannersView) {
    if (!_bannersView) {
        //: _bannersView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) delegate:self placeholderImage:[UIImage imageNamed:@"covery_detail_bg"]];
        _bannersView = [ByView array:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) custom:self packet:[UIImage imageNamed:StringFromBindData(kStr_plungeName)]];
        //: _bannersView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
        _bannersView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
        //: _bannersView.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
        _bannersView.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
//        _bannersView.pageDotColor = RGBA(0,0,0,0.3);
//        _bannersView.currentPageDotColor = RGBA(255,255,255,0.8);
        //: _bannersView.backgroundColor = [UIColor blackColor];
        _bannersView.backgroundColor = [UIColor blackColor];

//        _bannersView.currentPageDotImage = [UIImage imageNamed:@"banner_icon_curtent"];
//        _bannersView.pageDotImage = [UIImage imageNamed:@"banner_icon_b"];

        //: _bannersView.autoScroll = NO;
        _bannersView.autoScroll = NO;
//        _bannersView.layer.masksToBounds = YES;
//        _bannersView.layer.cornerRadius = 5;
    }
    //: return _bannersView;
    return _bannersView;
}

//: - (UIView *)viewTop
- (UIView *)viewTop
{
    //: if (!_viewTop) {
    if (!_viewTop) {
        //: _viewTop = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
        _viewTop = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice table]))];
//        _viewTop.backgroundColor = RGB_COLOR_String(@"#000000");
//        _viewTop.alpha = 0.4;

        //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 32, 32);
        closeBtn.frame = CGRectMake(15, 4+[UIDevice table], 32, 32);
        //: closeBtn.backgroundColor = [UIColor clearColor];
        closeBtn.backgroundColor = [UIColor clearColor];
        //: [closeBtn setImage:[UIImage imageNamed:@"icon_close_g"] forState:(UIControlStateNormal)];
        [closeBtn setImage:[UIImage imageNamed:StringFromBindData(kStr_skullTitle)] forState:(UIControlStateNormal)];
        //: [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        [closeBtn addTarget:self action:@selector(messageView) forControlEvents:UIControlEventTouchUpInside];
        //: [_viewTop addSubview:closeBtn];
        [_viewTop addSubview:closeBtn];

//        UIButton *shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        shareBtn.frame = CGRectMake(SCREEN_WIDTH-15-32-32-15, 4+SCREEN_STATUS_HEIGHT, 32, 32);
//        shareBtn.backgroundColor = [UIColor clearColor];
//        [shareBtn setImage:[UIImage imageNamed:@"ic_share_g"] forState:(UIControlStateNormal)];
//        [shareBtn addTarget:self action:@selector(shareAction) forControlEvents:UIControlEventTouchUpInside];
//        [_viewTop addSubview:shareBtn];

        //: UIButton *reportBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *reportBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: reportBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32, 4+[UIDevice vg_statusBarHeight], 32, 32);
        reportBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32, 4+[UIDevice table], 32, 32);
        //: reportBtn.backgroundColor = [UIColor clearColor];
        reportBtn.backgroundColor = [UIColor clearColor];
        //: [reportBtn setImage:[UIImage imageNamed:@"ic_report_g"] forState:(UIControlStateNormal)];
        [reportBtn setImage:[UIImage imageNamed:StringFromBindData(kStr_dependingData)] forState:(UIControlStateNormal)];
        //: [reportBtn addTarget:self action:@selector(reportAction) forControlEvents:UIControlEventTouchUpInside];
        [reportBtn addTarget:self action:@selector(tipLight) forControlEvents:UIControlEventTouchUpInside];
        //: [_viewTop addSubview:reportBtn];
        [_viewTop addSubview:reportBtn];


    }
    //: return _viewTop;
    return _viewTop;
}

//: - (UIView *)viewBottom
- (UIView *)viewBottom
{
    //: if (!_viewBottom) {
    if (!_viewBottom) {
        //: _viewBottom = [[UIView alloc]initWithFrame:CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-56-30, [[UIScreen mainScreen] bounds].size.width-30, 56)];
        _viewBottom = [[UIView alloc]initWithFrame:CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-56-30, [[UIScreen mainScreen] bounds].size.width-30, 56)];
        //: _viewBottom.backgroundColor = [UIColor whiteColor];
        _viewBottom.backgroundColor = [UIColor whiteColor];
        //: _viewBottom.layer.cornerRadius = 28;
        _viewBottom.layer.cornerRadius = 28;
        //: _viewBottom.layer.masksToBounds = YES;
        _viewBottom.layer.masksToBounds = YES;

        //: self.avater = [[UIImageView alloc]init];
        self.avater = [[UIImageView alloc]init];
        //: self.avater.frame = CGRectMake(12, 12, 32, 32);
        self.avater.frame = CGRectMake(12, 12, 32, 32);
        //: self.avater.image = [UIImage imageNamed:@"head_default"];
        self.avater.image = [UIImage imageNamed:StringFromBindData(kStr_nameKnifeAlleyValue)];
        //: self.avater.layer.cornerRadius = 16;
        self.avater.layer.cornerRadius = 16;
        //: self.avater.layer.masksToBounds = YES;
        self.avater.layer.masksToBounds = YES;
        //: [_viewBottom addSubview:self.avater];
        [_viewBottom addSubview:self.avater];

        //: self.labName = [[UILabel alloc] initWithFrame:CGRectMake(self.avater.right+5, 12, 200, 32)];
        self.labName = [[UILabel alloc] initWithFrame:CGRectMake(self.avater.right+5, 12, 200, 32)];
        //: self.labName.font = [UIFont boldSystemFontOfSize:16.f];
        self.labName.font = [UIFont boldSystemFontOfSize:16.f];
        //: self.labName.textColor = [UIColor colorWithHexString:@"#333333"];
        self.labName.textColor = [UIColor isView:StringFromBindData(kStr_shouldKeyData)];
//        self.labName.text = @"hjkdshf";
        //: [_viewBottom addSubview:self.labName];
        [_viewBottom addSubview:self.labName];
//        [self.labName sizeToFit];
//        self.labName.left = self.avater.right+5;
//        self.labName.centerY = self.avater.centerY;

//        self.sex = [[UIImageView alloc]init];
//        self.sex.frame = CGRectMake(self.labName.right+5, 21, 14, 14);
//        self.sex.image = [UIImage imageNamed:@"ic_sex_man"];
//        [_viewBottom addSubview:self.sex];

        //: self.btnLike = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btnLike = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.btnLike.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-22-60, 17, 22, 22);
        self.btnLike.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-22-60, 17, 22, 22);
        //: [self.btnLike addTarget:self action:@selector(onTouchLikeButton:) forControlEvents:UIControlEventTouchUpInside];
        [self.btnLike addTarget:self action:@selector(teamWith:) forControlEvents:UIControlEventTouchUpInside];
        //: [self.btnLike setImage:[UIImage imageNamed:@"ic_unlike"] forState:UIControlStateNormal];
        [self.btnLike setImage:[UIImage imageNamed:StringFromBindData(kStr_swingTitle)] forState:UIControlStateNormal];
        //: [self.btnLike setImage:[UIImage imageNamed:@"ic_like"] forState:UIControlStateSelected];
        [self.btnLike setImage:[UIImage imageNamed:StringFromBindData(kStr_brandLinkName)] forState:UIControlStateSelected];
//        self.btnLike.titleLabel.font   = [UIFont systemFontOfSize:12];
//        [self.btnLike setTitleColor:RGB_COLOR_String(@"#A3A3A3") forState:UIControlStateNormal];
//        [self.btnLike setTitle:@"30" forState:UIControlStateNormal];
//        [self.btnLike layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleRight) imageTitleSpace:10];
         //: [_viewBottom addSubview:self.btnLike];
         [_viewBottom addSubview:self.btnLike];

    }
    //: return _viewBottom;
    return _viewBottom;
}

//: - (ZMONTranslateView *)translateView
- (ExhibitView *)translateView
{
    //: if(!_translateView){
    if(!_translateView){
        //: _translateView = [[ZMONTranslateView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _translateView = [[ExhibitView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _translateView.delegate = self;
        _translateView.delegate = self;
    }
    //: return _translateView;
    return _translateView;
}

//: - (void)didTouchSubmitContentButton:(NSString *)reason
- (void)submitted:(NSString *)reason
{
//: NSMutableDictionary *dict = @{}.mutableCopy;
NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"fsid"] = self.modelInfo.fsId;
    dict[StringFromBindData(kStr_warValue)] = self.modelInfo.fsId;
    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/friend/addComplaint"] params:dict isShow:YES success:^(id responseObject) {
    [InfoManager should:[NSString stringWithFormat:StringFromBindData(kStr_dominateValue)] after:dict dataDisable:YES displayDatePress:^(id responseObject) {
    //: NSDictionary *resultDict = (NSDictionary *)responseObject;
    NSDictionary *resultDict = (NSDictionary *)responseObject;
    //: NSString *code = [resultDict newStringValueForKey:@"code"];
    NSString *code = [resultDict speedy:StringFromBindData(kStr_weedTitle)];
    //: if (code.integerValue == 0) {
    if (code.integerValue == 0) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"report_sucessed"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[TeamManager sizeKey:StringFromBindData(kStr_bishopTitle)] duration:2.0 position:CSToastPositionCenter];
    }
//: } failed:^(id responseObject, NSError *error) {
} textMessage:^(id responseObject, NSError *error) {

//: }];
}];

}


//: @end
@end

Byte * BindDataToCache(Byte *data) {
    int tone = data[0];
    int onTogether = data[1];
    Byte partFile = data[2];
    int dominate = data[3];
    if (!tone) return data + dominate;
    for (int i = dominate; i < dominate + onTogether; i++) {
        int value = data[i] + partFile;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[dominate + onTogether] = 0;
    return data + dominate;
}

NSString *StringFromBindData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BindDataToCache(data)];
}
