
#import <Foundation/Foundation.h>

NSString *StringFromEditorData(Byte *data);


//: img_%@.jpg
Byte kStr_finishText[] = {74, 10, 98, 8, 102, 218, 216, 207, 203, 207, 201, 193, 135, 162, 144, 204, 210, 201, 194};


//: 网络错误
Byte kStr_earthTitle[] = {39, 12, 89, 8, 211, 213, 39, 106, 64, 22, 234, 64, 20, 245, 66, 237, 242, 65, 8, 8, 29};


//: upload错误：%@
Byte kStr_aloneData[] = {21, 17, 53, 14, 47, 218, 11, 148, 241, 153, 227, 111, 99, 31, 170, 165, 161, 164, 150, 153, 30, 201, 206, 29, 228, 228, 36, 241, 207, 90, 117, 177};


//: text/xml
Byte kStr_utilityData[] = {1, 8, 6, 6, 35, 16, 122, 107, 126, 122, 53, 126, 115, 114, 132};


//: image/*
Byte kStr_elopeName[] = {5, 7, 59, 12, 174, 80, 75, 3, 254, 24, 110, 38, 164, 168, 156, 162, 160, 106, 101, 101};


//: code
Byte kStr_poFameValue[] = {99, 4, 25, 10, 153, 218, 75, 86, 201, 244, 124, 136, 125, 126, 197};


//: http
Byte kStr_truthValue[] = {23, 4, 69, 8, 121, 190, 188, 33, 173, 185, 185, 181, 221};


//: image
Byte kStr_debtOvenLooContent[] = {82, 5, 97, 4, 202, 206, 194, 200, 198, 228};


//: text/json
Byte kStr_vasValue[] = {4, 9, 64, 13, 201, 89, 197, 19, 191, 181, 64, 83, 34, 180, 165, 184, 180, 111, 170, 179, 175, 174, 166};


//: msg
Byte kStr_responsibilityBraveValue[] = {9, 3, 51, 10, 149, 78, 181, 241, 112, 244, 160, 166, 154, 65};


//: 连接失败,请检查网络连接
Byte kStr_memoBanText[] = {96, 34, 41, 6, 20, 132, 17, 232, 199, 15, 183, 206, 14, 205, 218, 17, 221, 206, 85, 17, 216, 224, 15, 204, 169, 15, 200, 206, 16, 230, 186, 16, 228, 197, 17, 232, 199, 15, 183, 206, 208};


//: png
Byte kStr_parkRoutineValue[] = {77, 3, 51, 8, 164, 57, 96, 49, 163, 161, 154, 169};


//: 系统错误～
Byte kStr_dualKitValue[] = {54, 15, 47, 13, 28, 194, 52, 11, 207, 5, 70, 83, 235, 22, 226, 234, 22, 234, 206, 24, 195, 200, 23, 222, 222, 30, 236, 205, 19};


//: text/plain
Byte kStr_usefulPursueText[] = {76, 10, 85, 6, 138, 239, 201, 186, 205, 201, 132, 197, 193, 182, 190, 195, 149};


//: text/javascript
Byte kStr_butterName[] = {33, 15, 54, 5, 156, 170, 155, 174, 170, 101, 160, 151, 172, 151, 169, 153, 168, 159, 166, 170, 238};


//: 连接错误
Byte kStr_messageWorksData[] = {46, 12, 24, 10, 161, 123, 44, 129, 108, 252, 0, 215, 182, 254, 166, 189, 1, 172, 177, 0, 199, 199, 45};


//: file
Byte kStr_userSuitValue[] = {20, 4, 80, 8, 91, 131, 187, 107, 182, 185, 188, 181, 109};


//: application/json
Byte kStr_involvedName[] = {51, 16, 65, 5, 217, 162, 177, 177, 173, 170, 164, 162, 181, 170, 176, 175, 112, 171, 180, 176, 175, 120};


//: data
Byte kStr_canvasData[] = {85, 4, 78, 6, 35, 126, 178, 175, 194, 175, 35};


//: gif
Byte kStr_shedValue[] = {73, 3, 12, 4, 115, 117, 114, 159};


//: text/html
Byte kStr_lemmaValue[] = {83, 9, 1, 7, 206, 33, 199, 117, 102, 121, 117, 48, 105, 117, 110, 109, 34};


//: jpg
Byte kStr_viewTingValue[] = {94, 3, 94, 10, 59, 197, 170, 74, 238, 131, 200, 206, 197, 125};


//: jpeg
Byte kStr_unfoldTitle[] = {49, 4, 37, 11, 128, 23, 174, 243, 217, 250, 33, 143, 149, 138, 140, 14};

