
#import <Foundation/Foundation.h>

NSString *StringFromIngredientData(Byte *data);        


//: WIFI
Byte kStr_cousinControlTitle[] = {73, 4, 12, 12, 148, 103, 144, 18, 174, 129, 200, 167, 75, 61, 58, 61, 213};


//: iPhone
Byte kStr_heroFindData[] = {65, 6, 67, 12, 247, 169, 131, 30, 141, 160, 247, 87, 38, 13, 37, 44, 43, 34, 81};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeRecent.m
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESDevice.h"
#import "RangeRecent.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
//: #import <sys/sysctl.h>
#import <sys/sysctl.h>
//: #import <sys/utsname.h>
#import <sys/utsname.h>

//: @interface NTESDevice ()
@interface RangeRecent ()

//: @property (nonatomic,copy) NSDictionary *networkTypes;
@property (nonatomic,copy) NSDictionary *networkTypes;

//: @end
@end

//: @implementation NTESDevice
@implementation RangeRecent

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self buildDeviceInfo];
        [self voice];
    }
    //: return self;
    return self;
}


//: + (NTESDevice *)currentDevice{
+ (RangeRecent *)viewOf{
    //: static NTESDevice *instance = nil;
    static RangeRecent *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[NTESDevice alloc] init];
        instance = [[RangeRecent alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)buildDeviceInfo
- (void)voice
{
    //: _networkTypes = @{
    _networkTypes = @{
                          //: CTRadioAccessTechnologyGPRS:@(NTESNetworkType2G),
                          CTRadioAccessTechnologyGPRS:@(NTESNetworkType2G),
                          //: CTRadioAccessTechnologyEdge:@(NTESNetworkType2G),
                          CTRadioAccessTechnologyEdge:@(NTESNetworkType2G),
                          //: CTRadioAccessTechnologyWCDMA:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyWCDMA:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyHSDPA:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyHSDPA:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyHSUPA:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyHSUPA:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyCDMA1x:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyCDMA1x:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyCDMAEVDORev0:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyCDMAEVDORev0:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyCDMAEVDORevA:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyCDMAEVDORevA:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyCDMAEVDORevB:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyCDMAEVDORevB:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyeHRPD:@(NTESNetworkType3G),
                          CTRadioAccessTechnologyeHRPD:@(NTESNetworkType3G),
                          //: CTRadioAccessTechnologyLTE:@(NTESNetworkType4G),
                          CTRadioAccessTechnologyLTE:@(NTESNetworkType4G),
                     //: };
                     };

}


//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels{
- (CGFloat)option{
    //: return (1280 * 960);
    return (1280 * 960);
}

//: - (CGFloat)compressQuality{
- (CGFloat)label{
    //: return 0.5;
    return 0.5;
}


//App状态
//: - (BOOL)isUsingWifi{
- (BOOL)reply{
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: NetworkStatus status = [reachability currentReachabilityStatus];
    NetworkStatus status = [reachability currentReachabilityStatus];
    //: return status == ReachableViaWiFi;
    return status == ReachableViaWiFi;
}

//: - (BOOL)isInBackground{
- (BOOL)onIn{
    //: return [[UIApplication sharedApplication] applicationState] != UIApplicationStateActive;
    return [[UIApplication sharedApplication] applicationState] != UIApplicationStateActive;
}

//: - (NTESNetworkType)currentNetworkType{
- (NTESNetworkType)scrub{
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: NetworkStatus status = [reachability currentReachabilityStatus];
    NetworkStatus status = [reachability currentReachabilityStatus];
    //: switch (status) {
    switch (status) {
        //: case ReachableViaWiFi:
        case ReachableViaWiFi:
            //: return NTESNetworkTypeWifi;
            return NTESNetworkTypeWifi;
        //: case ReachableViaWWAN:
        case ReachableViaWWAN:
        {
            //: CTTelephonyNetworkInfo *telephonyInfo = [[CTTelephonyNetworkInfo alloc] init];
            CTTelephonyNetworkInfo *telephonyInfo = [[CTTelephonyNetworkInfo alloc] init];
            //: NSNumber *number = [_networkTypes objectForKey:telephonyInfo.currentRadioAccessTechnology];
            NSNumber *number = [_networkTypes objectForKey:telephonyInfo.currentRadioAccessTechnology];
            //: return number ? (NTESNetworkType)[number integerValue] : NTESNetworkTypeWwan;
            return number ? (NTESNetworkType)[number integerValue] : NTESNetworkTypeWwan;
        }
        //: default:
        default:
            //: return NTESNetworkTypeUnknown;
            return NTESNetworkTypeUnknown;
    }
}


//: - (NSString *)networkStatus:(NTESNetworkType)networkType
- (NSString *)networkForStatus:(NTESNetworkType)networkType
{
    //: switch (networkType) {
    switch (networkType) {
        //: case NTESNetworkType2G:
        case NTESNetworkType2G:
            //: return @"2G";
            return @"2G";
        //: case NTESNetworkType3G:
        case NTESNetworkType3G:
            //: return @"3G";
            return @"3G";
        //: case NTESNetworkType4G:
        case NTESNetworkType4G:
            //: return @"4G";
            return @"4G";
        //: default:
        default:
            //: return @"WIFI";
            return StringFromIngredientData(kStr_cousinControlTitle);
    }
}

//: - (NSInteger)cpuCount{
- (NSInteger)sessionVisible{
    //: size_t size = sizeof(int);
    size_t size = sizeof(int);
    //: int results;
    int results;

    //: int mib[2] = {6, 3};
    int mib[2] = {6, 3};
    //: sysctl(mib, 2, &results, &size, NULL, 0);
    sysctl(mib, 2, &results, &size, NULL, 0);
    //: return (NSUInteger) results;
    return (NSUInteger) results;
}

//: - (BOOL)isLowDevice{
- (BOOL)ting{



    //: return [[NSProcessInfo processInfo] processorCount] <= 1;
    return [[NSProcessInfo processInfo] processorCount] <= 1;

}

//: - (BOOL)isIphone{
- (BOOL)with{
    //: NSString *deviceModel = [UIDevice currentDevice].model;
    NSString *deviceModel = [UIDevice currentDevice].model;
    //: if ([deviceModel isEqualToString:@"iPhone"]) {
    if ([deviceModel isEqualToString:StringFromIngredientData(kStr_heroFindData)]) {
        //: return YES;
        return YES;
    //: }else {
    }else {
        //: return NO;
        return NO;
    }
}

//: - (NSString *)machineName{
- (NSString *)fictitiousNameSize{
    //: struct utsname systemInfo;
    struct utsname systemInfo;
    //: uname(&systemInfo);
    uname(&systemInfo);
    //: return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}


//: - (CGFloat)statusBarHeight{
- (CGFloat)name{
    //: return [UIDevice vg_statusBarHeight];
    return [UIDevice clear];
}


//: @end
@end

Byte * IngredientDataToCache(Byte *data) {
    int forwardingMum = data[0];
    int thinkOf = data[1];
    Byte keyVoice = data[2];
    int tornLogShow = data[3];
    if (!forwardingMum) return data + tornLogShow;
    for (int i = tornLogShow; i < tornLogShow + thinkOf; i++) {
        int value = data[i] + keyVoice;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[tornLogShow + thinkOf] = 0;
    return data + tornLogShow;
}

NSString *StringFromIngredientData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)IngredientDataToCache(data)];
}
