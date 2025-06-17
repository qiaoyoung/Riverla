
#import <Foundation/Foundation.h>

NSString *StringFromSaveData(Byte *data);


//: image/*
Byte kStr_sessionShowName[] = {80, 7, 8, 52, 81, 32, 136, 238, 42, 47, 101, 103, 97, 109, 105, 144};


//: text/javascript
Byte kStr_messageRecordAddContent[] = {31, 15, 5, 192, 250, 116, 112, 105, 114, 99, 115, 97, 118, 97, 106, 47, 116, 120, 101, 116, 133};


//: application/json
Byte kStr_hideBlueValue[] = {4, 16, 9, 247, 85, 18, 255, 241, 47, 110, 111, 115, 106, 47, 110, 111, 105, 116, 97, 99, 105, 108, 112, 112, 97, 147};


//: code
Byte kStr_cellFormatName[] = {35, 4, 10, 18, 244, 237, 39, 188, 76, 30, 101, 100, 111, 99, 153};


//: application/zip
Byte kStr_messageSessionText[] = {60, 15, 12, 139, 17, 246, 118, 111, 57, 199, 188, 18, 112, 105, 122, 47, 110, 111, 105, 116, 97, 99, 105, 108, 112, 112, 97, 214};


//: text/html
Byte kStr_shouldHideText[] = {56, 9, 7, 76, 167, 95, 224, 108, 109, 116, 104, 47, 116, 120, 101, 116, 53};


//: message
Byte kStr_scaleText[] = {5, 7, 10, 56, 90, 152, 104, 161, 141, 7, 101, 103, 97, 115, 115, 101, 109, 165};


//: text/json
Byte kStr_collectionColorName[] = {63, 9, 12, 133, 188, 244, 11, 19, 148, 184, 251, 215, 110, 111, 115, 106, 47, 116, 120, 101, 116, 5};


//: text/xml
Byte kStr_statusColorHideValue[] = {32, 8, 13, 248, 148, 177, 25, 20, 81, 130, 161, 125, 188, 108, 109, 120, 47, 116, 120, 101, 116, 126};


//: text/plain
Byte kStr_styleText[] = {14, 10, 10, 147, 151, 131, 8, 35, 161, 120, 110, 105, 97, 108, 112, 47, 116, 120, 101, 116, 51};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PointIndependent.m
//  FULiveDemo
//
//  Created by 项林平 on 2021/3/15.
//  Copyright © 2021 FaceUnity. All rights reserved.
//
//#ifdef DEBUG
//
//static NSString * const FUBaseURLString = @"http://192.168.0.122:8089/api/";
//
//#else
//
//static NSString * const FUBaseURLString = @"https://items.faceunity.com:4006/api/";
//
//#endif
//static NSString * const FUBaseURLString = @"http://192.168.0.122:8089/api/";

// __M_A_C_R_O__
//: #import "FUNetworkingHelper.h"
#import "PointIndependent.h"
//: #import <AFNetworking.h>
#import <AFNetworking.h>

//: static NSString * const FUBaseURLString = @"https://items.faceunity.com:4006/api/";
static NSString * const kLet_spaceName = @"https://items.faceunity.com:4006/api/";

//: @interface FUNetworkingHelper ()
@interface PointIndependent ()

//: @property (nonatomic, strong) AFHTTPSessionManager *manager;
@property (nonatomic, strong) AFHTTPSessionManager *manager;
//: @property (nonatomic, strong) NSMutableArray<NSURLSessionTask *> *tasksArray;
@property (nonatomic, strong) NSMutableArray<NSURLSessionTask *> *tasksArray;

//: @end
@end

//: @implementation FUNetworkingHelper
@implementation PointIndependent

