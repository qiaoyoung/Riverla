//
//  FFFKitAuthorizationTool.h
// NeeyoKit
//
//  Created by chris on 2017/10/20.
//  Copyright © 2017年 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, FFFKitAuthorizationStatus) {
    FFFKitAuthorizationStatusAuthorized,        // 已授权
    FFFKitAuthorizationStatusDenied,            // 拒绝
    FFFKitAuthorizationStatusRestricted,        // 应用没有相关权限，且当前用户无法改变这个权限，比如:家长控制
    FFFKitAuthorizationStatusNotSupport         // 硬件等不支持
};

@interface FFFKitAuthorizationTool : NSObject

+ (void)requestPhotoLibraryAuthorization:(void(^)(FFFKitAuthorizationStatus status))callback;

+ (void)requestCameraAuthorization:(void(^)(FFFKitAuthorizationStatus status))callback;

+ (void)requestAddressBookAuthorization:(void (^)(FFFKitAuthorizationStatus))callback;

@end
