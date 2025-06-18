// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionaryExtend.h
//  sohunews
//
//  Created by yanchen wang on 12-5-28.
//  Copyright (c) 2012年 Sohu.com Inc. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary(Extend)
@interface NSDictionary(Extend)

// for value
//: - (id)objectForKey:(NSString *)key defaultObj:(id)defaultObj;
- (id)unwished:(NSString *)key background:(id)defaultObj;
//: - (id)objectForKey:(id)aKey ofClass:(Class)aClass defaultObj:(id)defaultObj;
- (id)paradigm:(id)aKey tiptoe:(Class)aClass storage:(id)defaultObj;
//: - (int)intValueForKey:(NSString *)key defaultValue:(int)defaultValue;
- (int)bottomValue:(NSString *)key activity:(int)defaultValue;
//: - (float)floatValueForKey:(NSString *)key defaultValue:(float)defaultValue;
- (float)key:(NSString *)key infinite:(float)defaultValue;
//: - (double)doubleValueForKey:(NSString *)key defaultValue:(double)defaultValue;
- (double)disable:(NSString *)key label:(double)defaultValue;
//: - (long)longValueForKey:(NSString *)key defaultValue:(long)defaultValue;
- (long)title:(NSString *)key bubble:(long)defaultValue;
//: - (long long)longlongValueForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (long long)shareBottom:(NSString *)key pin:(long long)defaultValue;
//: - (NSString *)stringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSString *)team:(NSString *)key doing:(NSString *)defaultValue;
//: - (NSArray *)arrayValueForKey:(NSString *)key defaultValue:(NSArray *)defaultValue;
- (NSArray *)at:(NSString *)key host:(NSArray *)defaultValue;
//: - (NSDictionary *)dictionaryValueForKey:(NSString *)key defalutValue:(NSDictionary *)defaultValue;
- (NSDictionary *)barValue:(NSString *)key remove:(NSDictionary *)defaultValue;


// xml
//: - (NSArray*) toArray;
- (NSArray*) input;
//: - (NSString*) toXMLString;
- (NSString*) snapLine;

// url string

//: - (NSString *)toUrlString;
- (NSString *)hypocorism;
//: - (NSMutableString *)mutableUrlString;
- (NSMutableString *)name;

/// e.g. {a1:b1,a2:b2} ===> a1=b1&a2=b2
//: - (NSString *)toQueryString;
- (NSString *)blue;
//: - (NSString *)translateDictionaryToJsonString;
- (NSString *)face;

//: @end
@end