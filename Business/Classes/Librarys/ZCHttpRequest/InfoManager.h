// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoManager.h
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
@interface InfoManager : NSObject

/**
 管理者单例
 */
//: + (instancetype)sharedManager;
+ (instancetype)limitManager;

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
+ (void)enable:(NSString *)urlStr
            //: params:(NSDictionary *)params
            sub:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            record:(BOOL)isShow
           //: success:(ResponseSuccess)success
           tapGetFailed:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed;
            failedSmartOccurrentSelectShowGet:(ResponseFailed)failed;

//: + (void)getWithUrl: (NSString *)urlStr
+ (void)mail: (NSString *)urlStr
            //: params: (NSDictionary *)params
            max: (NSDictionary *)params
            //: isShow: (BOOL)isShow
            textView: (BOOL)isShow
         //: cacheTime: (int)cacheDuration
         group: (int)cacheDuration
       //: mustResrush: (BOOL)mustResrush
       clip: (BOOL)mustResrush
           //: success: (ResponseSuccess)success
           afterSession: (ResponseSuccess)success
            //: failed: (ResponseFailed)failed;
            layer: (ResponseFailed)failed;




/**
 post请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */
//: + (void)postWithUrl: (NSString *)urlStr
+ (void)should: (NSString *)urlStr
             //: params: (NSDictionary *)params
             after: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             dataDisable: (BOOL)isShow
            //: success: (ResponseSuccess)success
            displayDatePress: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             textMessage: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)outEnd: (NSString *)urlStr
             //: params: (NSDictionary *)params
             at: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             colorForTo: (BOOL)isShow
          //: cacheTime: (int)cacheDuration
          searched: (int)cacheDuration
        //: mustResrush: (BOOL)mustResrush
        bottom: (BOOL)mustResrush
            //: success: (ResponseSuccess)success
            cancel: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             sumervalFailed: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)empty: (NSString *)urlStr
           //: checksum: (NSString *)checksum
           face: (NSString *)checksum
              //: nonce: (NSString *)nonce
              link: (NSString *)nonce
            //: CurTime: (NSString *)CurTime
            success: (NSString *)CurTime
             //: params: (NSDictionary *)params
             past: (NSDictionary *)params
            //: success: (ResponseSuccess)success
            sizeFailed: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             militaryQuartersOrFailed: (ResponseFailed)failed;

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
+ (void)play:(NSString *)URL
               //: parameters:(id)parameters
               tingWith:(id)parameters
                     //: name:(NSString *)name
                     confine:(NSString *)name
                 //: filePath:(NSURL *)filePath
                 atBubble:(NSURL *)filePath
                 //: progress:(HttpProgress)progress
                 endUser:(HttpProgress)progress
                  //: success:(ResponseSuccess)success
                  remove:(ResponseSuccess)success
                   //: failed:(ResponseFailed)failed;
                   view:(ResponseFailed)failed;


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
+ (void)images:(NSString *)URL
                 //: parameters:(id)parameters
                 modelPinFailed:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     last:(NSArray<NSData *> *)images
                   //: progress:(HttpProgress)progress
                   positionHttpProgress:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    doingFailed:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     peg:(ResponseFailed)failed;



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
+ (void)session:(NSString *)URL
                 //: parameters:(id)parameters
                 inheritance:(id)parameters
                       //: name:(NSString *)name
                       viewTap:(NSString *)name
                     //: images:(NSArray<UIImage *> *)images
                     linguisticContextFailed:(NSArray<UIImage *> *)images
                  //: fileNames:(NSArray<NSString *> *)fileNames
                  componentPart:(NSArray<NSString *> *)fileNames
                 //: imageScale:(CGFloat)imageScale
                 dataScale:(CGFloat)imageScale
                  //: imageType:(NSString *)imageType
                  imageName:(NSString *)imageType
                   //: progress:(HttpProgress)progress
                   indexFailed:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    videoFailed:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     cypherFailed:(ResponseFailed)failed;



/// 新增
//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)paintTheLilyShould:(NSString *)URL
                 //: parameters:(id)parameters
                 tapHappening:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     soul:(NSArray<NSData *> *)images
                 //: imageNames:(NSArray<NSString *> *)imageNames
                 specification_strong:(NSArray<NSString *> *)imageNames
                   //: progress:(HttpProgress)progress
                   modePath:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    toResponseSuccess:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     teamResult:(ResponseFailed)failed;




//: + (void)uploadVideoWithURL:(NSString *)URL
+ (void)orientation:(NSString *)URL
                 //: parameters:(id)parameters
                 redImage:(id)parameters
                     //: images:(NSData *)videoData
                     harvestMoonFailed:(NSData *)videoData
                 //: coverImage:(NSData *)coverData
                 enableOrViewImage:(NSData *)coverData
                   //: progress:(HttpProgress)progress
                   searchedHttpProgress:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    item:(ResponseSuccess)success
                    //: failed:(ResponseFailed)failed;
                    fullPhaseOfTheMoon:(ResponseFailed)failed;


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
+ (void)will:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                teamRed:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               margin:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                at:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed;
                 close:(ResponseFailed)failed;

//: @end
@end