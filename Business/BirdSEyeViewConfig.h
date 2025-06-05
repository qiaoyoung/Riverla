// __DEBUG__
// __CLOSE_PRINT__
//
//  BirdSEyeViewConfig.h
//  NIM
//
//  Created by amao on 4/21/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//
//此处 apiURL 为网易云信 Demo 应用服务器地址，更换 appkey 后，请更新为应用自己的服务器接口地址，并提供相关接口服

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESRedPacketConfig;
@class NTESRedPacketConfig;

//: @interface FFFConfig : NSObject
@interface BirdSEyeViewConfig : NSObject

//: + (instancetype)sharedConfig;
+ (instancetype)titleMessage;

//: @property (nonatomic,copy) NSString *appKey;
@property (nonatomic,copy) NSString *appKey;
//: @property (nonatomic,copy) NSString *apnsCername;
@property (nonatomic,copy) NSString *apnsCername;
//: @property (nonatomic,copy) NSString *pkCername;
@property (nonatomic,copy) NSString *pkCername;
//: @property (nonatomic,copy) NSString *domainURL;
@property (nonatomic,copy) NSString *domainURL;//主域名url

//: @property (assign) BOOL allowAutoLogin; 
@property (assign) BOOL allowAutoLogin; //允许自动登录

//: @property (nonatomic,strong) NSMutableDictionary *Gdic;
@property (nonatomic,strong) NSMutableDictionary *Gdic;

// 获取当前域名
//: - (NSString *)getCurrentDomain;
- (NSString *)image;
// 从服务器拉取最新域名
//: - (void)fetchLatestDomainWithCompletion:(void (^)(BOOL success))completion;
- (void)send:(void (^)(BOOL success))completion;

//: @end
@end