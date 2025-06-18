
#import <Foundation/Foundation.h>
typedef struct {
    Byte requirement;
    Byte *userValue;
    unsigned int gammaHydroxybutyrateAt;
    bool quickControl;
} StackData;

NSString *StringFromStackData(StackData *data);


//: 继续导出
StackData kStr_topAtName = (StackData){63, (Byte []){216, 132, 152, 216, 132, 146, 218, 144, 131, 218, 184, 133, 89}, 12, false};


//: 确定导出本地消息？
StackData kStr_imageMaxValue = (StackData){99, (Byte []){132, 194, 205, 134, 205, 249, 134, 204, 223, 134, 228, 217, 133, 255, 207, 134, 255, 211, 133, 213, 235, 133, 226, 204, 140, 223, 252, 227}, 27, false};


//: 未找到消息备份。请先在旧设备上导出消息记录
StackData kStr_frameWithValue = (StackData){164, (Byte []){66, 56, 14, 66, 45, 26, 65, 44, 20, 66, 18, 44, 66, 37, 11, 65, 0, 35, 64, 31, 25, 71, 36, 38, 76, 11, 19, 65, 33, 44, 65, 56, 12, 66, 51, 3, 76, 10, 26, 65, 0, 35, 64, 28, 46, 65, 11, 24, 65, 35, 30, 66, 18, 44, 66, 37, 11, 76, 10, 20, 65, 25, 49, 235}, 63, false};


//: action
StackData kStr_dateViewText = (StackData){73, (Byte []){40, 42, 61, 32, 38, 39, 221}, 6, false};


//: 本地消息将存至云端，会耗费较长时间
StackData kStr_sizeMagnitudeSearchedText = (StackData){169, (Byte []){79, 53, 5, 76, 53, 25, 79, 31, 33, 79, 40, 6, 76, 25, 47, 76, 4, 49, 65, 46, 26, 77, 19, 56, 78, 2, 6, 70, 21, 37, 77, 21, 51, 65, 41, 62, 65, 29, 16, 65, 23, 42, 64, 60, 22, 79, 62, 31, 64, 62, 29, 107}, 51, false};


//: row
StackData kStr_contentOffSumText = (StackData){254, (Byte []){140, 145, 137, 223}, 3, false};


//: 本地消息导出
StackData kStr_removeName = (StackData){46, (Byte []){200, 178, 130, 203, 178, 158, 200, 152, 166, 200, 175, 129, 203, 129, 146, 203, 169, 148, 89}, 18, false};


//: onTouchImportLocalMessages:
StackData kStr_logBlueData = (StackData){176, (Byte []){223, 222, 228, 223, 197, 211, 216, 249, 221, 192, 223, 194, 196, 252, 223, 211, 209, 220, 253, 213, 195, 195, 209, 215, 213, 195, 138, 31}, 27, false};


//: onTouchExportLocalMessages:
StackData kStr_optionValue = (StackData){217, (Byte []){182, 183, 141, 182, 172, 186, 177, 156, 161, 169, 182, 171, 173, 149, 182, 186, 184, 181, 148, 188, 170, 170, 184, 190, 188, 170, 227, 140}, 27, false};


//: 本地消息迁移
StackData kStr_contentDeviceQuickValue = (StackData){120, (Byte []){158, 228, 212, 157, 228, 200, 158, 206, 240, 158, 249, 215, 144, 199, 249, 159, 223, 195, 113}, 18, false};


//: 发生了错误
StackData kStr_controlNimValue = (StackData){146, (Byte []){119, 29, 3, 117, 6, 13, 118, 40, 20, 123, 6, 11, 122, 61, 61, 101}, 15, false};


//: title
StackData kStr_sharedTitle = (StackData){214, (Byte []){162, 191, 162, 186, 179, 57}, 5, false};


//: headerTitle
StackData kStr_redContent = (StackData){105, (Byte []){1, 12, 8, 13, 12, 27, 61, 0, 29, 5, 12, 109}, 11, false};


//: 本地消息导入
StackData kStr_currentValue = (StackData){117, (Byte []){147, 233, 217, 144, 233, 197, 147, 195, 253, 147, 244, 218, 144, 218, 201, 144, 240, 208, 85}, 18, false};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemToViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateMessageViewController.h"
#import "ItemToViewController.h"
//: #import "UserCommonTableData.h"
#import "UserCommonTableData.h"
//: #import "FFFCommonTableDelegate.h"
#import "CalendarWith.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESExportMessageViewController.h"
#import "OffViewController.h"
//: #import "NTESImportMessageViewController.h"
#import "TableSearchedViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: @interface NTESMigrateMessageViewController ()
@interface ItemToViewController ()

