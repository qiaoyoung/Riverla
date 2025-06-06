
#import <Foundation/Foundation.h>

NSString *StringFromFaintData(Byte *data);        


//: 解压失败
Byte kStr_againName[] = {95, 12, 80, 13, 149, 50, 190, 89, 38, 192, 111, 227, 56, 152, 87, 83, 149, 62, 59, 149, 84, 97, 152, 100, 85, 21};


//: 返回会话列表
Byte kStr_motivateText[] = {60, 18, 59, 6, 116, 90, 173, 132, 89, 170, 96, 99, 169, 129, 95, 173, 116, 98, 170, 77, 92, 173, 102, 109, 200};


//: 确定要取消导入？
Byte kStr_fedChopData[] = {37, 24, 89, 5, 115, 142, 72, 85, 140, 85, 65, 143, 77, 40, 140, 54, 61, 141, 93, 47, 140, 86, 99, 140, 44, 76, 150, 99, 70, 109};


//: 继续导入
Byte kStr_assaultTitle[] = {25, 12, 43, 13, 152, 195, 57, 250, 226, 67, 85, 105, 213, 188, 144, 124, 188, 144, 130, 186, 132, 145, 186, 90, 122, 74};


//: 导入本地消息需要较长时间，请耐心等待
Byte kStr_willCruName[] = {12, 54, 31, 10, 230, 216, 91, 232, 142, 37, 198, 144, 157, 198, 102, 134, 199, 125, 141, 198, 125, 145, 199, 151, 105, 199, 98, 144, 202, 125, 97, 201, 135, 98, 201, 159, 100, 202, 118, 160, 199, 120, 151, 202, 120, 149, 208, 157, 109, 201, 144, 152, 201, 97, 113, 198, 160, 100, 200, 142, 106, 198, 159, 102, 125};


//: 导入失败！
Byte kStr_skiFenceText[] = {80, 15, 91, 10, 224, 222, 146, 43, 117, 80, 138, 84, 97, 138, 42, 74, 138, 73, 86, 141, 89, 74, 148, 97, 38, 27};


//: 消息导入成功
Byte kStr_culturalText[] = {91, 18, 45, 12, 204, 42, 124, 17, 193, 195, 153, 238, 185, 137, 91, 185, 84, 130, 184, 130, 143, 184, 88, 120, 185, 91, 99, 184, 93, 114, 22};


//: zip
Byte kStr_mothData[] = {57, 3, 24, 13, 114, 51, 76, 77, 164, 100, 171, 27, 248, 98, 81, 88, 196};


//: iOS-zip-aes256
Byte kStr_mortgageData[] = {37, 14, 14, 12, 243, 78, 24, 146, 239, 201, 46, 79, 91, 65, 69, 31, 108, 91, 98, 31, 83, 87, 101, 36, 39, 40, 204};


//: 下载消息文件失败
Byte kStr_uponContent[] = {24, 24, 37, 6, 128, 44, 191, 147, 102, 195, 152, 152, 193, 145, 99, 193, 92, 138, 193, 113, 98, 191, 150, 145, 192, 127, 140, 195, 143, 128, 46};


//: NIM
Byte kStr_tonightFlyTitle[] = {4, 3, 70, 6, 16, 25, 8, 3, 7, 221};


//: 重新导入
Byte kStr_iceHazardTitle[] = {56, 12, 82, 13, 66, 57, 44, 95, 175, 134, 70, 222, 199, 151, 53, 59, 148, 68, 94, 147, 93, 106, 147, 51, 83, 161};


//: 恭喜你
Byte kStr_constantlyTitle[] = {6, 9, 92, 5, 76, 138, 37, 81, 137, 58, 64, 136, 97, 68, 152};


//: decryped
Byte kStr_growName[] = {40, 8, 29, 11, 92, 71, 223, 154, 87, 67, 231, 71, 72, 70, 85, 92, 83, 72, 71, 77};


//: unzip
Byte kStr_clerkTitle[] = {92, 5, 6, 9, 171, 211, 43, 128, 208, 111, 104, 116, 99, 106, 51};


//: 取消导入
Byte kStr_screamName[] = {73, 12, 83, 5, 6, 146, 60, 67, 147, 99, 53, 146, 92, 105, 146, 50, 82, 86};


//: 合并失败
Byte kStr_kaName[] = {62, 12, 80, 12, 133, 190, 218, 177, 99, 197, 212, 191, 149, 64, 56, 149, 105, 102, 149, 84, 97, 152, 100, 85, 207};


//: 本地消息导入
Byte kStr_meterValue[] = {42, 18, 11, 8, 26, 110, 220, 12, 219, 145, 161, 218, 145, 165, 219, 171, 125, 219, 118, 164, 218, 164, 177, 218, 122, 154, 225};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeShowViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESImportMessageViewController.h"
#import "ChangeShowViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "BringForthView.h"
//: #import "NTESMigrateCompleteView.h"
#import "SourceLanguageView.h"
//: #import "NSData+NTES.h"
#import "NSData+InfoByMargin.h"
//: #import "NTESImportMessageDelegateImpl.h"
#import "ViewImpl.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import "NTESMainTabController.h"
#import "SoapBarController.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const let_bubbleValue = @"0123456789012345";

