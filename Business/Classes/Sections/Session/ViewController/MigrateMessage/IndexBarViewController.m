
#import <Foundation/Foundation.h>

NSString *StringFromFilingClerkData(Byte *data);        


//: row
Byte kStr_experienceData[] = {64, 3, 88, 9, 148, 57, 150, 124, 139, 26, 23, 31, 137};


//: onTouchImportLocalMessages:
Byte kStr_gritTitle[] = {18, 27, 60, 14, 41, 180, 35, 53, 33, 222, 22, 63, 141, 136, 51, 50, 24, 51, 57, 39, 44, 13, 49, 52, 51, 54, 56, 16, 51, 39, 37, 48, 17, 41, 55, 55, 37, 43, 41, 55, 254, 76};


//: onTouchExportLocalMessages:
Byte kStr_ballTineText[] = {51, 27, 92, 11, 137, 163, 253, 211, 162, 118, 31, 19, 18, 248, 19, 25, 7, 12, 233, 28, 20, 19, 22, 24, 240, 19, 7, 5, 16, 241, 9, 23, 23, 5, 11, 9, 23, 222, 85};


//: 确定导出本地消息？
Byte kStr_greenBraveName[] = {75, 27, 2, 13, 125, 184, 56, 70, 87, 199, 105, 31, 117, 229, 159, 172, 227, 172, 152, 227, 173, 186, 227, 133, 184, 228, 154, 170, 227, 154, 174, 228, 180, 134, 228, 127, 173, 237, 186, 157, 84};


//: title
Byte kStr_fifteenText[] = {87, 5, 50, 4, 66, 55, 66, 58, 51, 55};


//: headerTitle
Byte kStr_donName[] = {17, 11, 29, 13, 15, 172, 255, 236, 81, 252, 156, 57, 218, 75, 72, 68, 71, 72, 85, 55, 76, 87, 79, 72, 7};


//: 本地消息将存至云端，会耗费较长时间
Byte kStr_patronText[] = {87, 51, 55, 9, 211, 54, 186, 56, 254, 175, 101, 117, 174, 101, 121, 175, 127, 81, 175, 74, 120, 174, 121, 79, 174, 118, 97, 177, 80, 124, 173, 131, 90, 176, 116, 120, 184, 133, 85, 173, 133, 99, 177, 73, 96, 177, 125, 130, 177, 135, 76, 178, 94, 136, 175, 96, 127, 178, 96, 125, 59};


//: action
Byte kStr_muscleMaxName[] = {57, 6, 88, 10, 120, 145, 128, 205, 208, 98, 9, 11, 28, 17, 23, 22, 229};


//: 发生了错误
Byte kStr_boneValue[] = {79, 15, 4, 6, 74, 47, 225, 139, 141, 227, 144, 155, 224, 182, 130, 229, 144, 149, 228, 171, 171, 233};


//: 本地消息迁移
Byte kStr_normCustomTitle[] = {99, 18, 43, 12, 14, 193, 179, 147, 159, 41, 168, 95, 187, 113, 129, 186, 113, 133, 187, 139, 93, 187, 86, 132, 189, 148, 86, 188, 124, 144, 201};


//: 本地消息导出
Byte kStr_reignValue[] = {61, 18, 99, 6, 227, 250, 131, 57, 73, 130, 57, 77, 131, 83, 37, 131, 30, 76, 130, 76, 89, 130, 36, 87, 94};


//: 未找到消息备份。请先在旧设备上导出消息记录
Byte kStr_historicallyName[] = {40, 63, 87, 5, 19, 143, 69, 83, 143, 50, 103, 142, 49, 89, 143, 95, 49, 143, 42, 88, 142, 77, 48, 141, 100, 102, 140, 41, 43, 145, 88, 96, 142, 46, 49, 142, 69, 81, 143, 64, 80, 145, 87, 103, 142, 77, 48, 141, 97, 51, 142, 88, 101, 142, 48, 99, 143, 95, 49, 143, 42, 88, 145, 87, 89, 142, 102, 62, 76};


//: 继续导出
Byte kStr_consultantDiscoData[] = {65, 12, 66, 6, 5, 155, 165, 121, 101, 165, 121, 107, 163, 109, 122, 163, 69, 120, 76};


//: 本地消息导入
Byte kStr_listenName[] = {45, 18, 20, 4, 210, 136, 152, 209, 136, 156, 210, 162, 116, 210, 109, 155, 209, 155, 168, 209, 113, 145, 198};

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexBarViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateMessageViewController.h"
#import "IndexBarViewController.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "FFFCommonTableDelegate.h"
#import "IndexShow.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESExportMessageViewController.h"
#import "ContainerViewController.h"
//: #import "NTESImportMessageViewController.h"
#import "ChangeShowViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: @interface NTESMigrateMessageViewController ()
@interface IndexBarViewController ()

//: @property (nonatomic,copy) NSArray *data;
@property (nonatomic,copy) NSArray *data;
//: @property (nonatomic,strong) FFFCommonTableDelegate *delegator;
@property (nonatomic,strong) IndexShow *delegator;

//: @end
@end

