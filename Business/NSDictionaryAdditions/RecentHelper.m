
#import <Foundation/Foundation.h>

NSString *StringFromFragileGalData(Byte *data);


//: jpg
Byte kStr_wagTitle[] = {62, 3, 3, 103, 112, 106, 211};


//: image/*
Byte kStr_laterData[] = {47, 7, 12, 241, 119, 214, 65, 31, 223, 234, 157, 80, 42, 47, 101, 103, 97, 109, 105, 205};


//: text/plain
Byte kStr_biasSupText[] = {52, 10, 6, 200, 119, 78, 110, 105, 97, 108, 112, 47, 116, 120, 101, 116, 248};


//: image/jpg
Byte kStr_documentaryData[] = {87, 9, 9, 64, 10, 144, 114, 45, 150, 103, 112, 106, 47, 101, 103, 97, 109, 105, 38};


//: yyyyMMddHHmmss
Byte kStr_woodenTheirName[] = {84, 14, 9, 157, 10, 71, 233, 28, 140, 115, 115, 109, 109, 72, 72, 100, 100, 77, 77, 121, 121, 121, 121, 35};


//: image/%@
Byte kStr_heapAxTitle[] = {8, 8, 3, 64, 37, 47, 101, 103, 97, 109, 105, 197};


//: 无网络
Byte kStr_aircraftReferSueValue[] = {24, 9, 11, 65, 6, 206, 135, 109, 96, 144, 100, 156, 187, 231, 145, 189, 231, 160, 151, 230, 161};


//: text/html
Byte kStr_peaValue[] = {85, 9, 5, 138, 30, 108, 109, 116, 104, 47, 116, 120, 101, 116, 150};


//: application/json
Byte kStr_perspectiveText[] = {50, 16, 9, 9, 94, 134, 245, 92, 177, 110, 111, 115, 106, 47, 110, 111, 105, 116, 97, 99, 105, 108, 112, 112, 97, 225};


//: Download
Byte kStr_indexSaltText[] = {95, 8, 7, 11, 163, 207, 203, 100, 97, 111, 108, 110, 119, 111, 68, 255};


//: thumb.jpg
Byte kStr_dismissTitle[] = {12, 9, 6, 165, 10, 200, 103, 112, 106, 46, 98, 109, 117, 104, 116, 1};


//: responseObject = %@
Byte kStr_laterWetCivilName[] = {34, 19, 3, 64, 37, 32, 61, 32, 116, 99, 101, 106, 98, 79, 101, 115, 110, 111, 112, 115, 101, 114, 115};


//: text/javascript
Byte kStr_accommodateValue[] = {81, 15, 12, 89, 36, 202, 143, 233, 227, 183, 244, 173, 116, 112, 105, 114, 99, 115, 97, 118, 97, 106, 47, 116, 120, 101, 116, 60};


//: text/json
Byte kStr_voiceOofName[] = {78, 9, 7, 91, 196, 240, 217, 110, 111, 115, 106, 47, 116, 120, 101, 116, 4};


//: WIFI
Byte kStr_coatName[] = {25, 4, 8, 94, 252, 137, 14, 19, 73, 70, 73, 87, 147};


//: text/xml
Byte kStr_sexStopData[] = {77, 8, 10, 107, 129, 140, 227, 168, 242, 64, 108, 109, 120, 47, 116, 120, 101, 116, 7};


//: error = %@
Byte kStr_levelValue[] = {27, 10, 12, 119, 230, 205, 158, 238, 195, 126, 184, 32, 64, 37, 32, 61, 32, 114, 111, 114, 114, 101, 110};


//: video
Byte kStr_atPokeValue[] = {48, 5, 5, 227, 227, 111, 101, 100, 105, 118, 197};


//: 手机自带网络
Byte kStr_heapValue[] = {64, 18, 13, 87, 222, 113, 150, 237, 71, 218, 217, 217, 135, 156, 187, 231, 145, 189, 231, 166, 184, 229, 170, 135, 232, 186, 156, 230, 139, 137, 230, 113};


//: 未知网络
Byte kStr_discloseHalfwayName[] = {67, 12, 13, 158, 3, 122, 8, 220, 109, 179, 222, 148, 36, 156, 187, 231, 145, 189, 231, 165, 159, 231, 170, 156, 230, 216};


