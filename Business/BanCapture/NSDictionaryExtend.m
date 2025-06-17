
#import <Foundation/Foundation.h>

NSString *StringFromEmoData(Byte *data);


//: initial
Byte kStr_coatPinionData[] = {21, 7, 11, 45, 29, 12, 49, 127, 172, 223, 11, 108, 97, 105, 116, 105, 110, 105, 28};


//: <?xml version=\"1.0\" encoding=\"utf-8\"?>
Byte kStr_partlyHoValue[] = {60, 38, 8, 243, 189, 35, 186, 165, 62, 63, 34, 56, 45, 102, 116, 117, 34, 61, 103, 110, 105, 100, 111, 99, 110, 101, 32, 34, 48, 46, 49, 34, 61, 110, 111, 105, 115, 114, 101, 118, 32, 108, 109, 120, 63, 60, 179};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionaryExtend.m
//  sohunews
//
//  Created by yanchen wang on 12-5-28.
//  Copyright (c) 2012年 Sohu.com Inc. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSDictionaryExtend.h"
#import "NSDictionaryExtend.h"

//: @interface __NSStack : NSObject {
@interface SupportTransformSize : NSObject {
    //: NSMutableArray *_stackArray;
    NSMutableArray *_stackArray;
}
/**
 * @desc judge whether the stack is empty
 *
 * @return TRUE if stack is empty, otherwise FALASE is returned
 */
//: - (BOOL) empty;
- (BOOL) down;
/**
 * @desc get top object in the stack
 *
 * @return nil if no object in the stack, otherwise an object
 * is returned, user should judge the return by this method
 */
//: - (id) top;
- (id) should;
/**
 * @desc pop stack top object
 */
//: - (void) pop;
- (void) date;
/**
 * @desc push an object to the stack
 */
//: - (void) push:(id)value;
- (void) pushUp:(id)value;
//: @end
@end

//: @implementation __NSStack
@implementation SupportTransformSize
//: - (id) init {
- (id) init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _stackArray = [[NSMutableArray alloc] init];
        _stackArray = [[NSMutableArray alloc] init];
    }
    //: return self;
    return self;
}
/**
 * @desc judge whether the stack is empty
 *
 * @return TRUE if stack is empty, otherwise FALASE is returned
 */
//: - (BOOL) empty {
- (BOOL) down {
    //: return ((_stackArray == nil)||([_stackArray count] == 0));
    return ((_stackArray == nil)||([_stackArray count] == 0));
}
/**
 * @desc get top object in the stack
 *
 * @return nil if no object in the stack, otherwise an object
 * is returned, user should judge the return by this method
 */
//: - (id) top {
- (id) should {
    //: id value = nil;
    id value = nil;
    //: if (_stackArray&&[_stackArray count]) {
    if (_stackArray&&[_stackArray count]) {
        //: value = [_stackArray lastObject];
        value = [_stackArray lastObject];
    }
    //: return value;
    return value;
}
/**
 * @desc pop stack top object
 */
//: - (void) pop {
- (void) date {
    //: if (_stackArray&&[_stackArray count]) {
    if (_stackArray&&[_stackArray count]) {
        //: [_stackArray removeLastObject];
        [_stackArray removeLastObject];
    }
}
/**
 * @desc push an object to the stack
 */
//: - (void) push:(id)value {
- (void) pushUp:(id)value {
    //: [_stackArray addObject:value];
    [_stackArray addObject:value];
}

//: @end
@end

//: @implementation NSDictionary(Sort)
@implementation NSDictionary(Sort)

//: - (NSComparisonResult)sortLocalChannelWithLetter:(NSDictionary *)element
- (NSComparisonResult)label:(NSDictionary *)element
{
    //: NSString *letter = [self objectForKey:@"initial"];
    NSString *letter = [self objectForKey:StringFromEmoData(kStr_coatPinionData)];
    //: NSString *comparLetter = [element objectForKey:@"initial"];
    NSString *comparLetter = [element objectForKey:StringFromEmoData(kStr_coatPinionData)];

    //: if (letter && comparLetter) {
    if (letter && comparLetter) {
        //: NSComparisonResult result = [letter caseInsensitiveCompare:comparLetter];
        NSComparisonResult result = [letter caseInsensitiveCompare:comparLetter];
        //: return result;
        return result;
    //: }else {
    }else {
        //: return NSOrderedDescending;
        return NSOrderedDescending;
    }
}

