
#import <Foundation/Foundation.h>
typedef struct {
    Byte rushPost;
    Byte *wenView;
    unsigned int book;
    bool doingice;
	int globule;
	int mustAdministrator;
} FlushData;

NSString *StringFromFlushData(FlushData *data);


//: 网络错误
FlushData kStr_hoseDisableData = (FlushData){105, (Byte []){142, 212, 248, 142, 210, 245, 128, 253, 240, 129, 198, 198, 173}, 12, false, 218, 251};


//: img_%@.jpg
FlushData kStr_motivationText = (FlushData){39, (Byte []){78, 74, 64, 120, 2, 103, 9, 77, 87, 64, 42}, 10, false, 143, 46};


//: jpeg
FlushData kStr_fingerName = (FlushData){224, (Byte []){138, 144, 133, 135, 213}, 4, false, 55, 32};


//: upload错误：%@
FlushData kStr_axContent = (FlushData){52, (Byte []){65, 68, 88, 91, 85, 80, 221, 160, 173, 220, 155, 155, 219, 136, 174, 17, 116, 96}, 17, false, 228, 90};


//: 系统错误～
FlushData kStr_benefitDesignData = (FlushData){128, (Byte []){103, 51, 59, 103, 59, 31, 105, 20, 25, 104, 47, 47, 111, 61, 30, 43}, 15, false, 209, 17};


//: file
FlushData kStr_nimPeanutValue = (FlushData){145, (Byte []){247, 248, 253, 244, 248}, 4, false, 236, 8};


//: 连接失败,请检查网络连接
FlushData kStr_improvedData = (FlushData){60, (Byte []){212, 131, 162, 218, 178, 153, 217, 152, 141, 212, 136, 153, 16, 212, 147, 139, 218, 159, 188, 218, 163, 153, 219, 129, 173, 219, 135, 160, 212, 131, 162, 218, 178, 153, 160}, 34, false, 157, 229};


//: http
FlushData kStr_bitterData = (FlushData){23, (Byte []){127, 99, 99, 103, 128}, 4, false, 248, 184};


//: png
FlushData kStr_lightlyContent = (FlushData){64, (Byte []){48, 46, 39, 127}, 3, false, 153, 189};


//: 连接错误
FlushData kStr_counterpartGuitarContent = (FlushData){167, (Byte []){79, 24, 57, 65, 41, 2, 78, 51, 62, 79, 8, 8, 205}, 12, false, 234, 196};


//: code
FlushData kStr_latterValue = (FlushData){182, (Byte []){213, 217, 210, 211, 78}, 4, false, 165, 254};


//: jpg
FlushData kStr_identificationTitle = (FlushData){135, (Byte []){237, 247, 224, 181}, 3, false, 130, 148};


//: text/html
FlushData kStr_theirData = (FlushData){27, (Byte []){111, 126, 99, 111, 52, 115, 111, 118, 119, 138}, 9, false, 149, 39};


//: text/plain
FlushData kStr_viewCoffeeData = (FlushData){31, (Byte []){107, 122, 103, 107, 48, 111, 115, 126, 118, 113, 223}, 10, false, 194, 173};


//: image/*
FlushData kStr_tingMoleTitle = (FlushData){93, (Byte []){52, 48, 60, 58, 56, 114, 119, 206}, 7, false, 123, 214};


//: image
FlushData kStr_assureSateForData = (FlushData){148, (Byte []){253, 249, 245, 243, 241, 40}, 5, false, 223, 233};


//: gif
FlushData kStr_cohoSaltSharedTitle = (FlushData){111, (Byte []){8, 6, 9, 198}, 3, false, 97, 22};


//: data
FlushData kStr_fleshQuickName = (FlushData){140, (Byte []){232, 237, 248, 237, 25}, 4, false, 89, 204};


//: text/xml
FlushData kStr_voterAnybodyData = (FlushData){56, (Byte []){76, 93, 64, 76, 23, 64, 85, 84, 220}, 8, false, 20, 27};


//: text/javascript
FlushData kStr_delightName = (FlushData){199, (Byte []){179, 162, 191, 179, 232, 173, 166, 177, 166, 180, 164, 181, 174, 183, 179, 102}, 15, false, 206, 169};


//: msg
FlushData kStr_blueTheirText = (FlushData){49, (Byte []){92, 66, 86, 122}, 3, false, 98, 204};