//: thumb
Byte kStr_boastContent[] = {92, 5, 11, 42, 194, 31, 94, 42, 120, 37, 54, 98, 109, 117, 104, 116, 175};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RecentHelper.m
//  RecentHelper
//
//  Created by AndyPang on 16/8/12.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

// __M_A_C_R_O__
//: #import "YLNetworkHelper.h"
#import "RecentHelper.h"
//: #import "AFNetworking.h"
#import "AFNetworking.h"
//: #import "AFNetworkActivityIndicatorManager.h"
#import "AFNetworkActivityIndicatorManager.h"

//: @implementation YLNetworkHelper
@implementation RecentHelper

//: static BOOL _isOpenLog; 
static BOOL kLet_memberValue; // 是否已开启日志打印
//: static NSMutableArray *_allSessionTask;
static NSMutableArray *kLet_playerName;
//: static AFHTTPSessionManager *_sessionManager;
static AFHTTPSessionManager *kLet_makeContent;

//: #pragma mark - 开始监听网络
#pragma mark - 开始监听网络
//: + (void)networkStatusWithBlock:(YLNetworkStatus)networkStatus {
+ (void)brandTitleView:(YLNetworkStatus)networkStatus {

    //: [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //: switch (status) {
        switch (status) {
            //: case AFNetworkReachabilityStatusUnknown:
            case AFNetworkReachabilityStatusUnknown:
                //: networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"未知网络"] UTF8String]);
                if (kLet_memberValue) printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_discloseHalfwayName)] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusNotReachable:
            case AFNetworkReachabilityStatusNotReachable:
                //: networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"无网络"] UTF8String]);
                if (kLet_memberValue) printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_aircraftReferSueValue)] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWWAN:
            case AFNetworkReachabilityStatusReachableViaWWAN:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"手机自带网络"] UTF8String]);
                if (kLet_memberValue) printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_heapValue)] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWiFi:
            case AFNetworkReachabilityStatusReachableViaWiFi:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"WIFI"] UTF8String]);
                if (kLet_memberValue) printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_coatName)] UTF8String]);
                //: break;
                break;
        }
    //: }];
    }];

}

//: + (BOOL)isNetwork {
+ (BOOL)photo {
    //: return [AFNetworkReachabilityManager sharedManager].reachable;
    return [AFNetworkReachabilityManager sharedManager].reachable;
}

//: + (BOOL)isWWANNetwork {
+ (BOOL)key {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
}

//: + (BOOL)isWiFiNetwork {
+ (BOOL)infoFor {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
}

//: + (void)openLog {
+ (void)sawLog {
    //: _isOpenLog = YES;
    kLet_memberValue = YES;
}

//: + (void)closeLog {
+ (void)more {
    //: _isOpenLog = NO;
    kLet_memberValue = NO;
}

//: + (void)cancelAllRequest {
+ (void)itemDate {
    // 锁操作
    //: @synchronized(self) {
    @synchronized(self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self innumerablenessTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: [task cancel];
            [task cancel];
        //: }];
        }];
        //: [[self allSessionTask] removeAllObjects];
        [[self innumerablenessTask] removeAllObjects];
    }
}

//: + (void)cancelRequestWithURL:(NSString *)URL {
+ (void)with:(NSString *)URL {
    //: if (!URL) { return; }
    if (!URL) { return; }
    //: @synchronized (self) {
    @synchronized (self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self innumerablenessTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
            if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
                //: [task cancel];
                [task cancel];
                //: [[self allSessionTask] removeObject:task];
                [[self innumerablenessTask] removeObject:task];
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
+ (NSURLSessionTask *)recordAlbum:(NSString *)URL
               //: parameters:(id)parameters
               read:(id)parameters
                  //: success:(YLHttpRequestSuccess)success
                  edge:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  separateRequestFailed:(YLHttpRequestFailed)failure {
    //: return [self GET:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self index:URL message:parameters greenTing:nil upshotParametersCacheReceiveFailureGodspeed:success getValue:failure];
}

//: #pragma mark - POST请求无缓存
#pragma mark - POST请求无缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)from:(NSString *)URL
                //: parameters:(id)parameters
                blue:(id)parameters
                   //: success:(YLHttpRequestSuccess)success
                   soldierlyInstallingVoiceMisplay:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   background:(YLHttpRequestFailed)failure {
    //: return [self POST:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self result:URL of:parameters labelBubble:nil beginRequestSuccess:success fixing:failure];
}

//: #pragma mark - GET请求自动缓存
#pragma mark - GET请求自动缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)index:(NSString *)URL
               //: parameters:(id)parameters
               message:(id)parameters
            //: responseCache:(YLHttpRequestCache)responseCache
            greenTing:(YLHttpRequestCache)responseCache
                  //: success:(YLHttpRequestSuccess)success
                  upshotParametersCacheReceiveFailureGodspeed:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  getValue:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerHTTP)];
    [self setFormat:(YLResponseSerializerHTTP)];

    //: NSURLSessionTask *sessionTask = [_sessionManager GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [kLet_makeContent GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_laterWetCivilName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_levelValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];
    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self innumerablenessTask] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - POST请求自动缓存
