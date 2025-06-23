//
//  NSMutableDictionary+Safe.m
//  sohunews
//
//  Created by wang shun on 2018/12/21.
//  Copyright © 2018 Sohu.com. All rights reserved.
//

#import "NSMutableDictionary+Safe.h"
#import <objc/runtime.h>
#import "NSArray+Safe.h"

static void swizzle(Class class, SEL originalSEL, SEL newSEL)
{
    Method originalMethod = class_getInstanceMethod(class, originalSEL);
    Method swizzledMethod = class_getInstanceMethod(class, newSEL);
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

@implementation NSMutableDictionary (Safe)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class NSDictionaryM = NSClassFromString(@"__NSDictionaryM");
        swizzle(NSDictionaryM, @selector(setObject:forKey:), @selector(snnews_setObject:forKey:));
        swizzle(NSDictionaryM, @selector(setObject:forKeyedSubscript:), @selector(snnews_setObject:forKeyedSubscript:));
        swizzle(NSDictionaryM, @selector(removeObjectForKey:), @selector(snnews_removeObjectForKey:));
        
        Class NSPlaceholderDictionary = NSClassFromString(@"__NSPlaceholderDictionary");
        swizzle(NSPlaceholderDictionary, @selector(initWithObjects:forKeys:count:), @selector(initWithNullObjects:forKeys:count:));
    });
}

- (void)snnews_setObject:(id)anObject forKey:(id<NSCopying>)aKey {
    @synchronized (self) {
        if (self && anObject && aKey) {
            [self snnews_setObject:anObject forKey:aKey];
        }
    }
}

- (void)snnews_setObject:(id)obj forKeyedSubscript:(id<NSCopying>)key {
    @synchronized (self) {
        if (self && key) {
            [self snnews_setObject:obj forKeyedSubscript:key];
        }
    }
}


- (void)snnews_removeObjectForKey:(id)key {
    @synchronized (self) {
        if (self && key) {
            [self snnews_removeObjectForKey:key];
        }
    }
}

- (instancetype)initWithNullObjects:(const id [])objects forKeys:(const id <NSCopying> [])keys count:(NSUInteger)count
{
    for (NSUInteger i = 0; i < count; i++) {
        if (objects[i] == nil || keys[i] == nil) {
            return nil;
        }
    }
    
    return [self initWithNullObjects:objects forKeys:keys count:count];
}

@end

@implementation NSDictionary (Null)

- (NSDictionary *)dictionaryByReplacingNullsWithBlanks;
{
    NSMutableDictionary *replaced = [self mutableCopy];
    const id null = [NSNull null];
    const NSString *blank = @"";
    for (NSString *key in self) {
        id object = [self objectForKey:key];
        if (object == null) {
            [replaced setObject:blank forKey:key];
        } else if ([object isKindOfClass:NSDictionary.class]) {
            [replaced setObject:[object dictionaryByReplacingNullsWithBlanks] forKey:key];
        } else if ([object isKindOfClass:NSArray.class]) {
            [replaced setObject:[object arrayByReplacingNullsWithBlanks] forKey:key];
        }
    }
    
    return replaced;
}
@end
