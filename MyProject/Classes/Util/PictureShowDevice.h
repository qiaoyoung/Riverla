// __DEBUG__
// __CLOSE_PRINT__
//
//  PictureShowDevice.h
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
@interface PictureShowDevice : NSObject

//: + (NTESDevice *)currentDevice;
+ (PictureShowDevice *)performance;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)container;

//: - (CGFloat)compressQuality;
- (CGFloat)status;

//App状态
//: - (BOOL)isUsingWifi;
- (BOOL)windowOf;
//: - (BOOL)isInBackground;
- (BOOL)heritage;

//: - (NTESNetworkType)currentNetworkType;
- (NTESNetworkType)labelType;
//: - (NSString *)networkStatus:(NTESNetworkType)networkType;
- (NSString *)of:(NTESNetworkType)networkType;

//: - (NSInteger)cpuCount;
- (NSInteger)messageInfo;

//: - (BOOL)isLowDevice;
- (BOOL)elite;
//: - (BOOL)isIphone;
- (BOOL)image;
//: - (NSString *)machineName;
- (NSString *)someLinguisticUnit;


//: - (CGFloat)statusBarHeight;
- (CGFloat)area;

//: @end
@end