//: @interface NTESImportMessageViewController ()
@interface ChangeShowViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;

//: @end
@end

//: @implementation NTESImportMessageViewController
@implementation ChangeShowViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    //: self.title = @"本地消息导入".ntes_localized;
    self.title = StringFromFaintData(kStr_meterValue).titleLocalized;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    BringForthView *progressView = [[BringForthView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(replyIn:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导入本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = StringFromFaintData(kStr_willCruName).titleLocalized;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self downloadRemoteFile];
    [self load];
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

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)replyIn:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导入？".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromFaintData(kStr_fedChopData).titleLocalized message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导入
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:StringFromFaintData(kStr_screamName).titleLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导入
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导入".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:StringFromFaintData(kStr_assaultTitle).titleLocalized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
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

    // 返回到会话页
    //: NTESMainTabController *tabController = [NTESMainTabController instance];
    SoapBarController *tabController = [SoapBarController with];
    //: UIViewController *selectedVC = tabController.selectedViewController;
    UIViewController *selectedVC = tabController.selectedViewController;
    //: if ([selectedVC isKindOfClass:[UINavigationController class]]) {
    if ([selectedVC isKindOfClass:[UINavigationController class]]) {
        //: [((UINavigationController *)selectedVC) popToRootViewControllerAnimated:NO];
        [((UINavigationController *)selectedVC) popToRootViewControllerAnimated:NO];
    }
    //: tabController.selectedIndex = 0;
    tabController.selectedIndex = 0;
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onImportFailed:(NSError *)error description:(NSString *)description {
- (void)array:(NSError *)error date:(NSString *)description {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导入失败！".ntes_localized message:description preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromFaintData(kStr_skiFenceText).titleLocalized message:description preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".titleLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        // todo 导航
    //: }];
    }];
    //: [alertController addAction:actionReturn];
    [alertController addAction:actionReturn];

    // 重新导入
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:StringFromFaintData(kStr_iceHazardTitle).titleLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self downloadRemoteFile];
        [self load];
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

//: - (void)onImportSuccess {
- (void)content {
    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    SourceLanguageView *completeView = [[SourceLanguageView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = StringFromFaintData(kStr_constantlyTitle).titleLocalized;
    //: completeView.message = @"消息导入成功".ntes_localized;
    completeView.message = StringFromFaintData(kStr_culturalText).titleLocalized;
    //: [completeView.actionButton setTitle:@"返回会话列表".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:StringFromFaintData(kStr_motivateText).titleLocalized forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(customing:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark --
#pragma mark --
//: - (void)downloadRemoteFile {
- (void)load {
    //: [self removeTempFiles];
    [self processor];
    //: NSString *aesFilePath = [self aesFilePath];
    NSString *aesFilePath = [self event];
    //: [[NIMSDK sharedSDK].resourceManager download:self.remoteFilePath
    [[NIMSDK sharedSDK].resourceManager download:self.remoteFilePath
                                        //: filepath:aesFilePath
                                        filepath:aesFilePath
                                        //: progress:nil
                                        progress:nil
                                      //: completion:^(NSError * _Nullable error)
                                      completion:^(NSError * _Nullable error)
     {
         //: if (error) {
         if (error) {
             //: [self onImportFailed:error description:@"下载消息文件失败".ntes_localized];
             [self array:error date:StringFromFaintData(kStr_uponContent).titleLocalized];
             //: return;
             return;
         }

         //: NSString *decrypedPath = self.secureKey ? [self decryptMeessageFileAtPath:aesFilePath] : aesFilePath;
         NSString *decrypedPath = self.secureKey ? [self container:aesFilePath] : aesFilePath;
         //: dispatch_async(dispatch_get_main_queue(), ^{
         dispatch_async(dispatch_get_main_queue(), ^{
             //: NSString *unzipPath = [self unzipMessageFileAtPath:decrypedPath];
             NSString *unzipPath = [self halogenPath:decrypedPath];
             //: [self importMessageFileAtPath:unzipPath];
             [self buttonName:unzipPath];

             // 删除中间文件
             //: [[NSFileManager defaultManager] removeItemAtPath:aesFilePath error:nil];
             [[NSFileManager defaultManager] removeItemAtPath:aesFilePath error:nil];
         //: });
         });
     //: }];
     }];
}

// 如果上传时候有加密，需要先解密
//: - (NSString *)decryptMeessageFileAtPath:(NSString *)path {
- (NSString *)container:(NSString *)path {
    //: @autoreleasepool {
    @autoreleasepool {
        //: NSData *data = [NSData dataWithContentsOfFile:path];
        NSData *data = [NSData dataWithContentsOfFile:path];
        //: NSString *aesKey = self.secureKey;
        NSString *aesKey = self.secureKey;
        //: NSData *decryptedData = [data aes256DecryptWithKey:aesKey vector:aesVectorString];
        NSData *decryptedData = [data path:aesKey to:let_bubbleValue];
        //: NSString *directory = [path stringByDeletingPathExtension];
        NSString *directory = [path stringByDeletingPathExtension];
        //: directory = [directory stringByDeletingLastPathComponent];
        directory = [directory stringByDeletingLastPathComponent];
        //: NSString *decryptedPath = [directory stringByAppendingPathComponent:@"decryped"];
        NSString *decryptedPath = [directory stringByAppendingPathComponent:StringFromFaintData(kStr_growName)];
        //: decryptedPath = [decryptedPath stringByAppendingPathExtension:@"zip"];
        decryptedPath = [decryptedPath stringByAppendingPathExtension:StringFromFaintData(kStr_mothData)];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:decryptedPath]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:decryptedPath]) {
            //: [[NSFileManager defaultManager] removeItemAtPath:decryptedPath error:nil];
            [[NSFileManager defaultManager] removeItemAtPath:decryptedPath error:nil];
        }
        //: [decryptedData writeToFile:decryptedPath atomically:YES];
        [decryptedData writeToFile:decryptedPath atomically:YES];
        //: return decryptedPath;
        return decryptedPath;
    }
}