//: @end
@end


//: @implementation NSDictionary(Extend)
@implementation NSDictionary(Extend)

//: - (id)objectForKey:(NSString *)key defaultObj:(id)defaultObj {
- (id)unwished:(NSString *)key background:(id)defaultObj {
    //: id obj = [self objectForKey:key];
    id obj = [self objectForKey:key];
    //: return obj ? obj : defaultObj;
    return obj ? obj : defaultObj;
}

//: - (id)objectForKey:(id)aKey ofClass:(Class)aClass defaultObj:(id)defaultObj {
- (id)paradigm:(id)aKey tiptoe:(Class)aClass storage:(id)defaultObj {
    //: id obj = [self objectForKey:aKey];
    id obj = [self objectForKey:aKey];
    //: return (obj && [obj isKindOfClass:aClass]) ? obj : defaultObj;
    return (obj && [obj isKindOfClass:aClass]) ? obj : defaultObj;
}

//: - (int)intValueForKey:(NSString *)key defaultValue:(int)defaultValue {
- (int)bottomValue:(NSString *)key activity:(int)defaultValue {
    //: id value = [self objectForKey:key];
    id value = [self objectForKey:key];
    //: if (value && [value isKindOfClass:[NSString class]]) {
    if (value && [value isKindOfClass:[NSString class]]) {
        //: return [(NSString *)value intValue];
        return [(NSString *)value intValue];
    //: }else if ([[value class] isSubclassOfClass:[NSNull class]]) {
    }else if ([[value class] isSubclassOfClass:[NSNull class]]) {
        //: return defaultValue;
        return defaultValue;
    }
    //: return (value && [value isKindOfClass:[NSNumber class]]) ? [value intValue] : defaultValue;
    return (value && [value isKindOfClass:[NSNumber class]]) ? [value intValue] : defaultValue;
}

//: - (double)doubleValueForKey:(NSString *)key defaultValue:(double)defaultValue
- (double)disable:(NSString *)key label:(double)defaultValue
{
    //: id value = [self objectForKey:key];
    id value = [self objectForKey:key];
    //: if (value && [value isKindOfClass:[NSString class]]) {
    if (value && [value isKindOfClass:[NSString class]]) {
        //: return [(NSString *)value doubleValue];
        return [(NSString *)value doubleValue];
    //: }else if ([[value class] isSubclassOfClass:[NSNull class]]) {
    }else if ([[value class] isSubclassOfClass:[NSNull class]]) {
        //: return defaultValue;
        return defaultValue;
    }
    //: return (value && [value isKindOfClass:[NSNumber class]]) ? [value doubleValue] : defaultValue;
    return (value && [value isKindOfClass:[NSNumber class]]) ? [value doubleValue] : defaultValue;
}

//: - (float)floatValueForKey:(NSString *)key defaultValue:(float)defaultValue {
- (float)key:(NSString *)key infinite:(float)defaultValue {
    //: id value = [self objectForKey:key];
    id value = [self objectForKey:key];
    //: if (value && [value isKindOfClass:[NSString class]]) {
    if (value && [value isKindOfClass:[NSString class]]) {
        //: return [(NSString *)value floatValue];
        return [(NSString *)value floatValue];
    //: }else if ([[value class] isSubclassOfClass:[NSNull class]]) {
    }else if ([[value class] isSubclassOfClass:[NSNull class]]) {
        //: return defaultValue;
        return defaultValue;
    }
    //: return (value && [value isKindOfClass:[NSNumber class]]) ? [value floatValue] : defaultValue;
    return (value && [value isKindOfClass:[NSNumber class]]) ? [value floatValue] : defaultValue;
}
//: - (long)longValueForKey:(NSString *)key defaultValue:(long)defaultValue {
- (long)title:(NSString *)key bubble:(long)defaultValue {
    //: id value = [self objectForKey:key];
    id value = [self objectForKey:key];
    //: if (value && [value isKindOfClass:[NSString class]]) {
    if (value && [value isKindOfClass:[NSString class]]) {
        //: return [(NSString *)value longLongValue];
        return [(NSString *)value longLongValue];
    //: }else if ([[value class] isSubclassOfClass:[NSNull class]]) {
    }else if ([[value class] isSubclassOfClass:[NSNull class]]) {
        //: return defaultValue;
        return defaultValue;
    }
    //: return (value && [value isKindOfClass:[NSNumber class]]) ? [value longValue] : defaultValue;
    return (value && [value isKindOfClass:[NSNumber class]]) ? [value longValue] : defaultValue;
}

