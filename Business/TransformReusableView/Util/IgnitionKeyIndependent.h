// __DEBUG__
// __CLOSE_PRINT__
//
//  IgnitionKeyIndependent.h
//  NIM
//
//  Created by Genning on 2020/8/27.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESNoticationUtil : NSObject
@interface IgnitionKeyIndependent : NSObject

//: + (NSString *)revokeNoticationContent:(NIMRevokeMessageNotification *)note;
+ (NSString *)text:(NIMRevokeMessageNotification *)note;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END