// 如果上传时候有压缩，解密完了之后要解压缩
//: - (NSString *)unzipMessageFileAtPath:(NSString *)path {
- (NSString *)halogenPath:(NSString *)path {
    //: NSString *dstPath = [path stringByDeletingPathExtension];
    NSString *dstPath = [path stringByDeletingPathExtension];
    //: dstPath = [dstPath stringByAppendingString:@"unzip"];
    dstPath = [dstPath stringByAppendingString:StringFromFaintData(kStr_clerkTitle)];

    //
    //: NSString *unzipPath = nil;
    NSString *unzipPath = nil;
    //: BOOL directory = NO;
    BOOL directory = NO;
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:dstPath isDirectory:&directory]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:dstPath isDirectory:&directory]) {
        //: if (directory) {
        if (directory) {
            //: NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dstPath error:nil];
            NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dstPath error:nil];
            //: unzipPath = files.count > 0 ? files[0] : nil;
            unzipPath = files.count > 0 ? files[0] : nil;
            //: unzipPath = [dstPath stringByAppendingPathComponent:unzipPath];
            unzipPath = [dstPath stringByAppendingPathComponent:unzipPath];
        }
        //: else {
        else {
            //: unzipPath = dstPath;
            unzipPath = dstPath;
        }
    }

    // 删掉中间文件
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    //: });
    });

    //: return unzipPath;
    return unzipPath;
}

//: - (void)importMessageFileAtPath:(NSString *)path {
- (void)buttonName:(NSString *)path {
    //: if (!path) {
    if (!path) {
        //: [self onImportFailed:nil description:@"解压失败".ntes_localized];
        [self array:nil date:StringFromFaintData(kStr_againName).titleLocalized];
        //: return;
        return;
    }

    // 用户自定义的导入过滤器，对于 custom 消息，需要用户自己处理
    //: NTESImportMessageDelegateImpl *importImpl = [[NTESImportMessageDelegateImpl alloc] init];
    ViewImpl *importImpl = [[ViewImpl alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
    [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
                                                            //: delegate:importImpl
                                                            delegate:importImpl
                                                            //: progress:^(float progress)
                                                            progress:^(float progress)
    {
        //NSLog(@"import progress %f", progress);
        //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
        BringForthView *progressView = (BringForthView *)self.contentView;
        //: if ([progressView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([progressView isKindOfClass:[BringForthView class]]) {
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error) {
    } completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: [self onImportFailed:error description:@"合并失败".ntes_localized];
            [self array:error date:StringFromFaintData(kStr_kaName).titleLocalized];
        }
        //: else {
        else {
            //: [self onImportSuccess];
            [self content];
        }
    //: }];
    }];
}

//: #pragma mark -- temp
#pragma mark -- temp
//: - (NSString *)aesFilePath {
- (NSString *)event {
    //: NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:@"NIM"];
    NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:StringFromFaintData(kStr_tonightFlyTitle)];
    //: ret = [ret stringByAppendingPathComponent:@"iOS-zip-aes256"];
    ret = [ret stringByAppendingPathComponent:StringFromFaintData(kStr_mortgageData)];
    //: return ret;
    return ret;
}

//: - (void)removeTempFiles {
- (void)processor {
    //: NSFileManager *fileManager = [NSFileManager defaultManager];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //: [fileManager removeItemAtPath:[self aesFilePath] error:nil];
    [fileManager removeItemAtPath:[self event] error:nil];
}

//: @end
@end

Byte * FaintDataToCache(Byte *data) {
    int participant = data[0];
    int grow = data[1];
    Byte shove = data[2];
    int championship = data[3];
    if (!participant) return data + championship;
    for (int i = championship; i < championship + grow; i++) {
        int value = data[i] + shove;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[championship + grow] = 0;
    return data + championship;
}

NSString *StringFromFaintData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FaintDataToCache(data)];
}
