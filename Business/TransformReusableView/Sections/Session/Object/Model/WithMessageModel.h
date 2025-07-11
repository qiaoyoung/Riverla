// __DEBUG__
// __CLOSE_PRINT__
//
//  WithMessageModel.h
//  NIM
//
//  Created by zhanggenning on 2019/10/21.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageModel.h"
#import "StochasticProcessTeam.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageModel : FFFMessageModel
@interface WithMessageModel : StochasticProcessTeam

//: @property (nonatomic, assign) BOOL hiddenSeparatorLine; 
@property (nonatomic, assign) BOOL hiddenSeparatorLine; //分割线

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END