//: + (void)load {
+ (void)load {
    //: [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}

//: + (instancetype)sharedInstance {
+ (instancetype)nameMessage {
    //: static FUNetworkingHelper *instance = nil;
    static PointIndependent *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FUNetworkingHelper alloc] init];
        instance = [[PointIndependent alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: AFSecurityPolicy *policy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        AFSecurityPolicy *policy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        //: policy.allowInvalidCertificates = YES;
        policy.allowInvalidCertificates = YES;
        //: policy.validatesDomainName = NO;
        policy.validatesDomainName = NO;

        //: _manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:FUBaseURLString] sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        _manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:kLet_spaceName] sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
        //: _manager.securityPolicy = policy;
        _manager.securityPolicy = policy;
        //: _manager.requestSerializer = [AFHTTPRequestSerializer serializer];
        _manager.requestSerializer = [AFHTTPRequestSerializer serializer];
        //: _manager.requestSerializer.timeoutInterval = 60.0;
        _manager.requestSerializer.timeoutInterval = 60.0;
        //: _manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        _manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        // 默认acceptableContentTypes
        //: _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", @"application/zip", nil];
        _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:StringFromSaveData(kStr_hideBlueValue), StringFromSaveData(kStr_shouldHideText), StringFromSaveData(kStr_collectionColorName), StringFromSaveData(kStr_styleText), StringFromSaveData(kStr_messageRecordAddContent), StringFromSaveData(kStr_statusColorHideValue), StringFromSaveData(kStr_sessionShowName), StringFromSaveData(kStr_messageSessionText), nil];
    }
    //: return self;
    return self;
}

//: + (FUNetworkStatus)currentNetworkStatus {
+ (FUNetworkStatus)with {
    //: AFNetworkReachabilityStatus status = [AFNetworkReachabilityManager sharedManager].networkReachabilityStatus;
    AFNetworkReachabilityStatus status = [AFNetworkReachabilityManager sharedManager].networkReachabilityStatus;
    //: if (status == AFNetworkReachabilityStatusReachableViaWWAN || status == AFNetworkReachabilityStatusReachableViaWiFi) {
    if (status == AFNetworkReachabilityStatusReachableViaWWAN || status == AFNetworkReachabilityStatusReachableViaWiFi) {
        //: return FUNetworkStatusReachable;
        return FUNetworkStatusReachable;
    //: } else if (status == AFNetworkReachabilityStatusUnknown) {
    } else if (status == AFNetworkReachabilityStatusUnknown) {
        //: return FUNetworkStatusUnknown;
        return FUNetworkStatusUnknown;
    //: } else {
    } else {
        //: return FUNetworkStatusUnreachable;
        return FUNetworkStatusUnreachable;
    }
}

//: + (void)networkStatusHandler:(FUNetworkStatusHandler)networkStatus {
+ (void)pressedNetwork:(FUNetworkStatusHandler)networkStatus {
    //: [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //: switch (status) {
        switch (status) {
            //: case AFNetworkReachabilityStatusUnknown: {
            case AFNetworkReachabilityStatusUnknown: {
                //: !networkStatus ?: networkStatus(FUNetworkStatusUnknown);
                !networkStatus ?: networkStatus(FUNetworkStatusUnknown);
            }
                //: break;
                break;
            //: case AFNetworkReachabilityStatusNotReachable: {
            case AFNetworkReachabilityStatusNotReachable: {
                //: !networkStatus ?: networkStatus(FUNetworkStatusUnreachable);
                !networkStatus ?: networkStatus(FUNetworkStatusUnreachable);
            }
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWWAN:
            case AFNetworkReachabilityStatusReachableViaWWAN:
            //: case AFNetworkReachabilityStatusReachableViaWiFi: {
            case AFNetworkReachabilityStatusReachableViaWiFi: {
                //: !networkStatus ?: networkStatus(FUNetworkStatusReachable);
                !networkStatus ?: networkStatus(FUNetworkStatusReachable);
            }
            //: default:
            default:
                //: break;
                break;
        }
    //: }];
    }];
}

