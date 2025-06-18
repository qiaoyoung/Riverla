// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+After.h
//  NIM
//
//  Created by amao on 13-7-12.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (NTESJson)
@interface NSDictionary (After)
//: - (NSString *)jsonString: (NSString *)key;
- (NSString *)of: (NSString *)key;

//: - (NSDictionary *)jsonDict: (NSString *)key;
- (NSDictionary *)delay: (NSString *)key;
//: - (NSArray *)jsonArray: (NSString *)key;
- (NSArray *)fromImage: (NSString *)key;
//: - (NSArray *)jsonStringArray: (NSString *)key;
- (NSArray *)video: (NSString *)key;


//: - (BOOL)jsonBool: (NSString *)key;
- (BOOL)language: (NSString *)key;
//: - (NSInteger)jsonInteger: (NSString *)key;
- (NSInteger)session: (NSString *)key;
//: - (long long)jsonLongLong: (NSString *)key;
- (long long)stochasticProcess: (NSString *)key;
//: - (unsigned long long)jsonUnsignedLongLong:(NSString *)key;
- (unsigned long long)salveLong:(NSString *)key;

//: - (double)jsonDouble: (NSString *)key;
- (double)item: (NSString *)key;
//: @end
@end