//: text/json
FlushData kStr_offensiveCoatAspectValue = (FlushData){223, (Byte []){171, 186, 167, 171, 240, 181, 172, 176, 177, 159}, 9, false, 15, 181};


//: application/json
FlushData kStr_captainAblyName = (FlushData){181, (Byte []){212, 197, 197, 217, 220, 214, 212, 193, 220, 218, 219, 154, 223, 198, 218, 219, 209}, 16, false, 94, 194};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithUtil.m
//  hualiaoshi
//
//  Created by imim on 2017/12/22.
//  Copyright © 2017年 ali.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RestUtil.h"
#import "WithUtil.h"
//: #import "YLNetworkHelper.h"
#import "RecentHelper.h"
//: #import "NSDictionaryAdditions.h"
#import "NSDictionaryAdditions.h"
//: #import <NSData+ImageContentType.h>
#import <NSData+ImageContentType.h>
//: #import "AFHTTPSessionManager.h"
#import "AFHTTPSessionManager.h"

//: @implementation RestUtil
@implementation WithUtil

//: + (NSURLSessionTask *)post:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)marginText:(NSString *)url action:(NSDictionary *)params content:(YLRestSuccess)success bite:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [RecentHelper setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:StringFromFlushData(&kStr_bitterData)]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, StringFromFlushData(&kStr_improvedData));
        //: return nil;
        return nil;
    }

    // 发起请求
    //: return [YLNetworkHelper POST:url parameters:params success:^(id response) {
    return [RecentHelper from:url blue:params soldierlyInstallingVoiceMisplay:^(id response) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res;
        NSDictionary *res;
        //: if ([response isKindOfClass:[NSData class]]){
        if ([response isKindOfClass:[NSData class]]){
            //: res = [NSJSONSerialization JSONObjectWithData:response options:0 error:0];
            res = [NSJSONSerialization JSONObjectWithData:response options:0 error:0];
        //: } else {
        } else {
            //: res = (NSDictionary *)response;
            res = (NSDictionary *)response;
        }

        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res barTitle:StringFromFlushData(&kStr_latterValue) add:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromFlushData(&kStr_fleshQuickName)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res table:StringFromFlushData(&kStr_blueTheirText) bar:StringFromFlushData(&kStr_benefitDesignData)];
            //: fail(code, [NSString stringWithFormat:@"%@",msg]);
            fail(code, [NSString stringWithFormat:@"%@",msg]);
        }
    //: } failure:^(NSError *error) {
    } background:^(NSError *error) {
        //: NSArray *array = [url componentsSeparatedByString:@"/"];
        NSArray *array = [url componentsSeparatedByString:@"/"];
        //: if (array.count){
        if (array.count){
            //: fail(-1, [NSString stringWithFormat:@"%@",@"连接错误"]);
            fail(-1, [NSString stringWithFormat:@"%@",StringFromFlushData(&kStr_counterpartGuitarContent)]);
        //: } else {
        } else {
            //: fail(-1, @"网络错误");
            fail(-1, StringFromFlushData(&kStr_hoseDisableData));
        }
    //: }];
    }];
}

//: + (NSURLSessionTask *)get:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)item:(NSString *)url along:(NSDictionary *)params praise:(YLRestSuccess)success takeInKeyFail:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [RecentHelper setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:StringFromFlushData(&kStr_bitterData)]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, StringFromFlushData(&kStr_improvedData));
        //: return nil;
        return nil;
    }


    //: AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    //: sessionManager.requestSerializer.timeoutInterval = 5.f;
    sessionManager.requestSerializer.timeoutInterval = 5.f;
    //: sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:StringFromFlushData(&kStr_captainAblyName), StringFromFlushData(&kStr_theirData), StringFromFlushData(&kStr_offensiveCoatAspectValue), StringFromFlushData(&kStr_viewCoffeeData), StringFromFlushData(&kStr_delightName), StringFromFlushData(&kStr_voterAnybodyData), StringFromFlushData(&kStr_tingMoleTitle), nil];
    //: [sessionManager setResponseSerializer:[AFHTTPResponseSerializer serializer]];
    [sessionManager setResponseSerializer:[AFHTTPResponseSerializer serializer]];


    //: NSURLSessionTask *sessionTask = [sessionManager GET:url parameters:@{} headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [sessionManager GET:url parameters:@{} headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if ([responseObject isKindOfClass:[NSData class]]){
        if ([responseObject isKindOfClass:[NSData class]]){
            //: NSString * str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            NSString * str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            //: success ? success(str) : nil;
            success ? success(str) : nil;
        //: } else if ([responseObject isKindOfClass:[NSString class]]){
        } else if ([responseObject isKindOfClass:[NSString class]]){
            //: success ? success(responseObject) : nil;
            success ? success(responseObject) : nil;
        }

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: fail(-1, @"网络错误");
        fail(-1, StringFromFlushData(&kStr_hoseDisableData));

    //: }];
    }];

    //: return sessionTask;
    return sessionTask;


