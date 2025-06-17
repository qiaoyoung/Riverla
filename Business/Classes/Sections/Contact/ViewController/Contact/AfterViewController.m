
#import <Foundation/Foundation.h>

NSString *StringFromAddData(Byte *data);


//: account
Byte kStr_canBlueText[] = {48, 7, 5, 144, 129, 116, 110, 117, 111, 99, 99, 97, 219};


//: contact_tag_fragment_cancel
Byte kStr_tableHideData[] = {75, 27, 6, 23, 240, 59, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 222};


//: warm_prompt
Byte kStr_infoValue[] = {43, 11, 3, 116, 112, 109, 111, 114, 112, 95, 109, 114, 97, 119, 227};


//: msg
Byte kStr_rowValue[] = {81, 3, 4, 66, 103, 115, 109, 103};


//: icon_QR_close
Byte kStr_enableName[] = {4, 13, 7, 20, 41, 138, 54, 101, 115, 111, 108, 99, 95, 82, 81, 95, 110, 111, 99, 105, 205};


//: scan_end_sound.caf
Byte kStr_fileContent[] = {50, 18, 7, 123, 217, 30, 210, 102, 97, 99, 46, 100, 110, 117, 111, 115, 95, 100, 110, 101, 95, 110, 97, 99, 115, 227};


//: setting_privacy_camera
Byte kStr_disableText[] = {59, 22, 4, 106, 97, 114, 101, 109, 97, 99, 95, 121, 99, 97, 118, 105, 114, 112, 95, 103, 110, 105, 116, 116, 101, 115, 82};


//: uid
Byte kStr_directionName[] = {15, 3, 4, 186, 100, 105, 117, 19};


//: code
Byte kStr_selectedTitle[] = {99, 4, 3, 101, 100, 111, 99, 105};


//: tag_activity_set
Byte kStr_recordName[] = {86, 16, 7, 112, 61, 220, 155, 116, 101, 115, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 103, 97, 116, 238};


//: data
Byte kStr_pathTitle[] = {7, 4, 5, 73, 25, 97, 116, 97, 100, 189};


//: /user/search
Byte kStr_formatName[] = {31, 12, 6, 51, 239, 111, 104, 99, 114, 97, 101, 115, 47, 114, 101, 115, 117, 47, 220};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AfterViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCContactScanViewController.h"
#import "AfterViewController.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESPersonalCardViewController.h"
#import "ColorViewController.h"
//: #import "ZMONScanToolBar.h"
#import "ExamineView.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Hide.h"
//: #import "SGQRCode.h"
#import "SGQRCode.h"
//: #import "NTESUserQRCodeViewController.h"
#import "EndUserViewController.h"

//: @interface CCCContactScanViewController ()<SGScanCodeDelegate, SGScanCodeSampleBufferDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@interface AfterViewController ()<StreetSmartBottom, MaxImage, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    //: SGScanCode *scanCode;
    Scan *scanCode;
}
//: @property (nonatomic, strong) SGScanView *scanView;
@property (nonatomic, strong) WatchView *scanView;
//: @property (nonatomic, strong) ZMONScanToolBar *toolBar;
@property (nonatomic, strong) ExamineView *toolBar;
//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;

//: @end
@end

//: @implementation CCCContactScanViewController
@implementation AfterViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [self stop];
    [self remote];
}

//: - (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
    //: [self start];
    [self link];
}

//: - (void)viewWillDisappear:(BOOL)animated {
- (void)viewWillDisappear:(BOOL)animated {
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
    //: [self stop];
    [self remote];
}

//: - (void)start {
- (void)link {
    //: [scanCode startRunning];
    [scanCode noticeTable];
    //: [self.scanView startScanning];
    [self.scanView accumulation];
}

//: - (void)stop {
- (void)remote {
    //: [scanCode stopRunning];
    [scanCode menu];
    //: [self.scanView stopScanning];
    [self.scanView topWith];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    //: [self configUI];
    [self labelMember];

    //: [self configScanCode];
    [self size];
}

//: - (void)configUI {
- (void)labelMember {
    //: [self.view addSubview:self.scanView];
    [self.view addSubview:self.scanView];
    //: [self.view addSubview:self.toolBar];
    [self.view addSubview:self.toolBar];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"icon_QR_close"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:StringFromAddData(kStr_enableName)] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(messageLeft) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 25+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 25+[UIDevice clear], 40, 40);

}

