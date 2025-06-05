
#import <Foundation/Foundation.h>

NSString *StringFromBrokenPercentageData(Byte *data);


//: 本地消息导出成功，请在新设备上点击导入吧
Byte kStr_restingValue[] = {9, 60, 10, 49, 166, 182, 149, 38, 163, 54, 167, 144, 229, 165, 133, 229, 188, 175, 229, 187, 135, 229, 185, 130, 231, 138, 184, 228, 135, 164, 229, 190, 174, 232, 176, 150, 230, 168, 156, 229, 183, 175, 232, 140, 188, 239, 159, 138, 229, 144, 136, 230, 186, 135, 229, 188, 175, 229, 175, 129, 230, 136, 182, 230, 176, 156, 229, 172, 156, 230, 41};


//: 本地消息导出
Byte kStr_conceiveName[] = {25, 18, 7, 11, 249, 138, 214, 186, 135, 229, 188, 175, 229, 175, 129, 230, 136, 182, 230, 176, 156, 229, 172, 156, 230, 249};


//: 本地消息格式化导出失败
Byte kStr_passeValue[] = {58, 33, 8, 149, 209, 22, 163, 58, 165, 180, 232, 177, 164, 229, 186, 135, 229, 188, 175, 229, 150, 140, 229, 143, 188, 229, 188, 160, 230, 175, 129, 230, 136, 182, 230, 176, 156, 229, 172, 156, 230, 140};


//: aes256
Byte kStr_spectacularCustomData[] = {35, 6, 9, 74, 235, 117, 57, 135, 210, 54, 53, 50, 115, 101, 97, 178};


//: 确定要取消导出?
Byte kStr_balanceFinishValue[] = {55, 22, 6, 81, 127, 120, 63, 186, 135, 229, 188, 175, 229, 136, 182, 230, 150, 143, 229, 129, 166, 232, 154, 174, 229, 174, 161, 231, 128};


//: 导出本地消息需要较长时间，请耐心等待
Byte kStr_cottaSkiName[] = {93, 54, 10, 49, 85, 238, 56, 37, 167, 92, 133, 190, 229, 137, 173, 231, 131, 191, 229, 144, 128, 232, 183, 175, 232, 140, 188, 239, 180, 151, 233, 182, 151, 230, 191, 149, 233, 131, 190, 232, 129, 166, 232, 128, 156, 233, 175, 129, 230, 136, 182, 230, 176, 156, 229, 172, 156, 230, 186, 135, 229, 188, 175, 229, 204};


//: 取消导出
Byte kStr_restingData[] = {38, 12, 11, 94, 229, 196, 142, 247, 205, 177, 4, 186, 135, 229, 188, 175, 229, 136, 182, 230, 150, 143, 229, 182};


//: 可导出的消息记录总数为空
Byte kStr_brokeValue[] = {79, 36, 8, 66, 198, 238, 152, 25, 186, 169, 231, 186, 184, 228, 176, 149, 230, 187, 128, 230, 149, 189, 229, 176, 174, 232, 175, 129, 230, 136, 182, 230, 132, 154, 231, 186, 135, 229, 188, 175, 229, 175, 143, 229, 41};


//: 继续导出
Byte kStr_confirmData[] = {33, 12, 8, 132, 88, 135, 253, 59, 186, 135, 229, 188, 175, 229, 173, 187, 231, 167, 187, 231, 253};


//: 重新导出
Byte kStr_braveValue[] = {89, 12, 13, 204, 15, 148, 35, 65, 122, 204, 182, 37, 18, 186, 135, 229, 188, 175, 229, 176, 150, 230, 141, 135, 233, 225};


//: 导出失败!
Byte kStr_marginCanvasValue[] = {20, 13, 6, 188, 227, 19, 33, 165, 180, 232, 177, 164, 229, 186, 135, 229, 188, 175, 229, 159};


//: 恭喜你
Byte kStr_hurryValue[] = {77, 9, 4, 21, 160, 189, 228, 156, 150, 229, 173, 129, 230, 51};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContainerViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESExportMessageViewController.h"
#import "ContainerViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "BringForthView.h"
//: #import "NTESMigrateCompleteView.h"
#import "SourceLanguageView.h"
//: #import "NSString+NTES.h"
#import "NSString+InfoByMargin.h"
//: #import "NSData+NTES.h"
#import "NSData+InfoByMargin.h"
//: #import "NTESExportMessageDelegateImpl.h"
#import "TidingsTop.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const let_bubbleValue = @"0123456789012345";

//: @interface NTESExportMessageViewController ()
@interface ContainerViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;
//: @property (nonatomic, copy) NSString *secureKey;
@property (nonatomic, copy) NSString *secureKey;

