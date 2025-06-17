
#import <Foundation/Foundation.h>

NSString *StringFromMythologyData(Byte *data);        


//: jsCallOC
Byte kStr_explosionTriggerInfoValue[] = {49, 8, 73, 11, 22, 215, 248, 78, 158, 247, 18, 33, 42, 250, 24, 35, 35, 6, 250, 93};


//: type
Byte kStr_convertValue[] = {85, 4, 82, 8, 75, 57, 38, 114, 34, 39, 30, 19, 193};


//: #F6F7FA
Byte kStr_mortalityValue[] = {16, 7, 82, 10, 34, 30, 15, 143, 7, 255, 209, 244, 228, 244, 229, 244, 239, 231};


//: estimatedProgress
Byte kStr_shrinkValue[] = {58, 17, 59, 10, 93, 45, 158, 49, 211, 92, 42, 56, 57, 46, 50, 38, 57, 42, 41, 21, 55, 52, 44, 55, 42, 56, 56, 73};


//: PrivacyPolicy.html
Byte kStr_neitherText[] = {67, 18, 21, 10, 221, 2, 30, 120, 226, 231, 59, 93, 84, 97, 76, 78, 100, 59, 90, 87, 84, 78, 100, 25, 83, 95, 88, 87, 87};


//: back_arrow_bl
Byte kStr_integratedName[] = {13, 13, 2, 4, 96, 95, 97, 105, 93, 95, 112, 112, 109, 117, 93, 96, 106, 105};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONPolicyPrivacyViewController.h"
#import "NameViewController.h"
//: #import <WebKit/WebKit.h>
#import <WebKit/WebKit.h>
//: #import "FFFRegisterViewController.h"
#import "PhotoViewController.h"
//: #import "SSZipArchiveManager.h"
#import "ArchiveManager.h"

//: @interface ZMONPolicyPrivacyViewController ()<WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler> {
@interface NameViewController ()<WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler> {

}
//: @property (nonatomic,strong) WKWebView *webView;
@property (nonatomic,strong) WKWebView *webView;
//: @property (nonatomic, strong) UIProgressView *progressView;
@property (nonatomic, strong) UIProgressView *progressView;
//: @property (nonatomic,assign) NSInteger loginType;
@property (nonatomic,assign) NSInteger loginType;

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIButton *agreeBtn;
@property (nonatomic, strong) UIButton *agreeBtn;

//: @property (nonatomic, strong) UIView *transparentView;
@property (nonatomic, strong) UIView *transparentView;

//: @end
@end

//: @implementation ZMONPolicyPrivacyViewController
@implementation NameViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor withMax:StringFromMythologyData(kStr_mortalityValue)];
//        UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//        bg.image = [UIImage imageNamed:@"login_bg"];
//        [self.view addSubview:bg];
//    self.title = _webTitle;
//    [self showCustomBackButton];

    //: [self initUI];
    [self initFillIn];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:StringFromMythologyData(kStr_integratedName)] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(messageLeft) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 5+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 5+[UIDevice clear], 40, 40);

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice clear]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = self.webTitle;
    labtitle.text = self.webTitle;
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: [self reloadWebView];
    [self border];
}

