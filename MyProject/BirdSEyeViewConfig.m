
#import <Foundation/Foundation.h>

NSString *StringFromSuccessfullyData(Byte *data);


//: voice_ip_push_cers_test
Byte kStr_northernRomanceName[] = {94, 23, 12, 186, 152, 126, 239, 96, 48, 137, 121, 176, 116, 115, 101, 116, 95, 115, 114, 101, 99, 95, 104, 115, 117, 112, 95, 112, 105, 95, 101, 99, 105, 111, 118, 67};


//: api
Byte kStr_breadValue[] = {8, 3, 3, 105, 112, 97, 218};


//: bb423e522c32002210fe5623f81a89ea
Byte kStr_taRetailCongressionalContent[] = {17, 32, 8, 175, 47, 133, 35, 88, 97, 101, 57, 56, 97, 49, 56, 102, 51, 50, 54, 53, 101, 102, 48, 49, 50, 50, 48, 48, 50, 51, 99, 50, 50, 53, 101, 51, 50, 52, 98, 98, 236};


//: pushkit_voice_test
Byte kStr_altogetherValue[] = {49, 18, 10, 231, 195, 117, 205, 254, 1, 198, 116, 115, 101, 116, 95, 101, 99, 105, 111, 118, 95, 116, 105, 107, 104, 115, 117, 112, 32};


//: https://japan-oss.s3.ap-east-1.amazonaws.com/appleriben26.txt
Byte kStr_muscleName[] = {40, 61, 8, 158, 167, 16, 129, 94, 116, 120, 116, 46, 54, 50, 110, 101, 98, 105, 114, 101, 108, 112, 112, 97, 47, 109, 111, 99, 46, 115, 119, 97, 110, 111, 122, 97, 109, 97, 46, 49, 45, 116, 115, 97, 101, 45, 112, 97, 46, 51, 115, 46, 115, 115, 111, 45, 110, 97, 112, 97, 106, 47, 47, 58, 115, 112, 116, 116, 104, 97};


//: https://storage.googleapis.com/app-down/appleriben26.txt
Byte kStr_pitInfoValue[] = {37, 56, 8, 176, 163, 19, 72, 149, 116, 120, 116, 46, 54, 50, 110, 101, 98, 105, 114, 101, 108, 112, 112, 97, 47, 110, 119, 111, 100, 45, 112, 112, 97, 47, 109, 111, 99, 46, 115, 105, 112, 97, 101, 108, 103, 111, 111, 103, 46, 101, 103, 97, 114, 111, 116, 115, 47, 47, 58, 115, 112, 116, 116, 104, 10};


//: http
Byte kStr_tingMagiData[] = {12, 4, 9, 62, 172, 157, 52, 199, 144, 112, 116, 116, 104, 205};


//: /api
Byte kStr_teachValue[] = {64, 4, 9, 38, 143, 204, 39, 83, 1, 105, 112, 97, 47, 158};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BirdSEyeViewConfig.m
//  NIM
//
//  Created by amao on 4/21/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFConfig.h"
#import "BirdSEyeViewConfig.h"
//: #import "RestUtil.h"
#import "FindUtil.h"

//: static NSString *const kDefaultDomain = @"https://apple.akunjapan0206chat.com";
static NSString *const let_optionData = @"https://apple.akunjapan0206chat.com";
//: static NSString *const kSavedDomainKey = @"SavedDomainKey";
static NSString *const let_documentButtonText = @"SavedDomainKey";

//: @interface FFFConfig ()
@interface BirdSEyeViewConfig ()

//: @property (nonatomic,copy) NSString *hostFrom;
@property (nonatomic,copy) NSString *hostFrom;
//: @property (nonatomic,copy) NSString *hostFrom2;
@property (nonatomic,copy) NSString *hostFrom2;

//: @end
@end

//: @implementation FFFConfig
@implementation BirdSEyeViewConfig

//: + (instancetype)sharedConfig
+ (instancetype)titleMessage
{
    //: static FFFConfig *instance = nil;
    static BirdSEyeViewConfig *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFConfig alloc] init];
        instance = [[BirdSEyeViewConfig alloc] init];
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
        _appKey = StringFromSuccessfullyData(kStr_taRetailCongressionalContent);//本项目使用
