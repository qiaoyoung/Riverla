
#import <Foundation/Foundation.h>

NSString *StringFromTapData(Byte *data);


//: setting_privacy_camera
Byte kStr_name[] = {20, 22, 61, 13, 32, 5, 154, 22, 187, 235, 166, 222, 138, 176, 162, 177, 177, 166, 171, 164, 156, 173, 175, 166, 179, 158, 160, 182, 156, 160, 158, 170, 162, 175, 158, 42};


//: contact_tag_fragment_cancel
Byte kStr_maxData[] = {23, 27, 89, 13, 241, 47, 182, 236, 15, 124, 253, 34, 13, 188, 200, 199, 205, 186, 188, 205, 184, 205, 186, 192, 184, 191, 203, 186, 192, 198, 190, 199, 205, 184, 188, 186, 199, 188, 190, 197, 171};


//: scan_end_sound.caf
Byte kStr_userValue[] = {18, 18, 20, 4, 135, 119, 117, 130, 115, 121, 130, 120, 115, 135, 131, 137, 130, 120, 66, 119, 117, 122, 90};


//: tag_activity_set
Byte kStr_fieldText[] = {97, 16, 38, 7, 185, 60, 87, 154, 135, 141, 133, 135, 137, 154, 143, 156, 143, 154, 159, 133, 153, 139, 154, 161};


//: account
Byte kStr_nameMessageData[] = {17, 7, 36, 12, 123, 55, 108, 74, 113, 214, 242, 247, 133, 135, 135, 147, 153, 146, 152, 25};


//: code
Byte kStr_cellData[] = {9, 4, 36, 13, 255, 46, 75, 25, 186, 6, 197, 177, 146, 135, 147, 136, 137, 242};


//: msg
Byte kStr_replacementName[] = {29, 3, 25, 11, 26, 234, 138, 53, 23, 144, 223, 134, 140, 128, 171};


//: data
Byte kStr_optionName[] = {29, 4, 1, 11, 11, 235, 136, 119, 32, 182, 183, 101, 98, 117, 98, 96};


//: uid
Byte kStr_linkShadowText[] = {84, 3, 46, 14, 120, 27, 24, 131, 12, 157, 140, 92, 231, 184, 163, 151, 146, 147};


//: /user/search
Byte kStr_pressWillText[] = {49, 12, 4, 6, 45, 4, 51, 121, 119, 105, 118, 51, 119, 105, 101, 118, 103, 108, 231};


//: icon_QR_close
Byte kStr_shouldText[] = {37, 13, 29, 12, 236, 30, 189, 188, 29, 77, 73, 14, 134, 128, 140, 139, 124, 110, 111, 124, 128, 137, 140, 144, 130, 209};


//: warm_prompt
Byte kStr_makeData[] = {73, 11, 35, 7, 166, 137, 124, 154, 132, 149, 144, 130, 147, 149, 146, 144, 147, 151, 44};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MarginViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCContactScanViewController.h"
#import "MarginViewController.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESPersonalCardViewController.h"
#import "IndependentViewController.h"
//: #import "ZMONScanToolBar.h"
#import "BackgroundView.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+RefreshFaceBlock.h"
//: #import "SGQRCode.h"
#import "SGQRCode.h"
//: #import "NTESUserQRCodeViewController.h"
#import "ChanceViewController.h"

//: @interface CCCContactScanViewController ()<SGScanCodeDelegate, SGScanCodeSampleBufferDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@interface MarginViewController ()<RecentDelegate, MarginOfErrorDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    //: SGScanCode *scanCode;
    ShowPicture *scanCode;
}
//: @property (nonatomic, strong) SGScanView *scanView;
@property (nonatomic, strong) HouseView *scanView;
//: @property (nonatomic, strong) ZMONScanToolBar *toolBar;
@property (nonatomic, strong) BackgroundView *toolBar;
//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;

//: @end
@end

//: @implementation CCCContactScanViewController
@implementation MarginViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [self stop];
    [self origin];
}

//: - (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
    //: [self start];
    [self resolutionStart];
}

//: - (void)viewWillDisappear:(BOOL)animated {
- (void)viewWillDisappear:(BOOL)animated {
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
    //: [self stop];
    [self origin];
}

