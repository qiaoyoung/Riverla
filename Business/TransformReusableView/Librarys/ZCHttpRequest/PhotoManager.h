// __DEBUG__
// __CLOSE_PRINT__
//
//  PhotoManager.h
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <AFNetworking/AFNetworking.h>
#import <AFNetworking/AFNetworking.h>
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>

/**
 *  是否开启https SSL 验证
 *  @return YES为开启，NO为关闭
 */


/**
 *  SSL 证书名称，仅支持cer格式。“app.bishe.com.cer”,则填“app.bishe.com”
 */


//请求成功的回调block
//: typedef void(^ResponseSuccess)(id responseObject);
typedef void(^ResponseSuccess)(id responseObject);

//请求失败的回调block
//: typedef void(^ResponseFailed)(id responseObject ,NSError *error);
typedef void(^ResponseFailed)(id responseObject ,NSError *error);

//文件下载的成功回调block
//: typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);
typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);

//文件下载的失败回调block
//: typedef void(^DownloadFailed)( NSError *error);
typedef void(^DownloadFailed)( NSError *error);

//文件上传下载的进度block
//: typedef void (^HttpProgress)(NSProgress *progress);
typedef void (^HttpProgress)(NSProgress *progress);


//: @interface ZCHttpManager : NSObject
@interface PhotoManager : NSObject

/**
 管理者单例
 */
//: + (instancetype)sharedManager;
+ (instancetype)commonManager;

//: @property (nonatomic, copy) NSString *lastLang;
@property (nonatomic, copy) NSString *lastLang;


/**
 get请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */

//: + (void)getWithUrl:(NSString *)urlStr
+ (void)towardExtra:(NSString *)urlStr
            //: params:(NSDictionary *)params
            tool:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            examine:(BOOL)isShow
           //: success:(ResponseSuccess)success
           titleResponseSuccess:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed;
            exhibitClick:(ResponseFailed)failed;

//: + (void)getWithUrl: (NSString *)urlStr
+ (void)icon: (NSString *)urlStr
            //: params: (NSDictionary *)params
            temp: (NSDictionary *)params
            //: isShow: (BOOL)isShow
            with: (BOOL)isShow
         //: cacheTime: (int)cacheDuration
         paramsFailed: (int)cacheDuration
       //: mustResrush: (BOOL)mustResrush
       value: (BOOL)mustResrush
           //: success: (ResponseSuccess)success
           track: (ResponseSuccess)success
            //: failed: (ResponseFailed)failed;
            green: (ResponseFailed)failed;




/**
 post请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */
//: + (void)postWithUrl: (NSString *)urlStr
+ (void)militaryInstallationMenuMedia: (NSString *)urlStr
             //: params: (NSDictionary *)params
             event: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             current: (BOOL)isShow
            //: success: (ResponseSuccess)success
            titleFailed: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             checked: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)modeFailed: (NSString *)urlStr
             //: params: (NSDictionary *)params
             customFailed: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             high: (BOOL)isShow
          //: cacheTime: (int)cacheDuration
          camera: (int)cacheDuration
        //: mustResrush: (BOOL)mustResrush
        tinkle: (BOOL)mustResrush
            //: success: (ResponseSuccess)success
            number: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             noVoice: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)doing: (NSString *)urlStr
           //: checksum: (NSString *)checksum
           gregorianCalendarMonthValue: (NSString *)checksum
              //: nonce: (NSString *)nonce
              with: (NSString *)nonce
            //: CurTime: (NSString *)CurTime
            tap: (NSString *)CurTime
             //: params: (NSDictionary *)params
             makeUpFailed: (NSDictionary *)params
            //: success: (ResponseSuccess)success
            sub: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             titleResponseFailed: (ResponseFailed)failed;

/**
 * 上传文件
 *  @param URL 请求地址
 *  @param parameters 请求参数
 *  @param name              文件对应服务器上的字段
 *  @param filePath     文件本地的沙盒路径
 *  @param progress     上传进度信息
 *  @param success       请求成功的回调
 *  @param failed    请求失败的回调
 */
