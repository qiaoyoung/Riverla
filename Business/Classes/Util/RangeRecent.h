// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeRecent.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSUInteger,NTESNetworkType) {
typedef NS_ENUM(NSUInteger,NTESNetworkType) {
    //: NTESNetworkTypeUnknown,
    NTESNetworkTypeUnknown,
    //: NTESNetworkTypeWifi,
    NTESNetworkTypeWifi,
    //: NTESNetworkTypeWwan,
    NTESNetworkTypeWwan,
    //: NTESNetworkType2G,
    NTESNetworkType2G,
    //: NTESNetworkType3G,
    NTESNetworkType3G,
    //: NTESNetworkType4G,
    NTESNetworkType4G,
//: };
};

//: @interface NTESDevice : NSObject
@interface RangeRecent : NSObject

//: + (NTESDevice *)currentDevice;
+ (RangeRecent *)viewOf;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)option;

//: - (CGFloat)compressQuality;
- (CGFloat)label;

//App状态
//: - (BOOL)isUsingWifi;
- (BOOL)reply;
//: - (BOOL)isInBackground;
- (BOOL)onIn;

//: - (NTESNetworkType)currentNetworkType;
- (NTESNetworkType)scrub;
//: - (NSString *)networkStatus:(NTESNetworkType)networkType;
- (NSString *)networkForStatus:(NTESNetworkType)networkType;

//: - (NSInteger)cpuCount;
- (NSInteger)sessionVisible;

//: - (BOOL)isLowDevice;
- (BOOL)ting;
//: - (BOOL)isIphone;
- (BOOL)with;
//: - (NSString *)machineName;
- (NSString *)fictitiousNameSize;


//: - (CGFloat)statusBarHeight;
- (CGFloat)name;

//: @end
@end