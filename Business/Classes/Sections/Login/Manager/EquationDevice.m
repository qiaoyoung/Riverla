
#import <Foundation/Foundation.h>

NSString *StringFromConservativeData(Byte *data);        


//: SNUserDefault_Key_IUUID
Byte kStr_cakeStatusValue[] = {45, 23, 10, 8, 39, 210, 91, 153, 73, 68, 75, 105, 91, 104, 58, 91, 92, 87, 107, 98, 106, 85, 65, 91, 111, 85, 63, 75, 75, 63, 58, 108};


//: 中国电信
Byte kStr_nervousIndexName[] = {14, 12, 31, 6, 158, 100, 197, 153, 142, 198, 124, 158, 200, 117, 150, 197, 160, 130, 47};


//: 中国铁通
Byte kStr_imageBrieflyValue[] = {1, 12, 36, 7, 15, 83, 55, 192, 148, 137, 193, 119, 153, 197, 111, 93, 197, 92, 118, 212};


//: com.carr.%@
Byte kStr_mistakeData[] = {40, 11, 86, 4, 13, 25, 23, 216, 13, 11, 28, 28, 216, 207, 234, 236};


//: 中国移动
Byte kStr_mortalityName[] = {83, 12, 15, 6, 117, 50, 213, 169, 158, 214, 140, 174, 216, 152, 172, 214, 123, 153, 101};


//: 中国卫通
Byte kStr_terroristText[] = {46, 12, 54, 7, 208, 101, 64, 174, 130, 119, 175, 101, 135, 175, 87, 117, 179, 74, 100, 185};


//: 中国联通
Byte kStr_nagWithData[] = {30, 12, 72, 12, 55, 55, 202, 123, 124, 200, 231, 34, 156, 112, 101, 157, 83, 117, 160, 57, 76, 161, 56, 82, 249};


//: unknown
Byte kStr_askConvertTitle[] = {10, 7, 95, 4, 22, 15, 12, 15, 16, 24, 15, 157};


//: L3Zhci9tb2JpbGUvTGlicmFyeS9Vc2VyQ29uZmlndXJhdGlvblByb2ZpbGVzL1B1YmxpY0luZm8vTUNNZXRhLnBsaXN0
Byte kStr_angelSinData[] = {98, 92, 79, 6, 233, 153, 253, 228, 11, 25, 20, 26, 234, 37, 19, 227, 251, 33, 19, 248, 6, 39, 5, 248, 29, 26, 20, 30, 247, 42, 22, 4, 234, 7, 20, 227, 7, 42, 2, 227, 234, 38, 11, 30, 29, 31, 21, 9, 251, 25, 21, 248, 29, 39, 19, 29, 243, 42, 19, 227, 11, 33, 19, 248, 7, 43, 253, 226, 243, 226, 10, 30, 41, 33, 10, 225, 29, 38, 11, 30, 233, 39, 5, 6, 255, 255, 11, 9, 3, 25, 253, 31, 243, 36, 18, 9, 255, 225, 239};


//: 460
Byte kStr_eticValue[] = {98, 3, 29, 6, 205, 161, 23, 25, 19, 68};


//: SNKey_tyl
Byte kStr_runnerData[] = {51, 9, 13, 6, 143, 157, 70, 65, 62, 88, 108, 82, 103, 108, 95, 48};

// __DEBUG__
// __CLOSE_PRINT__
//
//  EquationDevice.m
//  sohunews
//
//  Created by lhp on 9/24/14.
//  Copyright (c) 2014 Sohu.com. All rights reserved.
//
/// 存储客户端生成的IUUID

// __M_A_C_R_O__
//: #import "SNDevice.h"
#import "EquationDevice.h"
//: #import "SAMKeychain.h"
#import "SAMKeychain.h"
//: #import <sys/sysctl.h>
#import <sys/sysctl.h>
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import <sys/socket.h>
#import <sys/socket.h>
//: #import <sys/dirent.h>
#import <sys/dirent.h>
//: #import <sys/utsname.h>
#import <sys/utsname.h>
//: #import <mach/mach.h>
#import <mach/mach.h>
//: #import <net/if.h>
#import <net/if.h>
//: #import <net/if_dl.h>
#import <net/if_dl.h>
//: #import <arpa/inet.h>
#import <arpa/inet.h>
//: #import <ifaddrs.h>
#import <ifaddrs.h>
//: #import <CoreTelephony/CTTelephonyNetworkInfo.h> 
#import <CoreTelephony/CTTelephonyNetworkInfo.h> // 获取设备运营商
//: #import <CoreTelephony/CTCarrier.h> 
#import <CoreTelephony/CTCarrier.h> // 获取设备运营商
//: #import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
//: #import <AdSupport/ASIdentifierManager.h>
#import <AdSupport/ASIdentifierManager.h>