//: - (void)backAction{
- (void)messageLeft{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)doAgree{
- (void)atImage{

    //: FFFRegisterViewController *vc = [[FFFRegisterViewController alloc]init];
    PhotoViewController *vc = [[PhotoViewController alloc]init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: -(void)viewWillAppear:(BOOL)animated{
-(void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)dealloc {
- (void)dealloc {
    //: [_webView removeObserver:self forKeyPath:@"estimatedProgress"];
    [_webView removeObserver:self forKeyPath:StringFromMythologyData(kStr_shrinkValue)];
}


//: #pragma mark - UI
#pragma mark - UI

//: - (void)initUI{
- (void)initFillIn{

//    self.transparentView = [[UIView alloc] initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT - SCREEN_TOP_HEIGHT)];
//       self.transparentView.backgroundColor = [UIColor clearColor];
//       [self.view addSubview:self.transparentView];

    //: WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    //: config.selectionGranularity = WKSelectionGranularityDynamic;
    config.selectionGranularity = WKSelectionGranularityDynamic;
    //: config.allowsPictureInPictureMediaPlayback = YES;
    config.allowsPictureInPictureMediaPlayback = YES;
    //: WKPreferences *preferences = [WKPreferences new];
    WKPreferences *preferences = [WKPreferences new];
    //是否支持JavaScript
    //: preferences.javaScriptEnabled = YES;
    preferences.javaScriptEnabled = YES;
    //不通过用户交互，是否可以打开窗口
    //: preferences.javaScriptCanOpenWindowsAutomatically = NO;
    preferences.javaScriptCanOpenWindowsAutomatically = NO;
    //: config.preferences = preferences;
    config.preferences = preferences;

    //: _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight])) configuration:config];
    _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice clear]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice clear])) configuration:config];
    //: _webView.backgroundColor = [UIColor clearColor];
    _webView.backgroundColor = [UIColor clearColor];
    //: _webView.scrollView.backgroundColor = [UIColor clearColor];
    _webView.scrollView.backgroundColor = [UIColor clearColor];
    //: _webView.opaque = NO;
    _webView.opaque = NO;
    //: [self.view addSubview:_webView];
    [self.view addSubview:_webView];
//    [self.transparentView addSubview:_webView];
    //: _webView.navigationDelegate = self;
    _webView.navigationDelegate = self;
    //: _webView.UIDelegate = self;
    _webView.UIDelegate = self;

    //: self.progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 2)];
    self.progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 2)];
    //: self.progressView.backgroundColor = [UIColor blueColor];
    self.progressView.backgroundColor = [UIColor blueColor];
    //设置进度条的高度，下面这句代码表示进度条的宽度变为原来的1倍，高度变为原来的1.5倍.
    //: self.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.5f);
    self.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.5f);
    //: [self.view addSubview:self.progressView];
    [self.view addSubview:self.progressView];
     //*3.添加KVO，WKWebView有一个属性estimatedProgress，就是当前网页加载的进度，所以监听这个属性。
    //: [_webView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
    [_webView addObserver:self forKeyPath:StringFromMythologyData(kStr_shrinkValue) options:NSKeyValueObservingOptionNew context:nil];


    //: [self jsConfig];
    [self headingReload];

}

//: - (void)reloadWebView{
- (void)border{
    //: if (_urlString && _urlString.length > 0) {
    if (_urlString && _urlString.length > 0) {
        //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:_urlString]];
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:_urlString]];
        //: [_webView loadRequest:request];
        [_webView loadRequest:request];
        //: return;
        return;
    }

//    }else{
//
//        NSURL * url = [NSURL fileURLWithPath:[[NSBundle mainBundle]bundlePath]];
//        NSString *htmlPath = [[NSBundle mainBundle] pathForResource:@"Privacy Agreement 20200602" ofType:@"html"];
//
//        NSString *html = [[NSString alloc] initWithContentsOfFile:htmlPath encoding:NSUTF8StringEncoding error:nil];
//        [_webView loadHTMLString:html baseURL:url];
//
//
//    }
    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"PrivacyPolicy.html"]];
    NSString *htmlFilePath = [[[ArchiveManager block] messageDevice] stringByAppendingPathComponent:[NSString stringWithFormat:StringFromMythologyData(kStr_neitherText)]];
    //: NSString *path = htmlFilePath;
    NSString *path = htmlFilePath;
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        //: path = [[NSBundle mainBundle] pathForResource:htmlFilePath ofType:nil];
        path = [[NSBundle mainBundle] pathForResource:htmlFilePath ofType:nil];
    }
    //: NSURL *url = [NSURL fileURLWithPath:path];
    NSURL *url = [NSURL fileURLWithPath:path];
    //: NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //: [_webView loadRequest:request];
    [_webView loadRequest:request];



}