//        _apiURL = @"https://app.netease.im/api";

        //        _apnsCername = @"DEVELOPER";
        //: _apnsCername = @"voice_ip_push_cers_test";
        _apnsCername = @"push_Riverla_release";
        //: _pkCername = @"pushkit_voice_test";
        _pkCername = StringFromSuccessfullyData(kStr_altogetherValue);
        //: _allowAutoLogin = YES; 
        _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录

        //: _Gdic = [NSMutableDictionary dictionary];
        _Gdic = [NSMutableDictionary dictionary];

        // 打包OSS-1
        //: self.hostFrom = @"https://japan-oss.s3.ap-east-1.amazonaws.com/appleriben26.txt";
        self.hostFrom = StringFromSuccessfullyData(kStr_muscleName);

        // 打包OSS-2
        //: self.hostFrom2 = @"https://storage.googleapis.com/app-down/appleriben26.txt";
        self.hostFrom2 = StringFromSuccessfullyData(kStr_pitInfoValue);

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
//        [FindUtil get:self.hostFrom
//               params:nil
//              success:^(NSString *oss) {
//            
//            @strongify(self);
//            if ([oss hasPrefix:@"http"]) {
//                HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                hostBlock(HOST);
//                
//            } else {
//                [FindUtil get:self.hostFrom2
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
//            [FindUtil get:self.hostFrom2
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
- (NSString *)image {
    // 优先返回保存的域名，否则返回默认域名
    //: NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:kSavedDomainKey] ?: kDefaultDomain;
    NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:let_documentButtonText] ?: let_optionData;
    //如果包含了api则不处理了，否则就要加上api
    //: if ([hostUrl containsString:@"/api"])
    if ([hostUrl containsString:StringFromSuccessfullyData(kStr_teachValue)])
    //: {} else {
    {} else {
        //: if ([hostUrl hasSuffix:@"/"]) {
        if ([hostUrl hasSuffix:@"/"]) {
            //: hostUrl = [hostUrl stringByAppendingString:@"api"];
            hostUrl = [hostUrl stringByAppendingString:StringFromSuccessfullyData(kStr_breadValue)];
        //: } else {
        } else {
            //: hostUrl = [hostUrl stringByAppendingString:@"/api"];
            hostUrl = [hostUrl stringByAppendingString:StringFromSuccessfullyData(kStr_teachValue)];
        }
    }

    //: return hostUrl;
    return hostUrl;
}

//: - (void)fetchLatestDomainWithCompletion:(void (^)(BOOL success))completion {
- (void)send:(void (^)(BOOL success))completion {

            @
             //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
             autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                          ;
            //: __block NSString *HOST = @"";
            __block NSString *HOST = @"";
            //: [RestUtil get:self.hostFrom
            [FindUtil muffFail:self.hostFrom
                   //: params:nil
                   center:nil
                  //: success:^(NSString *oss) {
                  on:^(NSString *oss) {

                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: if ([oss hasPrefix:@"http"]) {
                if ([oss hasPrefix:StringFromSuccessfullyData(kStr_tingMagiData)]) {
                    //: HOST = [[NSString alloc] initWithString:oss];
                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    hostBlock(HOST);


                                // 保存新域名
                                //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:let_documentButtonText];
                                //: [[NSUserDefaults standardUserDefaults] synchronize];
                                [[NSUserDefaults standardUserDefaults] synchronize];
                                //: if (completion) completion(YES);
                                if (completion) completion(YES);

                //: } else {
                } else {
                    //: [RestUtil get:self.hostFrom2
                    [FindUtil muffFail:self.hostFrom2
                           //: params:nil
                           center:nil
                          //: success:^(NSString *oss) {
                          on:^(NSString *oss) {
                        //: if ([oss hasPrefix:@"http"]) {
                        if ([oss hasPrefix:StringFromSuccessfullyData(kStr_tingMagiData)]) {
                            //: HOST = [[NSString alloc] initWithString:oss];
                            HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                        }
//                        hostBlock(HOST);

                        // 保存新域名
                        //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                        [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:let_documentButtonText];
                        //: [[NSUserDefaults standardUserDefaults] synchronize];
                        [[NSUserDefaults standardUserDefaults] synchronize];
                        //: if (completion) completion(YES);
                        if (completion) completion(YES);

                    //: } fail:^(int code, NSString *msg) {
                    } state:^(int code, NSString *msg) {
//                        hostBlock(HOST);
                        //: if (completion) completion(NO);
                        if (completion) completion(NO);
                    //: }];
                    }];
                }

            //: } fail:^(int code, NSString *msg) {
            } state:^(int code, NSString *msg) {

                //: [RestUtil get:self.hostFrom2
                [FindUtil muffFail:self.hostFrom2
                       //: params:nil
                       center:nil
                      //: success:^(NSString *oss) {
                      on:^(NSString *oss) {
                    //: if ([oss hasPrefix:@"http"]) {
                    if ([oss hasPrefix:StringFromSuccessfullyData(kStr_tingMagiData)]) {
                        //: HOST = [[NSString alloc] initWithString:oss];
                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                    }
//                    hostBlock(HOST);

                    // 保存新域名
                    //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                    [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:let_documentButtonText];
                    //: [[NSUserDefaults standardUserDefaults] synchronize];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                    //: if (completion) completion(YES);
                    if (completion) completion(YES);

                //: } fail:^(int code, NSString *msg) {
                } state:^(int code, NSString *msg) {
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

Byte * SuccessfullyDataToCache(Byte *data) {
    int verbalAbout = data[0];
    int theLikesOf = data[1];
    int similarlyRealist = data[2];
    if (!verbalAbout) return data + similarlyRealist;
    for (int i = 0; i < theLikesOf / 2; i++) {
        int begin = similarlyRealist + i;
        int end = similarlyRealist + theLikesOf - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[similarlyRealist + theLikesOf] = 0;
    return data + similarlyRealist;
}

NSString *StringFromSuccessfullyData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SuccessfullyDataToCache(data)];
}  
