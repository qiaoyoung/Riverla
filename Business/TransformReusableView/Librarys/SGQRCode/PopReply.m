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
#import "PopReply.h"

//: static SGQRCodeLog *singleton = nil;
static PopReply *kLet_cornerName = nil;

//: @implementation SGQRCodeLog
@implementation PopReply

//: + (instancetype)sharedQRCodeLog {
+ (instancetype)color {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: if (singleton == nil) {
        if (kLet_cornerName == nil) {
            //: singleton = [[super allocWithZone:NULL] init];
            kLet_cornerName = [[super allocWithZone:NULL] init];
        }
    //: });
    });
    //: return singleton;
    return kLet_cornerName;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] color];
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)deviceHolder:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] color];
}

//: - (id)mutableCopyWithZone:(NSZone *)zone {
- (id)numericalQuantityFrame:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] color];
}

//: @end
@end