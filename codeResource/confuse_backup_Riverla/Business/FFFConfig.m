//
//  FFFConfig.m
//  NIM
//
//  Created by amao on 4/21/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

#import "FFFConfig.h"
#import "RestUtil.h"

static NSString *const kDefaultDomain = @"https://apple.akunjapan0206chat.com";
static NSString *const kSavedDomainKey = @"SavedDomainKey";

@interface FFFConfig ()

@property (nonatomic,copy)    NSString    *hostFrom;
@property (nonatomic,copy)    NSString    *hostFrom2;

@end

@implementation FFFConfig

+ (instancetype)sharedConfig
{
    static FFFConfig *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[FFFConfig alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    if (self = [super init])
    {
        _appKey = @"bb423e522c32002210fe5623f81a89ea";//本项目使用
//        _apiURL = @"https://app.netease.im/api";
#ifdef DEBUG
        //        _apnsCername = @"DEVELOPER";
        _apnsCername = @"voice_ip_push_cers_test";
        _pkCername = @"pushkit_voice_test";

#else
        _apnsCername = @"voice_ip_push_cers";
        _pkCername = @"pushkit_voice";

#endif
        
      
        
        
        _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录
        
        _Gdic = [NSMutableDictionary dictionary];
        
        // 打包OSS-1
        self.hostFrom = @"https://japan-oss.s3.ap-east-1.amazonaws.com/appleriben26.txt";
        
        // 打包OSS-2
        self.hostFrom2 = @"https://storage.googleapis.com/app-down/appleriben26.txt";
        
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
//        [RestUtil get:self.hostFrom
//               params:nil
//              success:^(NSString *oss) {
//            
//            @strongify(self);
//            if ([oss hasPrefix:@"http"]) {
//                HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                hostBlock(HOST);
//                
//            } else {
//                [RestUtil get:self.hostFrom2
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
//            [RestUtil get:self.hostFrom2
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
    return self;
}

- (NSString *)getCurrentDomain {
    // 优先返回保存的域名，否则返回默认域名
    NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:kSavedDomainKey] ?: kDefaultDomain;
    //如果包含了api则不处理了，否则就要加上api
    if ([hostUrl containsString:@"/api"])
    {} else {
        if ([hostUrl hasSuffix:@"/"]) {
            hostUrl = [hostUrl stringByAppendingString:@"api"];
        } else {
            hostUrl = [hostUrl stringByAppendingString:@"/api"];
        }
    }
    
    return hostUrl;
}

- (void)fetchLatestDomainWithCompletion:(void (^)(BOOL success))completion {
    
            @weakify(self);
            __block NSString *HOST = @"";
            [RestUtil get:self.hostFrom
                   params:nil
                  success:^(NSString *oss) {
    
                @strongify(self);
                if ([oss hasPrefix:@"http"]) {
                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    hostBlock(HOST);
                                
                    
                                // 保存新域名
                                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                                [[NSUserDefaults standardUserDefaults] synchronize];
                                if (completion) completion(YES);
    
                } else {
                    [RestUtil get:self.hostFrom2
                           params:nil
                          success:^(NSString *oss) {
                        if ([oss hasPrefix:@"http"]) {
                            HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                        }
//                        hostBlock(HOST);
                       
                        // 保存新域名
                        [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                        [[NSUserDefaults standardUserDefaults] synchronize];
                        if (completion) completion(YES);
                        
                    } fail:^(int code, NSString *msg) {
//                        hostBlock(HOST);
                        if (completion) completion(NO);
                    }];
                }
    
            } fail:^(int code, NSString *msg) {
    
                [RestUtil get:self.hostFrom2
                       params:nil
                      success:^(NSString *oss) {
                    if ([oss hasPrefix:@"http"]) {
                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                    }
//                    hostBlock(HOST);
        
                    // 保存新域名
                    [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                    if (completion) completion(YES);
    
                } fail:^(int code, NSString *msg) {
//                    hostBlock(HOST);
                    if (completion) completion(NO);
                }];
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




@end