//: - (long long)longlongValueForKey:(NSString *)key defaultValue:(long long)defaultValue {
- (long long)shareBottom:(NSString *)key pin:(long long)defaultValue {
    //: id value = [self objectForKey:key];
    id value = [self objectForKey:key];
    //: if (value && [value isKindOfClass:[NSString class]]) {
    if (value && [value isKindOfClass:[NSString class]]) {
        //: return [(NSString *)value longLongValue];
        return [(NSString *)value longLongValue];
    //: }else if ([[value class] isSubclassOfClass:[NSNull class]]) {
    }else if ([[value class] isSubclassOfClass:[NSNull class]]) {
        //: return defaultValue;
        return defaultValue;
    }
    //: return (value && [value isKindOfClass:[NSNumber class]]) ? [value longLongValue] : defaultValue;
    return (value && [value isKindOfClass:[NSNumber class]]) ? [value longLongValue] : defaultValue;
}

//: - (NSString *)stringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue {
- (NSString *)team:(NSString *)key doing:(NSString *)defaultValue {
    //: id value = [self objectForKey:key];
    id value = [self objectForKey:key];
    //: if (value && [value isKindOfClass:[NSString class]]) {
    if (value && [value isKindOfClass:[NSString class]]) {
        //: return value;
        return value;
    //: }else if(value && [value isKindOfClass:[NSNumber class]]){
    }else if(value && [value isKindOfClass:[NSNumber class]]){
        //: return [value stringValue];
        return [value stringValue];
    //: }else if ([[value class] isSubclassOfClass:[NSNull class]]) {
    }else if ([[value class] isSubclassOfClass:[NSNull class]]) {
        //: return defaultValue;
        return defaultValue;
    //: }else{
    }else{
        //: return defaultValue;
        return defaultValue;
    }
}

//: - (NSArray *)arrayValueForKey:(NSString *)key defaultValue:(NSArray *)defaultValue {
- (NSArray *)at:(NSString *)key host:(NSArray *)defaultValue {
    //: id value = [self objectForKey:key];
    id value = [self objectForKey:key];
    //: return (value && [value isKindOfClass:[NSArray class]]) ? value : defaultValue;
    return (value && [value isKindOfClass:[NSArray class]]) ? value : defaultValue;
}

//: - (NSDictionary *)dictionaryValueForKey:(NSString *)key defalutValue:(NSDictionary *)defaultValue {
- (NSDictionary *)barValue:(NSString *)key remove:(NSDictionary *)defaultValue {
    //: id value = [self objectForKey:key];
    id value = [self objectForKey:key];
    //: return (value && [value isKindOfClass:[NSDictionary class]]) ? value : defaultValue;
    return (value && [value isKindOfClass:[NSDictionary class]]) ? value : defaultValue;
}


