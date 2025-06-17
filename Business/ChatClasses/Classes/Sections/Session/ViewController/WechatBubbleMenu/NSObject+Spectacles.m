// __DEBUG__
// __CLOSE_PRINT__
//
//  NSObject+Spectacles.m
//  NIM
//
//  Created by 田玉龙 on 2023/12/5.
//  Copyright © 2023 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSObject+tyl_internalIdentifier.h"
#import "NSObject+Spectacles.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: @implementation NSObject (tyl_internalIdentifier)
@implementation NSObject (Spectacles)

//: - (void)setTyl_internalIdentifier:(NSString *)tyl_internalIdentifier{
- (void)setTyl_internalIdentifier:(NSString *)Spectacles{
    //: objc_setAssociatedObject(self, @selector(tyl_internalIdentifier), tyl_internalIdentifier, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, @selector(Spectacles), Spectacles, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

//: - (NSString *)tyl_internalIdentifier{
- (NSString *)Spectacles{
    //: return objc_getAssociatedObject(self, _cmd);
    return objc_getAssociatedObject(self, _cmd);
}

//: @end
@end