//: #pragma mark - WKNavigationDelegate
#pragma mark - WKNavigationDelegate

/* 页面开始加载 */
//: - (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{

    //: self.progressView.hidden = NO;
    self.progressView.hidden = NO;
    //开始加载网页的时候将progressView的Height恢复为1.5倍
    //: self.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.5f);
    self.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.5f);
    //防止progressView被网页挡住
    //: [self.view bringSubviewToFront:self.progressView];
    [self.view bringSubviewToFront:self.progressView];


}

/* 开始返回内容 */
//: - (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{

}

/* 页面加载完成 */
//: - (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    //: self.progressView.hidden = YES;
    self.progressView.hidden = YES;


}

/* 页面加载失败 */
//: - (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation{
- (void)frame:(WKWebView *)webView findLength:(WKNavigation *)navigation{
    //: self.progressView.hidden = YES;
    self.progressView.hidden = YES;


}

/* 在发送请求之前，决定是否跳转 */
/** JS端
 window.location = 'app://login?account=13011112222&password=123456';
 <a href="javascript:window.javatojs.backtoapp('1','1')">到详细页</a>"
*/
//: - (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {


    //允许跳转
    //: decisionHandler(WKNavigationActionPolicyAllow);
    decisionHandler(WKNavigationActionPolicyAllow);
}




/* 在收到响应后，决定是否跳转 */
//: - (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{

    //: NSLog(@"%@",navigationResponse.response.URL.absoluteString);
    //允许跳转
    //: decisionHandler(WKNavigationResponsePolicyAllow);
    decisionHandler(WKNavigationResponsePolicyAllow);
    //不允许跳转
    //decisionHandler(WKNavigationResponsePolicyCancel);
}

//: - (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error{
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error{

}

//: #pragma mark - 监听加载进度
#pragma mark - 监听加载进度

/*
 *4.在监听方法中获取网页加载的进度，并将进度赋给progressView.progress
 */

//: - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {

    //: if (object == self.webView && [keyPath isEqualToString:@"estimatedProgress"]) {
    if (object == self.webView && [keyPath isEqualToString:StringFromMythologyData(kStr_shrinkValue)]) {
        //: CGFloat newprogress = [[change objectForKey:NSKeyValueChangeNewKey] doubleValue];
        CGFloat newprogress = [[change objectForKey:NSKeyValueChangeNewKey] doubleValue];
        //: self.progressView.alpha = 1.0f;
        self.progressView.alpha = 1.0f;
        //: [self.progressView setProgress:newprogress animated:YES];
        [self.progressView setProgress:newprogress animated:YES];
        //: if (newprogress >= 1.0f) {
        if (newprogress >= 1.0f) {

            /*
             *添加一个简单的动画，将progressView的Height变为1.4倍
             *动画时长0.25s，延时0.3s后开始动画
             *动画结束后将progressView隐藏
             */
            //: __weak typeof (self)weakSelf = self;
            __weak typeof (self)weakSelf = self;
            //: [UIView animateWithDuration:0.25f delay:0.3f options:UIViewAnimationOptionCurveEaseOut animations:^{
            [UIView animateWithDuration:0.25f delay:0.3f options:UIViewAnimationOptionCurveEaseOut animations:^{
                //: weakSelf.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.4f);
                weakSelf.progressView.transform = CGAffineTransformMakeScale(1.0f, 1.4f);
            //: } completion:^(BOOL finished) {
            } completion:^(BOOL finished) {
                //: weakSelf.progressView.hidden = YES;
                weakSelf.progressView.hidden = YES;

            //: }];
            }];
        }

    //: } else {
    } else {
        //: [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }


}


//: #pragma mark - js
#pragma mark - js

//: - (void)jsConfig{
- (void)headingReload{

    // js配置
    //: WKUserContentController *userContentController = _webView.configuration.userContentController;
    WKUserContentController *userContentController = _webView.configuration.userContentController;
    //: [userContentController addScriptMessageHandler:self name:@"jsCallOC"];
    [userContentController addScriptMessageHandler:self name:StringFromMythologyData(kStr_explosionTriggerInfoValue)];

    //: _webView.configuration.userContentController = userContentController;
    _webView.configuration.userContentController = userContentController;

}

