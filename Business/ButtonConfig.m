
#import <Foundation/Foundation.h>

NSString *StringFromStatueData(Byte *data);


//: http
Byte kStr_hydraContent[] = {2, 4, 5, 93, 3, 112, 116, 116, 104, 3};


//: pushkit_voice_test
Byte kStr_rapheValue[] = {6, 18, 8, 252, 151, 164, 18, 60, 116, 115, 101, 116, 95, 101, 99, 105, 111, 118, 95, 116, 105, 107, 104, 115, 117, 112, 184};


//: bb423e522c32002210fe5623f81a89ea
Byte kStr_blueSateValue[] = {86, 32, 3, 97, 101, 57, 56, 97, 49, 56, 102, 51, 50, 54, 53, 101, 102, 48, 49, 50, 50, 48, 48, 50, 51, 99, 50, 50, 53, 101, 51, 50, 52, 98, 98, 8};


//: https://riverla.oss-cn-hongkong.aliyuncs.com/riv.txt
Byte kStr_naturallyQueryName[] = {92, 52, 9, 171, 183, 203, 212, 135, 222, 116, 120, 116, 46, 118, 105, 114, 47, 109, 111, 99, 46, 115, 99, 110, 117, 121, 105, 108, 97, 46, 103, 110, 111, 107, 103, 110, 111, 104, 45, 110, 99, 45, 115, 115, 111, 46, 97, 108, 114, 101, 118, 105, 114, 47, 47, 58, 115, 112, 116, 116, 104, 39};


//: api
Byte kStr_supData[] = {53, 3, 12, 83, 29, 154, 30, 201, 213, 178, 132, 115, 105, 112, 97, 90};


//: pushDev
Byte kStr_galValue[] = {85, 7, 11, 207, 53, 128, 120, 59, 89, 99, 137, 118, 101, 68, 104, 115, 117, 112, 143};


//: https://riverla.s3.ap-southeast-1.amazonaws.com/riv.txt
Byte kStr_shortageName[] = {86, 55, 5, 245, 168, 116, 120, 116, 46, 118, 105, 114, 47, 109, 111, 99, 46, 115, 119, 97, 110, 111, 122, 97, 109, 97, 46, 49, 45, 116, 115, 97, 101, 104, 116, 117, 111, 115, 45, 112, 97, 46, 51, 115, 46, 97, 108, 114, 101, 118, 105, 114, 47, 47, 58, 115, 112, 116, 116, 104, 57};


//: /api
Byte kStr_findPoolText[] = {94, 4, 11, 149, 177, 133, 21, 156, 82, 176, 90, 105, 112, 97, 47, 68};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonConfig.m
//  NIM
//
//  Created by amao on 4/21/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFConfig.h"
#import "ButtonConfig.h"
//: #import "RestUtil.h"
#import "WithUtil.h"

//: static NSString *const kDefaultDomain = @"https://apple.akunjapan0206chat.com";
static NSString *const kLet_contentTitle = @"https://apple.akunjapan0206chat.com";
//: static NSString *const kSavedDomainKey = @"SavedDomainKey";
static NSString *const kLet_activityName = @"SavedDomainKey";

//: @interface FFFConfig ()
@interface ButtonConfig ()

//: @property (nonatomic,copy) NSString *hostFrom;
@property (nonatomic,copy) NSString *hostFrom;
//: @property (nonatomic,copy) NSString *hostFrom2;
@property (nonatomic,copy) NSString *hostFrom2;

//: @end
@end

//: @implementation FFFConfig
@implementation ButtonConfig

