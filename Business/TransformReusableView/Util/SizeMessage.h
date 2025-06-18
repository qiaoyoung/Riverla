// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeMessage.h
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESFileUtil : NSObject
@interface SizeMessage : NSObject

//: + (nullable NSString *)fileMD5:(NSString *)filepath;
+ (nullable NSString *)bar:(NSString *)filepath;

//: + (void)fileMD5:(NSString *)filepath completion:(void(^)(NSString *MD5))completion;
+ (void)media:(NSString *)filepath size:(void(^)(NSString *MD5))completion;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END