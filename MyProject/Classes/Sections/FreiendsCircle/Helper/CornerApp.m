// __DEBUG__
// __CLOSE_PRINT__
//
//  CornerApp.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/16.
//

// __M_A_C_R_O__
//: #import "FUUtility.h"
#import "CornerApp.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>

//: @implementation FUUtility
@implementation CornerApp

//: + (void)requestPhotoLibraryAuthorization:(void (^)(PHAuthorizationStatus))handler {
+ (void)with:(void (^)(PHAuthorizationStatus))handler {
    //: if (@available(iOS 14, *)) {
    if (@available(iOS 14, *)) {
        //: [PHPhotoLibrary requestAuthorizationForAccessLevel:PHAccessLevelReadWrite handler:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorizationForAccessLevel:PHAccessLevelReadWrite handler:^(PHAuthorizationStatus status) {
            //: !handler ?: handler(status);
            !handler ?: handler(status);
        //: }];
        }];
    //: } else {
    } else {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            //: !handler ?: handler(status);
            !handler ?: handler(status);
        //: }];
        }];
    }
}

//: + (void)requestVideoURLFromInfo:(NSDictionary<NSString *,id> *)info resultHandler:(void (^)(NSURL * _Nonnull))handler {
+ (void)top:(NSDictionary<NSString *,id> *)info add:(void (^)(NSURL * _Nonnull))handler {
    //: if (info[UIImagePickerControllerReferenceURL]) {
    if (info[UIImagePickerControllerReferenceURL]) {
        //: NSURL *refrenceURL = info[UIImagePickerControllerReferenceURL];
        NSURL *refrenceURL = info[UIImagePickerControllerReferenceURL];
        //: PHFetchResult<PHAsset *> *assets = [PHAsset fetchAssetsWithALAssetURLs:@[refrenceURL] options:nil];
        PHFetchResult<PHAsset *> *assets = [PHAsset fetchAssetsWithALAssetURLs:@[refrenceURL] options:nil];
        //: [[PHImageManager defaultManager] requestAVAssetForVideo:assets.firstObject options:nil resultHandler:^(AVAsset * _Nullable asset, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
        [[PHImageManager defaultManager] requestAVAssetForVideo:assets.firstObject options:nil resultHandler:^(AVAsset * _Nullable asset, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
            //: AVURLAsset *urlAsset = (AVURLAsset *)asset;
            AVURLAsset *urlAsset = (AVURLAsset *)asset;
            //: !handler ?: handler(urlAsset.URL);
            !handler ?: handler(urlAsset.URL);
        //: }];
        }];
    //: } else if (info[UIImagePickerControllerMediaURL]) {
    } else if (info[UIImagePickerControllerMediaURL]) {
        //: !handler ?: handler(info[UIImagePickerControllerMediaURL]);
        !handler ?: handler(info[UIImagePickerControllerMediaURL]);
    //: } else {
    } else {
        //: if (@available(iOS 11.0, *)) {
        if (@available(iOS 11.0, *)) {
            //: PHAsset *asset = info[UIImagePickerControllerPHAsset];
            PHAsset *asset = info[UIImagePickerControllerPHAsset];
            //: [[PHImageManager defaultManager] requestAVAssetForVideo:asset options:nil resultHandler:^(AVAsset * _Nullable asset, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
            [[PHImageManager defaultManager] requestAVAssetForVideo:asset options:nil resultHandler:^(AVAsset * _Nullable asset, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
                //: AVURLAsset *urlAsset = (AVURLAsset *)asset;
                AVURLAsset *urlAsset = (AVURLAsset *)asset;
                //: !handler ?: handler(urlAsset.URL);
                !handler ?: handler(urlAsset.URL);
            //: }];
            }];
        }
    }
}

//: + (UIImage *)previewImageFromVideoURL:(NSURL *)videoURL preferredTrackTransform:(BOOL)preferred {
+ (UIImage *)name:(NSURL *)videoURL cut:(BOOL)preferred {
    //: if (!videoURL) {
    if (!videoURL) {
        //: return nil;
        return nil;
    }
    //: AVURLAsset *asset = [AVURLAsset assetWithURL:videoURL];
    AVURLAsset *asset = [AVURLAsset assetWithURL:videoURL];
    //: AVAssetImageGenerator *imageGenerator = [[AVAssetImageGenerator alloc] initWithAsset:asset];
    AVAssetImageGenerator *imageGenerator = [[AVAssetImageGenerator alloc] initWithAsset:asset];
    //: imageGenerator.appliesPreferredTrackTransform = preferred;
    imageGenerator.appliesPreferredTrackTransform = preferred;
    //: CMTime time = CMTimeMakeWithSeconds(0.0, 600);
    CMTime time = CMTimeMakeWithSeconds(0.0, 600);
    //: NSError *error = nil;
    NSError *error = nil;
    //: CMTime actualTime;
    CMTime actualTime;
    //: CGImageRef image = [imageGenerator copyCGImageAtTime:time actualTime:&actualTime error:&error];
    CGImageRef image = [imageGenerator copyCGImageAtTime:time actualTime:&actualTime error:&error];
    //: UIImage *videoImage = [[UIImage alloc] initWithCGImage:image];
    UIImage *videoImage = [[UIImage alloc] initWithCGImage:image];
    //: CGImageRelease(image);
    CGImageRelease(image);
    //: return videoImage;
    return videoImage;
}

//: + (UIImage *)lastFrameImageFromVideoURL:(NSURL *)videoURL preferredTrackTransform:(BOOL)preferred {
+ (UIImage *)book:(NSURL *)videoURL colorationItem:(BOOL)preferred {
    //: if (!videoURL) {
    if (!videoURL) {
        //: return nil;
        return nil;
    }
    //: AVURLAsset *asset = [AVURLAsset assetWithURL:videoURL];
    AVURLAsset *asset = [AVURLAsset assetWithURL:videoURL];
    //: AVAssetImageGenerator *imageGenerator = [[AVAssetImageGenerator alloc] initWithAsset:asset];
    AVAssetImageGenerator *imageGenerator = [[AVAssetImageGenerator alloc] initWithAsset:asset];
    //: imageGenerator.appliesPreferredTrackTransform = preferred;
    imageGenerator.appliesPreferredTrackTransform = preferred;
    //: Float64 lastFrameTime = CMTimeGetSeconds(asset.duration);
    Float64 lastFrameTime = CMTimeGetSeconds(asset.duration);
    //: CMTime time = CMTimeMakeWithSeconds(lastFrameTime, 600);
    CMTime time = CMTimeMakeWithSeconds(lastFrameTime, 600);
    //: NSError *error = nil;
    NSError *error = nil;
    //: CMTime actualTime;
    CMTime actualTime;
    //: CGImageRef image = [imageGenerator copyCGImageAtTime:time actualTime:&actualTime error:&error];
    CGImageRef image = [imageGenerator copyCGImageAtTime:time actualTime:&actualTime error:&error];
    //: UIImage *videoImage = [[UIImage alloc] initWithCGImage:image];
    UIImage *videoImage = [[UIImage alloc] initWithCGImage:image];
    //: CGImageRelease(image);
    CGImageRelease(image);
    //: return videoImage;
    return videoImage;
}

//: @end
@end