//: + (instancetype)sharedConfig
+ (instancetype)inputConfig
{
    //: static FFFConfig *instance = nil;
    static ButtonConfig *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFConfig alloc] init];
        instance = [[ButtonConfig alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _appKey = @"bb423e522c32002210fe5623f81a89ea";
        _appKey = StringFromStatueData(kStr_blueSateValue);//本项目使用
//        _apiURL = @"https://app.netease.im/api";

        //        _apnsCername = @"DEVELOPER";
        //: _apnsCername = @"pushDev";
        _apnsCername = @"push_Riverla_release";
        //: _pkCername = @"pushkit_voice_test";
        _pkCername = StringFromStatueData(kStr_rapheValue);
        //: _allowAutoLogin = YES; 
        _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录

        //: _Gdic = [NSMutableDictionary dictionary];
        _Gdic = [NSMutableDictionary dictionary];

        // 打包OSS-1
        //: self.hostFrom = @"https://riverla.oss-cn-hongkong.aliyuncs.com/riv.txt";
        self.hostFrom = StringFromStatueData(kStr_naturallyQueryName);

        // 打包OSS-2
        //: self.hostFrom2 = @"https://riverla.s3.ap-southeast-1.amazonaws.com/riv.txt";
        self.hostFrom2 = StringFromStatueData(kStr_shortageName);

//        保底域名
//        NSString *PreSetHost = @"https://apple.akunjapan0206chat.com";//⚠️警告：最后面不能有斜杠/
//
//        //如果包含了api则不处理了，否则就要加上api
//        if ([PreSetHost containsString:@"/api"])
//        {} else {
//            if ([PreSetHost hasSuffix:@"/"]) {
//                PreSetHost = [PreSetHost stringByAppendingString:@"api"];
//            } else {
//                PreSetHost = [PreSetHost stringByAppendingString:@"/api"];
//            }
//        }
//        self.domainURL = PreSetHost;


//        NSString *defaultHost = [[NSUserDefaults standardUserDefaults] stringForKey:@"HOST_KEY"] ? :@"";//本地存储的host
//        if (defaultHost.length > 0){
//            //如果包含了api则不处理了，否则就要加上api
//            if ([defaultHost containsString:@"/api"])
//            {} else {
//                if ([defaultHost hasSuffix:@"/"]) {
//                    defaultHost = [defaultHost stringByAppendingString:@"api"];
//                } else {
//                    defaultHost = [defaultHost stringByAppendingString:@"/api"];
//                }
//            }
//            self.domainURL = defaultHost;
//        }




//        void (^hostBlock)(NSString *HOST) = ^(NSString *HOST){
//           
////            if (!HOST || HOST.length < 5) {
////                HOST = [[NSString alloc] initWithString:PreSetHost];
////                NSLog(@"========>警告⚠️读不到网上的host");
////            }
//            
////            if ([HOST containsString:defaultHost]) {
////                _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录
////            }
////            else
////            {
////                _allowAutoLogin = NO; //如果网上的host和本地的不一致，则禁止🈲️自动登录
////                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:@"HOST_KEY"];
////            }
////            
//            
//            //如果包含了api则不处理了，否则就要加上api
//            if ([HOST containsString:@"/api"])
//            {} else {
//                if ([HOST hasSuffix:@"/"]) {
//                    HOST = [HOST stringByAppendingString:@"api"];
//                } else {
//                    HOST = [HOST stringByAppendingString:@"/api"];
//                }
//            }
//                    
//            self.domainURL = [[NSString alloc] initWithString:HOST];//设置host主域名
//
//        };



//        @weakify(self);
//        __block NSString *HOST = @"";
//        [WithUtil get:self.hostFrom
//               params:nil
//              success:^(NSString *oss) {
//            
//            @strongify(self);
//            if ([oss hasPrefix:@"http"]) {
//                HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                hostBlock(HOST);
//                
//            } else {
//                [WithUtil get:self.hostFrom2
//                       params:nil
//                      success:^(NSString *oss) {
//                    if ([oss hasPrefix:@"http"]) {
//                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    }
//                    hostBlock(HOST);
//                } fail:^(int code, NSString *msg) {
//                    hostBlock(HOST);
//                }];
//            }
//            
//        } fail:^(int code, NSString *msg) {
//            
//            [WithUtil get:self.hostFrom2
//                   params:nil
//                  success:^(NSString *oss) {
//                if ([oss hasPrefix:@"http"]) {
//                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                }
//                hostBlock(HOST);
//
//            } fail:^(int code, NSString *msg) {
//                hostBlock(HOST);
//
//            }];
//        }];

    }
    //: return self;
    return self;
}

//: - (NSString *)getCurrentDomain {
- (NSString *)change {
    // 优先返回保存的域名，否则返回默认域名
    //: NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:kSavedDomainKey] ?: kDefaultDomain;
    NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:kLet_activityName] ?: kLet_contentTitle;
    //如果包含了api则不处理了，否则就要加上api
    //: if ([hostUrl containsString:@"/api"])
    if ([hostUrl containsString:StringFromStatueData(kStr_findPoolText)])
    //: {} else {
    {} else {
        //: if ([hostUrl hasSuffix:@"/"]) {
        if ([hostUrl hasSuffix:@"/"]) {
            //: hostUrl = [hostUrl stringByAppendingString:@"api"];
            hostUrl = [hostUrl stringByAppendingString:StringFromStatueData(kStr_supData)];
        //: } else {
        } else {
            //: hostUrl = [hostUrl stringByAppendingString:@"/api"];
            hostUrl = [hostUrl stringByAppendingString:StringFromStatueData(kStr_findPoolText)];
        }
    }

    //: return hostUrl;
    return hostUrl;
}