//: @interface SNDevice ()
@interface EquationDevice ()
//: @property (nonatomic, copy) NSString *iuuid;
@property (nonatomic, copy) NSString *iuuid;
//: @property (nonatomic, copy) NSString *udid;
@property (nonatomic, copy) NSString *udid;
//: @property (nonatomic, copy) NSString *idfv;
@property (nonatomic, copy) NSString *idfv;
//: @end
@end


//: @implementation SNDevice
@implementation EquationDevice

//: + (SNDevice *)sharedInstance {
+ (EquationDevice *)item {
    //: static SNDevice *_sharedDevice = nil;
    static EquationDevice *_sharedDevice = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: _sharedDevice = [[SNDevice alloc] init];
        _sharedDevice = [[EquationDevice alloc] init];
    //: });
    });
    //: return _sharedDevice;
    return _sharedDevice;
}


//: - (NSString *)idfv {
- (NSString *)idfv {
    //: if (_idfv.length <= 0) {
    if (_idfv.length <= 0) {
        //: _idfv = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
        _idfv = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    }
    //: return _idfv;
    return _idfv;
}

/*
 IDFA:广告标示符，适用于对外：例如广告推广，换量等跨应用的用户追踪等,如果用户完全重置系统（(设置程序 -> 通用 -> 还原 -> 还原位置与隐私) ，这个广告标示符会重新生成。另外如果用户明确的还原广告(设置程序-> 通用 -> 关于本机 -> 广告 -> 还原广告标示符) ，那么广告标示符也会重新生成;若果用户在隐私->广告->限制广告跟踪，开关开启，则取不到IDFA
 注：iOS 10  弱开启限制广告标示符后，取到的为 00000000-0000-0000-0000-000000000000
 */

//static NSString* sohunews_IDFA = nil;
//+ (NSString *)deviceIDFA {
//    
//    if (sohunews_IDFA) {
//        return sohunews_IDFA;
//    }
//    BOOL idfaOpen = [[NSUserDefaults standardUserDefaults] boolForKey:kIdfaOpen];
//    if (@available(iOS 14, *)) {
//        // iOS14及以上版本需要先请求权限
//        pthread_mutex_lock(&kUIDeviceHardware_deviceIDFA_mutex_0);
//        if(idfaOpen) {
//            if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
//                [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
//                    // 获取到权限后，依然使用老方法获取idfa
//                    if (status == ATTrackingManagerAuthorizationStatusAuthorized) {
//                        NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
//                        sohunews_IDFA = idfa;
//                    }
//                }];
//            }
//        }
//        pthread_mutex_unlock(&kUIDeviceHardware_deviceIDFA_mutex_0);
//    }
//    // iOS14以下版本依然使用老方法
//    else if (NSClassFromString(@"ASIdentifierManager")) {
//        pthread_mutex_lock(&kUIDeviceHardware_deviceIDFA_mutex_0);
//        NSString *IDFA = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
//        sohunews_IDFA = IDFA;
//        pthread_mutex_unlock(&kUIDeviceHardware_deviceIDFA_mutex_0);
//        return IDFA;
//    }
//    
//    return @"";
//}


//: static NSString *iuuid = nil;
static NSString *kLet_cropKitText = nil;
//: + (NSString *)deviceIUUID {
+ (NSString *)redBegin {
    //: if (iuuid.length <= 0) {
    if (kLet_cropKitText.length <= 0) {
        //: iuuid = [SAMKeychain passwordForService:@"SNUserDefault_Key_IUUID" account:@"SNKey_tyl"];
        kLet_cropKitText = [SAMKeychain passwordForService:StringFromConservativeData(kStr_cakeStatusValue) account:StringFromConservativeData(kStr_runnerData)];
        //: if (iuuid.length <= 0) {
        if (kLet_cropKitText.length <= 0) {
            //: [self updateDeviceIUUID];
            [self view];
        }
    }
    //: return iuuid;
    return kLet_cropKitText;
}


