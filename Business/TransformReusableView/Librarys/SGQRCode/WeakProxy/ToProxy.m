// __DEBUG__
// __CLOSE_PRINT__
//
//  ToProxy.m
//  SGQRCodeExample
//
//  Created by kingsic on 2022/7/2.
//

// __M_A_C_R_O__
//: #import "SGWeakProxy.h"
#import "ToProxy.h"

//: @interface SGWeakProxy ()
@interface ToProxy ()
//: @property (nonatomic, weak) id target;
@property (nonatomic, weak) id target;
//: @end
@end

//: @implementation SGWeakProxy
@implementation ToProxy

//: + (instancetype)weakProxyWithTarget:(id)aTarget {
+ (instancetype)with:(id)aTarget {
    //: SGWeakProxy *weakProxy = [SGWeakProxy alloc];
    ToProxy *weakProxy = [ToProxy alloc];
    //: weakProxy.target = aTarget;
    weakProxy.target = aTarget;
    //: return weakProxy;
    return weakProxy;
}


//: - (id)forwardingTargetForSelector:(SEL)selector {
- (id)forwardingTargetForSelector:(SEL)selector {
    //: return _target;
    return _target;
}

//: - (void)forwardInvocation:(NSInvocation *)invocation {
- (void)forwardInvocation:(NSInvocation *)invocation {
    //: void *nullPointer = NULL;
    void *nullPointer = NULL;
    //: [invocation setReturnValue:&nullPointer];
    [invocation setReturnValue:&nullPointer];
}

//: - (NSMethodSignature *)methodSignatureForSelector:(SEL)selector {
- (NSMethodSignature *)methodSignatureForSelector:(SEL)selector {
    //: return [NSObject instanceMethodSignatureForSelector:@selector(init)];
    return [NSObject instanceMethodSignatureForSelector:@selector(init)];
}

//: @end
@end