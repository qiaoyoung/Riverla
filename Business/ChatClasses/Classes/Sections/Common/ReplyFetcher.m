
#import <Foundation/Foundation.h>

NSString *StringFromJackData(Byte *data);        


//: contact_tag_fragment_cancel
Byte kStr_properLagOptionName[] = {91, 27, 53, 10, 170, 223, 95, 17, 195, 69, 46, 58, 57, 63, 44, 46, 63, 42, 63, 44, 50, 42, 49, 61, 44, 50, 56, 48, 57, 63, 42, 46, 44, 57, 46, 48, 55, 165};


//: mp4
Byte kStr_representWhenName[] = {65, 3, 76, 11, 3, 83, 122, 72, 175, 156, 133, 33, 36, 232, 156};


//: setting_privacy_camera
Byte kStr_appearanceName[] = {58, 22, 97, 14, 79, 174, 141, 33, 60, 112, 180, 151, 158, 215, 18, 4, 19, 19, 8, 13, 6, 254, 15, 17, 8, 21, 0, 2, 24, 254, 2, 0, 12, 4, 17, 0, 225};


//: contact_tag_fragment_sure
Byte kStr_edictContent[] = {30, 25, 46, 6, 13, 105, 53, 65, 64, 70, 51, 53, 70, 49, 70, 51, 57, 49, 56, 68, 51, 57, 63, 55, 64, 70, 49, 69, 71, 68, 55, 145};


//: warm_prompt
Byte kStr_atQuickData[] = {3, 11, 68, 10, 234, 78, 253, 15, 218, 20, 51, 29, 46, 41, 27, 44, 46, 43, 41, 44, 48, 141};


//: setting_privacy
Byte kStr_appearanceValue[] = {88, 15, 15, 4, 100, 86, 101, 101, 90, 95, 88, 80, 97, 99, 90, 103, 82, 84, 106, 207};

// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitPhotoFetcher.m
// Afterwards
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitMediaFetcher.h"
#import "ReplyFetcher.h"
//: #import <MobileCoreServices/MobileCoreServices.h>
#import <MobileCoreServices/MobileCoreServices.h>
//: #import "FFFKitFileLocationHelper.h"
#import "ShowHelper.h"
//: #import "FFFMessageMaker.h"
#import "ThreadMaker.h"
//: #import "UserGlobalMacro.h"
#import "UserGlobalMacro.h"
//: #import "UserKitDependency.h"
#import "UserKitDependency.h"
//: #import "TZImageManager.h"
#import "TZImageManager.h"
//: #import "FFFKitProgressHUD.h"
#import "ExampleView.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Afterwards.h"
//: #import "FFFKitMediaPickerController.h"
#import "FitPickerController.h"
//: #import "AVAsset+MyUserKit.h"
#import "AVAsset+Afterwards.h"

//: @interface FFFKitMediaFetcher()<FFFKitMediaPickerDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@interface ReplyFetcher()<AlongDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>

//: @property (nonatomic,copy) NIMKitLibraryFetchResult libraryResultHandler;
@property (nonatomic,copy) NIMKitLibraryFetchResult libraryResultHandler;

//: @property (nonatomic,copy) NIMKitCameraFetchResult cameraResultHandler;
@property (nonatomic,copy) NIMKitCameraFetchResult cameraResultHandler;

//: @property (nonatomic,weak) UIImagePickerController *imagePicker;
@property (nonatomic,weak) UIImagePickerController *imagePicker;

//: @property (nonatomic,strong) FFFKitMediaPickerController *assetsPicker;
@property (nonatomic,strong) FitPickerController *assetsPicker;

//: @end
@end