//: + (void)uploadFileWithURL:(NSString *)URL
+ (void)with:(NSString *)URL
               //: parameters:(id)parameters
               model:(id)parameters
                     //: name:(NSString *)name
                     show:(NSString *)name
                 //: filePath:(NSURL *)filePath
                 happeningAt:(NSURL *)filePath
                 //: progress:(HttpProgress)progress
                 putUp:(HttpProgress)progress
                  //: success:(ResponseSuccess)success
                  length:(ResponseSuccess)success
                   //: failed:(ResponseFailed)failed;
                   upload:(ResponseFailed)failed;


/**
 * 上传单/多张图片
 * 注意：多张图片需要接口支持，有的服务接口只支持数组的第一个数据
 * @param URL  请求地址
 * @param parameters 请求参数
 * @param images 图片数组
 * @param progress 上传进度信息
 * @param success 请求成功的回调
 * @param failed 请求失败的回调
 */
//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)detect:(NSString *)URL
                 //: parameters:(id)parameters
                 success:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     billOfFare:(NSArray<NSData *> *)images
                   //: progress:(HttpProgress)progress
                   at:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    tidings:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     backgroundBubble:(ResponseFailed)failed;



/**
 *  上传单/多张图片
 *
 *  @param URL        请求地址
 *  @param parameters 请求参数
 *  @param name       图片对应服务器上的字段
 *  @param images     图片数组
 *  @param fileNames  图片文件名数组, 可以为nil, 数组内的文件名默认为当前日期时间"yyyyMMddHHmmss"
 *  @param imageScale 图片文件压缩比 范围 (0.f ~ 1.f)
 *  @param imageType  图片文件的类型,例:png、jpg(默认类型)....
 *  @param progress   上传进度信息
 *  @param success    请求成功的回调
 *  @param failed    请求失败的回调
 *
 */

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)uploadShouldTag:(NSString *)URL
                 //: parameters:(id)parameters
                 inputUser:(id)parameters
                       //: name:(NSString *)name
                       exhibit:(NSString *)name
                     //: images:(NSArray<UIImage *> *)images
                     device:(NSArray<UIImage *> *)images
                  //: fileNames:(NSArray<NSString *> *)fileNames
                  bar:(NSArray<NSString *> *)fileNames
                 //: imageScale:(CGFloat)imageScale
                 parametersAfter:(CGFloat)imageScale
                  //: imageType:(NSString *)imageType
                  uploadFromAreaImage:(NSString *)imageType
                   //: progress:(HttpProgress)progress
                   outKeyBubble:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    red:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     streetwise:(ResponseFailed)failed;



/// 新增
//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)textShould:(NSString *)URL
                 //: parameters:(id)parameters
                 input:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     mutual:(NSArray<NSData *> *)images
                 //: imageNames:(NSArray<NSString *> *)imageNames
                 complete:(NSArray<NSString *> *)imageNames
                   //: progress:(HttpProgress)progress
                   evaluate:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    pin:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     with:(ResponseFailed)failed;




//: + (void)uploadVideoWithURL:(NSString *)URL
+ (void)sendFailed:(NSString *)URL
                 //: parameters:(id)parameters
                 quick:(id)parameters
                     //: images:(NSData *)videoData
                     title:(NSData *)videoData
                 //: coverImage:(NSData *)coverData
                 representationFailed:(NSData *)coverData
                   //: progress:(HttpProgress)progress
                   should:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    touch:(ResponseSuccess)success
                    //: failed:(ResponseFailed)failed;
                    tipNameResponseFailed:(ResponseFailed)failed;


/**
 *  下载文件
 *
 *  @param URL      请求地址
 *  @param fileDir  文件存储目录(默认存储目录为Download)
 *  @param progress 文件下载的进度信息
 *  @param success  下载成功的回调(回调参数filePath:文件的路径)
 *  @param failed  下载失败的回调
 *
 *   返回NSURLSessionDownloadTask实例，可用于暂停继续，暂停调用suspend方法，开始下载调用resume方法
 */
//: + (void)downloadWithURL:(NSString *)URL
+ (void)furtherance:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                color:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               format:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                planetary:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed;
                 postBy:(ResponseFailed)failed;

//: @end
@end