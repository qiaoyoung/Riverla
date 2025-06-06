
#import <Foundation/Foundation.h>

NSString *StringFromNeoJazzData(Byte *data);


//: 图片在本地不存在，无法发送
Byte kStr_convictName[] = {68, 39, 10, 76, 37, 21, 177, 205, 237, 134, 129, 128, 233, 145, 143, 229, 149, 179, 230, 160, 151, 230, 140, 188, 239, 168, 156, 229, 152, 173, 229, 141, 184, 228, 176, 156, 229, 172, 156, 230, 168, 156, 229, 135, 137, 231, 190, 155, 229, 92};


//: #612CF9
Byte kStr_stackName[] = {41, 7, 7, 30, 87, 223, 196, 57, 70, 67, 50, 49, 54, 35, 125};


//: 图片在本地不存在
Byte kStr_welcomeFessTitle[] = {43, 24, 7, 250, 34, 43, 178, 168, 156, 229, 152, 173, 229, 141, 184, 228, 176, 156, 229, 172, 156, 230, 168, 156, 229, 135, 137, 231, 190, 155, 229, 73};


//: 文件在iCloud上，无法发送
Byte kStr_chapterValue[] = {22, 33, 11, 85, 201, 226, 5, 222, 35, 23, 89, 129, 128, 233, 145, 143, 229, 149, 179, 230, 160, 151, 230, 140, 188, 239, 138, 184, 228, 100, 117, 111, 108, 67, 105, 168, 156, 229, 182, 187, 228, 135, 150, 230, 103};


//: #875FFA
Byte kStr_pieResidencyName[] = {9, 7, 7, 242, 150, 22, 205, 65, 70, 70, 53, 55, 56, 35, 99};


//: nimdemo.netease.fetcher
Byte kStr_automaticBarValue[] = {42, 23, 11, 8, 249, 227, 128, 53, 196, 159, 187, 114, 101, 104, 99, 116, 101, 102, 46, 101, 115, 97, 101, 116, 101, 110, 46, 111, 109, 101, 100, 109, 105, 110, 169};


//: mp4
Byte kStr_upperData[] = {88, 3, 10, 249, 242, 126, 61, 10, 138, 192, 52, 112, 109, 230};


//: 图片在iCloud上
Byte kStr_populationWhyText[] = {56, 18, 8, 1, 79, 81, 239, 209, 138, 184, 228, 100, 117, 111, 108, 67, 105, 168, 156, 229, 135, 137, 231, 190, 155, 229, 138};

// __DEBUG__
// __CLOSE_PRINT__
//
//  IconWithPickerController.m
// Notice
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitMediaPickerController.h"
#import "IconWithPickerController.h"
//: #import "FFFKitProgressHUD.h"
#import "DiscoverEffectView.h"
//: #import "ViewKitDependency.h"
#import "ViewKitDependency.h"
//: #import "ViewGlobalMacro.h"
#import "ViewGlobalMacro.h"
//: #import "FFFKitFileLocationHelper.h"
#import "WithHelper.h"
//: #import <MobileCoreServices/MobileCoreServices.h>
#import <MobileCoreServices/MobileCoreServices.h>

//: @interface FFFKitMediaPickerController ()<TZImagePickerControllerDelegate>
@interface IconWithPickerController ()<TZImagePickerControllerDelegate>

//: @property (nonatomic, assign) UIStatusBarStyle myStatusBarStyle;
@property (nonatomic, assign) UIStatusBarStyle myStatusBarStyle;

//: @end
@end

