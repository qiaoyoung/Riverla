
#import <Foundation/Foundation.h>

NSString *StringFromValeData(Byte *data);


//: yyyyMMddHHmmss
Byte kStr_beyondContent[] = {24, 14, 33, 11, 125, 30, 77, 118, 172, 120, 254, 154, 154, 154, 154, 110, 110, 133, 133, 105, 105, 142, 142, 148, 148, 29};


//: WIFI
Byte kStr_chapName[] = {61, 4, 91, 8, 101, 23, 149, 168, 178, 164, 161, 164, 48};


//: text/plain
Byte kStr_sireName[] = {11, 10, 18, 4, 134, 119, 138, 134, 65, 130, 126, 115, 123, 128, 57};


//: jpg
Byte kStr_searcherValue[] = {73, 3, 41, 8, 10, 11, 210, 4, 147, 153, 144, 242};


//: text/xml
Byte kStr_workingText[] = {61, 8, 45, 7, 106, 58, 51, 161, 146, 165, 161, 92, 165, 154, 153, 80};


//: text/html
Byte kStr_civilData[] = {37, 9, 82, 9, 61, 79, 223, 133, 23, 198, 183, 202, 198, 129, 186, 198, 191, 190, 226};


//: responseObject = %@
Byte kStr_softName[] = {21, 19, 70, 11, 104, 247, 223, 182, 54, 234, 163, 184, 171, 185, 182, 181, 180, 185, 171, 149, 168, 176, 171, 169, 186, 102, 131, 102, 107, 134, 62};


//: image/%@
Byte kStr_uponText[] = {65, 8, 49, 8, 11, 188, 92, 177, 154, 158, 146, 152, 150, 96, 86, 113, 188};


//: 手机自带网络
Byte kStr_unemploymentQuarterText[] = {1, 18, 10, 9, 76, 251, 1, 255, 201, 240, 147, 149, 240, 166, 196, 242, 145, 180, 239, 194, 176, 241, 199, 155, 241, 197, 166, 72};


//: error = %@
Byte kStr_availBelieCanvasValue[] = {2, 10, 88, 6, 118, 93, 189, 202, 202, 199, 202, 120, 149, 120, 125, 152, 175};


//: application/json
Byte kStr_dialogueValue[] = {50, 16, 83, 9, 113, 166, 123, 73, 138, 180, 195, 195, 191, 188, 182, 180, 199, 188, 194, 193, 130, 189, 198, 194, 193, 110};


//: 无网络
Byte kStr_listenTressData[] = {11, 9, 42, 8, 232, 214, 159, 238, 16, 193, 202, 17, 231, 187, 17, 229, 198, 242};


//: thumb.jpg
Byte kStr_minorData[] = {29, 9, 26, 8, 199, 161, 251, 231, 142, 130, 143, 135, 124, 72, 132, 138, 129, 133};


//: text/json
Byte kStr_highlyGazeTitle[] = {22, 9, 77, 12, 2, 195, 147, 177, 199, 181, 213, 64, 193, 178, 197, 193, 124, 183, 192, 188, 187, 59};


//: thumb
Byte kStr_policeText[] = {84, 5, 40, 4, 156, 144, 157, 149, 138, 204};


//: video
Byte kStr_findingData[] = {90, 5, 16, 9, 206, 97, 6, 134, 30, 134, 121, 116, 117, 127, 194};


//: Download
Byte kStr_nanaCrossSpectrumTitle[] = {11, 8, 28, 8, 195, 235, 207, 225, 96, 139, 147, 138, 136, 139, 125, 128, 17};


//: 未知网络
Byte kStr_rompText[] = {67, 12, 82, 12, 215, 28, 180, 55, 148, 166, 28, 189, 56, 238, 252, 57, 241, 247, 57, 15, 227, 57, 13, 238, 131};


//: image/jpg
Byte kStr_kneelName[] = {65, 9, 25, 14, 229, 136, 56, 205, 213, 70, 65, 67, 2, 236, 130, 134, 122, 128, 126, 72, 131, 137, 128, 229};


//: text/javascript
Byte kStr_extendedValue[] = {55, 15, 32, 9, 75, 157, 201, 168, 39, 148, 133, 152, 148, 79, 138, 129, 150, 129, 147, 131, 146, 137, 144, 148, 39};


