
#import <Foundation/Foundation.h>

NSString *StringFromKneelTunaData(Byte *data);


//: __NSArrayI
Byte kStr_foodValue[] = {70, 10, 8, 186, 32, 1, 204, 35, 73, 121, 97, 114, 114, 65, 83, 78, 95, 95, 227};


//: __NSPlaceholderArray
Byte kStr_donText[] = {97, 20, 10, 91, 125, 45, 184, 156, 191, 234, 121, 97, 114, 114, 65, 114, 101, 100, 108, 111, 104, 101, 99, 97, 108, 80, 83, 78, 95, 95, 201};


//: __NSArrayM
Byte kStr_passeAssistValue[] = {63, 10, 10, 223, 134, 175, 161, 239, 151, 32, 77, 121, 97, 114, 114, 65, 83, 78, 95, 95, 223};


//: __NSArray0
Byte kStr_overnightTitle[] = {61, 10, 4, 142, 48, 121, 97, 114, 114, 65, 83, 78, 95, 95, 203};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSArray+Safe.m
//  BustVideo
//
//  Created by jiangenhao on 2017/10/27.
//  Copyright © 2017年 360Video. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSArray+Safe.h"
#import "NSArray+Safe.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "NSMutableDictionary+Safe.h"
#import "NSMutableDictionary+Safe.h"

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

//: @implementation NSArray (Safe)
@implementation NSArray (Safe)

//: + (void)initialize
+ (void)initialize
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: Class NSArrayM = NSClassFromString(@"__NSArrayM");
        Class NSArrayM = NSClassFromString(StringFromKneelTunaData(kStr_passeAssistValue));
        //: swizzle(NSArrayM, @selector(objectAtIndex:), @selector(objectAtSafeIndex_M:));
        swizzle(NSArrayM, @selector(objectAtIndex:), @selector(moons:));
        //: swizzle(NSArrayM, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_M:));
        swizzle(NSArrayM, @selector(objectAtIndexedSubscript:), @selector(labelled:));
        //: swizzle(NSArrayM, @selector(insertObject:atIndex:), @selector(insertObject:atIndex_M:));
        swizzle(NSArrayM, @selector(insertObject:atIndex:), @selector(view:indexShared:));

        //: Class NSArrayI = NSClassFromString(@"__NSArrayI");
        Class NSArrayI = NSClassFromString(StringFromKneelTunaData(kStr_foodValue));
        //: swizzle(NSArrayI, @selector(objectAtIndex:), @selector(objectAtSafeIndex_I:));
        swizzle(NSArrayI, @selector(objectAtIndex:), @selector(tapI:));
        //: swizzle(NSArrayI, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_I:));
        swizzle(NSArrayI, @selector(objectAtIndexedSubscript:), @selector(containering:));

        //: Class NSArray0 = NSClassFromString(@"__NSArray0");
        Class NSArray0 = NSClassFromString(StringFromKneelTunaData(kStr_overnightTitle));
        //: swizzle(NSArray0, @selector(objectAtIndex:), @selector(objectAtSafeIndex_0:));
        swizzle(NSArray0, @selector(objectAtIndex:), @selector(magnitudeRelation:));
        //: swizzle(NSArray0, @selector(objectAtIndexedSubscript:), @selector(objectAtIndexedSubscript_0:));
        swizzle(NSArray0, @selector(objectAtIndexedSubscript:), @selector(ironedShare:));

        //: Class NSPlaceholderArray = NSClassFromString(@"__NSPlaceholderArray");
        Class NSPlaceholderArray = NSClassFromString(StringFromKneelTunaData(kStr_donText));
        //: swizzle(NSPlaceholderArray, @selector(initWithObjects:count:), @selector(initWithPlaceholderObjectsSafely:count:));
        swizzle(NSPlaceholderArray, @selector(initWithObjects:count:), @selector(initWithSearchedViewQuantityCount:managerRed:));
    //: });
    });
}

//: - (id)objectAtSafeIndex_M:(NSUInteger)index
- (id)moons:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtSafeIndex_M");
        //: return nil;
        return nil;
    }
    //: return [self objectAtSafeIndex_M:index];
    return [self moons:index];
}

//: - (id)objectAtSafeIndex_I:(NSUInteger)index
- (id)tapI:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtSafeIndex_I");
        //: return nil;
        return nil;
    }
    //: return [self objectAtSafeIndex_I:index];
    return [self tapI:index];
}


//: - (id)objectAtIndexedSubscript_M:(NSUInteger)index
- (id)labelled:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtIndexedSubscript_M");
        //: return nil;
        return nil;
    }
    //: return [self objectAtIndexedSubscript_M:index];
    return [self labelled:index];
}

//: - (id)objectAtIndexedSubscript_I:(NSUInteger)index
- (id)containering:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtIndexedSubscript_I");
        //: return nil;
        return nil;
    }
    //: return [self objectAtIndexedSubscript_I:index];
    return [self containering:index];
}

//: - (id)objectAtSafeIndex_0:(NSUInteger)index
- (id)magnitudeRelation:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtSafeIndex_0");
        //: return nil;
        return nil;
    }
    //: return [self objectAtSafeIndex_0:index];
    return [self magnitudeRelation:index];
}

//: - (id)objectAtIndexedSubscript_0:(NSUInteger)index
- (id)ironedShare:(NSUInteger)index
{
    //: if ( index >= self.count || index >= -1)
    if ( index >= self.count || index >= -1)
    {
        //: NSLog(@"objectAtIndexedSubscript_0");
        //: return nil;
        return nil;
    }
    //: return [self objectAtIndexedSubscript_0:index];
    return [self ironedShare:index];
}

