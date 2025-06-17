// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "SGPermission.h"
#import "ThanQueryed.h"

//: @class SGPermissionCamera;
@class HighCamera;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^SGPermissionCameraBlock)(SGPermissionCamera *camera, SGPermissionStatus status);
typedef void(^SGPermissionCameraBlock)(HighCamera *camera, SGPermissionStatus status);

//: @interface SGPermissionCamera : NSObject
@interface HighCamera : NSObject
//: + (void)camera:(SGPermissionCameraBlock)block;
+ (void)scaleBackground:(SGPermissionCameraBlock)block;
//: + (void)request:(void (^)(BOOL granted))handler;
+ (void)signal:(void (^)(BOOL granted))handler;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END