//: - (void)start {
- (void)resolutionStart {
    //: [scanCode startRunning];
    [scanCode runningGame];
    //: [self.scanView startScanning];
    [self.scanView key];
}

//: - (void)stop {
- (void)origin {
    //: [scanCode stopRunning];
    [scanCode goEnable];
    //: [self.scanView stopScanning];
    [self.scanView unitOfTime];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    //: [self configUI];
    [self queryedBySize];

    //: [self configScanCode];
    [self messageModel];
}

//: - (void)configUI {
- (void)queryedBySize {
    //: [self.view addSubview:self.scanView];
    [self.view addSubview:self.scanView];
    //: [self.view addSubview:self.toolBar];
    [self.view addSubview:self.toolBar];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"icon_QR_close"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:StringFromTapData(kStr_shouldText)] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(messageView) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 25+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 25+[UIDevice table], 40, 40);

}

//: - (void)backAction{
- (void)messageView{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)configScanCode {
- (void)messageModel {
    //: scanCode = [[SGScanCode alloc] init];
    scanCode = [[ShowPicture alloc] init];
    //: if (![scanCode checkCameraDeviceRearAvailable]) {
    if (![scanCode dorsalVertebra]) {
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
- (void)showPin:(ShowPicture *)scanCode message:(NSString *)result {
    //: [self stop];
    [self origin];

    //: [scanCode playSoundEffect:@"scan_end_sound.caf"];
    [scanCode replyEffect:StringFromTapData(kStr_userValue)];

    //: [self addFriend:result];
    [self bar:result];
//    IndependentViewController *vc = [[IndependentViewController alloc] initWithUserId:result];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)scanCode:(SGScanCode *)scanCode brightness:(CGFloat)brightness {
- (void)writtenCommunication:(ShowPicture *)scanCode key:(CGFloat)brightness {
    //: if (brightness < - 1.5) {
    if (brightness < - 1.5) {
        //: [self.toolBar showTorch];
        [self.toolBar by];
    }

    //: if (brightness > 0) {
    if (brightness > 0) {
        //: [self.toolBar dismissTorch];
        [self.toolBar send];
    }
}

//: - (SGScanView *)scanView {
- (HouseView *)scanView {
    //: if (!_scanView) {
    if (!_scanView) {
        //: SGScanViewConfigure *configure = [[SGScanViewConfigure alloc] init];
        BlockAt *configure = [[BlockAt alloc] init];

        //: CGFloat x = 0;
        CGFloat x = 0;
        //: CGFloat y = 0;
        CGFloat y = 0;
        //: CGFloat w = self.view.frame.size.width;
        CGFloat w = self.view.frame.size.width;
        //: CGFloat h = self.view.frame.size.height;
        CGFloat h = self.view.frame.size.height;
        //: _scanView = [[SGScanView alloc] initWithFrame:CGRectMake(x, y, w, h) configure:configure];
        _scanView = [[HouseView alloc] initWithShared:CGRectMake(x, y, w, h) color_strong:configure];

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
                [strongSelf->scanCode setTitleFactor:4.0];
            //: } else {
            } else {
                //: [strongSelf->scanCode setVideoZoomFactor:1.0];
                [strongSelf->scanCode setTitleFactor:1.0];
            }
        //: };
        };
    }
    //: return _scanView;
    return _scanView;
}

//: - (ZMONScanToolBar *)toolBar {
- (BackgroundView *)toolBar {
    //: if (!_toolBar) {
    if (!_toolBar) {
        //: _toolBar = [[ZMONScanToolBar alloc] init];
        _toolBar = [[BackgroundView alloc] init];
        //: CGFloat y = self.view.frame.size.height - 220;
        CGFloat y = self.view.frame.size.height - 220;
        //: _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        //: [_toolBar addQRCodeTarget:self action:@selector(qrcode_action)];
        [_toolBar name:self magnitude:@selector(centerInfo)];
        //: [_toolBar addAlbumTarget:self action:@selector(album_action)];
        [_toolBar writtenAccountConceptAlbum:self view:@selector(keyMediumRemote)];
    }
    //: return _toolBar;
    return _toolBar;
}

//: - (void)qrcode_action {
- (void)centerInfo {
    //: [self stop];
    [self origin];
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    ChanceViewController *vc = [[ChanceViewController alloc] init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)album_action {
- (void)keyMediumRemote {
    //: [SGPermission permissionWithType:SGPermissionTypePhoto completion:^(SGPermission * _Nonnull permission, SGPermissionStatus status) {
    [TitleApp actionBy:SGPermissionTypePhoto ting:^(TitleApp * _Nonnull permission, SGPermissionStatus status) {
        //: if (status == SGPermissionStatusNotDetermined) {
        if (status == SGPermissionStatusNotDetermined) {
            //: [permission request:^(BOOL granted) {
            [permission shared:^(BOOL granted) {
                //: if (granted) {
                if (granted) {
                    //: [self _enterImagePickerController];
                    [self pickerController];
                //: } else {
                } else {
                }
            //: }];
            }];
        //: } else if (status == SGPermissionStatusAuthorized) {
        } else if (status == SGPermissionStatusAuthorized) {
            //: [self _enterImagePickerController];
            [self pickerController];
        //: } else if (status == SGPermissionStatusDenied) {
        } else if (status == SGPermissionStatusDenied) {


            //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[TeamManager sizeKey:StringFromTapData(kStr_makeData)] message:[TeamManager sizeKey:StringFromTapData(kStr_name)] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[TeamManager sizeKey:StringFromTapData(kStr_maxData)] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[TeamManager sizeKey:StringFromTapData(kStr_fieldText)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[TeamManager sizeKey:StringFromTapData(kStr_makeData)] message:[TeamManager sizeKey:StringFromTapData(kStr_name)] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[TeamManager sizeKey:StringFromTapData(kStr_maxData)] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[TeamManager sizeKey:StringFromTapData(kStr_fieldText)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
- (void)pickerController {
    //: [self stop];
    [self origin];

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
    [self resolutionStart];
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
    [scanCode to:image image:^(NSString *result) {

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (result == nil) {
        if (result == nil) {
            //: [self dismissViewControllerAnimated:YES completion:nil];
            [self dismissViewControllerAnimated:YES completion:nil];
            //: [self start];
            [self resolutionStart];
        //: } else {
        } else {
            //: [self->scanCode playSoundEffect:@"scan_end_sound.caf"];
            [self->scanCode replyEffect:StringFromTapData(kStr_userValue)];
            //: [self addFriend:result];
            [self bar:result];

//            [self dismissViewControllerAnimated:YES completion:^{
//                @strongify(self);
//                IndependentViewController *vc = [[IndependentViewController alloc] initWithUserId:result];
//                [self.navigationController pushViewController:vc animated:YES];
//            }];
        }
    //: }];
    }];
}

//: - (void)addFriend:(NSString *)userId{
- (void)bar:(NSString *)userId{

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:userId forKey:@"account"];
    [dict setObject:userId forKey:StringFromTapData(kStr_nameMessageData)];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/search"] params:dict isShow:YES success:^(id responseObject) {
    [InfoManager enable:[NSString stringWithFormat:StringFromTapData(kStr_pressWillText)] sub:dict record:YES tapGetFailed:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict speedy:StringFromTapData(kStr_cellData)];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict speedy:StringFromTapData(kStr_replacementName)];
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict straddle:StringFromTapData(kStr_optionName)];
            //: NSString *uid = [data newStringValueForKey:@"uid"];
            NSString *uid = [data speedy:StringFromTapData(kStr_linkShadowText)];
//            [wself sendAddrequest:uid];

            //: [self dismissViewControllerAnimated:YES completion:^{
            [self dismissViewControllerAnimated:YES completion:^{
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uid];
                IndependentViewController *vc = [[IndependentViewController alloc] initWithDoingTo:uid];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
            //: }];
            }];

        //: } else {
        } else {

            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD rangeMessage:msg];

        }
    //: } failed:^(id responseObject, NSError *error) {
    } failedSmartOccurrentSelectShowGet:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: @end
@end

Byte * TapDataToCache(Byte *data) {
    int tapShow = data[0];
    int rest = data[1];
    Byte packet = data[2];
    int blue = data[3];
    if (!tapShow) return data + blue;
    for (int i = blue; i < blue + rest; i++) {
        int value = data[i] - packet;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[blue + rest] = 0;
    return data + blue;
}

NSString *StringFromTapData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TapDataToCache(data)];
}
