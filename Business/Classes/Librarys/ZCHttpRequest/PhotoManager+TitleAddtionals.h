// __DEBUG__
// __CLOSE_PRINT__
//
//  PhotoManager+TitleAddtionals.h
//  NIM
//
//  Created by 田玉龙 on 2022/7/30.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager.h"
#import "PhotoManager.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^GlobalConfigBlock)(NSDictionary *configDict);
typedef void(^GlobalConfigBlock)(NSDictionary *configDict);

//: @interface ZCHttpManager (Addtionals)
@interface PhotoManager (TitleAddtionals)
//: +(NSDictionary *)requestDataUserInfo:(NSDictionary *)userInfo;
+(NSDictionary *)colorAcross:(NSDictionary *)userInfo;
//: +(void)changeUserInfo:(NSDictionary *)userInfo keyString:(NSString *)key valueString:(NSString *)value;
+(void)cell:(NSDictionary *)userInfo headCounterval:(NSString *)key bar:(NSString *)value;

//: + (void)refreshRegistConfig:(GlobalConfigBlock)block;
+ (void)team:(GlobalConfigBlock)block;

//: +(void)refreshGlobalConfig:(GlobalConfigBlock)block;
+(void)text:(GlobalConfigBlock)block;

//: +(void)refreshCheckmoments:(GlobalConfigBlock)block;
+(void)showComplete:(GlobalConfigBlock)block;//检查朋友圈权限

//: +(void)refreshSystemSetting:(GlobalConfigBlock)block;
+(void)pressIn:(GlobalConfigBlock)block;

//: + (void)refreshGenerateUser:(GlobalConfigBlock)block;
+ (void)messageAcross:(GlobalConfigBlock)block;

//: +(void)deleteUser:(GlobalConfigBlock)block;
+(void)insert:(GlobalConfigBlock)block;

//: + (void)refreshForbiddenWordsparams:(NSDictionary *)params GenerateUser:(GlobalConfigBlock)block;
+ (void)input:(NSDictionary *)params generateStatusWearerSelectedInfo:(GlobalConfigBlock)block;

//: +(void)refreshGetBookStatus:(GlobalConfigBlock)block;
+(void)recording:(GlobalConfigBlock)block;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END