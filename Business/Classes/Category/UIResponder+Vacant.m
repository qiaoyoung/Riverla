// __DEBUG__
// __CLOSE_PRINT__
//
//  UIResponder+Vacant.m
//  NIM
//
//  Created by chris on 15/9/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIResponder+NTESFirstResponder.h"
#import "UIResponder+Vacant.h"

//: static __weak id currentFirstResponder;
static __weak id kLet_pullData;
//: static __weak id currentSecodResponder;
static __weak id kLet_delayValue;

//: @implementation UIResponder (NTESFirstResponder)
@implementation UIResponder (Vacant)

//: + (instancetype)currentFirstResponder {
+ (instancetype)value {
    //: currentFirstResponder = nil;
    kLet_pullData = nil;
    //: currentSecodResponder = nil;
    kLet_delayValue = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(outMax:) to:nil from:nil forEvent:nil];
    //: return currentFirstResponder;
    return kLet_pullData;
}

//: + (instancetype)currentSecondResponder{
+ (instancetype)child{
    //: currentFirstResponder = nil;
    kLet_pullData = nil;
    //: currentSecodResponder = nil;
    kLet_delayValue = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(outMax:) to:nil from:nil forEvent:nil];
    //: return currentSecodResponder;
    return kLet_delayValue;
}

//: - (void)findFirstResponder:(id)sender {
- (void)outMax:(id)sender {
    //: currentFirstResponder = self;
    kLet_pullData = self;
    //: [self.nextResponder findSecondResponder:sender];
    [self.nextResponder length:sender];
}


//: - (void)findSecondResponder:(id)sender{
- (void)length:(id)sender{
    //: currentSecodResponder = self;
    kLet_delayValue = self;
}

//: @end
@end