//: @implementation FFFKitMediaPickerController
@implementation IconWithPickerController

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount {
- (instancetype)initWithCut:(NSInteger)maxImagesCount {
    //: if (self = [super initWithMaxImagesCount:maxImagesCount delegate:nil]) {
    if (self = [super initWithMaxImagesCount:maxImagesCount delegate:nil]) {
        //: self.navigationBar.barStyle = UIBarStyleBlack;
        self.navigationBar.barStyle = UIBarStyleBlack;
        //: self.pickerDelegate = self;
        self.pickerDelegate = self;
        //: self.naviBgColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
        self.naviBgColor = [UIColor colorWithPatternImage:[MessageTitleHelper edit:[UIColor isView:StringFromNeoJazzData(kStr_pieResidencyName)] magnitudeerval:[UIColor isView:StringFromNeoJazzData(kStr_stackName)] view:SNLinearGradientDirectionLevel]];
        //: self.naviTitleColor = [UIColor blackColor];
        self.naviTitleColor = [UIColor blackColor];
        //: self.barItemTextColor = [UIColor blackColor];
        self.barItemTextColor = [UIColor blackColor];

        //: self.allowPickingOriginalPhoto = NO;
        self.allowPickingOriginalPhoto = NO;
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount delegate:(id<TZImagePickerControllerDelegate>)delegate {
- (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount delegate:(id<TZImagePickerControllerDelegate>)delegate {
    //: if (self = [super initWithMaxImagesCount:maxImagesCount delegate:delegate]) {
    if (self = [super initWithMaxImagesCount:maxImagesCount delegate:delegate]) {
        //: self.navigationBar.barStyle = UIBarStyleDefault;
        self.navigationBar.barStyle = UIBarStyleDefault;
        //: self.naviBgColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
        self.naviBgColor = [UIColor colorWithPatternImage:[MessageTitleHelper edit:[UIColor isView:StringFromNeoJazzData(kStr_pieResidencyName)] magnitudeerval:[UIColor isView:StringFromNeoJazzData(kStr_stackName)] view:SNLinearGradientDirectionLevel]];
        //: self.naviTitleColor = [UIColor blackColor];
        self.naviTitleColor = [UIColor blackColor];
        //: self.barItemTextColor = [UIColor blackColor];
        self.barItemTextColor = [UIColor blackColor];

        //: self.allowPickingOriginalPhoto = NO;
        self.allowPickingOriginalPhoto = NO;
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//: - (void)viewWillAppear:(BOOL)animated
- (void)viewWillAppear:(BOOL)animated
{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
//    [UIApplication sharedApplication].statusBarStyle =  UIStatusBarStyleDarkContent;
//    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];

}

//: #pragma mark - <TZImagePickerControllerDelegate>
#pragma mark - <TZImagePickerControllerDelegate>
//: - (void)imagePickerController:(TZImagePickerController *)picker
- (void)imagePickerController:(TZImagePickerController *)picker
       //: didFinishPickingPhotos:(NSArray<UIImage *> *)photos
       didFinishPickingPhotos:(NSArray<UIImage *> *)photos
                 //: sourceAssets:(NSArray *)assets
                 sourceAssets:(NSArray *)assets
        //: isSelectOriginalPhoto:(BOOL)isSelectOriginalPhoto infos:(NSArray<NSDictionary *> *)infos {
        isSelectOriginalPhoto:(BOOL)isSelectOriginalPhoto infos:(NSArray<NSDictionary *> *)infos {
    //: if (isSelectOriginalPhoto)
    if (isSelectOriginalPhoto)
    {
        //: [self requestAssets:[assets mutableCopy]];
        [self message:[assets mutableCopy]];
    }
    //: else
    else
    {
        //: if ([_nim_delegate respondsToSelector:@selector(onPickerSelectedWithType:images:path:)]) {
        if ([_nim_delegate respondsToSelector:@selector(target:electPath:label:)]) {
            //: [_nim_delegate onPickerSelectedWithType:PHAssetMediaTypeImage images:photos path:nil];
            [_nim_delegate target:PHAssetMediaTypeImage electPath:photos label:nil];
        }
    }
}

//: - (void)imagePickerController:(TZImagePickerController *)picker
- (void)imagePickerController:(TZImagePickerController *)picker
        //: didFinishPickingVideo:(UIImage *)coverImage
        didFinishPickingVideo:(UIImage *)coverImage
                 //: sourceAssets:(id)asset{
                 sourceAssets:(id)asset{
    //: NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    //: [self requestAssets:items];
    [self message:items];
}

//: - (void)imagePickerController:(TZImagePickerController *)picker
- (void)imagePickerController:(TZImagePickerController *)picker
     //: didFinishPickingGifImage:(UIImage *)animatedImage
     didFinishPickingGifImage:(UIImage *)animatedImage
                 //: sourceAssets:(PHAsset *)asset {
                 sourceAssets:(PHAsset *)asset {
    //: NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    //: [self requestAssets:items];
    [self message:items];
}

//: - (void)requestAssets:(NSMutableArray *)assets
- (void)message:(NSMutableArray *)assets
{
    //: if (!assets.count) {
    if (!assets.count) {
        //: return;
        return;
    }

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [FFFKitProgressHUD show];
    [DiscoverEffectView cellToBubble];
    //: [self requestAsset:assets.firstObject handler:^(NSString *path, PHAssetMediaType type) {
    [self imageWith:assets.firstObject quick:^(NSString *path, PHAssetMediaType type) {
        //: [FFFKitProgressHUD dismiss];
        [DiscoverEffectView view];
        //: if ([weakSelf.nim_delegate respondsToSelector:@selector(onPickerSelectedWithType:images:path:)]) {
        if ([weakSelf.nim_delegate respondsToSelector:@selector(target:electPath:label:)]) {
            //: [weakSelf.nim_delegate onPickerSelectedWithType:type images:nil path:path];
            [weakSelf.nim_delegate target:type electPath:nil label:path];
        }
        //: if ([NSThread isMainThread]) {^{ [assets removeObjectAtIndex:0]; [weakSelf requestAssets:assets]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [assets removeObjectAtIndex:0]; [weakSelf requestAssets:assets]; });}
        if ([NSThread isMainThread]) {^{ [assets removeObjectAtIndex:0]; [weakSelf message:assets]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [assets removeObjectAtIndex:0]; [weakSelf message:assets]; });}



    //: }];
    }];
}

//: - (void)requestAsset:(PHAsset *)asset handler:(void(^)(NSString *,PHAssetMediaType)) handler
- (void)imageWith:(PHAsset *)asset quick:(void(^)(NSString *,PHAssetMediaType)) handler
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (asset.mediaType == PHAssetMediaTypeVideo) {
    if (asset.mediaType == PHAssetMediaTypeVideo) {

        //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            //: PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
            PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
            //: options.version = PHVideoRequestOptionsVersionCurrent;
            options.version = PHVideoRequestOptionsVersionCurrent;
            //: options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;
            options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;

            //: [PHImageManager.defaultManager requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable assetR, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
            [PHImageManager.defaultManager requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable assetR, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
                //: NSError *error = nil;
                NSError *error = nil;
                //: NSString *outputPath = nil;
                NSString *outputPath = nil;
                //: if ([[info objectForKey:PHImageResultIsInCloudKey] boolValue]) {
                if ([[info objectForKey:PHImageResultIsInCloudKey] boolValue]) {
                    //: outputPath = nil;
                    outputPath = nil;
                    //: error = [NSError errorWithDomain:@"nimdemo.netease.fetcher" code:0x1000 userInfo:@{NSLocalizedDescriptionKey:@"图片在iCloud上"}];
                    error = [NSError errorWithDomain:StringFromNeoJazzData(kStr_automaticBarValue) code:0x1000 userInfo:@{NSLocalizedDescriptionKey:StringFromNeoJazzData(kStr_populationWhyText)}];
                    //: [weakSelf showErrorMsg:@"文件在iCloud上，无法发送"];
                    [weakSelf tingDown:StringFromNeoJazzData(kStr_chapterValue)];
                //: } else {
                } else {
                    //: AVURLAsset *URLAsset = (AVURLAsset *)assetR;
                    AVURLAsset *URLAsset = (AVURLAsset *)assetR;
                    //: NSString *outputFileName = [FFFKitFileLocationHelper genFilenameWithExt:@"mp4"];
                    NSString *outputFileName = [WithHelper value:StringFromNeoJazzData(kStr_upperData)];
                    //: outputPath = [FFFKitFileLocationHelper filepathForVideo:outputFileName];
                    outputPath = [WithHelper barVideo:outputFileName];
                    //: BOOL fileExist = [[NSFileManager defaultManager] fileExistsAtPath:URLAsset.URL.path];
                    BOOL fileExist = [[NSFileManager defaultManager] fileExistsAtPath:URLAsset.URL.path];
                    //: if (!fileExist) {
                    if (!fileExist) {
                        //: error = [NSError errorWithDomain:@"nimdemo.netease.fetcher" code:0x1001 userInfo:@{NSLocalizedDescriptionKey:@"图片在本地不存在"}];
                        error = [NSError errorWithDomain:StringFromNeoJazzData(kStr_automaticBarValue) code:0x1001 userInfo:@{NSLocalizedDescriptionKey:StringFromNeoJazzData(kStr_welcomeFessTitle)}];
                        //: [weakSelf showErrorMsg:@"图片在本地不存在，无法发送"];
                        [weakSelf tingDown:StringFromNeoJazzData(kStr_convictName)];
                    //: } else {
                    } else {
                        //: [NSFileManager.defaultManager copyItemAtURL:URLAsset.URL toURL:[NSURL fileURLWithPath:outputPath] error:&error];
                        [NSFileManager.defaultManager copyItemAtURL:URLAsset.URL toURL:[NSURL fileURLWithPath:outputPath] error:&error];
                    }
                }

                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: handler(!error ? outputPath : nil, PHAssetMediaTypeVideo);
                    handler(!error ? outputPath : nil, PHAssetMediaTypeVideo);
                //: });
                });
            //: }];
            }];
        //: });
        });
    }

    //: if (asset.mediaType == PHAssetMediaTypeImage)
    if (asset.mediaType == PHAssetMediaTypeImage)
    {
        //: [asset requestContentEditingInputWithOptions:nil completionHandler:^(PHContentEditingInput * _Nullable contentEditingInput, NSDictionary * _Nonnull info) {
        [asset requestContentEditingInputWithOptions:nil completionHandler:^(PHContentEditingInput * _Nullable contentEditingInput, NSDictionary * _Nonnull info) {
            //: NSString *path = contentEditingInput.fullSizeImageURL.relativePath;
            NSString *path = contentEditingInput.fullSizeImageURL.relativePath;
            //: handler(path,contentEditingInput.mediaType);
            handler(path,contentEditingInput.mediaType);
        //: }];
        }];
    }

}

//: - (void)showErrorMsg:(NSString *)msg {
- (void)tingDown:(NSString *)msg {
    //: if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; });};
    if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; });};




}

