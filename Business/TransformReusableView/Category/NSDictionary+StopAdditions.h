// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+StopAdditions.h
//  Kitalker
//
//  Created by chen on 12-11-28.
//  Copyright (c) 2012年 ibm. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (KIAdditions)
@interface NSDictionary (StopAdditions)

//: - (NSString *)jsonString;
- (NSString *)first;

//: - (BOOL)boolValueForKey:(id)key;
- (BOOL)color:(id)key;

//: - (int)intValueForKey:(id)key;
- (int)cancel:(id)key;

//: - (NSInteger)integerValueForKey:(id)key;
- (NSInteger)infoKey:(id)key;

//: - (float)floatValueForKey:(id)key;
- (float)should:(id)key;

//: - (double)doubleValueForKey:(id)key;
- (double)on:(id)key;

//: - (NSString *)newStringValueForKey:(id)key;
- (NSString *)with:(id)key;

//: - (id)valueObjectForKey:(id)aKey;
- (id)view:(id)aKey;

//: - (NSArray *)arrayValueForKey:(id)aKey;
- (NSArray *)checked:(id)aKey;
//: @end
@end