//: image/*
Byte kStr_happinessTitle[] = {40, 7, 82, 4, 187, 191, 179, 185, 183, 129, 124, 106};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BarHelper.m
//  BarHelper
//
//  Created by AndyPang on 16/8/12.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

// __M_A_C_R_O__
//: #import "YLNetworkHelper.h"
#import "BarHelper.h"
//: #import "AFNetworking.h"
#import "AFNetworking.h"
//: #import "AFNetworkActivityIndicatorManager.h"
#import "AFNetworkActivityIndicatorManager.h"

//: @implementation YLNetworkHelper
@implementation BarHelper

//: static BOOL _isOpenLog; 
static BOOL let_contactTipName; // 是否已开启日志打印
//: static NSMutableArray *_allSessionTask;
static NSMutableArray *let_successText;
//: static AFHTTPSessionManager *_sessionManager;
static AFHTTPSessionManager *let_kitContent;

//: #pragma mark - 开始监听网络
#pragma mark - 开始监听网络
//: + (void)networkStatusWithBlock:(YLNetworkStatus)networkStatus {
+ (void)tableNetworkBlock:(YLNetworkStatus)networkStatus {

    //: [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //: switch (status) {
        switch (status) {
            //: case AFNetworkReachabilityStatusUnknown:
            case AFNetworkReachabilityStatusUnknown:
                //: networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"未知网络"] UTF8String]);
                if (let_contactTipName) printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_rompText)] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusNotReachable:
            case AFNetworkReachabilityStatusNotReachable:
                //: networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"无网络"] UTF8String]);
                if (let_contactTipName) printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_listenTressData)] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWWAN:
            case AFNetworkReachabilityStatusReachableViaWWAN:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"手机自带网络"] UTF8String]);
                if (let_contactTipName) printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_unemploymentQuarterText)] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWiFi:
            case AFNetworkReachabilityStatusReachableViaWiFi:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"WIFI"] UTF8String]);
                if (let_contactTipName) printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_chapName)] UTF8String]);
                //: break;
                break;
        }
    //: }];
    }];

}

//: + (BOOL)isNetwork {
+ (BOOL)tingMonth {
    //: return [AFNetworkReachabilityManager sharedManager].reachable;
    return [AFNetworkReachabilityManager sharedManager].reachable;
}

//: + (BOOL)isWWANNetwork {
+ (BOOL)container {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
}

//: + (BOOL)isWiFiNetwork {
+ (BOOL)stopTap {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
}

//: + (void)openLog {
+ (void)view {
    //: _isOpenLog = YES;
    let_contactTipName = YES;
}

//: + (void)closeLog {
+ (void)than {
    //: _isOpenLog = NO;
    let_contactTipName = NO;
}

//: + (void)cancelAllRequest {
+ (void)progress {
    // 锁操作
    //: @synchronized(self) {
    @synchronized(self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self title] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: [task cancel];
            [task cancel];
        //: }];
        }];
        //: [[self allSessionTask] removeAllObjects];
        [[self title] removeAllObjects];
    }
}

//: + (void)cancelRequestWithURL:(NSString *)URL {
+ (void)crew:(NSString *)URL {
    //: if (!URL) { return; }
    if (!URL) { return; }
    //: @synchronized (self) {
    @synchronized (self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self title] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
            if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
                //: [task cancel];
                [task cancel];
                //: [[self allSessionTask] removeObject:task];
                [[self title] removeObject:task];
                //: *stop = YES;
                *stop = YES;
            }
        //: }];
        }];
    }
}

//: #pragma mark - GET请求无缓存
#pragma mark - GET请求无缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)team:(NSString *)URL
               //: parameters:(id)parameters
               outDown:(id)parameters
                  //: success:(YLHttpRequestSuccess)success
                  frame:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  icon:(YLHttpRequestFailed)failure {
    //: return [self GET:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self successBe:URL status:parameters at:nil image:success response:failure];
}

//: #pragma mark - POST请求无缓存
#pragma mark - POST请求无缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)title:(NSString *)URL
                //: parameters:(id)parameters
                input:(id)parameters
                   //: success:(YLHttpRequestSuccess)success
                   nameLabel:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   my:(YLHttpRequestFailed)failure {
    //: return [self POST:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self itemFailure:URL positionFailure:parameters progress:nil index:success row:failure];
}

