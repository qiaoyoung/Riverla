
#import <Foundation/Foundation.h>

NSString *StringFromOptionData(Byte *data);


//: 导入失败！
Byte kStr_topText[] = {53, 15, 10, 232, 22, 134, 179, 5, 68, 151, 129, 188, 239, 165, 180, 232, 177, 164, 229, 165, 133, 229, 188, 175, 229, 50};


//: 合并失败
Byte kStr_logData[] = {91, 12, 10, 1, 50, 141, 150, 128, 173, 239, 165, 180, 232, 177, 164, 229, 182, 185, 229, 136, 144, 229, 107};


//: iOS-zip-aes256
Byte kStr_mustKeyName[] = {78, 14, 12, 204, 168, 185, 89, 32, 254, 253, 17, 169, 54, 53, 50, 115, 101, 97, 45, 112, 105, 122, 45, 83, 79, 105, 122};


//: 恭喜你
Byte kStr_removeMustAndTitle[] = {42, 9, 9, 142, 225, 239, 177, 123, 70, 160, 189, 228, 156, 150, 229, 173, 129, 230, 39};


//: 消息导入成功
Byte kStr_topValue[] = {5, 18, 8, 136, 8, 21, 34, 39, 159, 138, 229, 144, 136, 230, 165, 133, 229, 188, 175, 229, 175, 129, 230, 136, 182, 230, 150};


//: NIM
Byte kStr_countContent[] = {56, 3, 10, 67, 151, 28, 74, 166, 72, 208, 77, 73, 78, 160};


//: 下载消息文件失败
Byte kStr_mustSelectData[] = {50, 24, 5, 195, 146, 165, 180, 232, 177, 164, 229, 182, 187, 228, 135, 150, 230, 175, 129, 230, 136, 182, 230, 189, 189, 232, 139, 184, 228, 12};


//: unzip
Byte kStr_quickData[] = {20, 5, 7, 246, 162, 51, 39, 112, 105, 122, 110, 117, 251};


//: 取消导入
Byte kStr_userChangeValue[] = {6, 12, 5, 195, 110, 165, 133, 229, 188, 175, 229, 136, 182, 230, 150, 143, 229, 161};


//: 导入本地消息需要较长时间，请耐心等待
Byte kStr_keySelectData[] = {51, 54, 13, 146, 173, 174, 93, 25, 33, 8, 102, 123, 37, 133, 190, 229, 137, 173, 231, 131, 191, 229, 144, 128, 232, 183, 175, 232, 140, 188, 239, 180, 151, 233, 182, 151, 230, 191, 149, 233, 131, 190, 232, 129, 166, 232, 128, 156, 233, 175, 129, 230, 136, 182, 230, 176, 156, 229, 172, 156, 230, 165, 133, 229, 188, 175, 229, 120};


//: zip
Byte kStr_afterValue[] = {95, 3, 4, 113, 112, 105, 122, 212};


//: 重新导入
Byte kStr_referDateName[] = {36, 12, 5, 140, 213, 165, 133, 229, 188, 175, 229, 176, 150, 230, 141, 135, 233, 169};


//: 返回会话列表
Byte kStr_currentVoiceData[] = {97, 18, 3, 168, 161, 232, 151, 136, 229, 157, 175, 232, 154, 188, 228, 158, 155, 229, 148, 191, 232, 171};


//: 确定要取消导入？
Byte kStr_afterText[] = {11, 24, 9, 76, 198, 74, 79, 83, 244, 159, 188, 239, 165, 133, 229, 188, 175, 229, 136, 182, 230, 150, 143, 229, 129, 166, 232, 154, 174, 229, 174, 161, 231, 235};


//: decryped
Byte kStr_controlTitle[] = {24, 8, 4, 230, 100, 101, 112, 121, 114, 99, 101, 100, 236};


//: 解压失败
Byte kStr_topName[] = {93, 12, 11, 252, 7, 52, 214, 36, 85, 231, 4, 165, 180, 232, 177, 164, 229, 139, 142, 229, 163, 167, 232, 231};


