// __DEBUG__
// __CLOSE_PRINT__
//
//  RenderModel.h
//  FULiveDemo
//
//  Created by 项林平 on 2022/11/16.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <YYModel.h>
#import <YYModel.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FURenderModel : NSObject<YYModel>
@interface RenderModel : NSObject<YYModel>

//: + (NSArray *)modelArrayWithJSON:(id)json;
+ (NSArray *)view:(id)json;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END