//: + (void)updateDeviceIUUID {
+ (void)view {

    //: CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
    CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
    //: iuuid = (NSString *)CFBridgingRelease(CFUUIDCreateString (kCFAllocatorDefault,uuidRef));
    kLet_cropKitText = (NSString *)CFBridgingRelease(CFUUIDCreateString (kCFAllocatorDefault,uuidRef));
    //: CFRelease(uuidRef);
    CFRelease(uuidRef);
    //: [SAMKeychain setPassword:iuuid forService:@"SNUserDefault_Key_IUUID" account:@"SNKey_tyl"];
    [SAMKeychain setPassword:kLet_cropKitText forService:StringFromConservativeData(kStr_cakeStatusValue) account:StringFromConservativeData(kStr_runnerData)];
}



//: #pragma mark - CAID
#pragma mark - CAID

//: static time_t bootSecTime() {
static time_t bootSecTime() {
    //: struct timeval boottime;
    struct timeval boottime;
    //: size_t len = sizeof(boottime);
    size_t len = sizeof(boottime);
    //: int mib[2] = { 1, 21};
    int mib[2] = { 1, 21};
    //: if ( sysctl(mib, 2, &boottime, &len, NULL, 0) < 0) {
    if ( sysctl(mib, 2, &boottime, &len, NULL, 0) < 0) {
        //: return 0;
        return 0;
    }
    //: return boottime.tv_sec;
    return boottime.tv_sec;
}

/// 设备启动时间
//: + (NSString *)bootTimeInSec
+ (NSString *)with
{
    //: return [NSString stringWithFormat:@"%ld",bootSecTime()];
    return [NSString stringWithFormat:@"%ld",bootSecTime()];
}
//get system uptime since last boot 获取系统当前运行了多长时间
//: + (NSTimeInterval)uptime
+ (NSTimeInterval)convert
{
    //: struct timeval boottime;
    struct timeval boottime;
    //: int mib[2] = {1, 21};
    int mib[2] = {1, 21};
    //: size_t size = sizeof(boottime);
    size_t size = sizeof(boottime);
    //: struct timeval now;
    struct timeval now;
    //: struct timezone tz;
    struct timezone tz;
    //: gettimeofday(&now, &tz);
    gettimeofday(&now, &tz);
    //: double uptime = -1;
    double uptime = -1;
    //: if (sysctl(mib, 2, &boottime, &size, NULL, 0) != -1 && boottime.tv_sec != 0)
    if (sysctl(mib, 2, &boottime, &size, NULL, 0) != -1 && boottime.tv_sec != 0)
    {
        //: uptime = now.tv_sec - boottime.tv_sec;
        uptime = now.tv_sec - boottime.tv_sec;
        //: uptime += (double)(now.tv_usec - boottime.tv_usec) / 1000000.0;
        uptime += (double)(now.tv_usec - boottime.tv_usec) / 1000000.0;
    }
    //: return uptime;
    return uptime;
}


/// 国家
//: + (NSString *)countryCode
+ (NSString *)bar
{
    //: NSLocale *locale = [NSLocale currentLocale];
    NSLocale *locale = [NSLocale currentLocale];
    //: NSString *countryCode = [locale objectForKey:NSLocaleCountryCode]; return countryCode;
    NSString *countryCode = [locale objectForKey:NSLocaleCountryCode]; return countryCode;
}

/// 语言
//: + (NSString *)language {
+ (NSString *)everyTotal {
    //: NSString *language;
    NSString *language;
    //: NSLocale *locale = [NSLocale currentLocale];
    NSLocale *locale = [NSLocale currentLocale];
    //: if ([[NSLocale preferredLanguages] count] > 0) {
    if ([[NSLocale preferredLanguages] count] > 0) {
        //: language = [[NSLocale preferredLanguages]objectAtIndex:0];
        language = [[NSLocale preferredLanguages]objectAtIndex:0];
    //: } else {
    } else {
        //: language = [locale objectForKey:NSLocaleLanguageCode];
        language = [locale objectForKey:NSLocaleLanguageCode];
    }
    //: return language;
    return language;
}