//: 继续导入
Byte kStr_tingWindowName[] = {22, 12, 10, 38, 241, 226, 19, 1, 46, 17, 165, 133, 229, 188, 175, 229, 173, 187, 231, 167, 187, 231, 132};


//: 本地消息导入
Byte kStr_cellTitleText[] = {54, 18, 13, 94, 249, 249, 199, 36, 201, 102, 14, 136, 99, 165, 133, 229, 188, 175, 229, 175, 129, 230, 136, 182, 230, 176, 156, 229, 172, 156, 230, 237};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableSearchedViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESImportMessageViewController.h"
#import "TableSearchedViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "ActionView.h"
//: #import "NTESMigrateCompleteView.h"
#import "ParadigmView.h"
//: #import "NSData+NTES.h"
#import "NSData+Closes.h"
//: #import "NTESImportMessageDelegateImpl.h"
#import "FrameImpl.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import "NTESMainTabController.h"
#import "OperationBarController.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const kLet_linkName = @"0123456789012345";

//: @interface NTESImportMessageViewController ()
@interface TableSearchedViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;

//: @end
@end

//: @implementation NTESImportMessageViewController
@implementation TableSearchedViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    //: self.title = @"本地消息导入".ntes_localized;
    self.title = StringFromOptionData(kStr_cellTitleText).aboveMagnitude;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    ActionView *progressView = [[ActionView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(showsing:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导入本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = StringFromOptionData(kStr_keySelectData).aboveMagnitude;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self downloadRemoteFile];
    [self to];
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
- (void)showsing:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导入？".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromOptionData(kStr_afterText).aboveMagnitude message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导入
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:StringFromOptionData(kStr_userChangeValue).aboveMagnitude style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:StringFromOptionData(kStr_tingWindowName).aboveMagnitude style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
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

    // 返回到会话页
    //: NTESMainTabController *tabController = [NTESMainTabController instance];
    OperationBarController *tabController = [OperationBarController ironed];
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
- (void)value:(NSError *)error by:(NSString *)description {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导入失败！".ntes_localized message:description preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromOptionData(kStr_topText).aboveMagnitude message:description preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".aboveMagnitude style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        // todo 导航
    //: }];
    }];
    //: [alertController addAction:actionReturn];
    [alertController addAction:actionReturn];

    // 重新导入
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:StringFromOptionData(kStr_referDateName).aboveMagnitude style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self downloadRemoteFile];
        [self to];
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
- (void)tableOccurrent {
    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    ParadigmView *completeView = [[ParadigmView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = StringFromOptionData(kStr_removeMustAndTitle).aboveMagnitude;
    //: completeView.message = @"消息导入成功".ntes_localized;
    completeView.message = StringFromOptionData(kStr_topValue).aboveMagnitude;
    //: [completeView.actionButton setTitle:@"返回会话列表".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:StringFromOptionData(kStr_currentVoiceData).aboveMagnitude forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(alonged:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark --
#pragma mark --
//: - (void)downloadRemoteFile {
- (void)to {
    //: [self removeTempFiles];
    [self text];
    //: NSString *aesFilePath = [self aesFilePath];
    NSString *aesFilePath = [self trademark];
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
             [self value:error by:StringFromOptionData(kStr_mustSelectData).aboveMagnitude];
             //: return;
             return;
         }

         //: NSString *decrypedPath = self.secureKey ? [self decryptMeessageFileAtPath:aesFilePath] : aesFilePath;
         NSString *decrypedPath = self.secureKey ? [self countRelation:aesFilePath] : aesFilePath;
         //: dispatch_async(dispatch_get_main_queue(), ^{
         dispatch_async(dispatch_get_main_queue(), ^{
             //: NSString *unzipPath = [self unzipMessageFileAtPath:decrypedPath];
             NSString *unzipPath = [self titleItemSend:decrypedPath];
             //: [self importMessageFileAtPath:unzipPath];
             [self viewProgress:unzipPath];

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
- (NSString *)countRelation:(NSString *)path {
    //: @autoreleasepool {
    @autoreleasepool {
        //: NSData *data = [NSData dataWithContentsOfFile:path];
        NSData *data = [NSData dataWithContentsOfFile:path];
        //: NSString *aesKey = self.secureKey;
        NSString *aesKey = self.secureKey;
        //: NSData *decryptedData = [data aes256DecryptWithKey:aesKey vector:aesVectorString];
        NSData *decryptedData = [data orientation:aesKey shared:kLet_linkName];
        //: NSString *directory = [path stringByDeletingPathExtension];
        NSString *directory = [path stringByDeletingPathExtension];
        //: directory = [directory stringByDeletingLastPathComponent];
        directory = [directory stringByDeletingLastPathComponent];
        //: NSString *decryptedPath = [directory stringByAppendingPathComponent:@"decryped"];
        NSString *decryptedPath = [directory stringByAppendingPathComponent:StringFromOptionData(kStr_controlTitle)];
        //: decryptedPath = [decryptedPath stringByAppendingPathExtension:@"zip"];
        decryptedPath = [decryptedPath stringByAppendingPathExtension:StringFromOptionData(kStr_afterValue)];
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
- (NSString *)titleItemSend:(NSString *)path {
    //: NSString *dstPath = [path stringByDeletingPathExtension];
    NSString *dstPath = [path stringByDeletingPathExtension];
    //: dstPath = [dstPath stringByAppendingString:@"unzip"];
    dstPath = [dstPath stringByAppendingString:StringFromOptionData(kStr_quickData)];

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
- (void)viewProgress:(NSString *)path {
    //: if (!path) {
    if (!path) {
        //: [self onImportFailed:nil description:@"解压失败".ntes_localized];
        [self value:nil by:StringFromOptionData(kStr_topName).aboveMagnitude];
        //: return;
        return;
    }

    // 用户自定义的导入过滤器，对于 custom 消息，需要用户自己处理
    //: NTESImportMessageDelegateImpl *importImpl = [[NTESImportMessageDelegateImpl alloc] init];
    FrameImpl *importImpl = [[FrameImpl alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
    [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
                                                            //: delegate:importImpl
                                                            delegate:importImpl
                                                            //: progress:^(float progress)
                                                            progress:^(float progress)
    {
        //NSLog(@"import progress %f", progress);
        //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
        ActionView *progressView = (ActionView *)self.contentView;
        //: if ([progressView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([progressView isKindOfClass:[ActionView class]]) {
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error) {
    } completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: [self onImportFailed:error description:@"合并失败".ntes_localized];
            [self value:error by:StringFromOptionData(kStr_logData).aboveMagnitude];
        }
        //: else {
        else {
            //: [self onImportSuccess];
            [self tableOccurrent];
        }
    //: }];
    }];
}

//: #pragma mark -- temp
#pragma mark -- temp
//: - (NSString *)aesFilePath {
- (NSString *)trademark {
    //: NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:@"NIM"];
    NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:StringFromOptionData(kStr_countContent)];
    //: ret = [ret stringByAppendingPathComponent:@"iOS-zip-aes256"];
    ret = [ret stringByAppendingPathComponent:StringFromOptionData(kStr_mustKeyName)];
    //: return ret;
    return ret;
}

//: - (void)removeTempFiles {
- (void)text {
    //: NSFileManager *fileManager = [NSFileManager defaultManager];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //: [fileManager removeItemAtPath:[self aesFilePath] error:nil];
    [fileManager removeItemAtPath:[self trademark] error:nil];
}

//: @end
@end

Byte * OptionDataToCache(Byte *data) {
    int typical = data[0];
    int findDropTo = data[1];
    int necessity = data[2];
    if (!typical) return data + necessity;
    for (int i = 0; i < findDropTo / 2; i++) {
        int begin = necessity + i;
        int end = necessity + findDropTo - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[necessity + findDropTo] = 0;
    return data + necessity;
}

NSString *StringFromOptionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)OptionDataToCache(data)];
}  
