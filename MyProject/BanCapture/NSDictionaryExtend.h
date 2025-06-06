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
- (id)ting:(NSString *)key textDown:(id)defaultObj;
//: - (id)objectForKey:(id)aKey ofClass:(Class)aClass defaultObj:(id)defaultObj;
- (id)pull:(id)aKey sumerval:(Class)aClass pointSourceMax:(id)defaultObj;
//: - (int)intValueForKey:(NSString *)key defaultValue:(int)defaultValue;
- (int)teamFor:(NSString *)key performance:(int)defaultValue;
//: - (float)floatValueForKey:(NSString *)key defaultValue:(float)defaultValue;
- (float)title:(NSString *)key item:(float)defaultValue;
//: - (double)doubleValueForKey:(NSString *)key defaultValue:(double)defaultValue;
- (double)valueException:(NSString *)key data:(double)defaultValue;
//: - (long)longValueForKey:(NSString *)key defaultValue:(long)defaultValue;
- (long)item:(NSString *)key icon:(long)defaultValue;
//: - (long long)longlongValueForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (long long)enable:(NSString *)key quick:(long long)defaultValue;
//: - (NSString *)stringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSString *)size:(NSString *)key achromaticColour:(NSString *)defaultValue;
//: - (NSArray *)arrayValueForKey:(NSString *)key defaultValue:(NSArray *)defaultValue;
- (NSArray *)defaultImage:(NSString *)key human:(NSArray *)defaultValue;
//: - (NSDictionary *)dictionaryValueForKey:(NSString *)key defalutValue:(NSDictionary *)defaultValue;
- (NSDictionary *)viewValue:(NSString *)key color:(NSDictionary *)defaultValue;


// xml
//: - (NSArray*) toArray;
- (NSArray*) signaling;
//: - (NSString*) toXMLString;
- (NSString*) more;

// url string

//: - (NSString *)toUrlString;
- (NSString *)key;
//: - (NSMutableString *)mutableUrlString;
- (NSMutableString *)file;

/// e.g. {a1:b1,a2:b2} ===> a1=b1&a2=b2
//: - (NSString *)toQueryString;
- (NSString *)sub;
//: - (NSString *)translateDictionaryToJsonString;
- (NSString *)show;

//: @end
@end