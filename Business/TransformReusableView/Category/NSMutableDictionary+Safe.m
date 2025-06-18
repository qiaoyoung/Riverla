
#import <Foundation/Foundation.h>
typedef struct {
    Byte barIndex;
    Byte *represent;
    unsigned int recession;
    bool blueCasualty;
} GroupData;

NSString *StringFromGroupData(GroupData *data);


//: __NSDictionaryM
GroupData kStr_oxygenName = (GroupData){37, (Byte []){122, 122, 107, 118, 97, 76, 70, 81, 76, 74, 75, 68, 87, 92, 104, 114}, 15, false};


//: __NSPlaceholderDictionary
GroupData kStr_endFrameText = (GroupData){1, (Byte []){94, 94, 79, 82, 81, 109, 96, 98, 100, 105, 110, 109, 101, 100, 115, 69, 104, 98, 117, 104, 110, 111, 96, 115, 120, 51}, 25, false};

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
        Class NSDictionaryM = NSClassFromString(StringFromGroupData(&kStr_oxygenName));
        //: swizzle(NSDictionaryM, @selector(setObject:forKey:), @selector(snnews_setObject:forKey:));
        swizzle(NSDictionaryM, @selector(setObject:forKey:), @selector(contentTimeMasterKey:mottle:));
        //: swizzle(NSDictionaryM, @selector(setObject:forKeyedSubscript:), @selector(snnews_setObject:forKeyedSubscript:));
        swizzle(NSDictionaryM, @selector(setObject:forKeyedSubscript:), @selector(user:electMonth:));
        //: swizzle(NSDictionaryM, @selector(removeObjectForKey:), @selector(snnews_removeObjectForKey:));
        swizzle(NSDictionaryM, @selector(removeObjectForKey:), @selector(replies:));

        //: Class NSPlaceholderDictionary = NSClassFromString(@"__NSPlaceholderDictionary");
        Class NSPlaceholderDictionary = NSClassFromString(StringFromGroupData(&kStr_endFrameText));
        //: swizzle(NSPlaceholderDictionary, @selector(initWithObjects:forKeys:count:), @selector(initWithNullObjects:forKeys:count:));
        swizzle(NSPlaceholderDictionary, @selector(initWithObjects:forKeys:count:), @selector(initWithPresent:custom:allow:));
    //: });
    });
}

//: - (void)snnews_setObject:(id)anObject forKey:(id<NSCopying>)aKey {
- (void)contentTimeMasterKey:(id)anObject mottle:(id<NSCopying>)aKey {
    //: @synchronized (self) {
    @synchronized (self) {
        //: if (self && anObject && aKey) {
        if (self && anObject && aKey) {
            //: [self snnews_setObject:anObject forKey:aKey];
            [self contentTimeMasterKey:anObject mottle:aKey];
        }
    }
}

//: - (void)snnews_setObject:(id)obj forKeyedSubscript:(id<NSCopying>)key {
- (void)user:(id)obj electMonth:(id<NSCopying>)key {
    //: @synchronized (self) {
    @synchronized (self) {
        //: if (self && key) {
        if (self && key) {
            //: [self snnews_setObject:obj forKeyedSubscript:key];
            [self user:obj electMonth:key];
        }
    }
}


//: - (void)snnews_removeObjectForKey:(id)key {
- (void)replies:(id)key {
    //: @synchronized (self) {
    @synchronized (self) {
        //: if (self && key) {
        if (self && key) {
            //: [self snnews_removeObjectForKey:key];
            [self replies:key];
        }
    }
}

//: - (instancetype)initWithNullObjects:(const id [])objects forKeys:(const id <NSCopying> [])keys count:(NSUInteger)count
- (instancetype)initWithPresent:(const id [])objects custom:(const id <NSCopying> [])keys allow:(NSUInteger)count
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
    return [self initWithPresent:objects custom:keys allow:count];
}

//: @end
@end

//: @implementation NSDictionary (Null)
@implementation NSDictionary (Null)

//: - (NSDictionary *)dictionaryByReplacingNullsWithBlanks;
- (NSDictionary *)streetSmart;
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
            [replaced setObject:[object streetSmart] forKey:key];
        //: } else if ([object isKindOfClass:[NSArray class]]) {
        } else if ([object isKindOfClass:[NSArray class]]) {
            //: [replaced setObject:[object arrayByReplacingNullsWithBlanks] forKey:key];
            [replaced setObject:[object replacing] forKey:key];
        }
    }

    //: return replaced;
    return replaced;
}
//: @end
@end

Byte *GroupDataToByte(GroupData *data) {
    if (data->blueCasualty) return data->represent;
    for (int i = 0; i < data->recession; i++) {
        data->represent[i] ^= data->barIndex;
    }
    data->represent[data->recession] = 0;
    data->blueCasualty = true;
    return data->represent;
}

NSString *StringFromGroupData(GroupData *data) {
    return [NSString stringWithUTF8String:(char *)GroupDataToByte(data)];
}