//: #pragma mark - GET请求自动缓存
#pragma mark - GET请求自动缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)successBe:(NSString *)URL
               //: parameters:(id)parameters
               status:(id)parameters
            //: responseCache:(YLHttpRequestCache)responseCache
            at:(YLHttpRequestCache)responseCache
                  //: success:(YLHttpRequestSuccess)success
                  image:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  response:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerHTTP)];
    [self setSkullSession:(YLResponseSerializerHTTP)];

    //: NSURLSessionTask *sessionTask = [_sessionManager GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [let_kitContent GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_softName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_availBelieCanvasValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];
    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self title] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - POST请求自动缓存
#pragma mark - POST请求自动缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)itemFailure:(NSString *)URL
                //: parameters:(id)parameters
                positionFailure:(id)parameters
             //: responseCache:(YLHttpRequestCache)responseCache
             progress:(YLHttpRequestCache)responseCache
                   //: success:(YLHttpRequestSuccess)success
                   index:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   row:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerJSON)];
    [self setSkullSession:(YLResponseSerializerJSON)];

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [let_kitContent POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_softName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_availBelieCanvasValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];

    // 添加最新的sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self title] addObject:sessionTask] : nil ;
    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 上传文件
#pragma mark - 上传文件
//: + (NSURLSessionTask *)uploadFileWithURL:(NSString *)URL
+ (NSURLSessionTask *)with:(NSString *)URL
                             //: parameters:(id)parameters
                             first:(id)parameters
                                   //: name:(NSString *)name
                                   nobble:(NSString *)name
                               //: filePath:(NSString *)filePath
                               account:(NSString *)filePath
                               //: progress:(YLHttpProgress)progress
                               registerBarHttpProgress:(YLHttpProgress)progress
                                //: success:(YLHttpRequestSuccess)success
                                length:(YLHttpRequestSuccess)success
                                //: failure:(YLHttpRequestFailed)failure {
                                enableCornerRequestFailed:(YLHttpRequestFailed)failure {

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [let_kitContent POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL URLWithString:filePath] name:name error:&error];
        [formData appendPartWithFileURL:[NSURL URLWithString:filePath] name:name error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_softName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_availBelieCanvasValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self title] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: + (__kindof NSURLSessionTask *)uploadVideoWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)localRoadSharp:(NSString *)URL
                                      //: parameters:(id)parameters
                                      by:(id)parameters
                                           //: video:(NSString *)videoPath
                                           max:(NSString *)videoPath
                                           //: thumb:(UIImage *)thumb
                                           shouldIn:(UIImage *)thumb
                                        //: progress:(YLHttpProgress)progress
                                        imageOpen:(YLHttpProgress)progress
                                         //: success:(YLHttpRequestSuccess)success
                                         sinceColorFormat:(YLHttpRequestSuccess)success
                                         //: failure:(YLHttpRequestFailed)failure {
                                         ting:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [let_kitContent POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:@"video" error:&error];
        [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:StringFromValeData(kStr_findingData) error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;

        //: NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        //: [formData appendPartWithFileData:thumbData
        [formData appendPartWithFileData:thumbData
                                    //: name:@"thumb"
                                    name:StringFromValeData(kStr_policeText)
                                //: fileName:@"thumb.jpg"
                                fileName:StringFromValeData(kStr_minorData)
                                //: mimeType:[NSString stringWithFormat:@"image/jpg"]];
                                mimeType:[NSString stringWithFormat:StringFromValeData(kStr_kneelName)]];

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_softName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_availBelieCanvasValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self title] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

/**
 *  上传多个文件
 *
 *  @param URL        请求地址
 *  @param parameters 请求参数
 *  @param files      文件 <文件对应服务器上的字段, 文件本地的沙盒路径>
 *  @param progress   上传进度信息
 *  @param success    请求成功的回调
 *  @param failure    请求失败的回调
 *
 *  @return 返回的对象可取消请求,调用cancel方法
 */