//: @implementation NTESMigrateMessageViewController
@implementation IndexBarViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息迁移".ntes_localized;
    self.title = StringFromFilingClerkData(kStr_normCustomTitle).titleLocalized;
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self buildData];
    [self impressionData];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: self.delegator = [[FFFCommonTableDelegate alloc] initWithTableData:^NSArray *{
    self.delegator = [[IndexShow alloc] initWithMagnitude:^NSArray *{
        //: return wself.data;
        return wself.data;
    //: }];
    }];

    //: self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    //: self.tableView.delegate = self.delegator;
    self.tableView.delegate = self.delegator;
    //: self.tableView.dataSource = self.delegator;
    self.tableView.dataSource = self.delegator;
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //: CGFloat heightAdjust = self.view.safeAreaInsets.bottom;
    CGFloat heightAdjust = self.view.safeAreaInsets.bottom;
    //: const CGRect frame = self.view.frame;
    const CGRect frame = self.view.frame;
    //: self.tableView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame) - heightAdjust);
    self.tableView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame) - heightAdjust);

}

//: #pragma mark --
#pragma mark --
//: - (void)buildData {
- (void)impressionData {
    //: NSArray *data = @[
    NSArray *data = @[
                      //: @{
                      @{
                          //: @"headerTitle" : @"",
                          StringFromFilingClerkData(kStr_donName) : @"",
                          //: @"row" : @[
                          StringFromFilingClerkData(kStr_experienceData) : @[
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导出".ntes_localized,
                                      StringFromFilingClerkData(kStr_fifteenText) : StringFromFilingClerkData(kStr_reignValue).titleLocalized,
                                      //: @"action" : @"onTouchExportLocalMessages:",
                                      StringFromFilingClerkData(kStr_muscleMaxName) : StringFromFilingClerkData(kStr_ballTineText),
                                      //: },
                                      },
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导入".ntes_localized,
                                      StringFromFilingClerkData(kStr_fifteenText) : StringFromFilingClerkData(kStr_listenName).titleLocalized,
                                      //: @"action" : @"onTouchImportLocalMessages:",
                                      StringFromFilingClerkData(kStr_muscleMaxName) : StringFromFilingClerkData(kStr_gritTitle),
                                      //: },
                                      },
                                  ]
                          }
                      //: ];
                      ];
    //: self.data = [NIMCommonTableSection sectionsWithData:data];
    self.data = [UserSection pinDown:data];
}

//: #pragma mark -- cellAction
#pragma mark -- cellAction
//: - (void)onTouchExportLocalMessages:(id)sender {
- (void)inThePublicEyeMove:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定导出本地消息？".ntes_localized message:@"本地消息将存至云端，会耗费较长时间".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromFilingClerkData(kStr_greenBraveName).titleLocalized message:StringFromFilingClerkData(kStr_patronText).titleLocalized preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".titleLocalized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 导出
    //: UIAlertAction *actionExport = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionExport = [UIAlertAction actionWithTitle:StringFromFilingClerkData(kStr_consultantDiscoData).titleLocalized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        //: NTESExportMessageViewController *exportController = [[NTESExportMessageViewController alloc] init];
        ContainerViewController *exportController = [[ContainerViewController alloc] init];
        //: UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:exportController];
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:exportController];
        //: [self presentViewController:navController animated:YES completion:nil];
        [self presentViewController:navController animated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionExport];
    [alertController addAction:actionExport];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
}

//: - (void)onTouchImportLocalMessages:(id)sender {
- (void)topLink:(id)sender {
    // check message
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [[NIMSDK sharedSDK].conversationManager fetchMigrateMessageInfo:^(NSError * _Nullable error, NSString * _Nullable remoteFilePath, NSString * _Nullable secureKey)
    [[NIMSDK sharedSDK].conversationManager fetchMigrateMessageInfo:^(NSError * _Nullable error, NSString * _Nullable remoteFilePath, NSString * _Nullable secureKey)
    {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];

        //: if (error) {
        if (error) {
            //: [self onGetRemoteHistoryFailed:@"发生了错误".ntes_localized];
            [self keyMin:StringFromFilingClerkData(kStr_boneValue).titleLocalized];
            //: return;
            return;
        }
        //: if (remoteFilePath.length == 0) {
        if (remoteFilePath.length == 0) {
            //: [self onGetRemoteHistoryFailed:@"未找到消息备份。请先在旧设备上导出消息记录".ntes_localized];
            [self keyMin:StringFromFilingClerkData(kStr_historicallyName).titleLocalized];
            //: return;
            return;
        }

        //: [self onGetHistorySuccessWithRemotePath:remoteFilePath secureKey:secureKey];
        [self get:remoteFilePath session:secureKey];
    //: }];
    }];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onGetHistorySuccessWithRemotePath:(NSString *)remotePath secureKey:(NSString *)secureKey {
- (void)get:(NSString *)remotePath session:(NSString *)secureKey {
    //: NTESImportMessageViewController *importController = [[NTESImportMessageViewController alloc] init];
    ChangeShowViewController *importController = [[ChangeShowViewController alloc] init];
    //: importController.remoteFilePath = remotePath;
    importController.remoteFilePath = remotePath;
    //: importController.secureKey = secureKey;
    importController.secureKey = secureKey;
    //: UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:importController];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:importController];
    //: [self presentViewController:navController animated:YES completion:nil];
    [self presentViewController:navController animated:YES completion:nil];
}

//: - (void)onGetRemoteHistoryFailed:(NSString *)errorDescription {
- (void)keyMin:(NSString *)errorDescription {
    //: [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
}

//: @end
@end

Byte * FilingClerkDataToCache(Byte *data) {
    int battery = data[0];
    int programing = data[1];
    Byte mortal = data[2];
    int surrounding = data[3];
    if (!battery) return data + surrounding;
    for (int i = surrounding; i < surrounding + programing; i++) {
        int value = data[i] + mortal;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[surrounding + programing] = 0;
    return data + surrounding;
}

NSString *StringFromFilingClerkData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FilingClerkDataToCache(data)];
}