/// 运营商
//: +(NSString* )carrierInfo {
+(NSString* )quick {



    //: static dispatch_queue_t _queue;
    static dispatch_queue_t _queue;
    //: static dispatch_once_t once; _dispatch_once(&once, ^{
    static dispatch_once_t once; _dispatch_once(&once, ^{
        //: _queue = dispatch_queue_create([[NSString stringWithFormat:@"com.carr.%@", self] UTF8String], NULL);
        _queue = dispatch_queue_create([[NSString stringWithFormat:StringFromConservativeData(kStr_mistakeData), self] UTF8String], NULL);
    //: });
    });
    //: __block NSString* carr=nil;
    __block NSString* carr=nil;
    //: dispatch_semaphore_t semaphore =dispatch_semaphore_create(0);
    dispatch_semaphore_t semaphore =dispatch_semaphore_create(0);
    //: dispatch_async(_queue, ^(){
    dispatch_async(_queue, ^(){
        //: CTTelephonyNetworkInfo *info = [[CTTelephonyNetworkInfo alloc] init];
        CTTelephonyNetworkInfo *info = [[CTTelephonyNetworkInfo alloc] init];
        //: CTCarrier *carrier = nil;
        CTCarrier *carrier = nil;
        //: if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 12.1) {
        if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 12.1) {
            //: if ([info respondsToSelector:@selector(serviceSubscriberCellularProviders)]) {
            if ([info respondsToSelector:@selector(serviceSubscriberCellularProviders)]) {
//: #pragma clang diagnostic push
#pragma clang diagnostic push
//: #pragma clang diagnostic ignored "-Wunguarded-availability-new"
#pragma clang diagnostic ignored "-Wunguarded-availability-new"

                //: NSArray *carrierKeysArray = [info.serviceSubscriberCellularProviders.allKeys sortedArrayUsingSelector:@selector(compare:)];
                NSArray *carrierKeysArray = [info.serviceSubscriberCellularProviders.allKeys sortedArrayUsingSelector:@selector(compare:)];
                //: carrier = info.serviceSubscriberCellularProviders[carrierKeysArray.firstObject];
                carrier = info.serviceSubscriberCellularProviders[carrierKeysArray.firstObject];
                //: if (!carrier.mobileNetworkCode) {
                if (!carrier.mobileNetworkCode) {
                    //: carrier = info.serviceSubscriberCellularProviders[carrierKeysArray.lastObject];
                    carrier = info.serviceSubscriberCellularProviders[carrierKeysArray.lastObject];
                }
//: #pragma clang diagnostic pop
#pragma clang diagnostic pop
            }
        }
        //: if(!carrier) {
        if(!carrier) {
//: #pragma clang diagnostic push
#pragma clang diagnostic push
//: #pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
            //: carrier = info.subscriberCellularProvider;
            carrier = info.subscriberCellularProvider;
//: #pragma clang diagnostic pop
#pragma clang diagnostic pop
        }
        //: if (carrier != nil) {
        if (carrier != nil) {
            //: NSString *networkCode = [carrier mobileNetworkCode];
            NSString *networkCode = [carrier mobileNetworkCode];
            //: NSString *countryCode = [carrier mobileCountryCode];
            NSString *countryCode = [carrier mobileCountryCode];
            //: if (countryCode && [countryCode isEqualToString:@"460"] &&networkCode) {
            if (countryCode && [countryCode isEqualToString:StringFromConservativeData(kStr_eticValue)] &&networkCode) {
                //: if ([networkCode isEqualToString:@"00"]||
                if ([networkCode isEqualToString:@"00"]||
                    //: [networkCode isEqualToString:@"02"]||
                    [networkCode isEqualToString:@"02"]||
                    //: [networkCode isEqualToString:@"07"]||
                    [networkCode isEqualToString:@"07"]||
                    //: [networkCode isEqualToString:@"08"]) {
                    [networkCode isEqualToString:@"08"]) {
                    //: carr= @"中国移动";
                    carr= StringFromConservativeData(kStr_mortalityName);
                }
                //: if ([networkCode isEqualToString:@"01"]||
                if ([networkCode isEqualToString:@"01"]||
                    //: [networkCode isEqualToString:@"06"]||
                    [networkCode isEqualToString:@"06"]||
                    //: [networkCode isEqualToString:@"09"]) {
                    [networkCode isEqualToString:@"09"]) {
                    //: carr= @"中国联通";
                    carr= StringFromConservativeData(kStr_nagWithData);
                }
                //: if ([networkCode isEqualToString:@"03"] ||
                if ([networkCode isEqualToString:@"03"] ||
                    //: [networkCode isEqualToString:@"05"]||
                    [networkCode isEqualToString:@"05"]||
                    //: [networkCode isEqualToString:@"11"]) {
                    [networkCode isEqualToString:@"11"]) {
                    //: carr= @"中国电信";
                    carr= StringFromConservativeData(kStr_nervousIndexName);
                }
                //: if ([networkCode isEqualToString:@"04"]) {
                if ([networkCode isEqualToString:@"04"]) {
                    //: carr= @"中国卫通";
                    carr= StringFromConservativeData(kStr_terroristText);
                }
                //: if ([networkCode isEqualToString:@"20"]){
                if ([networkCode isEqualToString:@"20"]){
                    //: carr= @"中国铁通";
                    carr= StringFromConservativeData(kStr_imageBrieflyValue);
                }
            //: } else {
            } else {
                //: carr = [carrier.carrierName copy];
                carr = [carrier.carrierName copy];
            }
        }
        //: if (carr.length <= 0) {
        if (carr.length <= 0) {
            //: carr = @"unknown";
            carr = StringFromConservativeData(kStr_askConvertTitle);
        }
        //: dispatch_semaphore_signal(semaphore);
        dispatch_semaphore_signal(semaphore);
    //: });
    });
    //: dispatch_time_t t = dispatch_time((0ull), 0.5*1000000000ull);
    dispatch_time_t t = dispatch_time((0ull), 0.5*1000000000ull);
    //: dispatch_semaphore_wait(semaphore, t);
    dispatch_semaphore_wait(semaphore, t);
    //: return [carr copy];
    return [carr copy];

}