//: - (void)backAction{
- (void)messageLeft{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)configScanCode {
- (void)size {
    //: scanCode = [[SGScanCode alloc] init];
    scanCode = [[Scan alloc] init];
    //: if (![scanCode checkCameraDeviceRearAvailable]) {
    if (![scanCode bubble]) {
        //: return;;
        return;;
    }
    //: scanCode.delegate = self;
    scanCode.delegate = self;
    //: scanCode.sampleBufferDelegate = self;
    scanCode.sampleBufferDelegate = self;
    //: scanCode.preview = self.view;
    scanCode.preview = self.view;
}

//: - (void)scanCode:(SGScanCode *)scanCode result:(NSString *)result {
- (void)result:(Scan *)scanCode path:(NSString *)result {
    //: [self stop];
    [self remote];

    //: [scanCode playSoundEffect:@"scan_end_sound.caf"];
    [scanCode playImageButterflyEffect:StringFromAddData(kStr_fileContent)];

    //: [self addFriend:result];
    [self cronyNumber:result];
//    ColorViewController *vc = [[ColorViewController alloc] initWithUserId:result];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)scanCode:(SGScanCode *)scanCode brightness:(CGFloat)brightness {
- (void)length:(Scan *)scanCode comment:(CGFloat)brightness {
    //: if (brightness < - 1.5) {
    if (brightness < - 1.5) {
        //: [self.toolBar showTorch];
        [self.toolBar searchWith];
    }

    //: if (brightness > 0) {
    if (brightness > 0) {
        //: [self.toolBar dismissTorch];
        [self.toolBar refreshLoad];
    }
}

//: - (SGScanView *)scanView {
- (WatchView *)scanView {
    //: if (!_scanView) {
    if (!_scanView) {
        //: SGScanViewConfigure *configure = [[SGScanViewConfigure alloc] init];
        ScanRandomMessage *configure = [[ScanRandomMessage alloc] init];

        //: CGFloat x = 0;
        CGFloat x = 0;
        //: CGFloat y = 0;
        CGFloat y = 0;
        //: CGFloat w = self.view.frame.size.width;
        CGFloat w = self.view.frame.size.width;
        //: CGFloat h = self.view.frame.size.height;
        CGFloat h = self.view.frame.size.height;
        //: _scanView = [[SGScanView alloc] initWithFrame:CGRectMake(x, y, w, h) configure:configure];
        _scanView = [[WatchView alloc] initWithMessage:CGRectMake(x, y, w, h) media:configure];

        //: CGFloat scan_x = 0;
        CGFloat scan_x = 0;
        //: CGFloat scan_y = 0.18 * self.view.frame.size.height;
        CGFloat scan_y = 0.18 * self.view.frame.size.height;
        //: CGFloat scan_w = self.view.frame.size.width - 2 * x;
        CGFloat scan_w = self.view.frame.size.width - 2 * x;
        //: CGFloat scan_h = self.view.frame.size.height - 2.55 * scan_y;
        CGFloat scan_h = self.view.frame.size.height - 2.55 * scan_y;
        //: _scanView.scanFrame = CGRectMake(scan_x, scan_y, scan_w, scan_h);
        _scanView.scanFrame = CGRectMake(scan_x, scan_y, scan_w, scan_h);

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: _scanView.doubleTapBlock = ^(BOOL selected) {
        _scanView.doubleTapBlock = ^(BOOL selected) {
            //: __strong typeof(weakSelf) strongSelf = weakSelf;
            __strong typeof(weakSelf) strongSelf = weakSelf;

            //: if (selected) {
            if (selected) {
                //: [strongSelf->scanCode setVideoZoomFactor:4.0];
                [strongSelf->scanCode setSecret:4.0];
            //: } else {
            } else {
                //: [strongSelf->scanCode setVideoZoomFactor:1.0];
                [strongSelf->scanCode setSecret:1.0];
            }
        //: };
        };
    }
    //: return _scanView;
    return _scanView;
}

//: - (ZMONScanToolBar *)toolBar {
- (ExamineView *)toolBar {
    //: if (!_toolBar) {
    if (!_toolBar) {
        //: _toolBar = [[ZMONScanToolBar alloc] init];
        _toolBar = [[ExamineView alloc] init];
        //: CGFloat y = self.view.frame.size.height - 220;
        CGFloat y = self.view.frame.size.height - 220;
        //: _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        //: [_toolBar addQRCodeTarget:self action:@selector(qrcode_action)];
        [_toolBar discount:self comment:@selector(selectedMax)];
        //: [_toolBar addAlbumTarget:self action:@selector(album_action)];
        [_toolBar sessionManager:self click:@selector(frameLast)];
    }
    //: return _toolBar;
    return _toolBar;
}

//: - (void)qrcode_action {
- (void)selectedMax {
    //: [self stop];
    [self remote];
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    EndUserViewController *vc = [[EndUserViewController alloc] init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)album_action {
- (void)frameLast {
    //: [SGPermission permissionWithType:SGPermissionTypePhoto completion:^(SGPermission * _Nonnull permission, SGPermissionStatus status) {
    [ThanQueryed should:SGPermissionTypePhoto faceCompletion:^(ThanQueryed * _Nonnull permission, SGPermissionStatus status) {
        //: if (status == SGPermissionStatusNotDetermined) {
        if (status == SGPermissionStatusNotDetermined) {
            //: [permission request:^(BOOL granted) {
            [permission prixFixe:^(BOOL granted) {
                //: if (granted) {
                if (granted) {
                    //: [self _enterImagePickerController];
                    [self courseOfAction];
                //: } else {
                } else {
                }
            //: }];
            }];
        //: } else if (status == SGPermissionStatusAuthorized) {
        } else if (status == SGPermissionStatusAuthorized) {
            //: [self _enterImagePickerController];
            [self courseOfAction];
        //: } else if (status == SGPermissionStatusDenied) {
        } else if (status == SGPermissionStatusDenied) {


            //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[ItemManager sessionInformation:StringFromAddData(kStr_infoValue)] message:[ItemManager sessionInformation:StringFromAddData(kStr_disableText)] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[ItemManager sessionInformation:StringFromAddData(kStr_tableHideData)] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[ItemManager sessionInformation:StringFromAddData(kStr_recordName)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                if( [[UIApplication sharedApplication] canOpenURL:url]) {
                    //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            //: }])];
            }])];
            //: [self presentViewController:alertControl animated:YES completion:nil];
            [self presentViewController:alertControl animated:YES completion:nil];

        //: } else if (status == SGPermissionStatusRestricted) {
        } else if (status == SGPermissionStatusRestricted) {

//            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//            if( [[UIApplication sharedApplication] canOpenURL:url]) {
//                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//            }

            //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[ItemManager sessionInformation:StringFromAddData(kStr_infoValue)] message:[ItemManager sessionInformation:StringFromAddData(kStr_disableText)] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[ItemManager sessionInformation:StringFromAddData(kStr_tableHideData)] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[ItemManager sessionInformation:StringFromAddData(kStr_recordName)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                if( [[UIApplication sharedApplication] canOpenURL:url]) {
                    //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            //: }])];
            }])];
            //: [self presentViewController:alertControl animated:YES completion:nil];
            [self presentViewController:alertControl animated:YES completion:nil];
        }
    //: }];
    }];
}


