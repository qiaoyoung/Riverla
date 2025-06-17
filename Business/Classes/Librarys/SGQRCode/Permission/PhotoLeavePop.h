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

//: @class SGPermissionPhoto;
@class PhotoLeavePop;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^SGPermissionPhotoBlock)(SGPermissionPhoto *photos, SGPermissionStatus status);
typedef void(^SGPermissionPhotoBlock)(PhotoLeavePop *photos, SGPermissionStatus status);

//: @interface SGPermissionPhoto : NSObject
@interface PhotoLeavePop : NSObject
//: + (void)photo:(SGPermissionPhotoBlock)block;
+ (void)sub:(SGPermissionPhotoBlock)block;
//: + (void)request:(void (^)(BOOL granted))handler;
+ (void)viewCenter:(void (^)(BOOL granted))handler;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END