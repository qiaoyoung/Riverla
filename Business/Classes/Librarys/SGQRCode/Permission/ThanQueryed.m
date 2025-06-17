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
//: #import "SGPermission.h"
#import "ThanQueryed.h"
//: #import "SGPermissionCamera.h"
#import "HighCamera.h"
//: #import "SGPermissionPhoto.h"
#import "PhotoLeavePop.h"

//: @interface SGPermission ()
@interface ThanQueryed ()
//: @property (nonatomic, assign) SGPermissionType type;
@property (nonatomic, assign) SGPermissionType type;
//: @end
@end

//: @implementation SGPermission
@implementation ThanQueryed

//: - (void)initWithType:(SGPermissionType)type completion:(SGPermissionBlock)block {
- (void)initWithOff:(SGPermissionType)type container:(SGPermissionBlock)block {
    //: [SGPermission permissionWithType:type completion:block];
    [ThanQueryed should:type faceCompletion:block];
}

//: + (void)permissionWithType:(SGPermissionType)type completion:(SGPermissionBlock)block {
+ (void)should:(SGPermissionType)type faceCompletion:(SGPermissionBlock)block {
    //: SGPermission *permission = [[SGPermission alloc] init];
    ThanQueryed *permission = [[ThanQueryed alloc] init];
    //: permission.type = type;
    permission.type = type;

    //: if (type == SGPermissionTypeCamera) {
    if (type == SGPermissionTypeCamera) {
        //: [SGPermissionCamera camera:^(SGPermissionCamera * _Nonnull camera, SGPermissionStatus status) {
        [HighCamera scaleBackground:^(HighCamera * _Nonnull camera, SGPermissionStatus status) {
            //: if (block) {
            if (block) {
                //: block(permission, status);
                block(permission, status);
            }
        //: }];
        }];
    //: } else if (type == SGPermissionTypePhoto) {
    } else if (type == SGPermissionTypePhoto) {
        //: [SGPermissionPhoto photo:^(SGPermissionPhoto * _Nonnull photos, SGPermissionStatus status) {
        [PhotoLeavePop sub:^(PhotoLeavePop * _Nonnull photos, SGPermissionStatus status) {
            //: if (block) {
            if (block) {
                //: block(permission, status);
                block(permission, status);
            }
        //: }];
        }];
    }
}

//: - (void)request:(void (^)(BOOL))handler {
- (void)prixFixe:(void (^)(BOOL))handler {
    //: if (self.type == SGPermissionTypeCamera) {
    if (self.type == SGPermissionTypeCamera) {
        //: [SGPermissionCamera request:handler];
        [HighCamera signal:handler];
    //: } else if (self.type == SGPermissionTypePhoto) {
    } else if (self.type == SGPermissionTypePhoto) {
        //: [SGPermissionPhoto request:handler];
        [PhotoLeavePop viewCenter:handler];
    }
}

//: @end
@end