//: @implementation FFFKitMediaFetcher
@implementation ReplyFetcher

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _mediaTypes = @[(NSString *)kUTTypeMovie,(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
        _mediaTypes = @[(NSString *)kUTTypeMovie,(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
        //: _limit = 9;
        _limit = 9;
    }
    //: return self;
    return self;
}

//: - (void)fetchPhotoFromLibrary:(NIMKitLibraryFetchResult)result
- (void)direct:(NIMKitLibraryFetchResult)result
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self setUpPhotoLibrary:^(UIViewController * _Nullable picker) {
    [self setWearer:^(UIViewController * _Nullable picker) {
        //: if (picker && weakSelf) {
        if (picker && weakSelf) {
            //: weakSelf.assetsPicker = picker;
            weakSelf.assetsPicker = picker;
            //: weakSelf.libraryResultHandler = result;
            weakSelf.libraryResultHandler = result;
            //: UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
            UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
            //: picker.modalPresentationStyle = UIModalPresentationFullScreen;
            picker.modalPresentationStyle = UIModalPresentationFullScreen;
            //: if (rootVC.presentedViewController) {
            if (rootVC.presentedViewController) {
                //: [rootVC.presentedViewController presentViewController:picker animated:YES completion:nil];
                [rootVC.presentedViewController presentViewController:picker animated:YES completion:nil];
            //: } else {
            } else {
                //: [rootVC presentViewController:picker animated:YES completion:nil];
                [rootVC presentViewController:picker animated:YES completion:nil];
            }
        //: }else{
        }else{
            //: result(nil,nil,PHAssetMediaTypeUnknown);
            result(nil,nil,PHAssetMediaTypeUnknown);
        }
    //: }];
    }];
}

//: - (void)fetchMediaFromCamera:(NIMKitCameraFetchResult)result
- (void)albumTing:(NIMKitCameraFetchResult)result
{
    //: if ([self initCamera]) {
    if ([self initTitleCamera]) {
        //: self.cameraResultHandler = result;
        self.cameraResultHandler = result;




        //: UIImagePickerController *imagePicker = [self setupImagePicker];
        UIImagePickerController *imagePicker = [self menu];
        //: UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
        UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
        //: rootVC.modalPresentationStyle = UIModalPresentationFullScreen;
        rootVC.modalPresentationStyle = UIModalPresentationFullScreen;
        //: if (rootVC.presentedViewController) {
        if (rootVC.presentedViewController) {
            //: [rootVC.presentedViewController presentViewController:imagePicker animated:YES completion:nil];
            [rootVC.presentedViewController presentViewController:imagePicker animated:YES completion:nil];
        //: } else {
        } else {
            //: [rootVC presentViewController:imagePicker animated:YES completion:nil];
            [rootVC presentViewController:imagePicker animated:YES completion:nil];
        }
        //: _imagePicker = imagePicker;
        _imagePicker = imagePicker;

    }
}

//: - (UIImagePickerController *)setupImagePicker {
- (UIImagePickerController *)menu {
    //: UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    //: imagePicker.delegate = self;
    imagePicker.delegate = self;
    //: imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    //: imagePicker.mediaTypes = self.mediaTypes;
    imagePicker.mediaTypes = self.mediaTypes;

    //: BOOL allowMovie = [_mediaTypes containsObject:(NSString *)kUTTypeMovie];
    BOOL allowMovie = [_mediaTypes containsObject:(NSString *)kUTTypeMovie];
    //: BOOL allowPhoto = [_mediaTypes containsObject:(NSString *)kUTTypeImage];
    BOOL allowPhoto = [_mediaTypes containsObject:(NSString *)kUTTypeImage];
    //: if (allowMovie && !allowPhoto) {
    if (allowMovie && !allowPhoto) {
        //: imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModeVideo;
        imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModeVideo;
    //: } else {
    } else {
        //: imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
        imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
    }
    //: imagePicker.videoQuality = UIImagePickerControllerQualityTypeHigh;
    imagePicker.videoQuality = UIImagePickerControllerQualityTypeHigh;
    //: return imagePicker;
    return imagePicker;
}

//: - (void)setupPicker:(void(^)(UIViewController * _Nullable picker)) handler {
- (void)videoInfo:(void(^)(UIViewController * _Nullable picker)) handler {
    //: UIViewController *pickerVC = nil;
    UIViewController *pickerVC = nil;
    //: FFFKitMediaPickerController *vc = [[FFFKitMediaPickerController alloc] initWithMaxImagesCount:self.limit];
    FitPickerController *vc = [[FitPickerController alloc] initWithScoopCount:self.limit];
    //: vc.nim_delegate = self;
    vc.nim_delegate = self;
    //: vc.mediaTypes = self.mediaTypes;
    vc.mediaTypes = self.mediaTypes;
    //: self.assetsPicker = vc;
    self.assetsPicker = vc;
    //: pickerVC = vc;
    pickerVC = vc;
    //: if (handler) {
    if (handler) {
        //: handler(pickerVC);
        handler(pickerVC);
    }
}

//: - (void)setUpPhotoLibrary:(void(^)(UIViewController * _Nullable picker)) handler
- (void)setWearer:(void(^)(UIViewController * _Nullable picker)) handler
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (@available(iOS 14, *)) {
    if (@available(iOS 14, *)) {
        //: PHAuthorizationStatus rstatus = [PHPhotoLibrary authorizationStatusForAccessLevel:PHAccessLevelReadWrite];
        PHAuthorizationStatus rstatus = [PHPhotoLibrary authorizationStatusForAccessLevel:PHAccessLevelReadWrite];
        //: switch (rstatus) {
        switch (rstatus) {
            //: case PHAuthorizationStatusNotDetermined:
            case PHAuthorizationStatusNotDetermined:
            {
                //: [PHPhotoLibrary requestAuthorizationForAccessLevel:PHAccessLevelReadWrite handler:^(PHAuthorizationStatus status) {
                [PHPhotoLibrary requestAuthorizationForAccessLevel:PHAccessLevelReadWrite handler:^(PHAuthorizationStatus status) {
                    //: dispatch_async(dispatch_get_main_queue(), ^{
                    dispatch_async(dispatch_get_main_queue(), ^{
                        //: if (status == PHAuthorizationStatusRestricted
                        if (status == PHAuthorizationStatusRestricted
                            //: || status == PHAuthorizationStatusDenied
                            || status == PHAuthorizationStatusDenied
                            //: || status == PHAuthorizationStatusLimited) {
                            || status == PHAuthorizationStatusLimited) {
                            //: dispatch_async(dispatch_get_main_queue(), ^{
                            dispatch_async(dispatch_get_main_queue(), ^{
                                //: if(handler) handler(nil);
                                if(handler) handler(nil);
                            //: });
                            });
                        //: } else if (status == PHAuthorizationStatusAuthorized) {
                        } else if (status == PHAuthorizationStatusAuthorized) {
                            //: [weakSelf setupPicker:handler];
                            [weakSelf videoInfo:handler];
                        }
                    //: });
                    });
                //: }];
                }];
            }
                //: break;
                break;
            //: case PHAuthorizationStatusAuthorized:
            case PHAuthorizationStatusAuthorized:
            //: case PHAuthorizationStatusLimited:
            case PHAuthorizationStatusLimited:
            {
                //: [weakSelf setupPicker:handler];
                [weakSelf videoInfo:handler];
            }
                //: break;
                break;

            //: default:
            default:
            {
                //: [[[UIAlertView alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"]
                [[[UIAlertView alloc] initWithTitle:[ItemManager sessionInformation:StringFromJackData(kStr_atQuickData)]
                                            //: message:[FFFLanguageManager getTextWithKey:@"setting_privacy"]
                                            message:[ItemManager sessionInformation:StringFromJackData(kStr_appearanceValue)]
                                           //: delegate:self
                                           delegate:self
                                  //: cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
                                  cancelButtonTitle:[ItemManager sessionInformation:StringFromJackData(kStr_properLagOptionName)]
                                  //: otherButtonTitles:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"],nil] show];
                                  otherButtonTitles:[ItemManager sessionInformation:StringFromJackData(kStr_edictContent)],nil] show];

//                UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:LangKey(@"warm_prompt") message:LangKey(@"setting_privacy") preferredStyle:UIAlertControllerStyleAlert];
//                [alertControl addAction:([UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//                }])];
//                [alertControl addAction:([UIAlertAction actionWithTitle:LangKey(@"tag_activity_set") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//                    NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//                    if( [[UIApplication sharedApplication] canOpenURL:url]) {
//                        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//                    }
//                }])];
//                [self presentViewController:alertControl animated:YES completion:nil];



                //: if(handler) handler(nil);
                if(handler) handler(nil);
            }
                //: break;
                break;
        }
    //: } else {
    } else {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status){
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status){
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (status == PHAuthorizationStatusRestricted || status == PHAuthorizationStatusDenied) {
                if (status == PHAuthorizationStatusRestricted || status == PHAuthorizationStatusDenied) {


                    //: [[[UIAlertView alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"]
                    [[[UIAlertView alloc] initWithTitle:[ItemManager sessionInformation:StringFromJackData(kStr_atQuickData)]
                                                //: message:[FFFLanguageManager getTextWithKey:@"setting_privacy"]
                                                message:[ItemManager sessionInformation:StringFromJackData(kStr_appearanceValue)]
                                               //: delegate:self
                                               delegate:self
                                      //: cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
                                      cancelButtonTitle:[ItemManager sessionInformation:StringFromJackData(kStr_properLagOptionName)]
                                      //: otherButtonTitles:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"],nil] show];
                                      otherButtonTitles:[ItemManager sessionInformation:StringFromJackData(kStr_edictContent)],nil] show];

                    //: if(handler) handler(nil);
                    if(handler) handler(nil);
                }
                //: if (status == PHAuthorizationStatusAuthorized) {
                if (status == PHAuthorizationStatusAuthorized) {
                    //: [weakSelf setupPicker:handler];
                    [weakSelf videoInfo:handler];
                }
            //: });
            });
        //: }];
        }];
    }

}

