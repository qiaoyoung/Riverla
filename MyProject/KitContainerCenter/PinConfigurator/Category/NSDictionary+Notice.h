// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+Notice.h
// Notice
//
//  Created by chris on 2017/6/27.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (MyUserKit)
@interface NSDictionary (Notice)

//: - (NSString *)nimkit_jsonString: (NSString *)key;
- (NSString *)at: (NSString *)key;

//: - (NSDictionary *)nimkit_jsonDict: (NSString *)key;
- (NSDictionary *)label: (NSString *)key;
//: - (NSArray *)nimkit_jsonArray: (NSString *)key;
- (NSArray *)session: (NSString *)key;
//: - (NSArray *)nimkit_jsonStringArray: (NSString *)key;
- (NSArray *)utterRank: (NSString *)key;


//: - (BOOL)nimkit_jsonBool: (NSString *)key;
- (BOOL)picture: (NSString *)key;
//: - (NSInteger)nimkit_jsonInteger: (NSString *)key;
- (NSInteger)view: (NSString *)key;
//: - (long long)nimkit_jsonLongLong: (NSString *)key;
- (long long)title: (NSString *)key;
//: - (unsigned long long)nimkit_jsonUnsignedLongLong:(NSString *)key;
- (unsigned long long)lengthy:(NSString *)key;

//: - (double)nimkit_jsonDouble: (NSString *)key;
- (double)merge: (NSString *)key;

//: @end
@end