// __DEBUG__
// __CLOSE_PRINT__
//
//  FindUtil.m
//  hualiaoshi
//
//  Created by imim on 2017/12/22.
//  Copyright © 2017年 ali.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RestUtil.h"
#import "FindUtil.h"
//: #import "YLNetworkHelper.h"
#import "BarHelper.h"
//: #import "NSDictionaryAdditions.h"
#import "NSDictionaryAdditions.h"
//: #import <NSData+ImageContentType.h>
#import <NSData+ImageContentType.h>
//: #import "AFHTTPSessionManager.h"
#import "AFHTTPSessionManager.h"

//: @implementation RestUtil
@implementation FindUtil

//: + (NSURLSessionTask *)post:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)date:(NSString *)url array:(NSDictionary *)params modelNumberFail:(YLRestSuccess)success memberView:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [BarHelper setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:StringFromEditorData(kStr_truthValue)]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, StringFromEditorData(kStr_memoBanText));
        //: return nil;
        return nil;
    }

    // 发起请求
    //: return [YLNetworkHelper POST:url parameters:params success:^(id response) {
    return [BarHelper title:url input:params nameLabel:^(id response) {

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
        int code = [res background:StringFromEditorData(kStr_poFameValue) statusCount:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromEditorData(kStr_canvasData)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res message:StringFromEditorData(kStr_responsibilityBraveValue) dismissViewValue:StringFromEditorData(kStr_dualKitValue)];
            //: fail(code, [NSString stringWithFormat:@"%@",msg]);
            fail(code, [NSString stringWithFormat:@"%@",msg]);
        }
    //: } failure:^(NSError *error) {
    } my:^(NSError *error) {
        //: NSArray *array = [url componentsSeparatedByString:@"/"];
        NSArray *array = [url componentsSeparatedByString:@"/"];
        //: if (array.count){
        if (array.count){
            //: fail(-1, [NSString stringWithFormat:@"%@",@"连接错误"]);
            fail(-1, [NSString stringWithFormat:@"%@",StringFromEditorData(kStr_messageWorksData)]);
        //: } else {
        } else {
            //: fail(-1, @"网络错误");
            fail(-1, StringFromEditorData(kStr_earthTitle));
        }
    //: }];
    }];
}

//: + (NSURLSessionTask *)get:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)muffFail:(NSString *)url center:(NSDictionary *)params on:(YLRestSuccess)success state:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [BarHelper setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:StringFromEditorData(kStr_truthValue)]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, StringFromEditorData(kStr_memoBanText));
        //: return nil;
        return nil;
    }


    //: AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    //: sessionManager.requestSerializer.timeoutInterval = 5.f;
    sessionManager.requestSerializer.timeoutInterval = 5.f;
    //: sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:StringFromEditorData(kStr_involvedName), StringFromEditorData(kStr_lemmaValue), StringFromEditorData(kStr_vasValue), StringFromEditorData(kStr_usefulPursueText), StringFromEditorData(kStr_butterName), StringFromEditorData(kStr_utilityData), StringFromEditorData(kStr_elopeName), nil];
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
        fail(-1, StringFromEditorData(kStr_earthTitle));

    //: }];
    }];

    //: return sessionTask;
    return sessionTask;