//: - (NSURLSessionTask *)getWithURL:(NSString *)URLString parameters:(NSDictionary *)parameters success:(FURequestSuccess)success failure:(FURequestFailure)failure {
- (NSURLSessionTask *)lineUpStreetSmartSuccessParametersRelapse:(NSString *)URLString fullPhaseOfTheMoon:(NSDictionary *)parameters device:(FURequestSuccess)success viewRequestFailure:(FURequestFailure)failure {
    //: NSLog(@"\nURL:%@\nparams:%@", URLString, parameters);
    //: NSURLSessionTask *task = [self.manager GET:URLString parameters:parameters headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    NSURLSessionTask *task = [self.manager GET:URLString parameters:parameters headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        //: NSLog(@"responseObject = %@", result);
        //: if ([result[@"code"] integerValue] == 2) {
        if ([result[StringFromSaveData(kStr_cellFormatName)] integerValue] == 2) {
            //: !success ?: success(result);
            !success ?: success(result);
        //: } else {
        } else {
            //: !failure ?: failure([NSError errorWithDomain:NSCocoaErrorDomain code:[result[@"code"] integerValue] userInfo:@{NSUnderlyingErrorKey : result[@"message"]}]);
            !failure ?: failure([NSError errorWithDomain:NSCocoaErrorDomain code:[result[StringFromSaveData(kStr_cellFormatName)] integerValue] userInfo:@{NSUnderlyingErrorKey : result[StringFromSaveData(kStr_scaleText)]}]);
        }
        //: [self.tasksArray removeObject:task];
        [self.tasksArray removeObject:task];

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: NSLog(@"error = %@", error);
        //: [self.tasksArray removeObject:task];
        [self.tasksArray removeObject:task];
        //: !failure ?: failure(error);
        !failure ?: failure(error);
    //: }];
    }];
    // 保存task
    //: !task ?: [self.tasksArray addObject:task];
    !task ?: [self.tasksArray addObject:task];
    //: return task;
    return task;
}

//: - (NSURLSessionTask *)postWithURL:(NSString *)URLString parameters:(NSDictionary *)parameters success:(FURequestSuccess)success failure:(FURequestFailure)failure {
- (NSURLSessionTask *)empty:(NSString *)URLString parameters:(NSDictionary *)parameters image:(FURequestSuccess)success comment:(FURequestFailure)failure {
    //: NSLog(@"\nURL:%@\nparams:%@", URLString, parameters);
    //: NSURLSessionTask *task = [self.manager POST:URLString parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *task = [self.manager POST:URLString parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        //: NSLog(@"responseObject = %@", result);
        //: if ([result[@"code"] integerValue] == 2) {
        if ([result[StringFromSaveData(kStr_cellFormatName)] integerValue] == 2) {
            //: !success ?: success(result);
            !success ?: success(result);
        //: } else {
        } else {
            //: !failure ?: failure([NSError errorWithDomain:NSCocoaErrorDomain code:[result[@"code"] integerValue] userInfo:@{NSUnderlyingErrorKey : result[@"message"]}]);
            !failure ?: failure([NSError errorWithDomain:NSCocoaErrorDomain code:[result[StringFromSaveData(kStr_cellFormatName)] integerValue] userInfo:@{NSUnderlyingErrorKey : result[StringFromSaveData(kStr_scaleText)]}]);
        }
        //: [self.tasksArray removeObject:task];
        [self.tasksArray removeObject:task];
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: NSLog(@"error = %@", error);
        //: [self.tasksArray removeObject:task];
        [self.tasksArray removeObject:task];
        //: !failure ?: failure(error);
        !failure ?: failure(error);
    //: }];
    }];
    // 保存task
    //: !task ?: [self.tasksArray addObject:task];
    !task ?: [self.tasksArray addObject:task];
    //: return task;
    return task;
}

