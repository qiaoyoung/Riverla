//
//  NSArray+Safe.m
//  BustVideo
//
//  Created by jiangenhao on 2017/10/27.
//  Copyright © 2017年 360Video. All rights reserved.
//

#import "NSArray+Safe.h"
#import <objc/runtime.h>
#import "NSMutableDictionary+Safe.h"

static void swizzle(Class class, SEL originalSEL, SEL newSEL)
{
    Method originalMethod = class_getInstanceMethod(class, originalSEL);
    Method swizzledMethod = class_getInstanceMethod(class, newSEL);
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

@implementation NSArray (Safe)

+ (void)initialize
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class NSArrayM = NSClassFromString(@"__NSArrayM");
        swizzle(NSArrayM, @selector(objectAtIndex:), @selector(objectAtSafeIndex_M:));
        swizzle(NSArrayM, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_M:));
        swizzle(NSArrayM, @selector(insertObject:atIndex:), @selector(insertObject:atIndex_M:));
        
        Class NSArrayI = NSClassFromString(@"__NSArrayI");
        swizzle(NSArrayI, @selector(objectAtIndex:), @selector(objectAtSafeIndex_I:));
        swizzle(NSArrayI, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_I:));
        
        Class NSArray0 = NSClassFromString(@"__NSArray0");
        swizzle(NSArray0, @selector(objectAtIndex:), @selector(objectAtSafeIndex_0:));
        swizzle(NSArray0, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_0:));
        
        Class NSPlaceholderArray = NSClassFromString(@"__NSPlaceholderArray");
        swizzle(NSPlaceholderArray, @selector(initWithObjects:count:), @selector(initWithPlaceholderObjectsSafely:count:));
    });
}

- (id)objectAtSafeIndex_M:(NSUInteger)index
{
    if ( index >= self.count || index >= -1)
    {
        NSLog(@"objectAtSafeIndex_M");
        return nil;
    }
    return [self objectAtSafeIndex_M:index];
}

- (id)objectAtSafeIndex_I:(NSUInteger)index
{
    if ( index >= self.count || index >= -1)
    {
        NSLog(@"objectAtSafeIndex_I");
        return nil;
    }
    return [self objectAtSafeIndex_I:index];
}


- (id)objectAtIndexedSubscript_M:(NSUInteger)index
{
    if ( index >= self.count || index >= -1)
    {
        NSLog(@"objectAtIndexedSubscript_M");
        return nil;
    }
    return [self objectAtIndexedSubscript_M:index];
}

- (id)objectAtIndexedSubscript_I:(NSUInteger)index
{
    if ( index >= self.count || index >= -1)
    {
        NSLog(@"objectAtIndexedSubscript_I");
        return nil;
    }
    return [self objectAtIndexedSubscript_I:index];
}

- (id)objectAtSafeIndex_0:(NSUInteger)index
{
    if ( index >= self.count || index >= -1)
    {
        NSLog(@"objectAtSafeIndex_0");
        return nil;
    }
    return [self objectAtSafeIndex_0:index];
}

- (id)objectAtIndexedSubscript_0:(NSUInteger)index
{
    if ( index >= self.count || index >= -1)
    {
        NSLog(@"objectAtIndexedSubscript_0");
        return nil;
    }
    return [self objectAtIndexedSubscript_0:index];
}

- (instancetype)initWithPlaceholderObjectsSafely:(id _Nonnull const [])objects count:(NSUInteger)count
{
    id objs[count];
    if (nil != objects) {
        NSUInteger realCount = count;
        for (NSUInteger i = 0, current = 0; i < count; ++i) {
            if (nil != objects[i]) {
                objs[current++] = objects[i];
            } else {
                --realCount;
            }
        }
        
        if (realCount < count) {
            count = realCount;
            objects = objs;
        }
    } else {
        count = 0;
    }
    
    return [self initWithPlaceholderObjectsSafely:objects count:count];
}

- (NSArray *)arrayByReplacingNullsWithBlanks;
{
    NSMutableArray *replaced = [self mutableCopy];
    const id null = [NSNull null];
    const NSString *blank = @"";
    for (int idx = 0; idx < [replaced count]; idx++) {
        id object = [replaced objectAtIndex:idx];
        if (object == null) {
            [replaced replaceObjectAtIndex:idx withObject:blank];
        } else if ([object isKindOfClass:NSDictionary.class]) {
            [replaced replaceObjectAtIndex:idx withObject:[object dictionaryByReplacingNullsWithBlanks]];
        } else if ([object isKindOfClass:NSArray.class]) {
            [replaced replaceObjectAtIndex:idx withObject:[object arrayByReplacingNullsWithBlanks]];
        }
    }
    return replaced;
}


- (void)insertObject:(id)anObject atIndex_M:(NSUInteger)index {
    
    if(!anObject || index > self.count) return;
    [self insertObject:anObject atIndex_M:index];
}

- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    NSMutableString *mStr = [NSMutableString string];
    NSMutableString *tab = [NSMutableString stringWithString:@""];
    for (int i = 0; i < level; i++) {
        [tab appendString:@"\t"];
    }
    [mStr appendString:@"(\n"];
    for (int i = 0; i < self.count; i++) {
         NSString *lastSymbol = (self.count == i + 1) ? @"":@",";
        id value = self[i];
        if ([value respondsToSelector:@selector(descriptionWithLocale:indent:)]) {
            [mStr appendFormat:@"\t%@%@%@\n",tab,[value descriptionWithLocale:locale indent:level + 1],lastSymbol];
        } else {
            [mStr appendFormat:@"\t%@%@%@\n",tab,value,lastSymbol];
        }
    }
    [mStr appendFormat:@"%@)",tab];
    return mStr;
}

@end