//: @end
@end

//: @implementation NTESExportMessageViewController
@implementation ContainerViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息导出".ntes_localized;
    self.title = StringFromBrokenPercentageData(kStr_conceiveName).titleLocalized;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    BringForthView *progressView = [[BringForthView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(replyIn:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导出本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = StringFromBrokenPercentageData(kStr_cottaSkiName).titleLocalized;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self exportMessageInfos];
    [self countryInfos];
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];

    //: const CGRect bounds = self.view.bounds;
    const CGRect bounds = self.view.bounds;
    //: self.contentView.frame = bounds;
    self.contentView.frame = bounds;
}

//: - (void)setContentView:(UIView *)contentView {
- (void)setContentView:(UIView *)contentView {
    //: if (_contentView == contentView) {
    if (_contentView == contentView) {
        //: return;
        return;
    }
    //: if (contentView) {
    if (contentView) {
        //: [self.view addSubview:contentView];
        [self.view addSubview:contentView];
    }
    //: if (_contentView) {
    if (_contentView) {
        //: [_contentView removeFromSuperview];
        [_contentView removeFromSuperview];
    }
    //: _contentView = contentView;
    _contentView = contentView;
}

//: #pragma mark
#pragma mark
//: - (void)exportMessageInfos {
- (void)countryInfos {
    //: NTESExportMessageDelegateImpl *exportImpl = [[NTESExportMessageDelegateImpl alloc] init];
    TidingsTop *exportImpl = [[TidingsTop alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
    [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
                                                                   //: progress:^(float progress)
                                                                   progress:^(float progress)
    {
        //: if ([self.contentView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([self.contentView isKindOfClass:[BringForthView class]]) {
            //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
            BringForthView *progressView = (BringForthView *)self.contentView;
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error, NSString * _Nullable resultFilePath) {
    } completion:^(NSError * _Nullable error, NSString * _Nullable resultFilePath) {
        //: if (error || !resultFilePath) {
        if (error || !resultFilePath) {
            //: if (error.code == 1001) {
            if (error.code == 1001) {
                //: [self onExportEmpty:error];
                [self pathEmptyHanded:error];
            }
            //: else {
            else {
                //: [self onExportFailed:error];
                [self humanColor:error];
            }
        }
        //: else {
        else {
            //: [self onExportSuccessAtPath:resultFilePath];
            [self pointOfReferencePath:resultFilePath];
        }
    //: }];
    }];
}

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)replyIn:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导出?".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromBrokenPercentageData(kStr_balanceFinishValue).titleLocalized message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导出
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:StringFromBrokenPercentageData(kStr_restingData).titleLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导出
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:StringFromBrokenPercentageData(kStr_confirmData).titleLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];

    //: }];
    }];
    //: [alertController addAction:actionGoon];
    [alertController addAction:actionGoon];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
    //: self.curAlertController = alertController;
    self.curAlertController = alertController;
}

//: - (void)onReturnButton:(id)sender {
- (void)customing:(id)sender {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onExportFailed:(NSError *)error {
- (void)humanColor:(NSError *)error {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导出失败!".ntes_localized message:@"本地消息格式化导出失败".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromBrokenPercentageData(kStr_marginCanvasValue).titleLocalized message:StringFromBrokenPercentageData(kStr_passeValue).titleLocalized preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".titleLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionBack];
    [alertController addAction:actionBack];

    // 重新导出
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:StringFromBrokenPercentageData(kStr_braveValue).titleLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self exportMessageInfos];
        [self countryInfos];
    //: }];
    }];
    //: [alertController addAction:actionRetry];
    [alertController addAction:actionRetry];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
    //: self.curAlertController = alertController;
    self.curAlertController = alertController;
}

//: - (void)onExportSuccessAtPath:(NSString *)infoFilePath {
- (void)pointOfReferencePath:(NSString *)infoFilePath {
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    // 对导出结果进行压缩，可以有效减少文件尺寸
    //: NSString *zipFilePath = [self zipMessageFileAtPath:infoFilePath];
    NSString *zipFilePath = [self mail:infoFilePath];
    //: if (!zipFilePath) {
    if (!zipFilePath) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: return;
        return;
    }

    // 对导出结果进行加密，避免明文消息的泄露
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: NSString *encryptedFilePath = [self encryptMessageDataAtPath:zipFilePath];
        NSString *encryptedFilePath = [self ting:zipFilePath];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [self uploadMessageFileToServer:encryptedFilePath];
            [self track:encryptedFilePath];
        //: });
        });
    //: });
    });
}

