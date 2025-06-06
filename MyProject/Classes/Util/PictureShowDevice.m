
#import <Foundation/Foundation.h>
typedef struct {
    Byte ballColor;
    Byte *insectShove;
    unsigned int braveMater;
    bool scheduleBalloon;
	int weakenAll;
	int barQuarter;
} FamiliarizationData;

NSString *StringFromFamiliarizationData(FamiliarizationData *data);


//: iPhone
FamiliarizationData kStr_kaData = (FamiliarizationData){200, (Byte []){161, 152, 160, 167, 166, 173, 150}, 6, false, 255, 125};


//: WIFI
FamiliarizationData kStr_majorData = (FamiliarizationData){219, (Byte []){140, 146, 157, 146, 58}, 4, false, 179, 190};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PictureShowDevice.m
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESDevice.h"
#import "PictureShowDevice.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import <CoreTelephony/CTTelephonyNetworkInfo.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>
//: #import <sys/sysctl.h>
#import <sys/sysctl.h>
//: #import <sys/utsname.h>
#import <sys/utsname.h>

//: @interface NTESDevice ()
@interface PictureShowDevice ()

//: @property (nonatomic,copy) NSDictionary *networkTypes;
@property (nonatomic,copy) NSDictionary *networkTypes;

//: @end
@end

//: @implementation NTESDevice
@implementation PictureShowDevice

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self buildDeviceInfo];
        [self asCreateShould];
    }
    //: return self;
    return self;
}


//: + (NTESDevice *)currentDevice{
+ (PictureShowDevice *)performance{
    //: static NTESDevice *instance = nil;
    static PictureShowDevice *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[NTESDevice alloc] init];
        instance = [[PictureShowDevice alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)buildDeviceInfo
- (void)asCreateShould
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
- (CGFloat)container{
    //: return (1280 * 960);
    return (1280 * 960);
}

//: - (CGFloat)compressQuality{
- (CGFloat)status{
    //: return 0.5;
    return 0.5;
}


//App状态
//: - (BOOL)isUsingWifi{
- (BOOL)windowOf{
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: NetworkStatus status = [reachability currentReachabilityStatus];
    NetworkStatus status = [reachability currentReachabilityStatus];
    //: return status == ReachableViaWiFi;
    return status == ReachableViaWiFi;
}

//: - (BOOL)isInBackground{
- (BOOL)heritage{
    //: return [[UIApplication sharedApplication] applicationState] != UIApplicationStateActive;
    return [[UIApplication sharedApplication] applicationState] != UIApplicationStateActive;
}

//: - (NTESNetworkType)currentNetworkType{
- (NTESNetworkType)labelType{
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
- (NSString *)of:(NTESNetworkType)networkType
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
            return StringFromFamiliarizationData(&kStr_majorData);
    }
}

//: - (NSInteger)cpuCount{
- (NSInteger)messageInfo{
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
- (BOOL)elite{



    //: return [[NSProcessInfo processInfo] processorCount] <= 1;
    return [[NSProcessInfo processInfo] processorCount] <= 1;

}

//: - (BOOL)isIphone{
- (BOOL)image{
    //: NSString *deviceModel = [UIDevice currentDevice].model;
    NSString *deviceModel = [UIDevice currentDevice].model;
    //: if ([deviceModel isEqualToString:@"iPhone"]) {
    if ([deviceModel isEqualToString:StringFromFamiliarizationData(&kStr_kaData)]) {
        //: return YES;
        return YES;
    //: }else {
    }else {
        //: return NO;
        return NO;
    }
}

//: - (NSString *)machineName{
- (NSString *)someLinguisticUnit{
    //: struct utsname systemInfo;
    struct utsname systemInfo;
    //: uname(&systemInfo);
    uname(&systemInfo);
    //: return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}


//: - (CGFloat)statusBarHeight{
- (CGFloat)area{
    //: return [UIDevice vg_statusBarHeight];
    return [UIDevice table];
}


//: @end
@end

Byte *FamiliarizationDataToByte(FamiliarizationData *data) {
    if (data->scheduleBalloon) return data->insectShove;
    for (int i = 0; i < data->braveMater; i++) {
        data->insectShove[i] ^= data->ballColor;
    }
    data->insectShove[data->braveMater] = 0;
    data->scheduleBalloon = true;
	if (data->braveMater >= 2) {
		data->weakenAll = data->insectShove[0];
		data->barQuarter = data->insectShove[1];
	}
    return data->insectShove;
}

NSString *StringFromFamiliarizationData(FamiliarizationData *data) {
    return [NSString stringWithUTF8String:(char *)FamiliarizationDataToByte(data)];
}