//: + (__kindof NSURLSessionTask *)uploadFilesWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)with:(NSString *)URL
                                       //: parameters:(id)parameters
                                       index:(id)parameters
                                            //: files:(NSDictionary<NSString*, NSString*> *)files
                                            bite:(NSDictionary<NSString*, NSString*> *)files
                                         //: progress:(YLHttpProgress)progress
                                         parameters:(YLHttpProgress)progress
                                          //: success:(YLHttpRequestSuccess)success
                                          indexViewTingToolProgressStreetSmartSuccessNaught:(YLHttpRequestSuccess)success
                                          //: failure:(YLHttpRequestFailed)failure {
                                          input:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [let_kitContent POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;

        //: for (NSString * key in files) {
        for (NSString * key in files) {
            //: NSString * value = [files objectForKey:key];
            NSString * value = [files objectForKey:key];
            //: [formData appendPartWithFileURL:[NSURL URLWithString:value] name:key error:&error];
            [formData appendPartWithFileURL:[NSURL URLWithString:value] name:key error:&error];

            //: if (error) {
            if (error) {
                //: break;
                break;
            }
        }

        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_softName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_availBelieCanvasValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self title] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}



//: #pragma mark - 上传单张图片
#pragma mark - 上传单张图片
//: + (NSURLSessionTask *)uploadImageWithURL:(NSString *)URL parameters:(id)parameters name:(NSString *)name data:(NSData *)data fileName:(NSString *)fileName imageType:(NSString *)imageType progress:(YLHttpProgress)progress success:(YLHttpRequestSuccess)success failure:(YLHttpRequestFailed)failure
+ (NSURLSessionTask *)findLanguage:(NSString *)URL view:(id)parameters title:(NSString *)name atImage:(NSData *)data my:(NSString *)fileName move:(NSString *)imageType maturityDate:(YLHttpProgress)progress sessionUploadFailure:(YLHttpRequestSuccess)success untilInput:(YLHttpRequestFailed)failure
{
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [let_kitContent POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        // 默认图片的文件名, 若fileNames为nil就使用

        //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //: formatter.dateFormat = @"yyyyMMddHHmmss";
        formatter.dateFormat = StringFromValeData(kStr_beyondContent);
        //: NSString *str = [formatter stringFromDate:[NSDate date]];
        NSString *str = [formatter stringFromDate:[NSDate date]];
        //: NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:@"jpg"];
        NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:StringFromValeData(kStr_searcherValue)];

        //: [formData appendPartWithFileData:data
        [formData appendPartWithFileData:data
                                    //: name:name
                                    name:name
                                //: fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:@"jpg"] : imageFileName
                                fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:StringFromValeData(kStr_searcherValue)] : imageFileName
                                //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                mimeType:[NSString stringWithFormat:StringFromValeData(kStr_uponText),imageType ?: StringFromValeData(kStr_searcherValue)]];

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_softName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_availBelieCanvasValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self title] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}