//: - (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message{
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message{
    //NSLog(@"%@--%@", message.name, message.body);

    //: if ([message.name isEqualToString:@"jsCallOC"]) {
    if ([message.name isEqualToString:StringFromMythologyData(kStr_explosionTriggerInfoValue)]) {
        //: [self dealJsData:message.body];
        [self marginOfError:message.body];
    }


}

//: - (void)dealJsData:(NSDictionary *)jsDict{
- (void)marginOfError:(NSDictionary *)jsDict{
    //: if (!jsDict || jsDict.count<=0) {
    if (!jsDict || jsDict.count<=0) {
        //: return;
        return;
    }

    //: NSInteger type = [[jsDict newStringValueForKey:@"type"] integerValue];
    NSInteger type = [[jsDict with:StringFromMythologyData(kStr_convertValue)] integerValue];
    //NSString *content = [jsDict newStringValueForKey:@"content"];


    //: if (type == 1) {
    if (type == 1) {
        //专题活动

        //: [self shareFirstOrder];
        [self thoughtImage];
    }

}

//: - (void)shareFirstOrder{
- (void)thoughtImage{

//    if (![HMUserManager isLogin]) {
//        [HMUserManager loginWithDelegate:self rootController:self];
//        _loginType = 1;
//        return;
//    }

//    [self getOrderDataWithCache:NO];
}

//: - (void)loginSucceed{
- (void)screen{

    //: if (_loginType == 1) {
    if (_loginType == 1) {
        //: [self shareFirstOrder];
        [self thoughtImage];
        //: _loginType = -1;
        _loginType = -1;
    }


}

//- (void)getOrderDataWithCache:(BOOL)cache{
//
//    if (!cache) {
//        [HMDataRequest deleteCacheWithUrl:@""];
//    }
//
//    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
//    [dict setObject:@"4" forKey:@"orderStatus"];
//    [dict setObject:[HMUserManager getUserID] forKey:@"userId"];
//    [dict setObject:kConstant_1 forKey:@"pageSize"];
//    [dict setObject:kConstant_1 forKey:@"pageNo"];
//
//    [HMDataRequest getRequestWithUrl:@"" withParams:dict withCacheTime:0 withIsShow:false CallBack:^(id responseObject, id error) {
//
//        if (!error) {
//            NSDictionary *respondDict = responseObject;
//            NSDictionary *infoMap= [respondDict objectForKey:@"infoMap"];
//            NSString *flag = [infoMap objectForKey:@"flag"];
//            NSArray *resultList = [respondDict objectForKey:@"resultList"];
//
//
//            if ([flag isEqualToString:kConstant_1]) {
//
//                if (resultList && [resultList isKindOfClass:[NSArray class]] && resultList.count > 0) {
//                    NSArray *orderGoods = [[resultList firstObject] valueObjectForKey:@"orderGoods"];
//
//                    if (orderGoods.count > 0) {
//                        //NSDictionary *goodsDict = [orderGoods firstObject];
//                        //[HMShareManager shareWithGoodsDict:goodsDict];
//                        return ;
//                    }
//                }
//            }
//
//
//            [self jumpToHomeWithNoOrder];
//
//        } else{
//            HMLog(@"%@",error);
//        }
//    }];
//
//}



//: @end
@end

Byte * MythologyDataToCache(Byte *data) {
    int victor = data[0];
    int shouldOwnChange = data[1];
    Byte runner = data[2];
    int parkRemote = data[3];
    if (!victor) return data + parkRemote;
    for (int i = parkRemote; i < parkRemote + shouldOwnChange; i++) {
        int value = data[i] + runner;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[parkRemote + shouldOwnChange] = 0;
    return data + parkRemote;
}

NSString *StringFromMythologyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MythologyDataToCache(data)];
}