//: #pragma mark - setter
#pragma mark - setter
//: - (void)setMediaTypes:(NSArray<NSString *> *)mediaTypes {
- (void)setMediaTypes:(NSArray<NSString *> *)mediaTypes {
    //: _mediaTypes = mediaTypes;
    _mediaTypes = mediaTypes;
    //: self.allowPickingVideo = [mediaTypes containsObject:(NSString *)kUTTypeMovie];
    self.allowPickingVideo = [mediaTypes containsObject:(NSString *)kUTTypeMovie];
    //: self.allowPickingImage = [mediaTypes containsObject:(NSString *)kUTTypeImage];
    self.allowPickingImage = [mediaTypes containsObject:(NSString *)kUTTypeImage];
    //: self.allowPickingGif = [mediaTypes containsObject:(NSString *)kUTTypeGIF];
    self.allowPickingGif = [mediaTypes containsObject:(NSString *)kUTTypeGIF];
}

//: @end
@end

Byte * NeoJazzDataToCache(Byte *data) {
    int worriedRoad = data[0];
    int historyCorrelation = data[1];
    int particular = data[2];
    if (!worriedRoad) return data + particular;
    for (int i = 0; i < historyCorrelation / 2; i++) {
        int begin = particular + i;
        int end = particular + historyCorrelation - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[particular + historyCorrelation] = 0;
    return data + particular;
}

NSString *StringFromNeoJazzData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)NeoJazzDataToCache(data)];
}  