//    // 发起请求
//    return [RecentHelper GET:url parameters:params success:^(id response) {
//
//        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
//        //        success(responseObject);
//
//        NSString *dataStr = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
//        if (dataStr.length > 0) {
//            success(dataStr);
//        } else {
//            fail(-1,@"OSS系统错误～");
//        }
//    } failure:^(NSError *error) {
//        NSArray *array = [url componentsSeparatedByString:@"/"];
//        if (array.count){
//            fail(-1, [NSString stringWithFormat:@"%@",@"连接错误"]);
//        } else {
//            fail(-1, @"网络错误");
//        }
//    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params images:(NSArray *)images success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)queryed:(NSString *)url show:(NSDictionary *)params book_strong:(NSArray *)images withRestSuccess:(YLRestSuccess)success back:(YLRestFail)fail
{
//    NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg", [[NSDate date] description]];
    //: return [YLNetworkHelper uploadImagesWithURL:url parameters:params name:@"image" images:images fileNames:nil imageScale:0.8f imageType:@"jpeg" progress:nil success:^(id responseObject) {
    return [RecentHelper range:url from:params human:StringFromFlushData(&kStr_assureSateForData) rubric:images present:nil libraryFloat:0.8f should:StringFromFlushData(&kStr_fingerName) dogTagHttpProgress:nil origin:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res barTitle:StringFromFlushData(&kStr_latterValue) add:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromFlushData(&kStr_fleshQuickName)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res table:StringFromFlushData(&kStr_blueTheirText) bar:StringFromFlushData(&kStr_benefitDesignData)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromFlushData(&kStr_axContent),msg]);
        }
    //: } failure:^(NSError *error) {
    } pin:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromFlushData(&kStr_hoseDisableData));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params data:(NSData *)data success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)success:(NSString *)url underDataFail:(NSDictionary *)params bite:(NSData *)data uploadIndex:(YLRestSuccess)success name:(YLRestFail)fail
{
    //: NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg",[[NSDate date] description]];
    NSString * fileName = [NSString stringWithFormat:StringFromFlushData(&kStr_motivationText),[[NSDate date] description]];
    //: SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    //: NSString *imageType = @"jpg";
    NSString *imageType = StringFromFlushData(&kStr_identificationTitle);
    //: if (imageFormat == SDImageFormatGIF) {
    if (imageFormat == SDImageFormatGIF) {
        //: imageType = @"gif";
        imageType = StringFromFlushData(&kStr_cohoSaltSharedTitle);
    //: } else if (imageFormat == SDImageFormatPNG) {
    } else if (imageFormat == SDImageFormatPNG) {
        //: imageType = @"png";
        imageType = StringFromFlushData(&kStr_lightlyContent);
    }
    //: return [YLNetworkHelper uploadImageWithURL:url parameters:params name:@"image" data:data fileName:fileName imageType:imageType progress:nil success:^(id responseObject) {
    return [RecentHelper temp:url metronymicId:params by:StringFromFlushData(&kStr_assureSateForData) promotionFailure:data model:fileName valueVideo:imageType key:nil storage:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res barTitle:StringFromFlushData(&kStr_latterValue) add:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromFlushData(&kStr_fleshQuickName)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res table:StringFromFlushData(&kStr_blueTheirText) bar:StringFromFlushData(&kStr_benefitDesignData)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromFlushData(&kStr_axContent),msg]);
        }
    //: } failure:^(NSError *error) {
    } maxPraise:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromFlushData(&kStr_hoseDisableData));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params file:(NSString *)file success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)color:(NSString *)url textLimit:(NSDictionary *)params select_strong:(NSString *)file item:(YLRestSuccess)success index:(YLRestFail)fail
{
    //: return [YLNetworkHelper uploadFileWithURL:url parameters:params name:@"file" filePath:file progress:nil success:^(id responseObject) {
    return [RecentHelper bottomBy:url low:params mentalRepresentation:StringFromFlushData(&kStr_nimPeanutValue) file:file bar:nil label:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res barTitle:StringFromFlushData(&kStr_latterValue) add:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromFlushData(&kStr_fleshQuickName)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res table:StringFromFlushData(&kStr_blueTheirText) bar:StringFromFlushData(&kStr_benefitDesignData)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromFlushData(&kStr_axContent),msg]);
        }
    //: } failure:^(NSError *error) {
    } disable:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromFlushData(&kStr_hoseDisableData));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params files:(NSDictionary<NSString*, NSString*> *)files success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)deleteDisabled:(NSString *)url someParams:(NSDictionary *)params naturalLanguageSheet:(NSDictionary<NSString*, NSString*> *)files view:(YLRestSuccess)success seekTime:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadFilesWithURL:url parameters:params files:files progress:nil success:^(id responseObject) {
    return [RecentHelper tagInfo:url image:params comment:files number:nil mode:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res barTitle:StringFromFlushData(&kStr_latterValue) add:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromFlushData(&kStr_fleshQuickName)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res table:StringFromFlushData(&kStr_blueTheirText) bar:StringFromFlushData(&kStr_benefitDesignData)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromFlushData(&kStr_axContent),msg]);
        }
    //: } failure:^(NSError *error) {
    } endFailure:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromFlushData(&kStr_hoseDisableData));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params video:(NSString*)videoPath thumb:(UIImage*)thumb success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)text:(NSString *)url file:(NSDictionary *)params kitWith:(NSString*)videoPath show:(UIImage*)thumb touch:(YLRestSuccess)success color:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadVideoWithURL:url parameters:params video:videoPath thumb:thumb progress:nil success:^(id responseObject) {
    return [RecentHelper edgeTime:url emptyNester:params searched:videoPath name:thumb than:nil thumbnailVideoSmartNonpaymentInputProgressOccurrenceTelecastingUpload:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res barTitle:StringFromFlushData(&kStr_latterValue) add:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromFlushData(&kStr_fleshQuickName)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res table:StringFromFlushData(&kStr_blueTheirText) bar:StringFromFlushData(&kStr_benefitDesignData)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromFlushData(&kStr_axContent),msg]);
        }
    //: } failure:^(NSError *error) {
    } place:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromFlushData(&kStr_hoseDisableData));
    //: }];
    }];
}

