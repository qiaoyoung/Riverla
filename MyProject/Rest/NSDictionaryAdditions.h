// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionaryAdditions.h
//  WeiboPad
//
//  Created by junmin liu on 10-10-6.
//  Copyright 2010 Openlab. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (Additions)
@interface NSDictionary (Judge)

//: - (BOOL)getBoolValueForKey:(NSString *)key defaultValue:(BOOL)defaultValue;
- (BOOL)title:(NSString *)key circle:(BOOL)defaultValue;
//: - (int)getIntValueForKey:(NSString *)key defaultValue:(int)defaultValue;
- (int)background:(NSString *)key statusCount:(int)defaultValue;
//: - (float)getFloatValueForKey:(NSString*)key defaultValue:(float)defaultValue;
- (float)temporary:(NSString*)key message:(float)defaultValue;
//: - (double)getDoubleValueForKey:(NSString*)key defaultValue:(double)defaultValue;
- (double)sessionMargin:(NSString*)key maxActivity:(double)defaultValue;
//: - (long long)getLongLongValueValueForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (long long)compartment:(NSString *)key doing:(long long)defaultValue;
//: - (NSString *)getStringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSString *)message:(NSString *)key dismissViewValue:(NSString *)defaultValue;

//: - (NSDictionary*)getDictionaryForKey:(NSString*)key;
- (NSDictionary*)passkeySearchion:(NSString*)key;
//: - (NSArray*)getArrayForKey:(NSString*)key;
- (NSArray*)bigness:(NSString*)key;
//: @end
@end

//: @interface NSDictionary (CollationAdditions)
@interface NSDictionary (ImageAdditions)
//: - (NSString*)getNameValue;
- (NSString*)domain;
//: - (NSString*)getCodeValue;
- (NSString*)touchFor;
//: @end
@end