//: @property (nonatomic,copy) NSArray *data;
@property (nonatomic,copy) NSArray *data;
//: @property (nonatomic,strong) FFFCommonTableDelegate *delegator;
@property (nonatomic,strong) CalendarWith *delegator;

//: @end
@end

//: @implementation NTESMigrateMessageViewController
@implementation ItemToViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息迁移".ntes_localized;
    self.title = StringFromStackData(&kStr_contentDeviceQuickValue).aboveMagnitude;
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self buildData];
    [self withBuild];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: self.delegator = [[FFFCommonTableDelegate alloc] initWithTableData:^NSArray *{
    self.delegator = [[CalendarWith alloc] initWithStreetwise:^NSArray *{
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
- (void)withBuild {
    //: NSArray *data = @[
    NSArray *data = @[
                      //: @{
                      @{
                          //: @"headerTitle" : @"",
                          StringFromStackData(&kStr_redContent) : @"",
                          //: @"row" : @[
                          StringFromStackData(&kStr_contentOffSumText) : @[
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导出".ntes_localized,
                                      StringFromStackData(&kStr_sharedTitle) : StringFromStackData(&kStr_removeName).aboveMagnitude,
                                      //: @"action" : @"onTouchExportLocalMessages:",
                                      StringFromStackData(&kStr_dateViewText) : StringFromStackData(&kStr_optionValue),
                                      //: },
                                      },
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导入".ntes_localized,
                                      StringFromStackData(&kStr_sharedTitle) : StringFromStackData(&kStr_currentValue).aboveMagnitude,
                                      //: @"action" : @"onTouchImportLocalMessages:",
                                      StringFromStackData(&kStr_dateViewText) : StringFromStackData(&kStr_logBlueData),
                                      //: },
                                      },
                                  ]
                          }
                      //: ];
                      ];
    //: self.data = [NIMCommonTableSection sectionsWithData:data];
    self.data = [ClearUser independent:data];
}

//: #pragma mark -- cellAction
#pragma mark -- cellAction
//: - (void)onTouchExportLocalMessages:(id)sender {
- (void)storageMessages:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定导出本地消息？".ntes_localized message:@"本地消息将存至云端，会耗费较长时间".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromStackData(&kStr_imageMaxValue).aboveMagnitude message:StringFromStackData(&kStr_sizeMagnitudeSearchedText).aboveMagnitude preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".aboveMagnitude style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 导出
    //: UIAlertAction *actionExport = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionExport = [UIAlertAction actionWithTitle:StringFromStackData(&kStr_topAtName).aboveMagnitude style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        //: NTESExportMessageViewController *exportController = [[NTESExportMessageViewController alloc] init];
        OffViewController *exportController = [[OffViewController alloc] init];
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
- (void)alongMessages:(id)sender {
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
            [self circle:StringFromStackData(&kStr_controlNimValue).aboveMagnitude];
            //: return;
            return;
        }
        //: if (remoteFilePath.length == 0) {
        if (remoteFilePath.length == 0) {
            //: [self onGetRemoteHistoryFailed:@"未找到消息备份。请先在旧设备上导出消息记录".ntes_localized];
            [self circle:StringFromStackData(&kStr_frameWithValue).aboveMagnitude];
            //: return;
            return;
        }

        //: [self onGetHistorySuccessWithRemotePath:remoteFilePath secureKey:secureKey];
        [self user:remoteFilePath message:secureKey];
    //: }];
    }];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onGetHistorySuccessWithRemotePath:(NSString *)remotePath secureKey:(NSString *)secureKey {
- (void)user:(NSString *)remotePath message:(NSString *)secureKey {
    //: NTESImportMessageViewController *importController = [[NTESImportMessageViewController alloc] init];
    TableSearchedViewController *importController = [[TableSearchedViewController alloc] init];
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
- (void)circle:(NSString *)errorDescription {
    //: [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
}

//: @end
@end

Byte *StackDataToByte(StackData *data) {
    if (data->quickControl) return data->userValue;
    for (int i = 0; i < data->gammaHydroxybutyrateAt; i++) {
        data->userValue[i] ^= data->requirement;
    }
    data->userValue[data->gammaHydroxybutyrateAt] = 0;
    data->quickControl = true;
    return data->userValue;
}

NSString *StringFromStackData(StackData *data) {
    return [NSString stringWithUTF8String:(char *)StackDataToByte(data)];
}