//: + (NSString *)imageType:(NSData *)data
+ (NSString *)betweenAdd:(NSData *)data
{
    //: if (!data) {
    if (!data) {
        //: return @"jpg";
        return StringFromFlushData(&kStr_identificationTitle);
    }
    //: uint8_t c;
    uint8_t c;
    //: [data getBytes:&c length:1];
    [data getBytes:&c length:1];
    //: switch (c) {
    switch (c) {
        //: case 0xFF:
        case 0xFF:
            //: return @"jpg";
            return StringFromFlushData(&kStr_identificationTitle);
        //: case 0x89:
        case 0x89:
            //: return @"png";
            return StringFromFlushData(&kStr_lightlyContent);
        //: case 0x47:
        case 0x47:
            //: return @"gif";
            return StringFromFlushData(&kStr_cohoSaltSharedTitle);
        //: default:
        default:
            //: return @"jpg";
            return StringFromFlushData(&kStr_identificationTitle);
    }
}


//: @end
@end

Byte *FlushDataToByte(FlushData *data) {
    if (data->doingice) return data->wenView;
    for (int i = 0; i < data->book; i++) {
        data->wenView[i] ^= data->rushPost;
    }
    data->wenView[data->book] = 0;
    data->doingice = true;
	if (data->book >= 2) {
		data->globule = data->wenView[0];
		data->mustAdministrator = data->wenView[1];
	}
    return data->wenView;
}

NSString *StringFromFlushData(FlushData *data) {
    return [NSString stringWithUTF8String:(char *)FlushDataToByte(data)];
}
