// __DEBUG__
// __CLOSE_PRINT__
//
//  UIResponder+FirstMHuman.m
//  NIM
//
//  Created by chris on 15/9/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIResponder+NTESFirstResponder.h"
#import "UIResponder+FirstMHuman.h"

//: static __weak id currentFirstResponder;
static __weak id let_operationTitle;
//: static __weak id currentSecodResponder;
static __weak id let_arrowValueIData;

//: @implementation UIResponder (NTESFirstResponder)
@implementation UIResponder (FirstMHuman)

//: + (instancetype)currentFirstResponder {
+ (instancetype)past {
    //: currentFirstResponder = nil;
    let_operationTitle = nil;
    //: currentSecodResponder = nil;
    let_arrowValueIData = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(frames:) to:nil from:nil forEvent:nil];
    //: return currentFirstResponder;
    return let_operationTitle;
}

//: + (instancetype)currentSecondResponder{
+ (instancetype)betweenReply{
    //: currentFirstResponder = nil;
    let_operationTitle = nil;
    //: currentSecodResponder = nil;
    let_arrowValueIData = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(frames:) to:nil from:nil forEvent:nil];
    //: return currentSecodResponder;
    return let_arrowValueIData;
}

//: - (void)findFirstResponder:(id)sender {
- (void)frames:(id)sender {
    //: currentFirstResponder = self;
    let_operationTitle = self;
    //: [self.nextResponder findSecondResponder:sender];
    [self.nextResponder responder:sender];
}


//: - (void)findSecondResponder:(id)sender{
- (void)responder:(id)sender{
    //: currentSecodResponder = self;
    let_arrowValueIData = self;
}

//: @end
@end