//: - (NSURLSessionDownloadTask *)downloadWithURL:(NSString *)URLString directoryPath:(NSString *)directoryPath fileName:(NSString *)fileName progress:(FURequestProgress)progress success:(FURequestSuccess)success failure:(FURequestFailure)failure {
- (NSURLSessionDownloadTask *)signal:(NSString *)URLString toVictory:(NSString *)directoryPath bubble:(NSString *)fileName fileRequestProgress:(FURequestProgress)progress nameSuccess:(FURequestSuccess)success down:(FURequestFailure)failure {
    //: NSLog(@"\nURL:%@", URLString);
    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URLString]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URLString]];
    //: __block NSURLSessionDownloadTask *task = [self.manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    __block NSURLSessionDownloadTask *task = [self.manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //: NSLog(@"progress:%@", downloadProgress);
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: !progress ?: progress(downloadProgress);
            !progress ?: progress(downloadProgress);
        //: });
        });
    //: } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        //: NSString *directoryPathString = directoryPath ?: NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
        NSString *directoryPathString = directoryPath ?: NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
        //: NSString *filePath = [directoryPathString stringByAppendingPathComponent:fileName ?: response.suggestedFilename];
        NSString *filePath = [directoryPathString stringByAppendingPathComponent:fileName ?: response.suggestedFilename];
        //: return [NSURL fileURLWithPath:filePath];
        return [NSURL fileURLWithPath:filePath];
    //: } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        //: [self.tasksArray removeObject:task];
        [self.tasksArray removeObject:task];
        //: if (error) {
        if (error) {
            //: NSLog(@"error = %@", error);
            //: !failure ?: failure(error);
            !failure ?: failure(error);
            //: return;
            return;
        }
        //: NSLog(@"response = %@", response);
        //: !success ?: success(filePath);
        !success ?: success(filePath);
    //: }];
    }];
    //: [task resume];
    [task resume];

    // 保存task
    //: !task ?: [self.tasksArray addObject:task];
    !task ?: [self.tasksArray addObject:task];
    //: return task;
    return task;
}

//: - (void)cancelHttpRequestWithURL:(NSString *)URLString {
- (void)scratchUrl:(NSString *)URLString {
    //: if (!URLString) {
    if (!URLString) {
        //: return;
        return;
    }
    //: @synchronized (self) {
    @synchronized (self) {
        //: [self.tasksArray enumerateObjectsUsingBlock:^(NSURLSessionTask * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self.tasksArray enumerateObjectsUsingBlock:^(NSURLSessionTask * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([obj.currentRequest.URL.absoluteString hasSuffix:URLString]) {
            if ([obj.currentRequest.URL.absoluteString hasSuffix:URLString]) {
                //: [obj cancel];
                [obj cancel];
                //: [self.tasksArray removeObject:obj];
                [self.tasksArray removeObject:obj];
                //: *stop = YES;
                *stop = YES;
            }
        //: }];
        }];
    }
}

//: - (void)cancelAllHttpRequests {
- (void)alongCancel {
    //: @synchronized (self) {
    @synchronized (self) {
        //: [self.tasksArray enumerateObjectsUsingBlock:^(NSURLSessionTask * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self.tasksArray enumerateObjectsUsingBlock:^(NSURLSessionTask * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: [obj cancel];
            [obj cancel];
        //: }];
        }];
        //: [self.tasksArray removeAllObjects];
        [self.tasksArray removeAllObjects];
    }
}

//: - (NSMutableArray<NSURLSessionTask *> *)tasksArray {
- (NSMutableArray<NSURLSessionTask *> *)tasksArray {
    //: if (!_tasksArray) {
    if (!_tasksArray) {
        //: _tasksArray = [[NSMutableArray alloc] init];
        _tasksArray = [[NSMutableArray alloc] init];
    }
    //: return _tasksArray;
    return _tasksArray;
}

//: @end
@end

Byte * SaveDataToCache(Byte *data) {
    int cellHide = data[0];
    int changeTitleWith = data[1];
    int marginOfSafety = data[2];
    if (!cellHide) return data + marginOfSafety;
    for (int i = 0; i < changeTitleWith / 2; i++) {
        int begin = marginOfSafety + i;
        int end = marginOfSafety + changeTitleWith - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[marginOfSafety + changeTitleWith] = 0;
    return data + marginOfSafety;
}

NSString *StringFromSaveData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SaveDataToCache(data)];
}  
