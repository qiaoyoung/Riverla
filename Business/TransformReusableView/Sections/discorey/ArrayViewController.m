
#import <Foundation/Foundation.h>

NSString *StringFromBlockData(Byte *data);


//: code
Byte kStr_pinKeyImageTitle[] = {16, 4, 82, 7, 24, 215, 135, 181, 193, 182, 183, 24};


//: fsid
Byte kStr_disableBlueName[] = {52, 4, 9, 9, 203, 241, 49, 39, 241, 111, 124, 114, 109, 75};


//: ic_unlike
Byte kStr_onPinViewData[] = {20, 9, 33, 8, 125, 244, 68, 143, 138, 132, 128, 150, 143, 141, 138, 140, 134, 51};


//: /friend/addComplaint
Byte kStr_infoName[] = {91, 20, 27, 7, 232, 31, 207, 74, 129, 141, 132, 128, 137, 127, 74, 124, 127, 127, 94, 138, 136, 139, 135, 124, 132, 137, 143, 15};


//: covery_detail_bg
Byte kStr_enableMessageData[] = {48, 16, 30, 6, 119, 24, 129, 141, 148, 131, 144, 151, 125, 130, 131, 146, 127, 135, 138, 125, 128, 133, 246};


//: /friend/sharePraise
Byte kStr_contentRowName[] = {26, 19, 35, 14, 125, 236, 140, 155, 245, 68, 4, 245, 21, 119, 82, 137, 149, 140, 136, 145, 135, 82, 150, 139, 132, 149, 136, 115, 149, 132, 140, 150, 136, 239};


//: report_sucessed
Byte kStr_recordWithShowData[] = {80, 15, 29, 11, 127, 47, 149, 198, 54, 164, 52, 143, 130, 141, 140, 143, 145, 124, 144, 146, 128, 130, 144, 144, 130, 129, 178};


//: head_default
Byte kStr_titleStatusViewData[] = {32, 12, 58, 8, 70, 176, 100, 3, 162, 159, 155, 158, 153, 158, 159, 160, 155, 175, 166, 174, 69};


//: icon_close_g
Byte kStr_imageBuildValue[] = {83, 12, 49, 7, 207, 104, 62, 154, 148, 160, 159, 144, 148, 157, 160, 164, 150, 144, 152, 140};


//: ic_report_g
Byte kStr_pathHandleTitle[] = {15, 11, 38, 4, 143, 137, 133, 152, 139, 150, 149, 152, 154, 133, 141, 116};


//: ic_like
Byte kStr_blueData[] = {66, 7, 53, 7, 117, 212, 67, 158, 152, 148, 161, 158, 160, 154, 223};


//: #333333
Byte kStr_showRemoteImageName[] = {54, 7, 5, 5, 170, 40, 56, 56, 56, 56, 56, 56, 213};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArrayViewController.m
//  Riverla
//
//  Created by mac on 2025/4/1.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisCorveyDetailViewController.h"
#import "ArrayViewController.h"
//: #import "SDCycleScrollView.h"
#import "PhaseAngleView.h"
//: #import "ZMONTranslateView.h"
#import "TranslateView.h"
//: #import "NTESSessionMsgConverter.h"
#import "ActionConverter.h"
//: #import "ZOMNForwardViewController.h"
#import "FogViewController.h"
//: #import "FFFMessageMaker.h"
#import "ThreadMaker.h"

//: @interface DisCorveyDetailViewController ()<SDCycleScrollViewDelegate,NTESReportContentDelegate>
@interface ArrayViewController ()<TransformDoing,AtTitleDelegate>

//: @property (strong, nonatomic) UIView *viewBanner;
@property (strong, nonatomic) UIView *viewBanner;
//: @property (strong, nonatomic) SDCycleScrollView *bannersView;
@property (strong, nonatomic) PhaseAngleView *bannersView;
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
@property (nonatomic, strong) TranslateView *translateView;

//: @end
@end

