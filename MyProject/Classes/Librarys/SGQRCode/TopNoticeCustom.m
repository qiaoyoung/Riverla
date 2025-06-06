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
//: #import "SGQRCodeLog.h"
#import "TopNoticeCustom.h"

//: static SGQRCodeLog *singleton = nil;
static TopNoticeCustom *let_translateTitle = nil;

//: @implementation SGQRCodeLog
@implementation TopNoticeCustom

//: + (instancetype)sharedQRCodeLog {
+ (instancetype)orientation {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: if (singleton == nil) {
        if (let_translateTitle == nil) {
            //: singleton = [[super allocWithZone:NULL] init];
            let_translateTitle = [[super allocWithZone:NULL] init];
        }
    //: });
    });
    //: return singleton;
    return let_translateTitle;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] orientation];
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)mountZone:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] orientation];
}

//: - (id)mutableCopyWithZone:(NSZone *)zone {
- (id)smart:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] orientation];
}

//: @end
@end