//    // 发起请求
//    return [BarHelper GET:url parameters:params success:^(id response) {
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
+ (NSURLSessionTask *)originLabel:(NSString *)url tool:(NSDictionary *)params visualImageFail:(NSArray *)images heading:(YLRestSuccess)success capture:(YLRestFail)fail
{
//    NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg", [[NSDate date] description]];
    //: return [YLNetworkHelper uploadImagesWithURL:url parameters:params name:@"image" images:images fileNames:nil imageScale:0.8f imageType:@"jpeg" progress:nil success:^(id responseObject) {
    return [BarHelper valueTing:url center:params header:StringFromEditorData(kStr_debtOvenLooContent) nonremittal:images computerFilenameOrigin:nil min:0.8f holder:StringFromEditorData(kStr_unfoldTitle) year:nil controlProgress:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res background:StringFromEditorData(kStr_poFameValue) statusCount:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromEditorData(kStr_canvasData)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res message:StringFromEditorData(kStr_responsibilityBraveValue) dismissViewValue:StringFromEditorData(kStr_dualKitValue)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromEditorData(kStr_aloneData),msg]);
        }
    //: } failure:^(NSError *error) {
    } fromRequestFailed:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromEditorData(kStr_earthTitle));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params data:(NSData *)data success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)up:(NSString *)url cellTo:(NSDictionary *)params show:(NSData *)data nameTextInfo:(YLRestSuccess)success commence:(YLRestFail)fail
{
    //: NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg",[[NSDate date] description]];
    NSString * fileName = [NSString stringWithFormat:StringFromEditorData(kStr_finishText),[[NSDate date] description]];
    //: SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    //: NSString *imageType = @"jpg";
    NSString *imageType = StringFromEditorData(kStr_viewTingValue);
    //: if (imageFormat == SDImageFormatGIF) {
    if (imageFormat == SDImageFormatGIF) {
        //: imageType = @"gif";
        imageType = StringFromEditorData(kStr_shedValue);
    //: } else if (imageFormat == SDImageFormatPNG) {
    } else if (imageFormat == SDImageFormatPNG) {
        //: imageType = @"png";
        imageType = StringFromEditorData(kStr_parkRoutineValue);
    }
    //: return [YLNetworkHelper uploadImageWithURL:url parameters:params name:@"image" data:data fileName:fileName imageType:imageType progress:nil success:^(id responseObject) {
    return [BarHelper findLanguage:url view:params title:StringFromEditorData(kStr_debtOvenLooContent) atImage:data my:fileName move:imageType maturityDate:nil sessionUploadFailure:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res background:StringFromEditorData(kStr_poFameValue) statusCount:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromEditorData(kStr_canvasData)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res message:StringFromEditorData(kStr_responsibilityBraveValue) dismissViewValue:StringFromEditorData(kStr_dualKitValue)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromEditorData(kStr_aloneData),msg]);
        }
    //: } failure:^(NSError *error) {
    } untilInput:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromEditorData(kStr_earthTitle));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params file:(NSString *)file success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)user:(NSString *)url byImage:(NSDictionary *)params atTing:(NSString *)file presentDirection:(YLRestSuccess)success wastebasket:(YLRestFail)fail
{
    //: return [YLNetworkHelper uploadFileWithURL:url parameters:params name:@"file" filePath:file progress:nil success:^(id responseObject) {
    return [BarHelper with:url first:params nobble:StringFromEditorData(kStr_userSuitValue) account:file registerBarHttpProgress:nil length:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res background:StringFromEditorData(kStr_poFameValue) statusCount:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromEditorData(kStr_canvasData)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res message:StringFromEditorData(kStr_responsibilityBraveValue) dismissViewValue:StringFromEditorData(kStr_dualKitValue)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromEditorData(kStr_aloneData),msg]);
        }
    //: } failure:^(NSError *error) {
    } enableCornerRequestFailed:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromEditorData(kStr_earthTitle));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params files:(NSDictionary<NSString*, NSString*> *)files success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)closeSize:(NSString *)url refreshMessage:(NSDictionary *)params prepare_strong:(NSDictionary<NSString*, NSString*> *)files params:(YLRestSuccess)success should:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadFilesWithURL:url parameters:params files:files progress:nil success:^(id responseObject) {
    return [BarHelper with:url index:params bite:files parameters:nil indexViewTingToolProgressStreetSmartSuccessNaught:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res background:StringFromEditorData(kStr_poFameValue) statusCount:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromEditorData(kStr_canvasData)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res message:StringFromEditorData(kStr_responsibilityBraveValue) dismissViewValue:StringFromEditorData(kStr_dualKitValue)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromEditorData(kStr_aloneData),msg]);
        }
    //: } failure:^(NSError *error) {
    } input:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromEditorData(kStr_earthTitle));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params video:(NSString*)videoPath thumb:(UIImage*)thumb success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)fail:(NSString *)url replyText:(NSDictionary *)params tag:(NSString*)videoPath range:(UIImage*)thumb failFingerParamsUploadBiteTelecasting:(YLRestSuccess)success stem:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadVideoWithURL:url parameters:params video:videoPath thumb:thumb progress:nil success:^(id responseObject) {
    return [BarHelper localRoadSharp:url by:params max:videoPath shouldIn:thumb imageOpen:nil sinceColorFormat:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res background:StringFromEditorData(kStr_poFameValue) statusCount:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromEditorData(kStr_canvasData)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res message:StringFromEditorData(kStr_responsibilityBraveValue) dismissViewValue:StringFromEditorData(kStr_dualKitValue)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromEditorData(kStr_aloneData),msg]);
        }
    //: } failure:^(NSError *error) {
    } ting:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromEditorData(kStr_earthTitle));
    //: }];
    }];
}

//: + (NSString *)imageType:(NSData *)data
+ (NSString *)imageType:(NSData *)data
{
    //: if (!data) {
    if (!data) {
        //: return @"jpg";
        return StringFromEditorData(kStr_viewTingValue);
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
            return StringFromEditorData(kStr_viewTingValue);
        //: case 0x89:
        case 0x89:
            //: return @"png";
            return StringFromEditorData(kStr_parkRoutineValue);
        //: case 0x47:
        case 0x47:
            //: return @"gif";
            return StringFromEditorData(kStr_shedValue);
        //: default:
        default:
            //: return @"jpg";
            return StringFromEditorData(kStr_viewTingValue);
    }
}


//: @end
@end

Byte * EditorDataToCache(Byte *data) {
    int besidesCheek = data[0];
    int sumernational = data[1];
    Byte stationCredit = data[2];
    int shame = data[3];
    if (!besidesCheek) return data + shame;
    for (int i = shame; i < shame + sumernational; i++) {
        int value = data[i] - stationCredit;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[shame + sumernational] = 0;
    return data + shame;
}

NSString *StringFromEditorData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)EditorDataToCache(data)];
}
