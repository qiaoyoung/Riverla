// __DEBUG__
// __CLOSE_PRINT__
//
//  FindUtil.h
//  hualiaoshi
//
//  Created by imim on 2017/12/22.
//  Copyright © 2017年 ali.com. All rights reserved.
//
//#import "TYLSercetChatConfig.h"
//#define RestApi(api) [[Notice sharedKit].webHost stringByAppendingString:api]

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: extern __attribute__((visibility ("default"))) NSString * RestApi(NSString *api);
extern __attribute__((visibility ("default"))) NSString * RestApi(NSString *api);


//: @interface RestUtil : NSObject
@interface FindUtil : NSObject

/**
 请求成功的block
 
 @param info     返回信息
 @param response 响应体数据
 */
//: typedef void(^YLRestSuccess)(id data);
typedef void(^YLRestSuccess)(id data);
/**
 请求失败的block
 
 @param extInfo 扩展信息
 */
//: typedef void(^YLRestFail)(int code, NSString *msg);
typedef void(^YLRestFail)(int code, NSString *msg);

//: + (NSURLSessionTask *)post:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail;
+ (NSURLSessionTask *)date:(NSString *)url array:(NSDictionary *)params modelNumberFail:(YLRestSuccess)success memberView:(YLRestFail)fail;

//: + (NSURLSessionTask *)get:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail;
+ (NSURLSessionTask *)muffFail:(NSString *)url center:(NSDictionary *)params on:(YLRestSuccess)success state:(YLRestFail)fail;

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params images:(NSArray *)images success:(YLRestSuccess)success fail:(YLRestFail)fail;
+ (NSURLSessionTask *)originLabel:(NSString *)url tool:(NSDictionary *)params visualImageFail:(NSArray *)images heading:(YLRestSuccess)success capture:(YLRestFail)fail;

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params data:(NSData *)data success:(YLRestSuccess)success fail:(YLRestFail)fail;
+ (NSURLSessionTask *)up:(NSString *)url cellTo:(NSDictionary *)params show:(NSData *)data nameTextInfo:(YLRestSuccess)success commence:(YLRestFail)fail;

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params file:(NSString *)file success:(YLRestSuccess)success fail:(YLRestFail)fail;
+ (NSURLSessionTask *)user:(NSString *)url byImage:(NSDictionary *)params atTing:(NSString *)file presentDirection:(YLRestSuccess)success wastebasket:(YLRestFail)fail;

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params files:(NSDictionary<NSString*, NSString*> *)files success:(YLRestSuccess)success fail:(YLRestFail)fail;
+ (NSURLSessionTask *)closeSize:(NSString *)url refreshMessage:(NSDictionary *)params prepare_strong:(NSDictionary<NSString*, NSString*> *)files params:(YLRestSuccess)success should:(YLRestFail)fail;

//+ (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params video:(NSString*)videoPath thumb:(UIImage*)thumb success:(YLRestSuccess)success fail:(YLRestFail)fail;

//: @end
@end