//: - (void)fetchLatestDomainWithCompletion:(void (^)(BOOL success))completion {
- (void)language:(void (^)(BOOL success))completion {

            @
             //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
             autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                          ;
            //: __block NSString *HOST = @"";
            __block NSString *HOST = @"";
            //: [RestUtil get:self.hostFrom
            [WithUtil item:self.hostFrom
                   //: params:nil
                   along:nil
                  //: success:^(NSString *oss) {
                  praise:^(NSString *oss) {

                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: if ([oss hasPrefix:@"http"]) {
                if ([oss hasPrefix:StringFromStatueData(kStr_hydraContent)]) {
                    //: HOST = [[NSString alloc] initWithString:oss];
                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    hostBlock(HOST);


                                // 保存新域名
                                //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kLet_activityName];
                                //: [[NSUserDefaults standardUserDefaults] synchronize];
                                [[NSUserDefaults standardUserDefaults] synchronize];
                                //: if (completion) completion(YES);
                                if (completion) completion(YES);

                //: } else {
                } else {
                    //: [RestUtil get:self.hostFrom2
                    [WithUtil item:self.hostFrom2
                           //: params:nil
                           along:nil
                          //: success:^(NSString *oss) {
                          praise:^(NSString *oss) {
                        //: if ([oss hasPrefix:@"http"]) {
                        if ([oss hasPrefix:StringFromStatueData(kStr_hydraContent)]) {
                            //: HOST = [[NSString alloc] initWithString:oss];
                            HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                        }
//                        hostBlock(HOST);

                        // 保存新域名
                        //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                        [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kLet_activityName];
                        //: [[NSUserDefaults standardUserDefaults] synchronize];
                        [[NSUserDefaults standardUserDefaults] synchronize];
                        //: if (completion) completion(YES);
                        if (completion) completion(YES);

                    //: } fail:^(int code, NSString *msg) {
                    } takeInKeyFail:^(int code, NSString *msg) {
//                        hostBlock(HOST);
                        //: if (completion) completion(NO);
                        if (completion) completion(NO);
                    //: }];
                    }];
                }

            //: } fail:^(int code, NSString *msg) {
            } takeInKeyFail:^(int code, NSString *msg) {

                //: [RestUtil get:self.hostFrom2
                [WithUtil item:self.hostFrom2
                       //: params:nil
                       along:nil
                      //: success:^(NSString *oss) {
                      praise:^(NSString *oss) {
                    //: if ([oss hasPrefix:@"http"]) {
                    if ([oss hasPrefix:StringFromStatueData(kStr_hydraContent)]) {
                        //: HOST = [[NSString alloc] initWithString:oss];
                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                    }
//                    hostBlock(HOST);

                    // 保存新域名
                    //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                    [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kLet_activityName];
                    //: [[NSUserDefaults standardUserDefaults] synchronize];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                    //: if (completion) completion(YES);
                    if (completion) completion(YES);

                //: } fail:^(int code, NSString *msg) {
                } takeInKeyFail:^(int code, NSString *msg) {
//                    hostBlock(HOST);
                    //: if (completion) completion(NO);
                    if (completion) completion(NO);
                //: }];
                }];
            //: }];
            }];


//    NSString *configURL = self.hostFrom; // 配置接口地址
//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:configURL]];
//    
//    NSURLSessionTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
//        if (error || !data) {
//            if (completion) completion(NO);
//            return;
//        }
//        
////        // 解析响应数据（假设返回 JSON: {"domain": "https://api.new.com"}）
////        NSError *jsonError;
////        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
////        NSString *newDomain = json[@"domain"];
//        
//
//        NSString *newDomain = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//
//        
//        if (newDomain) {
//            // 保存新域名
//            [[NSUserDefaults standardUserDefaults] setObject:newDomain forKey:kSavedDomainKey];
//            [[NSUserDefaults standardUserDefaults] synchronize];
//            if (completion) completion(YES);
//        } else {
//            if (completion) completion(NO);
//        }
//    }];
//    
//    [task resume];
}




//: @end
@end

Byte * StatueDataToCache(Byte *data) {
    int desire = data[0];
    int highTicket = data[1];
    int electNote = data[2];
    if (!desire) return data + electNote;
    for (int i = 0; i < highTicket / 2; i++) {
        int begin = electNote + i;
        int end = electNote + highTicket - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[electNote + highTicket] = 0;
    return data + electNote;
}

NSString *StringFromStatueData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)StatueDataToCache(data)];
}  