//: - (NSArray*) toArray {
- (NSArray*) input {
    //: NSMutableArray *entities = [[NSMutableArray alloc] initWithCapacity:[self count]];
    NSMutableArray *entities = [[NSMutableArray alloc] initWithCapacity:[self count]];
    //: NSEnumerator *enumerator = [self objectEnumerator];
    NSEnumerator *enumerator = [self objectEnumerator];
    //: id value;
    id value;
    //: while ((value = [enumerator nextObject])) {
    while ((value = [enumerator nextObject])) {
        /* code that acts on the dictionary‚Äôs values */
        //: [entities addObject:value];
        [entities addObject:value];
    }
    //: return entities;
    return entities;
}
//: - (NSString*) toXMLString {
- (NSString*) snapLine {
    //: NSMutableString *xmlString = [[NSMutableString alloc] initWithString:@"<?xml version=\"1.0\" encoding=\"utf-8\"?>"];
    NSMutableString *xmlString = [[NSMutableString alloc] initWithString:StringFromEmoData(kStr_partlyHoValue)];
    //: __NSStack *stack = [[__NSStack alloc] init];
    SupportTransformSize *stack = [[SupportTransformSize alloc] init];
    //: NSArray *keys = nil;
    NSArray *keys = nil;
    //: NSString *key = nil;
    NSString *key = nil;
    //: NSObject *value = nil;
    NSObject *value = nil;
    //: NSObject *subvalue = nil;
    NSObject *subvalue = nil;
    //: [stack push:self];
    [stack pushUp:self];
    //: while (![stack empty]) {
    while (![stack down]) {
        //: value = [stack top];
        value = [stack should];
        //: [stack pop];
        [stack date];
        //: if (value) {
        if (value) {
            //: if ([value isKindOfClass:[NSString class]]) {
            if ([value isKindOfClass:[NSString class]]) {
                //: [xmlString appendFormat:@"</%@>", value];
                [xmlString appendFormat:@"</%@>", value];
            }
            //: else if([value isKindOfClass:[NSDictionary class]]) {
            else if([value isKindOfClass:[NSDictionary class]]) {
                //: keys = [(NSDictionary*)value allKeys];
                keys = [(NSDictionary*)value allKeys];
                //: for (key in keys) {
                for (key in keys) {
                    //: subvalue = [(NSDictionary*)value objectForKey:key];
                    subvalue = [(NSDictionary*)value objectForKey:key];
                    //: if ([subvalue isKindOfClass:[NSDictionary class]]) {
                    if ([subvalue isKindOfClass:[NSDictionary class]]) {
                        //: [xmlString appendFormat:@"<%@>", key];
                        [xmlString appendFormat:@"<%@>", key];
                        //: [stack push:key];
                        [stack pushUp:key];
                        //: [stack push:subvalue];
                        [stack pushUp:subvalue];
                    }
                    //: else if([subvalue isKindOfClass:[NSString class]]) {
                    else if([subvalue isKindOfClass:[NSString class]]) {
                        //: [xmlString appendFormat:@"<%@>%@</%@>", key, subvalue, key];
                        [xmlString appendFormat:@"<%@>%@</%@>", key, subvalue, key];
                    }
                }
            }
        }
    }
    //: return xmlString;
    return xmlString;
}

//: - (NSString *)toUrlString {
- (NSString *)hypocorism {
    //: return [self mutableUrlString];
    return [self name];
}

//: - (NSMutableString *)mutableUrlString {
- (NSMutableString *)name {
    //: NSMutableString *str = [NSMutableString stringWithCapacity:32];
    NSMutableString *str = [NSMutableString stringWithCapacity:32];

    //: for (id key in self.allKeys) {
    for (id key in self.allKeys) {
        //: if ([key isKindOfClass:[NSString class]]) {
        if ([key isKindOfClass:[NSString class]]) {
            //: continue;
            continue;
        }
        //: [str appendFormat:@"&%@=%@", key, [self objectForKey:key]];
        [str appendFormat:@"&%@=%@", key, [self objectForKey:key]];
    }

    //: return str;
    return str;
}

//: - (NSString *)toQueryString {
- (NSString *)blue {
    //: NSMutableArray *pairs = [NSMutableArray array];
    NSMutableArray *pairs = [NSMutableArray array];
    //: for (NSString *key in [self keyEnumerator]) {
    for (NSString *key in [self keyEnumerator]) {
      //: NSString *value = [self objectForKey:key];
      NSString *value = [self objectForKey:key];
      //: NSString *pair = [NSString stringWithFormat:@"%@=%@", key, value];
      NSString *pair = [NSString stringWithFormat:@"%@=%@", key, value];
      //: [pairs addObject:pair];
      [pairs addObject:pair];
    }
    //: NSString *params = [pairs componentsJoinedByString:@"&"];
    NSString *params = [pairs componentsJoinedByString:@"&"];
    //: return params;
    return params;
}

//: - (NSString *)translateDictionaryToJsonString {
- (NSString *)face {
    //: NSError *parseError = nil;
    NSError *parseError = nil;
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&parseError];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&parseError];

    //: if (nil == parseError && jsonData && jsonData.length > 0 && ![jsonData isKindOfClass:[NSNull class]]) {
    if (nil == parseError && jsonData && jsonData.length > 0 && ![jsonData isKindOfClass:[NSNull class]]) {
        //: return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding] ;
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding] ;
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}


//: @end
@end

Byte * EmoDataToCache(Byte *data) {
    int civil = data[0];
    int unhealthful = data[1];
    int vary = data[2];
    if (!civil) return data + vary;
    for (int i = 0; i < unhealthful / 2; i++) {
        int begin = vary + i;
        int end = vary + unhealthful - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[vary + unhealthful] = 0;
    return data + vary;
}

NSString *StringFromEmoData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)EmoDataToCache(data)];
}  