//: #pragma mark - 上传多张图片
#pragma mark - 上传多张图片
//: + (NSURLSessionTask *)uploadImagesWithURL:(NSString *)URL
+ (NSURLSessionTask *)valueTing:(NSString *)URL
                               //: parameters:(id)parameters
                               center:(id)parameters
                                     //: name:(NSString *)name
                                     header:(NSString *)name
                                   //: images:(NSArray<UIImage *> *)images
                                   nonremittal:(NSArray<UIImage *> *)images
                                //: fileNames:(NSArray<NSString *> *)fileNames
                                computerFilenameOrigin:(NSArray<NSString *> *)fileNames
                               //: imageScale:(CGFloat)imageScale
                               min:(CGFloat)imageScale
                                //: imageType:(NSString *)imageType
                                holder:(NSString *)imageType
                                 //: progress:(YLHttpProgress)progress
                                 year:(YLHttpProgress)progress
                                  //: success:(YLHttpRequestSuccess)success
                                  controlProgress:(YLHttpRequestSuccess)success
                                  //: failure:(YLHttpRequestFailed)failure {
                                  fromRequestFailed:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [let_kitContent POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            // 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            // 默认图片的文件名, 若fileNames为nil就使用

            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = StringFromValeData(kStr_beyondContent);
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:StringFromValeData(kStr_searcherValue)];

            //: [formData appendPartWithFileData:imageData
            [formData appendPartWithFileData:imageData
                                        //: name:[NSString stringWithFormat:@"%@%ld", name, i]
                                        name:[NSString stringWithFormat:@"%@%ld", name, i]
                                    //: fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName
                                    fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:StringFromValeData(kStr_searcherValue)] : imageFileName
                                    //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                    mimeType:[NSString stringWithFormat:StringFromValeData(kStr_uponText),imageType ?: StringFromValeData(kStr_searcherValue)]];
        }

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_softName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (let_contactTipName) {printf("[%s] %s [第%d行]: %s\n", "19:25:18" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromValeData(kStr_availBelieCanvasValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self title] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self title] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 下载文件
#pragma mark - 下载文件
//: + (NSURLSessionTask *)downloadWithURL:(NSString *)URL
+ (NSURLSessionTask *)down:(NSString *)URL
                              //: fileDir:(NSString *)fileDir
                              voice_strong:(NSString *)fileDir
                             //: progress:(YLHttpProgress)progress
                             download:(YLHttpProgress)progress
                              //: success:(void(^)(NSString *))success
                              sharkRepellent:(void(^)(NSString *))success
                              //: failure:(YLHttpRequestFailed)failure {
                              data:(YLHttpRequestFailed)failure {
    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: __block NSURLSessionDownloadTask *downloadTask = [_sessionManager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    __block NSURLSessionDownloadTask *downloadTask = [let_kitContent downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //下载进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(downloadProgress) : nil;
            progress ? progress(downloadProgress) : nil;
        //: });
        });
    //: } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        //拼接缓存目录
        //: NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : @"Download"];
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : StringFromValeData(kStr_nanaCrossSpectrumTitle)];
        //打开文件管理器
        //: NSFileManager *fileManager = [NSFileManager defaultManager];
        NSFileManager *fileManager = [NSFileManager defaultManager];
        //创建Download目录
        //: [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        //拼接文件路径
        //: NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        //返回文件位置的URL路径
        //: return [NSURL fileURLWithPath:filePath];
        return [NSURL fileURLWithPath:filePath];

    //: } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {

        //: [[self allSessionTask] removeObject:downloadTask];
        [[self title] removeObject:downloadTask];
        //: if(failure && error) {failure(error) ; return ;};
        if(failure && error) {failure(error) ; return ;};
        //: success ? success(filePath.absoluteString /|** NSURL->NSString*|/) : nil;
        success ? success(filePath.absoluteString /** NSURL->NSString*/) : nil;

    //: }];
    }];
    //开始下载
    //: [downloadTask resume];
    [downloadTask resume];
    // 添加sessionTask到数组
    //: downloadTask ? [[self allSessionTask] addObject:downloadTask] : nil ;
    downloadTask ? [[self title] addObject:downloadTask] : nil ;

    //: return downloadTask;
    return downloadTask;
}

/**
 存储着所有的请求task数组
 */
//: + (NSMutableArray *)allSessionTask {
+ (NSMutableArray *)title {
    //: if (!_allSessionTask) {
    if (!let_successText) {
        //: _allSessionTask = [[NSMutableArray alloc] init];
        let_successText = [[NSMutableArray alloc] init];
    }
    //: return _allSessionTask;
    return let_successText;
}

//: #pragma mark - 初始化AFHTTPSessionManager相关属性
#pragma mark - 初始化AFHTTPSessionManager相关属性
/**
 开始监测网络状态
 */
