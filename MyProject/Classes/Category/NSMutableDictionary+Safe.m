
#import <Foundation/Foundation.h>
typedef struct {
    Byte cross;
    Byte *working;
    unsigned int bubbleLemmaFile;
    bool clear;
	int gimpy;
	int cultural;
	int strange;
} SpectrumData;

NSString *StringFromSpectrumData(SpectrumData *data);


//: __NSPlaceholderDictionary
SpectrumData kStr_deeplyData = (SpectrumData){126, (Byte []){33, 33, 48, 45, 46, 18, 31, 29, 27, 22, 17, 18, 26, 27, 12, 58, 23, 29, 10, 23, 17, 16, 31, 12, 7, 27}, 25, false, 239, 112, 185};


//: __NSDictionaryM
SpectrumData kStr_revValue = (SpectrumData){116, (Byte []){43, 43, 58, 39, 48, 29, 23, 0, 29, 27, 26, 21, 6, 13, 57, 103}, 15, false, 223, 73, 122};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSMutableDictionary+Safe.m
//  sohunews
//
//  Created by wang shun on 2018/12/21.
//  Copyright © 2018 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSMutableDictionary+Safe.h"
#import "NSMutableDictionary+Safe.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "NSArray+Safe.h"
#import "NSArray+Safe.h"

//: static void swizzle(Class class, SEL originalSEL, SEL newSEL)
static void swizzle(Class class, SEL originalSEL, SEL newSEL)
{
    //: Method originalMethod = class_getInstanceMethod(class, originalSEL);
    Method originalMethod = class_getInstanceMethod(class, originalSEL);
    //: Method swizzledMethod = class_getInstanceMethod(class, newSEL);
    Method swizzledMethod = class_getInstanceMethod(class, newSEL);
    //: method_exchangeImplementations(originalMethod, swizzledMethod);
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

//: @implementation NSMutableDictionary (Safe)
@implementation NSMutableDictionary (Safe)

//: + (void)load
+ (void)load
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: Class NSDictionaryM = NSClassFromString(@"__NSDictionaryM");
        Class NSDictionaryM = NSClassFromString(StringFromSpectrumData(&kStr_revValue));
        //: swizzle(NSDictionaryM, @selector(setObject:forKey:), @selector(snnews_setObject:forKey:));
        swizzle(NSDictionaryM, @selector(setObject:forKey:), @selector(filter:firstTeamKey:));
        //: swizzle(NSDictionaryM, @selector(setObject:forKeyedSubscript:), @selector(snnews_setObject:forKeyedSubscript:));
        swizzle(NSDictionaryM, @selector(setObject:forKeyedSubscript:), @selector(indexLoad:snnews:));
        //: swizzle(NSDictionaryM, @selector(removeObjectForKey:), @selector(snnews_removeObjectForKey:));
        swizzle(NSDictionaryM, @selector(removeObjectForKey:), @selector(rangeView:));

        //: Class NSPlaceholderDictionary = NSClassFromString(@"__NSPlaceholderDictionary");
        Class NSPlaceholderDictionary = NSClassFromString(StringFromSpectrumData(&kStr_deeplyData));
        //: swizzle(NSPlaceholderDictionary, @selector(initWithObjects:forKeys:count:), @selector(initWithNullObjects:forKeys:count:));
        swizzle(NSPlaceholderDictionary, @selector(initWithObjects:forKeys:count:), @selector(initWithDisplayCount:withRecording:voiceBy:));
    //: });
    });
}

//: - (void)snnews_setObject:(id)anObject forKey:(id<NSCopying>)aKey {
- (void)filter:(id)anObject firstTeamKey:(id<NSCopying>)aKey {
    //: @synchronized (self) {
    @synchronized (self) {
        //: if (self && anObject && aKey) {
        if (self && anObject && aKey) {
            //: [self snnews_setObject:anObject forKey:aKey];
            [self filter:anObject firstTeamKey:aKey];
        }
    }
}

//: - (void)snnews_setObject:(id)obj forKeyedSubscript:(id<NSCopying>)key {
- (void)indexLoad:(id)obj snnews:(id<NSCopying>)key {
    //: @synchronized (self) {
    @synchronized (self) {
        //: if (self && key) {
        if (self && key) {
            //: [self snnews_setObject:obj forKeyedSubscript:key];
            [self indexLoad:obj snnews:key];
        }
    }
}


//: - (void)snnews_removeObjectForKey:(id)key {
- (void)rangeView:(id)key {
    //: @synchronized (self) {
    @synchronized (self) {
        //: if (self && key) {
        if (self && key) {
            //: [self snnews_removeObjectForKey:key];
            [self rangeView:key];
        }
    }
}

//: - (instancetype)initWithNullObjects:(const id [])objects forKeys:(const id <NSCopying> [])keys count:(NSUInteger)count
- (instancetype)initWithDisplayCount:(const id [])objects withRecording:(const id <NSCopying> [])keys voiceBy:(NSUInteger)count
{
    //: for (NSUInteger i = 0; i < count; i++) {
    for (NSUInteger i = 0; i < count; i++) {
        //: if (objects[i] == nil || keys[i] == nil) {
        if (objects[i] == nil || keys[i] == nil) {
            //: return nil;
            return nil;
        }
    }

    //: return [self initWithNullObjects:objects forKeys:keys count:count];
    return [self initWithDisplayCount:objects withRecording:keys voiceBy:count];
}

//: @end
@end

//: @implementation NSDictionary (Null)
@implementation NSDictionary (Null)

//: - (NSDictionary *)dictionaryByReplacingNullsWithBlanks;
- (NSDictionary *)loaf;
{
    //: NSMutableDictionary *replaced = [self mutableCopy];
    NSMutableDictionary *replaced = [self mutableCopy];
    //: const id null = [NSNull null];
    const id null = [NSNull null];
    //: const NSString *blank = @"";
    const NSString *blank = @"";
    //: for (NSString *key in self) {
    for (NSString *key in self) {
        //: id object = [self objectForKey:key];
        id object = [self objectForKey:key];
        //: if (object == null) {
        if (object == null) {
            //: [replaced setObject:blank forKey:key];
            [replaced setObject:blank forKey:key];
        //: } else if ([object isKindOfClass:[NSDictionary class]]) {
        } else if ([object isKindOfClass:[NSDictionary class]]) {
            //: [replaced setObject:[object dictionaryByReplacingNullsWithBlanks] forKey:key];
            [replaced setObject:[object loaf] forKey:key];
        //: } else if ([object isKindOfClass:[NSArray class]]) {
        } else if ([object isKindOfClass:[NSArray class]]) {
            //: [replaced setObject:[object arrayByReplacingNullsWithBlanks] forKey:key];
            [replaced setObject:[object amputate] forKey:key];
        }
    }

    //: return replaced;
    return replaced;
}
//: @end
@end

Byte *SpectrumDataToByte(SpectrumData *data) {
    if (data->clear) return data->working;
    for (int i = 0; i < data->bubbleLemmaFile; i++) {
        data->working[i] ^= data->cross;
    }
    data->working[data->bubbleLemmaFile] = 0;
    data->clear = true;
	if (data->bubbleLemmaFile >= 3) {
		data->gimpy = data->working[0];
		data->cultural = data->working[1];
		data->strange = data->working[2];
	}
    return data->working;
}

NSString *StringFromSpectrumData(SpectrumData *data) {
    return [NSString stringWithUTF8String:(char *)SpectrumDataToByte(data)];
}
