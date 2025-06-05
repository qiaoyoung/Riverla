// __DEBUG__
// __CLOSE_PRINT__
//
//  CornerApp.h
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/16.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FUUtility : NSObject
@interface CornerApp : NSObject

/// 请求相册权限
/// - Parameter handler: 回调
//: + (void)requestPhotoLibraryAuthorization:(void (^)(PHAuthorizationStatus status))handler;
+ (void)with:(void (^)(PHAuthorizationStatus status))handler;

/// 获取本地视频地址
/// - Parameters:
///   - info: 从相册选择信息
///   - handler: 结果回调
//: + (void)requestVideoURLFromInfo:(NSDictionary<NSString *,id> *)info resultHandler:(void (^)(NSURL *videoURL))handler;
+ (void)top:(NSDictionary<NSString *,id> *)info add:(void (^)(NSURL *videoURL))handler;

/// 从视频地址获取首帧预览图
/// - Parameters:
///   - videoURL: 视频地址
///   - preferred: 是否调整方向
//: + (UIImage *)previewImageFromVideoURL:(NSURL *)videoURL preferredTrackTransform:(BOOL)preferred;
+ (UIImage *)name:(NSURL *)videoURL cut:(BOOL)preferred;

/// 从视频地址获取最后一帧图片
/// - Parameters:
///   - videoURL: 视频地址
///   - preferred: 是否调整方向
//: + (UIImage *)lastFrameImageFromVideoURL:(NSURL *)videoURL preferredTrackTransform:(BOOL)preferred;
+ (UIImage *)book:(NSURL *)videoURL colorationItem:(BOOL)preferred;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END