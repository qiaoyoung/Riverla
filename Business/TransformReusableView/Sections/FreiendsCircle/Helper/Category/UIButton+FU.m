// __DEBUG__
// __CLOSE_PRINT__
//
//  UIButton+FU.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/8/10.
//

// __M_A_C_R_O__
//: #import "UIButton+FU.h"
#import "UIButton+FU.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: static char kFUDelayActionHandler, kFUDelayTime;
static char kLet_imageName, kLet_borderValue;

//: @interface UIButton ()
@interface UIButton ()

//: @property (nonatomic, copy) void (^delayActionHandler)(void);
@property (nonatomic, copy) void (^delayActionHandler)(void);
//: @property (nonatomic, assign) NSTimeInterval delayTime;
@property (nonatomic, assign) NSTimeInterval delayTime;

//: @end
@end

//: @implementation UIButton (FU)
@implementation UIButton (FU)

//: - (void)addCommonActionWithDelay:(NSTimeInterval)delay actionHandler:(void (^)(void))handler {
- (void)message:(NSTimeInterval)delay equator:(void (^)(void))handler {
    //: self.delayTime = delay;
    self.delayTime = delay;
    //: self.delayActionHandler = handler;
    self.delayActionHandler = handler;
    //: [self addTarget:self action:@selector(delayAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addTarget:self action:@selector(horseBarn:) forControlEvents:UIControlEventTouchUpInside];
}

//: - (void)delayAction:(UIButton *)sender {
- (void)horseBarn:(UIButton *)sender {
    //: if (self.delayActionHandler) {
    if (self.delayActionHandler) {
        //: self.delayActionHandler();
        self.delayActionHandler();
        //: self.enabled = NO;
        self.enabled = NO;
        //: dispatch_after(dispatch_time((0ull), (int64_t)(self.delayTime * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(self.delayTime * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: self.enabled = YES;
            self.enabled = YES;
        //: });
        });
    }
}

//: - (void)setDelayActionHandler:(void (^)(void))delayActionHandler {
- (void)setDelayActionHandler:(void (^)(void))delayActionHandler {
    //: objc_setAssociatedObject(self, &kFUDelayActionHandler, delayActionHandler, OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &kLet_imageName, delayActionHandler, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

//: - (void (^)(void))delayActionHandler {
- (void (^)(void))delayActionHandler {
    //: return objc_getAssociatedObject(self, &kFUDelayActionHandler);
    return objc_getAssociatedObject(self, &kLet_imageName);
}

//: - (NSTimeInterval)delayTime {
- (NSTimeInterval)delayTime {
    //: return [objc_getAssociatedObject(self, &kFUDelayTime) doubleValue];
    return [objc_getAssociatedObject(self, &kLet_borderValue) doubleValue];
}

//: - (void)setDelayTime:(NSTimeInterval)delayTime {
- (void)setDelayTime:(NSTimeInterval)delayTime {
    //: objc_setAssociatedObject(self, &kFUDelayTime, @(delayTime), OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &kLet_borderValue, @(delayTime), OBJC_ASSOCIATION_COPY_NONATOMIC);
}

//: @end
@end