//: - (void)onExportEmpty:(NSError *)error {
- (void)pathEmptyHanded:(NSError *)error {
    //: NSLog(@"error %@", error);
    //: NSString *errorDscription = @"可导出的消息记录总数为空".ntes_localized;
    NSString *errorDscription = StringFromBrokenPercentageData(kStr_brokeValue).titleLocalized;
    //: [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
}

//: - (void)onMigrateToRemoteFailed:(NSError *)error {
- (void)optionFailed:(NSError *)error {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: [self onExportFailed:error];
    [self humanColor:error];
}

//: - (void)onMigrateToRemoteSuccess {
- (void)analogDigitalConverterSend {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    SourceLanguageView *completeView = [[SourceLanguageView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = StringFromBrokenPercentageData(kStr_hurryValue).titleLocalized;
    //: completeView.message = @"本地消息导出成功，请在新设备上点击导入吧".ntes_localized;
    completeView.message = StringFromBrokenPercentageData(kStr_restingValue).titleLocalized;
    //: [completeView.actionButton setTitle:@"返回".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:@"返回".titleLocalized forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(customing:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark -- 压缩
#pragma mark -- 压缩
//: - (NSString *)zipMessageFileAtPath:(NSString *)infoFilePath {
- (NSString *)mail:(NSString *)infoFilePath {
    //: return nil;
    return nil;
}

//: #pragma mark -- 加密
#pragma mark -- 加密
//: - (NSString *)encryptMessageDataAtPath:(NSString *)path {
- (NSString *)ting:(NSString *)path {
    //: NSData *data = [NSData dataWithContentsOfFile:path];
    NSData *data = [NSData dataWithContentsOfFile:path];
    //: NSString *aesKey = [NSString randomStringWithLength:32];
    NSString *aesKey = [NSString cutOut:32];
    //: self.secureKey = aesKey;
    self.secureKey = aesKey;
    //: NSData *encryptedData = [data aes256EncryptWithKey:aesKey vector:aesVectorString];
    NSData *encryptedData = [data holder:aesKey back_strong:let_bubbleValue];
    //: NSString *encrypedPath = [path stringByAppendingString:@"aes256"];
    NSString *encrypedPath = [path stringByAppendingString:StringFromBrokenPercentageData(kStr_spectacularCustomData)];
    //: [encryptedData writeToFile:encrypedPath atomically:YES];
    [encryptedData writeToFile:encrypedPath atomically:YES];

    // 移除中间文件
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    //: });
    });

    //: return encrypedPath;
    return encrypedPath;
}

//: #pragma mark -- upload to server
#pragma mark -- upload to server
//: - (void)uploadMessageFileToServer:(NSString *)path {
- (void)track:(NSString *)path {
    //: [[NIMSDK sharedSDK].resourceManager upload:path
    [[NIMSDK sharedSDK].resourceManager upload:path
                                      //: progress:nil
                                      progress:nil
                                    //: completion:^(NSString * _Nullable urlString, NSError * _Nullable error)
                                    completion:^(NSString * _Nullable urlString, NSError * _Nullable error)
    {
        // 删除中间文件
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        //: if (error || !urlString) {
        if (error || !urlString) {
            //: [self onMigrateToRemoteFailed:error];
            [self optionFailed:error];
            //: return;
            return;
        }

        //: [self updateMigrateMessageInfoWithURL:urlString];
        [self model:urlString];
    //: }];
    }];
}

//: - (void)updateMigrateMessageInfoWithURL:(NSString *)url {
- (void)model:(NSString *)url {

    //: [[NIMSDK sharedSDK].conversationManager updateMigrateMessageInfoWithURL:url
    [[NIMSDK sharedSDK].conversationManager updateMigrateMessageInfoWithURL:url
                                                                        //: key:self.secureKey
                                                                        key:self.secureKey
                                                                 //: completion:^(NSError * _Nullable error)
                                                                 completion:^(NSError * _Nullable error)
    {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];

        //: if (error) {
        if (error) {
            //: [self onMigrateToRemoteFailed:error];
            [self optionFailed:error];
        }
        //: else {
        else {
            //: [self onMigrateToRemoteSuccess];
            [self analogDigitalConverterSend];
        }
    //: }];
    }];
}

//: @end
@end

Byte * BrokenPercentageDataToCache(Byte *data) {
    int direOn = data[0];
    int aboutChop = data[1];
    int balloonApproximateWay = data[2];
    if (!direOn) return data + balloonApproximateWay;
    for (int i = 0; i < aboutChop / 2; i++) {
        int begin = balloonApproximateWay + i;
        int end = balloonApproximateWay + aboutChop - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[balloonApproximateWay + aboutChop] = 0;
    return data + balloonApproximateWay;
}

NSString *StringFromBrokenPercentageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BrokenPercentageDataToCache(data)];
}  
