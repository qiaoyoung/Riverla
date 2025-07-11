// __DEBUG__
// __CLOSE_PRINT__
//
//  PointIndependent.h
//  FULiveDemo
//
//  Created by 项林平 on 2021/3/15.
//  Copyright © 2021 FaceUnity. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef NS_ENUM(NSUInteger, FUNetworkStatus) {
typedef NS_ENUM(NSUInteger, FUNetworkStatus) {
    //: FUNetworkStatusUnknown, 
    FUNetworkStatusUnknown, // 未知网络
    //: FUNetworkStatusUnreachable, 
    FUNetworkStatusUnreachable, // 无网络
    //: FUNetworkStatusReachable 
    FUNetworkStatusReachable // 正常网络
//: };
};

/// 网络状态block
//: typedef void (^FUNetworkStatusHandler)(FUNetworkStatus status);
typedef void (^FUNetworkStatusHandler)(FUNetworkStatus status);

/// 请求成功block
//: typedef void (^FURequestSuccess)(id responseObject);
typedef void (^FURequestSuccess)(id responseObject);

/// 请求失败block
//: typedef void (^FURequestFailure)(NSError *error);
typedef void (^FURequestFailure)(NSError *error);

/// 请求进度block
//: typedef void (^FURequestProgress)(NSProgress *progress);
typedef void (^FURequestProgress)(NSProgress *progress);

//: @interface FUNetworkingHelper : NSObject
@interface PointIndependent : NSObject

//: + (instancetype)sharedInstance;
+ (instancetype)nameMessage;

/// 获取实时网络状态
//: + (FUNetworkStatus)currentNetworkStatus;
+ (FUNetworkStatus)with;

/// 网络状态变化
//: + (void)networkStatusHandler:(FUNetworkStatusHandler)networkStatus;
+ (void)pressedNetwork:(FUNetworkStatusHandler)networkStatus;

/// GET请求
/// @param URLString 请求URL
/// @param parameters 请求参数
/// @param success 成功回调
/// @param failure 失败回调
//: - (NSURLSessionTask *)getWithURL:(NSString *)URLString
- (NSURLSessionTask *)lineUpStreetSmartSuccessParametersRelapse:(NSString *)URLString
                      //: parameters:(nullable NSDictionary *)parameters
                      fullPhaseOfTheMoon:(nullable NSDictionary *)parameters
                         //: success:(FURequestSuccess)success
                         device:(FURequestSuccess)success
                         //: failure:(FURequestFailure)failure;
                         viewRequestFailure:(FURequestFailure)failure;

/// POST请求
/// @param URLString 请求URL
/// @param parameters 请求参数
/// @param success 成功回调
/// @param failure 失败回调
//: - (NSURLSessionTask *)postWithURL:(NSString *)URLString
- (NSURLSessionTask *)empty:(NSString *)URLString
                       //: parameters:(NSDictionary *)parameters
                       parameters:(NSDictionary *)parameters
                          //: success:(FURequestSuccess)success
                          image:(FURequestSuccess)success
                          //: failure:(FURequestFailure)failure;
                          comment:(FURequestFailure)failure;

/// DOWNLOAD请求
/// @param URLString 请求URL
/// @param fileName 保存文件名
/// @param directoryPath 保存文件路径（默认为Documents路径）
/// @param progress 下载进度回调
/// @param success 成功回调
/// @param failure 失败回调
//: - (NSURLSessionDownloadTask *)downloadWithURL:(NSString *)URLString
- (NSURLSessionDownloadTask *)signal:(NSString *)URLString
                                //: directoryPath:(nullable NSString *)directoryPath
                                toVictory:(nullable NSString *)directoryPath
                                     //: fileName:(nullable NSString *)fileName
                                     bubble:(nullable NSString *)fileName
                                     //: progress:(FURequestProgress)progress
                                     fileRequestProgress:(FURequestProgress)progress
                                      //: success:(FURequestSuccess)success
                                      nameSuccess:(FURequestSuccess)success
                                      //: failure:(FURequestFailure)failure;
                                      down:(FURequestFailure)failure;

/// 取消所有HTTP请求
//: - (void)cancelAllHttpRequests;
- (void)alongCancel;

/// 取消指定URL的请求
//: - (void)cancelHttpRequestWithURL:(NSString *)URLString;
- (void)scratchUrl:(NSString *)URLString;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END