#pragma mark - POST请求自动缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)result:(NSString *)URL
                //: parameters:(id)parameters
                of:(id)parameters
             //: responseCache:(YLHttpRequestCache)responseCache
             labelBubble:(YLHttpRequestCache)responseCache
                   //: success:(YLHttpRequestSuccess)success
                   beginRequestSuccess:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   fixing:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerJSON)];
    [self setFormat:(YLResponseSerializerJSON)];

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [kLet_makeContent POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_laterWetCivilName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_levelValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];

    // 添加最新的sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self innumerablenessTask] addObject:sessionTask] : nil ;
    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 上传文件
#pragma mark - 上传文件
//: + (NSURLSessionTask *)uploadFileWithURL:(NSString *)URL
+ (NSURLSessionTask *)bottomBy:(NSString *)URL
                             //: parameters:(id)parameters
                             low:(id)parameters
                                   //: name:(NSString *)name
                                   mentalRepresentation:(NSString *)name
                               //: filePath:(NSString *)filePath
                               file:(NSString *)filePath
                               //: progress:(YLHttpProgress)progress
                               bar:(YLHttpProgress)progress
                                //: success:(YLHttpRequestSuccess)success
                                label:(YLHttpRequestSuccess)success
                                //: failure:(YLHttpRequestFailed)failure {
                                disable:(YLHttpRequestFailed)failure {

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [kLet_makeContent POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_laterWetCivilName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_levelValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self innumerablenessTask] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: + (__kindof NSURLSessionTask *)uploadVideoWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)edgeTime:(NSString *)URL
                                      //: parameters:(id)parameters
                                      emptyNester:(id)parameters
                                           //: video:(NSString *)videoPath
                                           searched:(NSString *)videoPath
                                           //: thumb:(UIImage *)thumb
                                           name:(UIImage *)thumb
                                        //: progress:(YLHttpProgress)progress
                                        than:(YLHttpProgress)progress
                                         //: success:(YLHttpRequestSuccess)success
                                         thumbnailVideoSmartNonpaymentInputProgressOccurrenceTelecastingUpload:(YLHttpRequestSuccess)success
                                         //: failure:(YLHttpRequestFailed)failure {
                                         place:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [kLet_makeContent POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:@"video" error:&error];
        [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:StringFromFragileGalData(kStr_atPokeValue) error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;

        //: NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        //: [formData appendPartWithFileData:thumbData
        [formData appendPartWithFileData:thumbData
                                    //: name:@"thumb"
                                    name:StringFromFragileGalData(kStr_boastContent)
                                //: fileName:@"thumb.jpg"
                                fileName:StringFromFragileGalData(kStr_dismissTitle)
                                //: mimeType:[NSString stringWithFormat:@"image/jpg"]];
                                mimeType:[NSString stringWithFormat:StringFromFragileGalData(kStr_documentaryData)]];

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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_laterWetCivilName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_levelValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self innumerablenessTask] addObject:sessionTask] : nil ;

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
+ (__kindof NSURLSessionTask *)tagInfo:(NSString *)URL
                                       //: parameters:(id)parameters
                                       image:(id)parameters
                                            //: files:(NSDictionary<NSString*, NSString*> *)files
                                            comment:(NSDictionary<NSString*, NSString*> *)files
                                         //: progress:(YLHttpProgress)progress
                                         number:(YLHttpProgress)progress
                                          //: success:(YLHttpRequestSuccess)success
                                          mode:(YLHttpRequestSuccess)success
                                          //: failure:(YLHttpRequestFailed)failure {
                                          endFailure:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [kLet_makeContent POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_laterWetCivilName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_levelValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self innumerablenessTask] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}