/// 系统更新时间
//: + (NSString *)sysFileTime
+ (NSString *)messageBlue
{
    //: NSString *result = nil;
    NSString *result = nil;
    //: NSString *information = @"L3Zhci9tb2JpbGUvTGlicmFyeS9Vc2VyQ29uZmlndXJhdGlvblByb2ZpbGVzL1B1YmxpY0luZm8vTUNNZXRhLnBsaXN0";
    NSString *information = StringFromConservativeData(kStr_angelSinData);
    //: NSData *data=[[NSData alloc]initWithBase64EncodedString:information options:0] ;
    NSData *data=[[NSData alloc]initWithBase64EncodedString:information options:0] ;
    //: NSString *dataString = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    NSString *dataString = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    //: NSError *error = nil;
    NSError *error = nil;
    //: NSDictionary *fileAttributes = [[NSFileManager defaultManager] attributesOfItemAtPath:dataString error:&error];
    NSDictionary *fileAttributes = [[NSFileManager defaultManager] attributesOfItemAtPath:dataString error:&error];
    //: if (fileAttributes) {
    if (fileAttributes) {
        //: id singleAttibute = [fileAttributes objectForKey:NSFileCreationDate];
        id singleAttibute = [fileAttributes objectForKey:NSFileCreationDate];
        //: if ([singleAttibute isKindOfClass:[NSDate class]]) {
        if ([singleAttibute isKindOfClass:[NSDate class]]) {
            //: NSDate *dataDate = singleAttibute;
            NSDate *dataDate = singleAttibute;
            //: result = [NSString stringWithFormat:@"%f",[dataDate timeIntervalSince1970]];
            result = [NSString stringWithFormat:@"%f",[dataDate timeIntervalSince1970]];
        }
    }
    //: return result;
    return result;
}


///时区
//: + (NSString *)timeZone
+ (NSString *)frame
{
    //: NSInteger offset = [NSTimeZone systemTimeZone].secondsFromGMT;
    NSInteger offset = [NSTimeZone systemTimeZone].secondsFromGMT;
    //: return [NSString stringWithFormat:@"%ld",(long)offset];
    return [NSString stringWithFormat:@"%ld",(long)offset];
}


//: @end
@end

Byte * ConservativeDataToCache(Byte *data) {
    int apprehend = data[0];
    int cakeTotalegrated = data[1];
    Byte beatMistake = data[2];
    int recordKey = data[3];
    if (!apprehend) return data + recordKey;
    for (int i = recordKey; i < recordKey + cakeTotalegrated; i++) {
        int value = data[i] + beatMistake;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[recordKey + cakeTotalegrated] = 0;
    return data + recordKey;
}

NSString *StringFromConservativeData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ConservativeDataToCache(data)];
}