//: - (void)_enterImagePickerController {
- (void)courseOfAction {
    //: [self stop];
    [self remote];

    //: UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    //: imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    //: imagePicker.delegate = self;
    imagePicker.delegate = self;
    //: imagePicker.modalPresentationStyle = UIModalPresentationCustom;
    imagePicker.modalPresentationStyle = UIModalPresentationCustom;
    //: [self presentViewController:imagePicker animated:YES completion:nil];
    [self presentViewController:imagePicker animated:YES completion:nil];
}

//: #pragma mark - - UIImagePickerControllerDelegate 的方法
#pragma mark - - UIImagePickerControllerDelegate 的方法
//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];

    //: [self start];
    [self link];
}

//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    //: UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [scanCode readQRCode:image completion:^(NSString *result) {
    [scanCode max:image anagramWithoutCompletion:^(NSString *result) {

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (result == nil) {
        if (result == nil) {
            //: [self dismissViewControllerAnimated:YES completion:nil];
            [self dismissViewControllerAnimated:YES completion:nil];
            //: [self start];
            [self link];
        //: } else {
        } else {
            //: [self->scanCode playSoundEffect:@"scan_end_sound.caf"];
            [self->scanCode playImageButterflyEffect:StringFromAddData(kStr_fileContent)];
            //: [self addFriend:result];
            [self cronyNumber:result];

//            [self dismissViewControllerAnimated:YES completion:^{
//                @strongify(self);
//                ColorViewController *vc = [[ColorViewController alloc] initWithUserId:result];
//                [self.navigationController pushViewController:vc animated:YES];
//            }];
        }
    //: }];
    }];
}

//: - (void)addFriend:(NSString *)userId{
- (void)cronyNumber:(NSString *)userId{

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:userId forKey:@"account"];
    [dict setObject:userId forKey:StringFromAddData(kStr_canBlueText)];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/search"] params:dict isShow:YES success:^(id responseObject) {
    [PhotoManager towardExtra:[NSString stringWithFormat:StringFromAddData(kStr_formatName)] tool:dict examine:YES titleResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict with:StringFromAddData(kStr_selectedTitle)];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict with:StringFromAddData(kStr_rowValue)];
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict view:StringFromAddData(kStr_pathTitle)];
            //: NSString *uid = [data newStringValueForKey:@"uid"];
            NSString *uid = [data with:StringFromAddData(kStr_directionName)];
//            [wself sendAddrequest:uid];

            //: [self dismissViewControllerAnimated:YES completion:^{
            [self dismissViewControllerAnimated:YES completion:^{
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uid];
                ColorViewController *vc = [[ColorViewController alloc] initWithCell:uid];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
            //: }];
            }];

        //: } else {
        } else {

            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD format:msg];

        }
    //: } failed:^(id responseObject, NSError *error) {
    } exhibitClick:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: @end
@end

Byte * AddDataToCache(Byte *data) {
    int withDisable = data[0];
    int sizeInfo = data[1];
    int pathTimeInfoHighlight = data[2];
    if (!withDisable) return data + pathTimeInfoHighlight;
    for (int i = 0; i < sizeInfo / 2; i++) {
        int begin = pathTimeInfoHighlight + i;
        int end = pathTimeInfoHighlight + sizeInfo - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[pathTimeInfoHighlight + sizeInfo] = 0;
    return data + pathTimeInfoHighlight;
}

NSString *StringFromAddData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AddDataToCache(data)];
}  