//: + (void)load {
+ (void)load {
    //: [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}
/**
 *  所有的HTTP请求共享一个AFHTTPSessionManager
 *  原理参考地址:http://www.jianshu.com/p/5969bbb4af9f
 */
//: + (void)initialize {
+ (void)initialize {
    //: _sessionManager = [AFHTTPSessionManager manager];
    let_kitContent = [AFHTTPSessionManager manager];
    //: _sessionManager.requestSerializer.timeoutInterval = 15.f;
    let_kitContent.requestSerializer.timeoutInterval = 15.f;
    //: _sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    let_kitContent.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:StringFromValeData(kStr_dialogueValue), StringFromValeData(kStr_civilData), StringFromValeData(kStr_highlyGazeTitle), StringFromValeData(kStr_sireName), StringFromValeData(kStr_extendedValue), StringFromValeData(kStr_workingText), StringFromValeData(kStr_happinessTitle), nil];
    // 打开状态栏的等待菊花
    //: [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
}

//: #pragma mark - 重置AFHTTPSessionManager相关属性
#pragma mark - 重置AFHTTPSessionManager相关属性

//: + (void)setAFHTTPSessionManagerProperty:(void (^)(AFHTTPSessionManager *))sessionManager {
+ (void)setPublicProperty:(void (^)(AFHTTPSessionManager *))sessionManager {
    //: sessionManager ? sessionManager(_sessionManager) : nil;
    sessionManager ? sessionManager(let_kitContent) : nil;
}

//: + (void)setRequestSerializer:(YLRequestSerializer)requestSerializer {
+ (void)setBack:(YLRequestSerializer)requestSerializer {
    //: _sessionManager.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
    let_kitContent.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
}

//: + (void)setResponseSerializer:(YLResponseSerializer)responseSerializer {
+ (void)setSkullSession:(YLResponseSerializer)responseSerializer {
    //: _sessionManager.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
    let_kitContent.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
}

//: + (void)setRequestTimeoutInterval:(NSTimeInterval)time {
+ (void)setUnderSize:(NSTimeInterval)time {
    //: _sessionManager.requestSerializer.timeoutInterval = time;
    let_kitContent.requestSerializer.timeoutInterval = time;
}

//: + (void)setValue:(NSString *)value forHTTPHeaderField:(NSString *)field {
+ (void)matrix:(NSString *)value menu:(NSString *)field {
    //: [_sessionManager.requestSerializer setValue:value forHTTPHeaderField:field];
    [let_kitContent.requestSerializer setValue:value forHTTPHeaderField:field];
}

//: + (void)openNetworkActivityIndicator:(BOOL)open {
+ (void)todayToCell:(BOOL)open {
    //: [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
}

//: + (void)setSecurityPolicyWithCerPath:(NSString *)cerPath validatesDomainName:(BOOL)validatesDomainName {
+ (void)view:(NSString *)cerPath margin:(BOOL)validatesDomainName {
    //: NSData *cerData = [NSData dataWithContentsOfFile:cerPath];
    NSData *cerData = [NSData dataWithContentsOfFile:cerPath];
    // 使用证书验证模式
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    // 如果需要验证自建证书(无效证书)，需要设置为YES
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    // 是否需要验证域名，默认为YES;
    //: securityPolicy.validatesDomainName = validatesDomainName;
    securityPolicy.validatesDomainName = validatesDomainName;
    //: securityPolicy.pinnedCertificates = [[NSSet alloc] initWithObjects:cerData, nil];
    securityPolicy.pinnedCertificates = [[NSSet alloc] initWithObjects:cerData, nil];

    //: [_sessionManager setSecurityPolicy:securityPolicy];
    [let_kitContent setSecurityPolicy:securityPolicy];
}

//: @end
@end


//: #pragma mark - NSDictionary,NSArray的分类
#pragma mark - NSDictionary,NSArray的分类
/*
 ************************************************************************************
 *新建NSDictionary与NSArray的分类, 控制台打印json数据中的中文
 ************************************************************************************
 */


//: @implementation NSArray (PP)
@implementation NSArray (PP)

//: - (NSString *)descriptionWithLocale:(id)locale {
- (NSString *)descriptionWithLocale:(id)locale {
    //: NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    //: [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: [strM appendFormat:@"\t%@,\n", obj];
        [strM appendFormat:@"\t%@,\n", obj];
    //: }];
    }];
    //: [strM appendString:@")"];
    [strM appendString:@")"];

    //: return strM;
    return strM;
}

//: @end
@end

//: @implementation NSDictionary (PP)
@implementation NSDictionary (PP)

//: - (NSString *)descriptionWithLocale:(id)locale {
- (NSString *)descriptionWithLocale:(id)locale {
    //: NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    //: [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        //: [strM appendFormat:@"\t%@ = %@;\n", key, obj];
        [strM appendFormat:@"\t%@ = %@;\n", key, obj];
    //: }];
    }];

    //: [strM appendString:@"}\n"];
    [strM appendString:@"}\n"];

    //: return strM;
    return strM;
}
//: @end
@end

Byte * ValeDataToCache(Byte *data) {
    int important = data[0];
    int passablyLea = data[1];
    Byte heaterRoof = data[2];
    int bringHomeBall = data[3];
    if (!important) return data + bringHomeBall;
    for (int i = bringHomeBall; i < bringHomeBall + passablyLea; i++) {
        int value = data[i] - heaterRoof;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[bringHomeBall + passablyLea] = 0;
    return data + bringHomeBall;
}

NSString *StringFromValeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ValeDataToCache(data)];
}