//: - (instancetype)initWithPlaceholderObjectsSafely:(id _Nonnull const [])objects count:(NSUInteger)count
- (instancetype)initWithSearchedViewQuantityCount:(id _Nonnull const [])objects managerRed:(NSUInteger)count
{
    //: id objs[count];
    id objs[count];
    //: if (nil != objects) {
    if (nil != objects) {
        //: NSUInteger realCount = count;
        NSUInteger realCount = count;
        //: for (NSUInteger i = 0, current = 0; i < count; ++i) {
        for (NSUInteger i = 0, current = 0; i < count; ++i) {
            //: if (nil != objects[i]) {
            if (nil != objects[i]) {
                //: objs[current++] = objects[i];
                objs[current++] = objects[i];
            //: } else {
            } else {
                //: --realCount;
                --realCount;
            }
        }

        //: if (realCount < count) {
        if (realCount < count) {
            //: count = realCount;
            count = realCount;
            //: objects = objs;
            objects = objs;
        }
    //: } else {
    } else {
        //: count = 0;
        count = 0;
    }

    //: return [self initWithPlaceholderObjectsSafely:objects count:count];
    return [self initWithSearchedViewQuantityCount:objects managerRed:count];
}

//: - (NSArray *)arrayByReplacingNullsWithBlanks;
- (NSArray *)amputate;
{
    //: NSMutableArray *replaced = [self mutableCopy];
    NSMutableArray *replaced = [self mutableCopy];
    //: const id null = [NSNull null];
    const id null = [NSNull null];
    //: const NSString *blank = @"";
    const NSString *blank = @"";
    //: for (int idx = 0; idx < [replaced count]; idx++) {
    for (int idx = 0; idx < [replaced count]; idx++) {
        //: id object = [replaced objectAtIndex:idx];
        id object = [replaced objectAtIndex:idx];
        //: if (object == null) {
        if (object == null) {
            //: [replaced replaceObjectAtIndex:idx withObject:blank];
            [replaced replaceObjectAtIndex:idx withObject:blank];
        //: } else if ([object isKindOfClass:[NSDictionary class]]) {
        } else if ([object isKindOfClass:[NSDictionary class]]) {
            //: [replaced replaceObjectAtIndex:idx withObject:[object dictionaryByReplacingNullsWithBlanks]];
            [replaced replaceObjectAtIndex:idx withObject:[object loaf]];
        //: } else if ([object isKindOfClass:[NSArray class]]) {
        } else if ([object isKindOfClass:[NSArray class]]) {
            //: [replaced replaceObjectAtIndex:idx withObject:[object arrayByReplacingNullsWithBlanks]];
            [replaced replaceObjectAtIndex:idx withObject:[object amputate]];
        }
    }
    //: return replaced;
    return replaced;
}


//: - (void)insertObject:(id)anObject atIndex_M:(NSUInteger)index {
- (void)view:(id)anObject indexShared:(NSUInteger)index {

    //: if(!anObject || index > self.count) return;
    if(!anObject || index > self.count) return;
    //: [self insertObject:anObject atIndex_M:index];
    [self view:anObject indexShared:index];
}

//: - (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    //: NSMutableString *mStr = [NSMutableString string];
    NSMutableString *mStr = [NSMutableString string];
    //: NSMutableString *tab = [NSMutableString stringWithString:@""];
    NSMutableString *tab = [NSMutableString stringWithString:@""];
    //: for (int i = 0; i < level; i++) {
    for (int i = 0; i < level; i++) {
        //: [tab appendString:@"\t"];
        [tab appendString:@"\t"];
    }
    //: [mStr appendString:@"(\n"];
    [mStr appendString:@"(\n"];
    //: for (int i = 0; i < self.count; i++) {
    for (int i = 0; i < self.count; i++) {
         //: NSString *lastSymbol = (self.count == i + 1) ? @"":@",";
         NSString *lastSymbol = (self.count == i + 1) ? @"":@",";
        //: id value = self[i];
        id value = self[i];
        //: if ([value respondsToSelector:@selector(descriptionWithLocale:indent:)]) {
        if ([value respondsToSelector:@selector(descriptionWithLocale:indent:)]) {
            //: [mStr appendFormat:@"\t%@%@%@\n",tab,[value descriptionWithLocale:locale indent:level + 1],lastSymbol];
            [mStr appendFormat:@"\t%@%@%@\n",tab,[value descriptionWithLocale:locale indent:level + 1],lastSymbol];
        //: } else {
        } else {
            //: [mStr appendFormat:@"\t%@%@%@\n",tab,value,lastSymbol];
            [mStr appendFormat:@"\t%@%@%@\n",tab,value,lastSymbol];
        }
    }
    //: [mStr appendFormat:@"%@)",tab];
    [mStr appendFormat:@"%@)",tab];
    //: return mStr;
    return mStr;
}

//: @end
@end

Byte * KneelTunaDataToCache(Byte *data) {
    int reignDebt = data[0];
    int cement = data[1];
    int brain = data[2];
    if (!reignDebt) return data + brain;
    for (int i = 0; i < cement / 2; i++) {
        int begin = brain + i;
        int end = brain + cement - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[brain + cement] = 0;
    return data + brain;
}

NSString *StringFromKneelTunaData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)KneelTunaDataToCache(data)];
}  