//: @implementation DisCorveyDetailViewController
@implementation ArrayViewController

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
    [self.avater sd_setImageWithURL:[NSURL URLWithString:self.modelInfo.headsmall] placeholderImage:[UIImage imageNamed:StringFromBlockData(kStr_titleStatusViewData)]];
    //: self.labName.text = self.modelInfo.nickname;
    self.labName.text = self.modelInfo.nickname;
    //: self.btnLike.selected = self.modelInfo.ispraise.intValue == 1 ?YES :NO;
    self.btnLike.selected = self.modelInfo.ispraise.intValue == 1 ?YES :NO;
}

//: - (void)onTouchLikeButton:(UIButton *)sendre
- (void)childs:(UIButton *)sendre
{
    //: sendre.selected = !sendre.selected;
    sendre.selected = !sendre.selected;
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: [dict setObject:self.modelInfo.fsId forKey:@"fsid"];
    [dict setObject:self.modelInfo.fsId forKey:StringFromBlockData(kStr_disableBlueName)];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/friend/sharePraise"] params:dict isShow:NO success:^(id responseObject) {
    [PhotoManager towardExtra:[NSString stringWithFormat:StringFromBlockData(kStr_contentRowName)] tool:dict examine:NO titleResponseSuccess:^(id responseObject) {
//        @strongify(self)
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSString *code = [resultDict newStringValueForKey:@"code"];
//        if (code.integerValue == 0) {
//
//
//        }
    //: } failed:^(id responseObject, NSError *error) {
    } exhibitClick:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)backAction{
- (void)messageLeft{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)loadImageFromURL:(NSString *)urlString completion:(void (^)(UIImage *image))completion {
- (void)doingSuccess:(NSString *)urlString plunderedCompletion:(void (^)(UIImage *image))completion {
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
- (void)parentHolder
{
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [self loadImageFromURL:self.modelInfo.pictureArray.firstObject completion:^(UIImage *image) {
    [self doingSuccess:self.modelInfo.pictureArray.firstObject plunderedCompletion:^(UIImage *image) {
        //: if (image) {
        if (image) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: NIMMessage *message = [FFFMessageMaker msgWithImage:image];
            NIMMessage *message = [ThreadMaker tool:image];
            //: NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
            NSMutableDictionary *dic = [[ButtonConfig inputConfig] Gdic];
            //: NSData *imageData = UIImagePNGRepresentation(image);
            NSData *imageData = UIImagePNGRepresentation(image);
        //: [dic setObject:imageData forKey:message.messageId];
        [dic setObject:imageData forKey:message.messageId];

                        //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
                        FogViewController *vc = [[FogViewController alloc]init];
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
- (void)powerPraise
{
    //: [self.view addSubview:self.translateView];
    [self.view addSubview:self.translateView];
    //: [self.translateView animationShow];
    [self.translateView along];
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
- (PhaseAngleView *)bannersView
{
    //: if (!_bannersView) {
    if (!_bannersView) {
        //: _bannersView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) delegate:self placeholderImage:[UIImage imageNamed:@"covery_detail_bg"]];
        _bannersView = [PhaseAngleView on:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) container:self info:[UIImage imageNamed:StringFromBlockData(kStr_enableMessageData)]];
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
        _viewTop = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice clear]))];
//        _viewTop.backgroundColor = RGB_COLOR_String(@"#000000");
//        _viewTop.alpha = 0.4;

        //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 32, 32);
        closeBtn.frame = CGRectMake(15, 4+[UIDevice clear], 32, 32);
        //: closeBtn.backgroundColor = [UIColor clearColor];
        closeBtn.backgroundColor = [UIColor clearColor];
        //: [closeBtn setImage:[UIImage imageNamed:@"icon_close_g"] forState:(UIControlStateNormal)];
        [closeBtn setImage:[UIImage imageNamed:StringFromBlockData(kStr_imageBuildValue)] forState:(UIControlStateNormal)];
        //: [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        [closeBtn addTarget:self action:@selector(messageLeft) forControlEvents:UIControlEventTouchUpInside];
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
        reportBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32, 4+[UIDevice clear], 32, 32);
        //: reportBtn.backgroundColor = [UIColor clearColor];
        reportBtn.backgroundColor = [UIColor clearColor];
        //: [reportBtn setImage:[UIImage imageNamed:@"ic_report_g"] forState:(UIControlStateNormal)];
        [reportBtn setImage:[UIImage imageNamed:StringFromBlockData(kStr_pathHandleTitle)] forState:(UIControlStateNormal)];
        //: [reportBtn addTarget:self action:@selector(reportAction) forControlEvents:UIControlEventTouchUpInside];
        [reportBtn addTarget:self action:@selector(powerPraise) forControlEvents:UIControlEventTouchUpInside];
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
        self.avater.image = [UIImage imageNamed:StringFromBlockData(kStr_titleStatusViewData)];
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
        self.labName.textColor = [UIColor withMax:StringFromBlockData(kStr_showRemoteImageName)];
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
        [self.btnLike addTarget:self action:@selector(childs:) forControlEvents:UIControlEventTouchUpInside];
        //: [self.btnLike setImage:[UIImage imageNamed:@"ic_unlike"] forState:UIControlStateNormal];
        [self.btnLike setImage:[UIImage imageNamed:StringFromBlockData(kStr_onPinViewData)] forState:UIControlStateNormal];
        //: [self.btnLike setImage:[UIImage imageNamed:@"ic_like"] forState:UIControlStateSelected];
        [self.btnLike setImage:[UIImage imageNamed:StringFromBlockData(kStr_blueData)] forState:UIControlStateSelected];
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
- (TranslateView *)translateView
{
    //: if(!_translateView){
    if(!_translateView){
        //: _translateView = [[ZMONTranslateView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _translateView = [[TranslateView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _translateView.delegate = self;
        _translateView.delegate = self;
    }
    //: return _translateView;
    return _translateView;
}

//: - (void)didTouchSubmitContentButton:(NSString *)reason
- (void)barAccount:(NSString *)reason
{
//: NSMutableDictionary *dict = @{}.mutableCopy;
NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"fsid"] = self.modelInfo.fsId;
    dict[StringFromBlockData(kStr_disableBlueName)] = self.modelInfo.fsId;
    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/friend/addComplaint"] params:dict isShow:YES success:^(id responseObject) {
    [PhotoManager militaryInstallationMenuMedia:[NSString stringWithFormat:StringFromBlockData(kStr_infoName)] event:dict current:YES titleFailed:^(id responseObject) {
    //: NSDictionary *resultDict = (NSDictionary *)responseObject;
    NSDictionary *resultDict = (NSDictionary *)responseObject;
    //: NSString *code = [resultDict newStringValueForKey:@"code"];
    NSString *code = [resultDict with:StringFromBlockData(kStr_pinKeyImageTitle)];
    //: if (code.integerValue == 0) {
    if (code.integerValue == 0) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"report_sucessed"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[ItemManager sessionInformation:StringFromBlockData(kStr_recordWithShowData)] duration:2.0 position:CSToastPositionCenter];
    }
//: } failed:^(id responseObject, NSError *error) {
} checked:^(id responseObject, NSError *error) {

//: }];
}];

}


//: @end
@end

Byte * BlockDataToCache(Byte *data) {
    int cell = data[0];
    int withTitle = data[1];
    Byte textShow = data[2];
    int recordingRemoteBlueMessage = data[3];
    if (!cell) return data + recordingRemoteBlueMessage;
    for (int i = recordingRemoteBlueMessage; i < recordingRemoteBlueMessage + withTitle; i++) {
        int value = data[i] - textShow;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[recordingRemoteBlueMessage + withTitle] = 0;
    return data + recordingRemoteBlueMessage;
}

NSString *StringFromBlockData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BlockDataToCache(data)];
}