//: #pragma mark - 上传单张图片
#pragma mark - 上传单张图片
//: + (NSURLSessionTask *)uploadImageWithURL:(NSString *)URL parameters:(id)parameters name:(NSString *)name data:(NSData *)data fileName:(NSString *)fileName imageType:(NSString *)imageType progress:(YLHttpProgress)progress success:(YLHttpRequestSuccess)success failure:(YLHttpRequestFailed)failure
+ (NSURLSessionTask *)temp:(NSString *)URL metronymicId:(id)parameters by:(NSString *)name promotionFailure:(NSData *)data model:(NSString *)fileName valueVideo:(NSString *)imageType key:(YLHttpProgress)progress storage:(YLHttpRequestSuccess)success maxPraise:(YLHttpRequestFailed)failure
{
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [kLet_makeContent POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        // 默认图片的文件名, 若fileNames为nil就使用

        //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //: formatter.dateFormat = @"yyyyMMddHHmmss";
        formatter.dateFormat = StringFromFragileGalData(kStr_woodenTheirName);
        //: NSString *str = [formatter stringFromDate:[NSDate date]];
        NSString *str = [formatter stringFromDate:[NSDate date]];
        //: NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:@"jpg"];
        NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:StringFromFragileGalData(kStr_wagTitle)];

        //: [formData appendPartWithFileData:data
        [formData appendPartWithFileData:data
                                    //: name:name
                                    name:name
                                //: fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:@"jpg"] : imageFileName
                                fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:StringFromFragileGalData(kStr_wagTitle)] : imageFileName
                                //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                mimeType:[NSString stringWithFormat:StringFromFragileGalData(kStr_heapAxTitle),imageType ?: StringFromFragileGalData(kStr_wagTitle)]];

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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_laterWetCivilName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_levelValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self innumerablenessTask] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}


