// __DEBUG__
// __CLOSE_PRINT__
//
//  GoodLooksShow.h
//  FUBeautyComponent
//
//  Created by 项林平 on 2022/7/7.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FUBeautyFilterModel : NSObject
@interface GoodLooksShow : NSObject

//: @property (nonatomic, assign) NSInteger filterIndex;
@property (nonatomic, assign) NSInteger filterIndex;
//: @property (nonatomic, copy) NSString *filterName;
@property (nonatomic, copy) NSString *filterName;
//: @property (nonatomic, assign) float filterLevel;
@property (nonatomic, assign) float filterLevel;
//: @property (nonatomic, copy) NSString *filterNames;
@property (nonatomic, copy) NSString *filterNames;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END