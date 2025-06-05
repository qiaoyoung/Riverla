// __DEBUG__
// __CLOSE_PRINT__
//
//  IndependentTool.h
// Notice
//
//  Created by chris on 2017/10/20.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSUInteger, FFFKitAuthorizationStatus) {
typedef NS_ENUM(NSUInteger, FFFKitAuthorizationStatus) {
    //: FFFKitAuthorizationStatusAuthorized, 
    FFFKitAuthorizationStatusAuthorized, // 已授权
    //: FFFKitAuthorizationStatusDenied, 
    FFFKitAuthorizationStatusDenied, // 拒绝
    //: FFFKitAuthorizationStatusRestricted, 
    FFFKitAuthorizationStatusRestricted, // 应用没有相关权限，且当前用户无法改变这个权限，比如:家长控制
    //: FFFKitAuthorizationStatusNotSupport 
    FFFKitAuthorizationStatusNotSupport // 硬件等不支持
//: };
};

//: @interface FFFKitAuthorizationTool : NSObject
@interface IndependentTool : NSObject

//: + (void)requestPhotoLibraryAuthorization:(void(^)(FFFKitAuthorizationStatus status))callback;
+ (void)line:(void(^)(FFFKitAuthorizationStatus status))callback;

//: + (void)requestCameraAuthorization:(void(^)(FFFKitAuthorizationStatus status))callback;
+ (void)teamMin:(void(^)(FFFKitAuthorizationStatus status))callback;

//: + (void)requestAddressBookAuthorization:(void (^)(FFFKitAuthorizationStatus))callback;
+ (void)schoolbookFull:(void (^)(FFFKitAuthorizationStatus))callback;

//: @end
@end