//: #pragma mark - 上传多张图片
#pragma mark - 上传多张图片
//: + (NSURLSessionTask *)uploadImagesWithURL:(NSString *)URL
+ (NSURLSessionTask *)range:(NSString *)URL
                               //: parameters:(id)parameters
                               from:(id)parameters
                                     //: name:(NSString *)name
                                     human:(NSString *)name
                                   //: images:(NSArray<UIImage *> *)images
                                   rubric:(NSArray<UIImage *> *)images
                                //: fileNames:(NSArray<NSString *> *)fileNames
                                present:(NSArray<NSString *> *)fileNames
                               //: imageScale:(CGFloat)imageScale
                               libraryFloat:(CGFloat)imageScale
                                //: imageType:(NSString *)imageType
                                should:(NSString *)imageType
                                 //: progress:(YLHttpProgress)progress
                                 dogTagHttpProgress:(YLHttpProgress)progress
                                  //: success:(YLHttpRequestSuccess)success
                                  origin:(YLHttpRequestSuccess)success
                                  //: failure:(YLHttpRequestFailed)failure {
                                  pin:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [kLet_makeContent POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            // 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            // 默认图片的文件名, 若fileNames为nil就使用

            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = StringFromFragileGalData(kStr_woodenTheirName);
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:StringFromFragileGalData(kStr_wagTitle)];

            //: [formData appendPartWithFileData:imageData
            [formData appendPartWithFileData:imageData
                                        //: name:[NSString stringWithFormat:@"%@%ld", name, i]
                                        name:[NSString stringWithFormat:@"%@%ld", name, i]
                                    //: fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName
                                    fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:StringFromFragileGalData(kStr_wagTitle)] : imageFileName
                                    //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                    mimeType:[NSString stringWithFormat:StringFromFragileGalData(kStr_heapAxTitle),imageType ?: StringFromFragileGalData(kStr_wagTitle)]];
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

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_laterWetCivilName),responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (kLet_memberValue) {printf("[%s] %s [第%d行]: %s\n", "15:10:29" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:StringFromFragileGalData(kStr_levelValue),error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self innumerablenessTask] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self innumerablenessTask] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 下载文件
#pragma mark - 下载文件
//: + (NSURLSessionTask *)downloadWithURL:(NSString *)URL
+ (NSURLSessionTask *)tap:(NSString *)URL
                              //: fileDir:(NSString *)fileDir
                              progressAdd:(NSString *)fileDir
                             //: progress:(YLHttpProgress)progress
                             progress:(YLHttpProgress)progress
                              //: success:(void(^)(NSString *))success
                              can:(void(^)(NSString *))success
                              //: failure:(YLHttpRequestFailed)failure {
                              systemWith:(YLHttpRequestFailed)failure {
    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: __block NSURLSessionDownloadTask *downloadTask = [_sessionManager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    __block NSURLSessionDownloadTask *downloadTask = [kLet_makeContent downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
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
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : StringFromFragileGalData(kStr_indexSaltText)];
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
        [[self innumerablenessTask] removeObject:downloadTask];
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
    downloadTask ? [[self innumerablenessTask] addObject:downloadTask] : nil ;

    //: return downloadTask;
    return downloadTask;
}

/**
 存储着所有的请求task数组
 */
//: + (NSMutableArray *)allSessionTask {
+ (NSMutableArray *)innumerablenessTask {
    //: if (!_allSessionTask) {
    if (!kLet_playerName) {
        //: _allSessionTask = [[NSMutableArray alloc] init];
        kLet_playerName = [[NSMutableArray alloc] init];
    }
    //: return _allSessionTask;
    return kLet_playerName;
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
    kLet_makeContent = [AFHTTPSessionManager manager];
    //: _sessionManager.requestSerializer.timeoutInterval = 15.f;
    kLet_makeContent.requestSerializer.timeoutInterval = 15.f;
    //: _sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    kLet_makeContent.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:StringFromFragileGalData(kStr_perspectiveText), StringFromFragileGalData(kStr_peaValue), StringFromFragileGalData(kStr_voiceOofName), StringFromFragileGalData(kStr_biasSupText), StringFromFragileGalData(kStr_accommodateValue), StringFromFragileGalData(kStr_sexStopData), StringFromFragileGalData(kStr_laterData), nil];
    // 打开状态栏的等待菊花
    //: [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
}

//: #pragma mark - 重置AFHTTPSessionManager相关属性
#pragma mark - 重置AFHTTPSessionManager相关属性

//: + (void)setAFHTTPSessionManagerProperty:(void (^)(AFHTTPSessionManager *))sessionManager {
+ (void)setModel:(void (^)(AFHTTPSessionManager *))sessionManager {
    //: sessionManager ? sessionManager(_sessionManager) : nil;
    sessionManager ? sessionManager(kLet_makeContent) : nil;
}

//: + (void)setRequestSerializer:(YLRequestSerializer)requestSerializer {
+ (void)setRecord:(YLRequestSerializer)requestSerializer {
    //: _sessionManager.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
    kLet_makeContent.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
}

//: + (void)setResponseSerializer:(YLResponseSerializer)responseSerializer {
+ (void)setFormat:(YLResponseSerializer)responseSerializer {
    //: _sessionManager.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
    kLet_makeContent.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
}

//: + (void)setRequestTimeoutInterval:(NSTimeInterval)time {
+ (void)setUpTotalerval:(NSTimeInterval)time {
    //: _sessionManager.requestSerializer.timeoutInterval = time;
    kLet_makeContent.requestSerializer.timeoutInterval = time;
}

//: + (void)setValue:(NSString *)value forHTTPHeaderField:(NSString *)field {
+ (void)bucket:(NSString *)value preface:(NSString *)field {
    //: [_sessionManager.requestSerializer setValue:value forHTTPHeaderField:field];
    [kLet_makeContent.requestSerializer setValue:value forHTTPHeaderField:field];
}

//: + (void)openNetworkActivityIndicator:(BOOL)open {
+ (void)need:(BOOL)open {
    //: [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
}

//: + (void)setSecurityPolicyWithCerPath:(NSString *)cerPath validatesDomainName:(BOOL)validatesDomainName {
+ (void)name:(NSString *)cerPath policy:(BOOL)validatesDomainName {
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
    [kLet_makeContent setSecurityPolicy:securityPolicy];
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

Byte * FragileGalDataToCache(Byte *data) {
    int silverSalmon = data[0];
    int voter = data[1];
    int theirDepartment = data[2];
    if (!silverSalmon) return data + theirDepartment;
    for (int i = 0; i < voter / 2; i++) {
        int begin = theirDepartment + i;
        int end = theirDepartment + voter - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[theirDepartment + voter] = 0;
    return data + theirDepartment;
}

NSString *StringFromFragileGalData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FragileGalDataToCache(data)];
}  
