// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelMax.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/11/16.
//

// __M_A_C_R_O__
//: #import "FURenderModel.h"
#import "ModelMax.h"

//: @implementation FURenderModel
@implementation ModelMax

//: + (NSArray *)modelArrayWithJSON:(id)json {
+ (NSArray *)tabularArray:(id)json {
    //: if (!json) {
    if (!json) {
        //: return nil;
        return nil;
    }
    //: return [NSArray yy_modelArrayWithClass:[self class] json:json];
    return [NSArray yy_modelArrayWithClass:[self class] json:json];
}

//: @end
@end