//: - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
- (void)beforeRemote:(UIAlertView *)alertView sub:(NSInteger)buttonIndex
{
    //: if(buttonIndex == 1){
    if(buttonIndex == 1){
        //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                            }
    }

}

//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    //: NSString *mediaType = info[UIImagePickerControllerMediaType];
    NSString *mediaType = info[UIImagePickerControllerMediaType];
    //: if ([mediaType isEqualToString:(NSString *)kUTTypeMovie]) {
    if ([mediaType isEqualToString:(NSString *)kUTTypeMovie]) {

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            //: NSURL *inputURL = [info objectForKey:UIImagePickerControllerMediaURL];
            NSURL *inputURL = [info objectForKey:UIImagePickerControllerMediaURL];
            //: NSString *outputFileName = [FFFKitFileLocationHelper genFilenameWithExt:@"mp4"];
            NSString *outputFileName = [ShowHelper timeName:StringFromJackData(kStr_representWhenName)];
            //: NSString *outputPath = [FFFKitFileLocationHelper filepathForVideo:outputFileName];
            NSString *outputPath = [ShowHelper nameVideo:outputFileName];
            //: AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
            AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
            //: AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:asset
            AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:asset
                                                                             //: presetName:AVAssetExportPresetMediumQuality];
                                                                             presetName:AVAssetExportPresetMediumQuality];
            //: session.outputURL = [NSURL fileURLWithPath:outputPath];
            session.outputURL = [NSURL fileURLWithPath:outputPath];
            //: session.outputFileType = AVFileTypeMPEG4; 
            session.outputFileType = AVFileTypeMPEG4; // 支持安卓某些机器的视频播放
            //: session.shouldOptimizeForNetworkUse = YES;
            session.shouldOptimizeForNetworkUse = YES;
            //: session.videoComposition = [asset nim_videoComposition]; 
            session.videoComposition = [asset session]; //修正某些播放器不识别视频Rotation的问题
            //: [session exportAsynchronouslyWithCompletionHandler:^(void)
            [session exportAsynchronouslyWithCompletionHandler:^(void)
             {
                 //: dispatch_async(dispatch_get_main_queue(), ^{
                 dispatch_async(dispatch_get_main_queue(), ^{
                     //: if (!weakSelf.cameraResultHandler)
                     if (!weakSelf.cameraResultHandler)
                     {
                         //: return;
                         return;
                     }

                     //: if (session.status == AVAssetExportSessionStatusCompleted)
                     if (session.status == AVAssetExportSessionStatusCompleted)
                     {
                         //: weakSelf.cameraResultHandler(outputPath,nil);
                         weakSelf.cameraResultHandler(outputPath,nil);
                     }
                     //: else
                     else
                     {
                         //: weakSelf.cameraResultHandler(nil,nil);
                         weakSelf.cameraResultHandler(nil,nil);
                     }
                     //: weakSelf.cameraResultHandler = nil;
                     weakSelf.cameraResultHandler = nil;
                 //: });
                 });
             //: }];
             }];

        //: });
        });

    //: } else {
    } else {
        //: if (!self.cameraResultHandler)
        if (!self.cameraResultHandler)
        {
            //: return;
            return;
        }

        //: UIImage *image = info[UIImagePickerControllerOriginalImage];
        UIImage *image = info[UIImagePickerControllerOriginalImage];
        //: image = [image nim_fixOrientation];
        image = [image color];

        // MARK: - 处理图片
        //: CGSize imgSize = image.size;
        CGSize imgSize = image.size;
        //所有上传照片最大像素等比例压缩
        //: CGFloat maxPix = 414;
        CGFloat maxPix = 414;

        //: if (imgSize.width > imgSize.height) {
        if (imgSize.width > imgSize.height) {
            //: CGFloat scale = imgSize.height/imgSize.width;
            CGFloat scale = imgSize.height/imgSize.width;
            //: if (imgSize.width > maxPix) {
            if (imgSize.width > maxPix) {
                //: imgSize.width = maxPix;
                imgSize.width = maxPix;
                //: imgSize.height = scale * maxPix;
                imgSize.height = scale * maxPix;
            }
        //: }else {
        }else {
            //: CGFloat scale = imgSize.width/imgSize.height;
            CGFloat scale = imgSize.width/imgSize.height;
            //: if (imgSize.height > maxPix) {
            if (imgSize.height > maxPix) {
                //: imgSize.height = maxPix;
                imgSize.height = maxPix;
                //: imgSize.width = scale * maxPix;
                imgSize.width = scale * maxPix;
            }
        }

        //: image = [self imageWithImage:image scaledToSize:imgSize opaque:YES];
        image = [self blockOpaque:image sumEnable:imgSize view:YES];

        //: self.cameraResultHandler(nil,image);
        self.cameraResultHandler(nil,image);
        //: self.cameraResultHandler = nil;
        self.cameraResultHandler = nil;
    }
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize opaque:(BOOL)opaque
- (UIImage*)blockOpaque:(UIImage*)image sumEnable:(CGSize)newSize view:(BOOL)opaque
{
    //: NSInteger newSizeW = (NSInteger)newSize.width; 
    NSInteger newSizeW = (NSInteger)newSize.width; //  转化为整型,不然像素补全会出现黑边
    //: NSInteger newSizeH = (NSInteger)newSize.height;
    NSInteger newSizeH = (NSInteger)newSize.height;

//    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
//        UIGraphicsBeginImageContextWithOptions(newSize, opaque, [UIScreen mainScreen].scale);
//    } else {
//        UIGraphicsBeginImageContext(newSize);
//    }
    //: UIGraphicsBeginImageContext(newSize);
    UIGraphicsBeginImageContext(newSize);

    //: [image drawInRect:CGRectMake(0,0,newSizeW,newSizeH)];
    [image drawInRect:CGRectMake(0,0,newSizeW,newSizeH)];
    //: UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();

    //: return newImage;
    return newImage;
}


