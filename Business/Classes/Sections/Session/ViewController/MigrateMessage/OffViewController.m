
#import <Foundation/Foundation.h>
typedef struct {
    Byte changeRequest;
    Byte *userButton;
    unsigned int disabled;
    bool windowDate;
	int part;
} RefreshBlueData;

NSString *StringFromRefreshBlueData(RefreshBlueData *data);


//: 本地消息导出成功，请在新设备上点击导入吧
RefreshBlueData kStr_redName = (RefreshBlueData){248, (Byte []){30, 100, 84, 29, 100, 72, 30, 78, 112, 30, 121, 87, 29, 87, 68, 29, 127, 66, 30, 112, 104, 29, 114, 103, 23, 68, 116, 16, 87, 79, 29, 100, 80, 30, 110, 72, 16, 86, 70, 29, 92, 127, 28, 64, 114, 31, 122, 65, 29, 127, 67, 29, 87, 68, 29, 125, 93, 29, 104, 95, 119}, 60, false, 197};


//: 导出失败!
RefreshBlueData kStr_progressChangeTitle = (RefreshBlueData){26, (Byte []){255, 181, 166, 255, 157, 160, 255, 190, 171, 242, 174, 191, 59, 50}, 13, false, 93};


//: 恭喜你
RefreshBlueData kStr_disabledText = (RefreshBlueData){53, (Byte []){211, 180, 152, 208, 163, 169, 209, 136, 149, 12}, 9, false, 93};


//: 取消导出
RefreshBlueData kStr_lengthTitle = (RefreshBlueData){249, (Byte []){28, 118, 111, 31, 79, 113, 28, 86, 69, 28, 126, 67, 65}, 12, false, 86};


//: 可导出的消息记录总数为空
RefreshBlueData kStr_titleContent = (RefreshBlueData){156, (Byte []){121, 19, 51, 121, 51, 32, 121, 27, 38, 123, 6, 24, 122, 42, 20, 122, 29, 51, 116, 50, 44, 121, 33, 9, 122, 28, 39, 122, 9, 44, 120, 36, 38, 123, 53, 38, 109}, 36, false, 51};


//: aes256
RefreshBlueData kStr_findSharedTitle = (RefreshBlueData){15, (Byte []){110, 106, 124, 61, 58, 57, 78}, 6, false, 137};


//: 本地消息导出
RefreshBlueData kStr_endSumLanguageText = (RefreshBlueData){196, (Byte []){34, 88, 104, 33, 88, 116, 34, 114, 76, 34, 69, 107, 33, 107, 120, 33, 67, 126, 129}, 18, false, 217};


//: 重新导出
RefreshBlueData kStr_indexTitle = (RefreshBlueData){89, (Byte []){176, 222, 212, 191, 207, 233, 188, 246, 229, 188, 222, 227, 171}, 12, false, 182};


//: 确定要取消导出?
RefreshBlueData kStr_deviceNimTitle = (RefreshBlueData){235, (Byte []){12, 74, 69, 14, 69, 113, 3, 77, 106, 14, 100, 125, 13, 93, 99, 14, 68, 87, 14, 108, 81, 212, 33}, 22, false, 229};


//: 继续导出
RefreshBlueData kStr_endText = (RefreshBlueData){117, (Byte []){146, 206, 210, 146, 206, 216, 144, 218, 201, 144, 242, 207, 21}, 12, false, 116};


//: 本地消息格式化导出失败
RefreshBlueData kStr_groupName = (RefreshBlueData){83, (Byte []){181, 207, 255, 182, 207, 227, 181, 229, 219, 181, 210, 252, 181, 243, 239, 182, 239, 220, 182, 223, 197, 182, 252, 239, 182, 212, 233, 182, 247, 226, 187, 231, 246, 40}, 33, false, 172};


//: 导出本地消息需要较长时间，请耐心等待
RefreshBlueData kStr_maxTitle = (RefreshBlueData){115, (Byte []){150, 220, 207, 150, 244, 201, 149, 239, 223, 150, 239, 195, 149, 197, 251, 149, 242, 220, 154, 239, 243, 155, 213, 242, 155, 205, 240, 154, 230, 204, 149, 228, 197, 154, 228, 199, 156, 207, 255, 155, 220, 196, 155, 243, 227, 150, 204, 240, 148, 222, 250, 150, 205, 246, 250}, 54, false, 159};

// __DEBUG__
// __CLOSE_PRINT__
//
//  OffViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESExportMessageViewController.h"
#import "OffViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "ActionView.h"
//: #import "NTESMigrateCompleteView.h"
#import "ParadigmView.h"
//: #import "NSString+NTES.h"
#import "NSString+Closes.h"
//: #import "NSData+NTES.h"
#import "NSData+Closes.h"
//: #import "NTESExportMessageDelegateImpl.h"
#import "PopImpl.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const kLet_linkName = @"0123456789012345";

//: @interface NTESExportMessageViewController ()
@interface OffViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;
//: @property (nonatomic, copy) NSString *secureKey;
@property (nonatomic, copy) NSString *secureKey;

//: @end
@end

