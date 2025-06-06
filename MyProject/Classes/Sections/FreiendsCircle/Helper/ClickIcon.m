
#import <Foundation/Foundation.h>

NSString *StringFromMeteData(Byte *data);        


//: text/xml
Byte kStr_dominateTitle[] = {64, 8, 4, 10, 92, 199, 237, 90, 62, 102, 112, 97, 116, 112, 43, 116, 105, 104, 48};


//: application/zip
Byte kStr_climbAddText[] = {22, 15, 72, 10, 38, 146, 92, 99, 215, 46, 25, 40, 40, 36, 33, 27, 25, 44, 33, 39, 38, 231, 50, 33, 40, 152};


//: application/json
Byte kStr_cheekText[] = {24, 16, 18, 4, 79, 94, 94, 90, 87, 81, 79, 98, 87, 93, 92, 29, 88, 97, 93, 92, 42};


//: text/json
Byte kStr_valuableMemberPinName[] = {10, 9, 62, 11, 162, 100, 96, 102, 223, 247, 9, 54, 39, 58, 54, 241, 44, 53, 49, 48, 66};


//: text/html
Byte kStr_questionShowTitle[] = {39, 9, 19, 5, 88, 97, 82, 101, 97, 28, 85, 97, 90, 89, 180};


//: message
Byte kStr_vatName[] = {30, 7, 44, 4, 65, 57, 71, 71, 53, 59, 57, 221};


//: text/javascript
Byte kStr_redTitle[] = {43, 15, 97, 12, 8, 74, 191, 174, 166, 55, 37, 130, 19, 4, 23, 19, 206, 9, 0, 21, 0, 18, 2, 17, 8, 15, 19, 224};


//: text/plain
Byte kStr_blueText[] = {73, 10, 89, 9, 232, 225, 214, 15, 150, 27, 12, 31, 27, 214, 23, 19, 8, 16, 21, 46};


//: code
Byte kStr_itemBrokenName[] = {58, 4, 1, 7, 91, 63, 56, 98, 110, 99, 100, 87};


//: image/*
Byte kStr_brandData[] = {22, 7, 48, 4, 57, 61, 49, 55, 53, 255, 250, 204};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClickIcon.m
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
#import "ClickIcon.h"
//: #import <AFNetworking.h>
#import <AFNetworking.h>

//: static NSString * const FUBaseURLString = @"https://items.faceunity.com:4006/api/";
static NSString * const let_valueTitle = @"https://items.faceunity.com:4006/api/";

//: @interface FUNetworkingHelper ()
@interface ClickIcon ()

//: @property (nonatomic, strong) AFHTTPSessionManager *manager;
@property (nonatomic, strong) AFHTTPSessionManager *manager;
//: @property (nonatomic, strong) NSMutableArray<NSURLSessionTask *> *tasksArray;
@property (nonatomic, strong) NSMutableArray<NSURLSessionTask *> *tasksArray;

//: @end
@end

//: @implementation FUNetworkingHelper
@implementation ClickIcon

//: + (void)load {
+ (void)load {
    //: [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}

//: + (instancetype)sharedInstance {
+ (instancetype)lyric {
    //: static FUNetworkingHelper *instance = nil;
    static ClickIcon *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FUNetworkingHelper alloc] init];
        instance = [[ClickIcon alloc] init];
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
        _manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:let_valueTitle] sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
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
        _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:StringFromMeteData(kStr_cheekText), StringFromMeteData(kStr_questionShowTitle), StringFromMeteData(kStr_valuableMemberPinName), StringFromMeteData(kStr_blueText), StringFromMeteData(kStr_redTitle), StringFromMeteData(kStr_dominateTitle), StringFromMeteData(kStr_brandData), StringFromMeteData(kStr_climbAddText), nil];
    }
    //: return self;
    return self;
}

//: + (FUNetworkStatus)currentNetworkStatus {
+ (FUNetworkStatus)induceDay {
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
+ (void)color:(FUNetworkStatusHandler)networkStatus {
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
- (NSURLSessionTask *)manager:(NSString *)URLString data:(NSDictionary *)parameters draftCopy:(FURequestSuccess)success to:(FURequestFailure)failure {
    //: NSLog(@"\nURL:%@\nparams:%@", URLString, parameters);
    //: NSURLSessionTask *task = [self.manager GET:URLString parameters:parameters headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    NSURLSessionTask *task = [self.manager GET:URLString parameters:parameters headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        //: NSLog(@"responseObject = %@", result);
        //: if ([result[@"code"] integerValue] == 2) {
        if ([result[StringFromMeteData(kStr_itemBrokenName)] integerValue] == 2) {
            //: !success ?: success(result);
            !success ?: success(result);
        //: } else {
        } else {
            //: !failure ?: failure([NSError errorWithDomain:NSCocoaErrorDomain code:[result[@"code"] integerValue] userInfo:@{NSUnderlyingErrorKey : result[@"message"]}]);
            !failure ?: failure([NSError errorWithDomain:NSCocoaErrorDomain code:[result[StringFromMeteData(kStr_itemBrokenName)] integerValue] userInfo:@{NSUnderlyingErrorKey : result[StringFromMeteData(kStr_vatName)]}]);
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
- (NSURLSessionTask *)overContent:(NSString *)URLString selected:(NSDictionary *)parameters input:(FURequestSuccess)success container:(FURequestFailure)failure {
    //: NSLog(@"\nURL:%@\nparams:%@", URLString, parameters);
    //: NSURLSessionTask *task = [self.manager POST:URLString parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *task = [self.manager POST:URLString parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        NSDictionary *result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
        //: NSLog(@"responseObject = %@", result);
        //: if ([result[@"code"] integerValue] == 2) {
        if ([result[StringFromMeteData(kStr_itemBrokenName)] integerValue] == 2) {
            //: !success ?: success(result);
            !success ?: success(result);
        //: } else {
        } else {
            //: !failure ?: failure([NSError errorWithDomain:NSCocoaErrorDomain code:[result[@"code"] integerValue] userInfo:@{NSUnderlyingErrorKey : result[@"message"]}]);
            !failure ?: failure([NSError errorWithDomain:NSCocoaErrorDomain code:[result[StringFromMeteData(kStr_itemBrokenName)] integerValue] userInfo:@{NSUnderlyingErrorKey : result[StringFromMeteData(kStr_vatName)]}]);
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
- (NSURLSessionDownloadTask *)name:(NSString *)URLString label:(NSString *)directoryPath tag:(NSString *)fileName phonation:(FURequestProgress)progress color:(FURequestSuccess)success statusFailure:(FURequestFailure)failure {
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
- (void)assemblage:(NSString *)URLString {
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
- (void)schedule {
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

Byte * MeteDataToCache(Byte *data) {
    int naturalEvent = data[0];
    int tale = data[1];
    Byte tonight = data[2];
    int limitFrame = data[3];
    if (!naturalEvent) return data + limitFrame;
    for (int i = limitFrame; i < limitFrame + tale; i++) {
        int value = data[i] + tonight;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[limitFrame + tale] = 0;
    return data + limitFrame;
}

NSString *StringFromMeteData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MeteDataToCache(data)];
}