//: #pragma mark - 相册回调
#pragma mark - 相册回调
//: - (void)onPickerSelectedWithType:(PHAssetMediaType)type
- (void)georgiaHomeBoy:(PHAssetMediaType)type
                          //: images:(nullable NSArray *)images
                          bill:(nullable NSArray *)images
                            //: path:(nullable NSString *)path {
                            electPath:(nullable NSString *)path {
    //: if (_libraryResultHandler) {
    if (_libraryResultHandler) {
        //: _libraryResultHandler(images, path, type);
        _libraryResultHandler(images, path, type);
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)setMediaTypes:(NSArray *)mediaTypes
- (void)setMediaTypes:(NSArray *)mediaTypes
{
    //: _mediaTypes = mediaTypes;
    _mediaTypes = mediaTypes;
    //: _imagePicker.mediaTypes = mediaTypes;
    _imagePicker.mediaTypes = mediaTypes;
    //: _assetsPicker.mediaTypes = mediaTypes;
    _assetsPicker.mediaTypes = mediaTypes;
}

//: - (BOOL)initCamera{
- (BOOL)initTitleCamera{
    //: if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {


        //: [[[UIAlertView alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"]
        [[[UIAlertView alloc] initWithTitle:[ItemManager sessionInformation:StringFromJackData(kStr_atQuickData)]
                                    //: message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"]
                                    message:[ItemManager sessionInformation:StringFromJackData(kStr_appearanceName)]
                                   //: delegate:self
                                   delegate:self
                          //: cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
                          cancelButtonTitle:[ItemManager sessionInformation:StringFromJackData(kStr_properLagOptionName)]
                          //: otherButtonTitles:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"],nil] show];
                          otherButtonTitles:[ItemManager sessionInformation:StringFromJackData(kStr_edictContent)],nil] show];
        //: return NO;
        return NO;
    }
    //: NSString *mediaType = AVMediaTypeVideo;
    NSString *mediaType = AVMediaTypeVideo;
    //: AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];
    //: if(authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied){
    if(authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied){


        //: [[[UIAlertView alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"]
        [[[UIAlertView alloc] initWithTitle:[ItemManager sessionInformation:StringFromJackData(kStr_atQuickData)]
                                    //: message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"]
                                    message:[ItemManager sessionInformation:StringFromJackData(kStr_appearanceName)]
                                   //: delegate:self
                                   delegate:self
                          //: cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
                          cancelButtonTitle:[ItemManager sessionInformation:StringFromJackData(kStr_properLagOptionName)]
                          //: otherButtonTitles:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"],nil] show];
                          otherButtonTitles:[ItemManager sessionInformation:StringFromJackData(kStr_edictContent)],nil] show];

        //: return NO;
        return NO;

    }
    //: return YES;
    return YES;
}
//: @end
@end

Byte * JackDataToCache(Byte *data) {
    int pick = data[0];
    int todayStead = data[1];
    Byte lemur = data[2];
    int hesitate = data[3];
    if (!pick) return data + hesitate;
    for (int i = hesitate; i < hesitate + todayStead; i++) {
        int value = data[i] + lemur;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[hesitate + todayStead] = 0;
    return data + hesitate;
}

NSString *StringFromJackData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)JackDataToCache(data)];
}