//: @implementation NTESExportMessageViewController
@implementation OffViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息导出".ntes_localized;
    self.title = StringFromRefreshBlueData(&kStr_endSumLanguageText).aboveMagnitude;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    ActionView *progressView = [[ActionView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(showsing:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导出本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = StringFromRefreshBlueData(&kStr_maxTitle).aboveMagnitude;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self exportMessageInfos];
    [self infos];
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
- (void)infos {
    //: NTESExportMessageDelegateImpl *exportImpl = [[NTESExportMessageDelegateImpl alloc] init];
    PopImpl *exportImpl = [[PopImpl alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
    [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
                                                                   //: progress:^(float progress)
                                                                   progress:^(float progress)
    {
        //: if ([self.contentView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([self.contentView isKindOfClass:[ActionView class]]) {
            //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
            ActionView *progressView = (ActionView *)self.contentView;
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
                [self object:error];
            }
            //: else {
            else {
                //: [self onExportFailed:error];
                [self background:error];
            }
        }
        //: else {
        else {
            //: [self onExportSuccessAtPath:resultFilePath];
            [self success:resultFilePath];
        }
    //: }];
    }];
}

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)showsing:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导出?".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromRefreshBlueData(&kStr_deviceNimTitle).aboveMagnitude message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导出
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:StringFromRefreshBlueData(&kStr_lengthTitle).aboveMagnitude style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:StringFromRefreshBlueData(&kStr_endText).aboveMagnitude style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
- (void)alonged:(id)sender {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onExportFailed:(NSError *)error {
- (void)background:(NSError *)error {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导出失败!".ntes_localized message:@"本地消息格式化导出失败".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromRefreshBlueData(&kStr_progressChangeTitle).aboveMagnitude message:StringFromRefreshBlueData(&kStr_groupName).aboveMagnitude preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".aboveMagnitude style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionBack];
    [alertController addAction:actionBack];

    // 重新导出
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:StringFromRefreshBlueData(&kStr_indexTitle).aboveMagnitude style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self exportMessageInfos];
        [self infos];
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
- (void)success:(NSString *)infoFilePath {
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    // 对导出结果进行压缩，可以有效减少文件尺寸
    //: NSString *zipFilePath = [self zipMessageFileAtPath:infoFilePath];
    NSString *zipFilePath = [self rangeEmpty:infoFilePath];
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
        NSString *encryptedFilePath = [self device:zipFilePath];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [self uploadMessageFileToServer:encryptedFilePath];
            [self commentBox:encryptedFilePath];
        //: });
        });
    //: });
    });
}

//: - (void)onExportEmpty:(NSError *)error {
- (void)object:(NSError *)error {
    //: NSLog(@"error %@", error);
    //: NSString *errorDscription = @"可导出的消息记录总数为空".ntes_localized;
    NSString *errorDscription = StringFromRefreshBlueData(&kStr_titleContent).aboveMagnitude;
    //: [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
}

//: - (void)onMigrateToRemoteFailed:(NSError *)error {
- (void)member:(NSError *)error {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: [self onExportFailed:error];
    [self background:error];
}

//: - (void)onMigrateToRemoteSuccess {
- (void)segment {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    ParadigmView *completeView = [[ParadigmView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = StringFromRefreshBlueData(&kStr_disabledText).aboveMagnitude;
    //: completeView.message = @"本地消息导出成功，请在新设备上点击导入吧".ntes_localized;
    completeView.message = StringFromRefreshBlueData(&kStr_redName).aboveMagnitude;
    //: [completeView.actionButton setTitle:@"返回".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:@"返回".aboveMagnitude forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(alonged:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark -- 压缩
#pragma mark -- 压缩
//: - (NSString *)zipMessageFileAtPath:(NSString *)infoFilePath {
- (NSString *)rangeEmpty:(NSString *)infoFilePath {
    //: return nil;
    return nil;
}

//: #pragma mark -- 加密
#pragma mark -- 加密
//: - (NSString *)encryptMessageDataAtPath:(NSString *)path {
- (NSString *)device:(NSString *)path {
    //: NSData *data = [NSData dataWithContentsOfFile:path];
    NSData *data = [NSData dataWithContentsOfFile:path];
    //: NSString *aesKey = [NSString randomStringWithLength:32];
    NSString *aesKey = [NSString edge:32];
    //: self.secureKey = aesKey;
    self.secureKey = aesKey;
    //: NSData *encryptedData = [data aes256EncryptWithKey:aesKey vector:aesVectorString];
    NSData *encryptedData = [data indexSession:aesKey start:kLet_linkName];
    //: NSString *encrypedPath = [path stringByAppendingString:@"aes256"];
    NSString *encrypedPath = [path stringByAppendingString:StringFromRefreshBlueData(&kStr_findSharedTitle)];
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
- (void)commentBox:(NSString *)path {
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
            [self member:error];
            //: return;
            return;
        }

        //: [self updateMigrateMessageInfoWithURL:urlString];
        [self show:urlString];
    //: }];
    }];
}

//: - (void)updateMigrateMessageInfoWithURL:(NSString *)url {
- (void)show:(NSString *)url {

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
            [self member:error];
        }
        //: else {
        else {
            //: [self onMigrateToRemoteSuccess];
            [self segment];
        }
    //: }];
    }];
}

//: @end
@end

Byte *RefreshBlueDataToByte(RefreshBlueData *data) {
    if (data->windowDate) return data->userButton;
    for (int i = 0; i < data->disabled; i++) {
        data->userButton[i] ^= data->changeRequest;
    }
    data->userButton[data->disabled] = 0;
    data->windowDate = true;
	if (data->disabled >= 1) {
		data->part = data->userButton[0];
	}
    return data->userButton;
}

NSString *StringFromRefreshBlueData(RefreshBlueData *data) {
    return [NSString stringWithUTF8String:(char *)RefreshBlueDataToByte(data)];
}
