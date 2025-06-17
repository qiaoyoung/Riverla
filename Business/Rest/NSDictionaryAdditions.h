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
@interface NSDictionary (View)

//: - (BOOL)getBoolValueForKey:(NSString *)key defaultValue:(BOOL)defaultValue;
- (BOOL)resolution:(NSString *)key color:(BOOL)defaultValue;
//: - (int)getIntValueForKey:(NSString *)key defaultValue:(int)defaultValue;
- (int)barTitle:(NSString *)key add:(int)defaultValue;
//: - (float)getFloatValueForKey:(NSString*)key defaultValue:(float)defaultValue;
- (float)link:(NSString*)key image:(float)defaultValue;
//: - (double)getDoubleValueForKey:(NSString*)key defaultValue:(double)defaultValue;
- (double)event:(NSString*)key shoot:(double)defaultValue;
//: - (long long)getLongLongValueValueForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (long long)nimView:(NSString *)key topName:(long long)defaultValue;
//: - (NSString *)getStringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSString *)table:(NSString *)key bar:(NSString *)defaultValue;

//: - (NSDictionary*)getDictionaryForKey:(NSString*)key;
- (NSDictionary*)background:(NSString*)key;
//: - (NSArray*)getArrayForKey:(NSString*)key;
- (NSArray*)shouldRecent:(NSString*)key;
//: @end
@end

//: @interface NSDictionary (CollationAdditions)
@interface NSDictionary (At)
//: - (NSString*)getNameValue;
- (NSString*)duringScaleImage;
//: - (NSString*)getCodeValue;
- (NSString*)table;
//: @end
@end